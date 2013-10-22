/*
 * Intraprocedural.h
 *
 *  Created on: 2013-10-22
 *      Author: noundou
 */

#ifndef INTRAPROCEDURAL_H_
#define INTRAPROCEDURAL_H_

#include "CTaintUtil.h"

#include <llvm/Pass.h>
#include <llvm/IR/Function.h>

using namespace llvm;

namespace {

struct Intraprocedural : public FunctionPass {
	static char ID;

	Intraprocedural();
	virtual bool runOnFunction(Function & F);

private:
	static const string _passId;

	inline static void log(const string &msg) {
		CTaintUtil::log( _passId + msg );
	}

	void intraFlow(Function *caller, Instruction &inst);
};

const string Intraprocedural::_passId("[Function] ");

}

#endif /* INTRAPROCEDURAL_H_ */
