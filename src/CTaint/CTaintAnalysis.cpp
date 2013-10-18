#include <llvm/Support/DataTypes.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/LoopInfo.h>

#include <fstream>

#include <vector>
#include <string>
using std::vector;
using std::string;

using namespace llvm;

namespace {
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

        CallGraphNode *_cgRootNode;

        Function *_pointerMain;

        inline static void log(const string &msg) {
            CTaintUtil::log( _passId + msg );
        }
    };

    const string CTaintModulePass::_passId("[Module] ");

    char CTaintModulePass::ID = 0;

    CTaintModulePass::CTaintModulePass() : ModulePass(ID) {        
    }

    void CTaintModulePass::getAnalysisUsage(AnalysisUsage &AU) const {
        AU.setPreservesAll();
        AU.addRequired<LoopInfo > ();
        AU.addRequired<CallGraph > ();
    }

    bool CTaintModulePass::runOnModule(Module &M) {
        log("module identifier is " + M.getModuleIdentifier());
        
        for (Module::iterator b = M.begin(), be = M.end(); b != be; ++b) {
            Function *ff = dyn_cast<Function > (b);
            errs() << "testff0: " << ff->getName() << '\n';
            //funcname[funcname_index++] = ff->getName();
        }

        return false;
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