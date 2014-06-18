/* 
 * File:   ArrayChecker.h
 * Author: noundou
 *
 * Created on August 6, 2013, 4:50 PM
 */

#ifndef ARRAYCHECKER_H
#define	ARRAYCHECKER_H

#include <Checker.h>

#ifdef	__cplusplus
extern "C" {
#endif

    class ArrayChecker : public Checker<check::PreCall> {

    public:
        void checkPreCall(const CallEvent &Call, CheckerContext &C) const;

    };


#ifdef	__cplusplus
}
#endif

#endif	/* ARRAYCHECKER_H */

