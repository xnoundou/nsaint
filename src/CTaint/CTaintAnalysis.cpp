
#include "CTaintAnalysis.h"
#include "CTaintIntraProcedural.h"

char CTaintAnalysis::ID = 0;

const string CTaintAnalysis::_taintId("[STTAL]");

const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");

map<string, int> CTaintAnalysis::_taintSources;
typedef map<string, int>::value_type sourceType;

inline void CTaintAnalysis::log(const string &msg) {
	errs() << _taintId << msg << '\n';
}

void CTaintAnalysis::addTaintSource(string &source, unsigned taintedPos) {
	map<string, int>::iterator it;
	it = _taintSources.find(source);

	if (it != _taintSources.end())
		it->second = taintedPos;
	else
		_taintSources.insert( sourceType(source, taintedPos) );
}

void CTaintAnalysis::readTaintSourceConfig() {
	//Open the file with taint source functions listed
	std::ifstream srcFile(_taintSourceFile.c_str());
	string line;
	string source;
	string arg;
	int pos;

	while (!srcFile.eof()) {
		std::getline(srcFile, line);
		if (!line.empty()) {
			size_t coma = line.find(SOURCE_ARG_DELIM);
			source = line.substr(0, coma);

			arg = line.substr(coma+1);
			pos = atoi(arg.c_str());

			//TODO: use the mangler here Mangler aMangler
			string s("__isoc99_");
			s.append(source);
			addTaintSource(s, pos);
		}
	}

	srcFile.close();
}

inline Function * CTaintAnalysis::getFunction(Instruction &I) {
	return I.getParent()->getParent();
}

CTaintAnalysis::CTaintAnalysis() : ModulePass(ID) {
	_pointerMain = 0;
	_firstInstMain = 0;
	_intraFlag = false;
	_interFlag = false;
	_aliasFlag = false;
	_interContextSensitiveFlag = false;

	readTaintSourceConfig();
}

void CTaintAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<LoopInfo> ();
	AU.addRequired<CallGraph> ();
	AU.addRequired<AliasAnalysis> ();
}

void CTaintAnalysis::collectAliasInfo() {
	if ( _aliasFlag )
		return;

	Function *F = 0;
	AliasSetTracker *functionAST = 0;

	for(ItFunction itF = _signatureToFunc.begin(), itEnd = _signatureToFunc.end(); itF != itEnd; ++itF) {
		F = itF->second;
		functionAST = new AliasSetTracker(*_aa);
		_functionToAliasSetMap[F] = functionAST;
		for (inst_iterator I = inst_begin(*F), E = inst_end(*F); I != E; ++I) {
			functionAST->add(&*I);
		}
		_curAST->add(*functionAST);
	}

	_aliasFlag = true;
}

bool CTaintAnalysis::outFlowHasBeenModified() {
	return _lastFlowInfo.hasBeenModified();
}

Instruction * CTaintAnalysis::next(vector<Instruction *> &workList) {
	Instruction *result = workList.back();
	workList.pop_back();
	return result;
}

inline void CTaintAnalysis::insert(vector<Instruction *> &workList, Instruction *I) {
	workList.insert(workList.begin(), I);
}

void CTaintAnalysis::getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs) {
	Instruction *n = I->getNextNode();
	while( !n->isTerminator() ){
		succs.insert(succs.begin(), n);
		n = n->getNextNode();
	}
	//errs() << "size at end of getAllBeforeNextTerminator: " << succs.size() << "\n";
}

void CTaintAnalysis::getSuccessors(Instruction *I, vector<Instruction *> &succs) {
	if (I->isTerminator()) {
		TerminatorInst *T = cast<TerminatorInst> (I);
		unsigned succNr = T->getNumSuccessors();
		for(unsigned k = 0; k < succNr; ++k) {
			BasicBlock *succBB = T->getSuccessor(k);
			Instruction &succFirst = succBB->front();
			succs.insert(succs.begin(), &succFirst);
			getAllBeforeNextTerminator(&succFirst, succs);
		}
	}
	else {
		getAllBeforeNextTerminator(I, succs);
	}
	//errs() << "size at end of getSuccessors: " << succs.size() << "\n";
}

void CTaintAnalysis::printOut(Instruction &I) {
	set<Value *> &out = _OUT[&I];

	for( set<Value *>::iterator it = out.begin(), itEnd = out.end();
			it != itEnd;
			++it)
	{
		(*it)->print(errs());
		errs() << "\n";
	}
}

void CTaintAnalysis::printIn(Instruction &I) {
	set<Value *> &in = _IN[&I];

	for( set<Value *>::iterator it = in.begin(), itEnd = in.end();
			it != itEnd;
			++it)
	{
		(*it)->print(errs());
		errs() << "\n";
	}
}

void CTaintAnalysis::initWorkList(vector<Instruction *> &workList){
	Function *F = 0;
	Instruction *I = 0;

	for(ItFunction itF = _signatureToFunc.begin(), itEnd = _signatureToFunc.end();
			itF != itEnd;
			++itF)
	{
		F = itF->second;

		for (inst_iterator it = inst_begin(*F), E = inst_end(*F); it != E; ++it) {
			I = &*it;

			//Initializing IN and OUT flow sets
			_OUT[I];
			_IN[I];
			insert(workList, I);
		}
	}

	errs() << " _OUT size: " << _OUT.size() << "\n";
	errs() << " _IN size: " << _IN.size() << "\n";
}

bool CTaintAnalysis::runOnModule(Module &m) {
	log("module identifier is " + m.getModuleIdentifier());

	_aa = &getAnalysis<AliasAnalysis>();

	assert (_aa && "Alias analysis was not instantiated (_aa is null)!");

	_curAST = new AliasSetTracker(*_aa);

	for (Module::iterator b = m.begin(), be = m.end(); b != be; ++b) {

		Function *f = dyn_cast<Function> (b);

		//We only handle function defined in the code
		if (f && f->isDeclaration())
			continue;

		string fName(f->getName().str());
		log("discovered function " + fName);

		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
			_firstInstMain = &*inst_begin(_pointerMain);
		}
	}

	//Adds function instructions relevant for the alias analysis pass
	collectAliasInfo();

	CTaintIntraProcedural intraFlow(this);

	_curAST->print(errs());

	log("Now performs the intraprocedural analysis");

	intraFlow.analyze();

	return false;
}


/**
 * Checks if the function with name 'funcName' taints any
 * of its parameters.
 */
unsigned CTaintAnalysis::isTaintSource(string &funcName) {
	map<string, int>::iterator res;
	res = _taintSources.find(funcName);
	if (res != _taintSources.end())
		return res->second;

	return -1;
}

inline void CTaintAnalysis::merge(Instruction *I) {
	_IN[I].insert(_lastFlowInfo.begin(), _lastFlowInfo.end());
}

void CTaintAnalysis::mergeCopyPredOutFlowToInFlow(Instruction &I) {
	BasicBlock *BB = I.getParent();

	BasicBlock *aPred = 0;
	Instruction *pi;
	for (pred_iterator PI = pred_begin(BB), E = pred_end(BB); PI != E; ++PI) {
	  aPred = *PI;
	  pi = &aPred->back();
	  _IN[&I].insert(_OUT[pi].begin(), _OUT[pi].end());
	}

	_lastFlowInfo.reset();
}

/**
 * Adds value 'v' to the set OUT[I], denoting that instruction
 * I taints value 'v'.
 */
inline void CTaintAnalysis::insertToOutFlow(Instruction *I, Value *v) {
	_OUT[I].insert(v);
	_lastFlowInfo.addValue(v);

	//For each pointer p aliasing v, also add 'p' in OUT[I] to indicate
	//that instruction I taints value 'p'.
	AliasSet * as = _curAST->getAliasSetForPointerIfExists(v, 0, 0);
	if (as && as->isMayAlias()) {
		for(AliasSet::iterator it = as->begin(), itE = as->end(); it != itE; ++it) {
		  Value *p = it->getValue();
			_OUT[I].insert(p);
			_lastFlowInfo.addValue(p);
			//p->print(errs() << " \n gets tainted through ");
			//v->print(errs()); errs() << "\n";
		}
	}
}

/**
 * Returns 'true' if value 'v' is tainted at the program point before
 * instruction 'I'.
 */
inline bool CTaintAnalysis::isValueTainted(Instruction *I, Value *v) {
	return (!_IN[I].empty() && 0 == _IN[I].count(v));
}

void CTaintAnalysis::visitLoadInst(LoadInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);

	//errs() << "STORE\n";

	Value *q = I.getValueOperand();

	if (!isValueTainted(&I, q))
		return;

	Value *p = I.getPointerOperand();

	//STORE [*p=q]
	errs() << "STORE [*p=q]\n";

	insertToOutFlow(&I, p);
}

void CTaintAnalysis::visitGetElementPtrInst(GetElementPtrInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);

	//Value * v  = I.get
}

/*
 * Interprocedural analysis
 */
void CTaintAnalysis::visitCallInst(CallInst & aCallInst)
{
	mergeCopyPredOutFlowToInFlow(aCallInst);

	errs() << "CALL (intra)\n";

	/*if (_intraFlag) {

	}
	else {*/
		//SOURCE[r = call func(a0, a1, ..., an)]
		//Intraprocedural analysis case: recognizing sources
		Function *callee = aCallInst.getCalledFunction();
		string calleeName = callee->getName().str();
		unsigned arg = isTaintSource(calleeName);
		if ( -1 != arg ) {
			unsigned maxParams = aCallInst.getNumArgOperands();
			assert ( (arg < maxParams) && "Invalid argument position" );
			Value *taintedArg = aCallInst.getArgOperand(arg);

			//errs() << "Tainted arg: " << taintedArg->getName() << "\n";
			insertToOutFlow(&aCallInst, taintedArg);

			errs() << "Found a source " << calleeName << "\n";
		}
	//}
}

void CTaintAnalysis::visitVAArgInst(VAArgInst & I)
{
}

void CTaintAnalysis::visitAllocaInst(AllocaInst &I)
{
	//errs() << "ALLOC \n";

	/*for(Value::use_iterator itU = I.use_begin(), itE = I.use_end();
			itU != itE;
			++itU)
	{
		itU->print(errs());
		if (isa<Instruction>(itU)) {

		}

	}*/
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

