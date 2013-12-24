/*
 * int-ctaint.h
 *
 *  Created on: 2013-12-23
 *      Author: noundou
 */

#ifndef INT_CTAINT_H_
#define INT_CTAINT_H_

#include "context-inter-ctaint.h"
#include "CTaintAnalysis.h"

using namespace llvm;

namespace {
class InterProcedural : public CTaintContextInterProcedural {

public:
	InterProcedural(CTaintAnalysis *analysis);

protected:

private:
};
}

InterProcedural::InterProcedural(CTaintAnalysis *analysis)
	:CTaintContextInterProcedural(analysis)
{
  errs() << "## Starting context-insensitive interprocedural analysis\n";
  _analysis->setInterRunning(true);
  analyze();
  _analysis->setInterRunning(false);
}

#endif /* INT_CTAINT_H_ */
