#include <llvm/Support/DataTypes.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/LoopInfo.h>
#include "llvm/Support/InstIterator.h"

#include <fstream>

#include <vector>
#include <string>
using std::vector;
using std::string;

#include <set>
using std::set;

#include <map>
using std::map;

using std::pair;

using namespace llvm;

namespace {

	/**
     * Global data structures for the analysis algorithms
     */

#define ENTRY_POINT "main"

	typedef vector< pair<bool, string> > FunctionParam;

	//Summary table where we store function parameters and
	//return value taunt information
	map<string, FunctionParam> _summaryTable;

	typedef string Var;
	//Data structure representing the analysis flowset data type
	typedef map<Instruction *, set<Var> >  FlowSet;

	FlowSet IN;
	FlowSet OUT;

	//Map from program funtion signatures as string to Function pointers
	map<string, Function*> _signatureToFunc;

    CallGraphNode *_cgRootNode = 0;


    class CTaintUtil {
    public:
        inline static void log(const string &msg) {
            llvm::errs() << _taintId << msg << '\n';
        }

        inline static string taintId() {
            return _taintId;
        }

        inline static string taintSourceFilde() {
            return _taintSourceFile;
        }
    private:
        const static string _taintId;
        const static string _taintSourceFile;
        static vector<string> _taintSources;
        
        void readConfig();
    };

    const string CTaintUtil::_taintId("[STTAL]");
    const string CTaintUtil::_taintSourceFile("cfg/sources.cfg");

    vector<string> CTaintUtil::_taintSources;

    void CTaintUtil::readConfig() {
        //Open the file with taint source functions listed
        std::ifstream srcFile(_taintSourceFile.c_str());
        string aSource;

        while (!srcFile.eof()) {
            std::getline(srcFile, aSource);
            if (!aSource.empty()) {
                _taintSources.push_back(aSource);
                log("[CTaintUtil] taint source " + aSource);
            }
        }

        srcFile.close();
    }


    //************************************************************************

    struct CTaintModulePass : public ModulePass {
        static char ID;

        CTaintModulePass();
        void getAnalysisUsage(AnalysisUsage & AU) const;
        virtual bool runOnModule(Module & F);
        
    private:        
        static const string _passId;

        //Pointer to the 'main' function
        Function *_pointerMain;

        //Pointer the 'main' function's first instruction
        Instruction *_firstInstMain;

        inline static void log(const string &msg) {
            CTaintUtil::log( _passId + msg );
        }

        void initDataFlowSet(Function &f);
        void analyze();
        void interFlow(Function *caller, Instruction &inst);
    };

    const string CTaintModulePass::_passId("[Module] ");

    char CTaintModulePass::ID = 0;

    CTaintModulePass::CTaintModulePass() : ModulePass(ID) {        
    	_pointerMain = 0;
    	_firstInstMain = 0;
    }

    void CTaintModulePass::getAnalysisUsage(AnalysisUsage &AU) const {
    	AU.setPreservesAll();
    	AU.addRequired<LoopInfo > ();
    	AU.addRequired<CallGraph > ();
    }

    void CTaintModulePass::interFlow(Function *caller, Instruction &inst) {

    }

    void CTaintModulePass::analyze() {

    	if ( !_firstInstMain ) {
    		log("[analyze] The first instruction of the main method is not set! Aborting ...");
    		return ;
    	}

    	vector<Instruction *> workList;
    	workList.push_back(_firstInstMain);

    	Instruction *nextInst = 0;
    	while(!workList.empty()) {
    		nextInst = workList.front();
    		interFlow(0, *nextInst);
    		for() {
    			bool outputIncreased = includes()
    			if (OUT[i])
    		}
    	}

    }

    bool CTaintModulePass::runOnModule(Module &M) {
        log("module identifier is " + M.getModuleIdentifier());
        
        for (Module::iterator b = M.begin(), be = M.end(); b != be; ++b) {

            Function *f = dyn_cast<Function > (b);
            string fName = f->getName().str();
            log("discovered function " + fName);

            //TODO: use function signature as key instead
            _signatureToFunc[fName] = f;

            if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
            	_pointerMain = f;
            	_firstInstMain = &*inst_begin(_pointerMain);

            	//errs() << " fName: " << fName << "\n";
            	//errs() << " first inst of main: " << *_firstInstMain << "\n";
            }
        }

        analyze();

        return false;
    }

    void CTaintModulePass::initDataFlowSet(Function &f){
    	//map<Instruction, pair<Var, vector<Instruction> > >
    	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
    		//IN[*inst] =
    	}
    }

    static RegisterPass<CTaintModulePass>
    X("ctaintmod", "CTaint Module Pass",
            false /* Only looks at CFG */,
            true /* Analysis Pass */);

    //************************************************************************

    struct CTaintFunctionPass : public FunctionPass {
        static char ID;

        CTaintFunctionPass();
        virtual bool runOnFunction(Function & F);

    private:
        static const string _passId;

        inline static void log(const string &msg) {
            CTaintUtil::log( _passId + msg );
        }
    };

    const string CTaintFunctionPass::_passId("[Function] ");

    char CTaintFunctionPass::ID = 0;
    
    bool CTaintFunctionPass::runOnFunction(Function &F) {
        CTaintUtil::log("[runOnFunction] processing function " + F.getName().str());
        return false;
    }

    CTaintFunctionPass::CTaintFunctionPass() : FunctionPass(ID) {
    }

    //############################################################
    

}
