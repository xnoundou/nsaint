/*
 * Intraprocedural.cpp
 *
 *  Created on: 2013-10-22
 *      Author: noundou
 */

#include "Intraprocedural.h"
#include <llvm/Support/InstIterator.h>

char Intraprocedural	::ID = 0;

bool Intraprocedural::runOnFunction(Function &f) {
	CTaintUtil::log("[runOnFunction] processing function " + f.getName().str());
	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
		/*switch(*inst) {

		}*/
	}
	return false;
}

Intraprocedural::Intraprocedural() : FunctionPass(ID) {
}
