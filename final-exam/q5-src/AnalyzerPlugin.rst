
=======================================
Writing an Clang Static Analyzer Plugin
=======================================

Table of Contents
=================

.. contents::

Introduction
============

The `Clang Static Analyzer`_ is a powerful and growing platform for static code analysis. Although there are dozens of built-in tests (called *checkers*), with more being added continually, their functionality will never cover all possible use cases for all possible users. Fortunately, the Analyzer allows for plugins to be written separately and loaded by the user at runtime. This tutorial gives a basic example of how such a plugin can be written.

.. _Clang Static Analyzer: http://clang-analyzer.llvm.org

For this tutorial, it is assumed that the reader has:

* A working copy of Clang built from source. See `here <http://clang.llvm.org/get_started.html>`_ for instructions.
* An understanding of C++ programing.

The examples in this tutorial have been tested with Clang version 3.2. While they are likely to work with future versions as well, Clang internals are not guaranteed to be stable, and so small changes may be needed for proper compilation and functionality.

Defining the Problem
====================

Before we begin to develop our plugin, we should first carefully define the problem that we are tyring to solve.

A common class of programming mistake is those involving locks used to protect data structures from being modified by multiple threads at the same time. In lower-level languages like C/C++, many such locks must be explicitly acquired and released by the programmer. It can be surprisingly easy to make a mistake in lock-handling when functions grow to have many possible paths through them.

The locking/unlocking problem is a good candidate for a static analysis checker because it requires tracing the state of the lock through an entire function in order to find errors. For detecting conditions that do not require such state tracking, other Clang tools such as a RecusiveASTVisitor_ may be more appropriate.

.. _RecusiveASTVisitor: http://clang.llvm.org/docs/RAVFrontendAction.html

On the other hand, the locking/unlocking problem does not usually require that state be preserved across large areas of the code under analysis. This is also good, because the Analyzer does not (at present) support analysis across multiple files.

For the purpose of this tutorial, we assume that locking is done by two functions called ``lock`` and ``unlock``, which (respectively) acquire and release a lock of some kind. For the purposes of keeping the example simple, the functions do not have any parameters; they always refer to the same lock (in a real implementation, these would almost certainly take arguments so as to be able to handle different locks).

There are three rules that code being analyzed must obey with regards to these functions:

#. All functions that call ``lock`` must also call ``unlock`` before they return.
#. No function should call ``lock`` if it has already been called (unless there was an intermediate call to ``unlock``).
#. No function should call ``unlock`` if it has already been called (unless there was an intermediate call to ``lock``). 

In addition, it is assumed, at the start of each function, that the lock is in the unlocked state.

There are, then, three types of errors we wish to detect:

#. Calling ``lock`` and failing to call ``unlock`` before returning.
#. Calling ``lock`` when the lock has already been acquired ("double lock").
#. Calling ``unlock`` when the lock has not been acquired ("double unlock").

The Structure of an Analyzer Plugin
===================================

The first issue to be addressed is how to get the Analyzer to run our code. We could modify the Clang executable itself to contain our new checker, but this is only done for checkers that would be useful to many different Clang users. For many cases, the checks performed are of no utility to most users, and so it is more practical to write the checker as a plugin that can be loaded at runtime.

Plugins for the Clang Static Analyzer are stored as dynamic libraries. In order to be able to be used by versions of Clang other that the one it has been compiled with, a plugin exposes a specific set of symbols that are read by Clang when loading the plugin.

The first of these is the symbol ``clang_analyzerAPIVersionString``. This gives the version of the plugin API implemented by the plugin; this allows for backwards-compatibility in case of significant changes to the API. Within each version of the Clang source, the version of the API is given by the preprocessor variable ``CLANG_ANALYZER_API_VERSION_STRING``. We therefore include in our plugin the following line::

	extern "C" const char clang_analyzerAPIVersionString[] = CLANG_ANALYZER_API_VERSION_STRING;

.. _CLANG_ANALYZER_API_VERSION_STRING: http://clang.llvm.org/doxygen/CheckerRegistry_8h.html#a3f91c2b80f02484fe7fcb5169830a23f

The use of ``extern "C"`` ensures that the name of the symbol will not be mangled.

The second symbol that a plugin must export is the function ``clang_registerCheckers``. This is the function that will be called when the plugin is loaded. It is usually used to register the plugin's checkers with the Analyzer. The form of this function is ::

	extern "C" void clang_registerCheckers(CheckerRegistry &registry) {
		...
	}

As before, ``extern "C"`` is used to prevent the symbol from being mangled.

An instance of the class CheckerRegistry_\ , which is passed as an argument to the ``clang_registerCheckers`` function, is used to store all known checkers within the Analyzer. To register a plugin, the member function addChecker_ is used. This function takes three parameters:

.. _CheckerRegistry: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1CheckerRegistry.html
.. _addChecker: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1CheckerRegistry.html#a84f56bf0d4e0966b01b84804fac19f64

#. The class to be used for the checker. This is passed as a template argument.
#. The name of the checker. This is what is used to specify the checker on the command line. Checkers are usually grouped into *packages*, with the name of the checker taking the form "{package}.{checker}" or "{package}.{subpackage}.{checker}".
#. A description of the checker. This will appear when the list of checkers is shown on the command line.

Therefore, if our checker will be housed in a class called ``LockUnlockChecker``, our implementation of the ``clang_registerCheckers`` function will be::

	extern "C" void clang_registerCheckers(CheckerRegistry &registry) {
		registry.addChecker<LockUnlockChecker>("example.LockUnlockChecker", "Checker for use of lock()/unlock()");
	}

These two symbols are the only ones that need be exposed by the plugin; it is standard practice to place the remaining pieces of code in the file into one or more anonymous namespaces.

The Structure of a Checker
==========================

Now that we understand the structure of the plugin, we must consider the structure of a Checker proper.

Checkers fundamentally extend the class Checker_, but they do so in an unusual way. The "class" ``Checker`` is actually a templated class, and checkers extend a specialization of this class. Unlike the standard `Curiously Recurring Template Pattern`_, the specialization being extended uses as its parameter(s) the type of events (steps during the analysis) that our checker is interested in processing.

.. _Checker: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1Checker.html
.. _Curiously Recurring Template Pattern: http://en.wikipedia.org/wiki/Curiously_recurring_template_pattern

The various types of events that are available are described in the file `CheckerDocumentation.cpp`_. For our particular checker, we are interested in two event types:

.. _CheckerDocumentation.cpp: http://clang.llvm.org/doxygen/CheckerDocumentation_8cpp_source.html

#. Before function calls: this allows us to check for and handle calls to the ``lock`` and ``unlock`` functions. This is done using the `check::PreCall`_ event.
#. At the end of a function: this allows to check if a function returned without first releasing the lock. This is done using the `check::EndPath`_ type.

.. _check\:\:PreCall: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1check_1_1PreCall.html
.. _check\:\:EndPath: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1check_1_1EndPath.html

For each event type requested, a corresponding function with the name ``check<event>`` must be defined in the checker class (``CheckerDocumentation.cpp`` shows the correct function signature for each event type). With that in mind, we can now define the skeleton of our checker class::

	class LockUnlockChecker : public Checker<check::PreCall,check::EndPath > {
		...

		public:

		LockUnlockChecker(void) {
			...
		}
		
		void checkPreCall(const CallEvent &call, CheckerContext &C) const {
			...
		}
		
		void checkEndPath(CheckerContext &) const {
			...
		}
	};

Program States - An Example
===========================

The Clang Static Analyzer, like most static analysis tools, works by examining the possible paths of execution through a program. While doing so, it keeps track of various information about the state of the program. This state tracking is what gives the Analyzer its power.

As an example, suppose we have the following function::

	void example_function(int a) {
		if(a)
			lock();
		
		... 

		if(a)
			unlock();
	}

We can see by simple inspection that the locking behavior of this function should be correct. If the value of ``a`` evaluates to true, then both of the ``if`` conditions will be taken, and the lock will be acquired and released. If the value of ``a`` evaluates to false, then neither of the branches will be taken, and the lock will neither acquired or released. In both case, the locking behavior conforms to the rules we have previously defined.

Let us now see how the Analyzer would process this function. At the beginning of the function, it will determine that the program has the state:

* Value of ``a``: Any possible value
* State of lock: Unlocked

(Note that other values might also be in the state, but are irrelevant for this example and are therefore ignored). When the Analyzer encounters the first ``if`` statement, it cannot determine whether the branch should be taken, because it cannot determine whether the variable ``a`` evaluates to true or false (using C/C++ semantics, this means non-zero or zero). Therefore, the state is split into two states:

#. Value of ``a``: non-zero, State of lock: Unlocked
#. Value of ``a``: zero, State of lock: Unlocked

At this point, the branch will be taken only for the first state. After evaluating the ``lock`` function for the first state, the possible states will be

#. Value of ``a``: non-zero, State of lock: Locked
#. Value of ``a``: zero, State of lock: Unlocked

These states remain the same until the beginning of the second ``if`` statement (assuming that nothing in the ``...`` section modifies either ``a`` or the lock). Since both of the states have a value of ``a`` defined, neither of them needs to be split; the first state will have the branch taken, and the second one will not. After this, and the call to ``unlock``, the states will be

#. Value of ``a``: non-zero, State of lock: Unlocked
#. Value of ``a``: zero, State of lock: Unlocked

Note that throughout this function, the three rules mentioned for the use of ``lock`` and ``unlock`` have been followed for all states. Therefore, we would not expect our checker for lock/unlock behavior to report any errors about this function. Were this not the case, our checker would report an error using the state of the program that caused the issue, and the Analyzer would use this state to inform the user about the error and the conditions that led up to the error.

Extending Program States
========================

Now that we have seen an example of how the Analyzer stores state information, we can examine how we can extend this state to contain information useful for our checker.

In the Analyzer, the program state at each point of the analysis is given by an instance of the class ProgramState_.

.. _ProgramState: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1ProgramState.html

The ``ProgramState`` class keeps track of several categories of information:

#. The possible values of variables and expressions (in the Environment_ class).
#. The possible values of memory locations (in the Store_ class).
#. Other checker-specific values.

.. _Environment: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1Environment.html
.. _Store: http://clang.llvm.org/doxygen/namespaceclang_1_1ento.html#ae512ebf5e0e9f696142c92f5b771ef39

It is this last type of information that we are most interested in, as it allows us to track the locked/unlocked status of the program and check for improper locking. There are two ways to add new state information: by using convenience macros, or by manually defining the classes involved.

Using convenience macros
------------------------

	To define a new category of state data, use the macro REGISTER_TRAIT_WITH_PROGRAMSTATE_. This macro takes two arguments: the name of the new category, and the data type is uses for storage.

	.. _REGISTER_TRAIT_WITH_PROGRAMSTATE: http://clang.llvm.org/doxygen/ProgramStateTrait_8h.html#ae4cddb54383cd702a045d7c61b009147

	For our example, we require a category of state information indicating the locked/unlocked status of our lock; we will call this ``LockState``. This information will use storage type ``bool``, so the macro would be called like::

		REGISTER_TRAIT_WITH_PROGRAMSTATE(LockState, bool);

	In addition to ``REGISTER_TRAIT_WITH_PROGRAMSTATE``, there are also macros REGISTER_MAP_WITH_PROGRAMSTATE_, REGISTER_SET_WITH_PROGRAMSTATE_, and REGISTER_LIST_WITH_PROGRAMSTATE_, which are used to define new state data types using a map, a set, and a list, respectively.

	.. _REGISTER_MAP_WITH_PROGRAMSTATE: http://clang.llvm.org/doxygen/CheckerContext_8h.html#a6d1893bb8c18543337b6c363c1319fcf
	.. _REGISTER_SET_WITH_PROGRAMSTATE: http://clang.llvm.org/doxygen/CheckerContext_8h.html#ad90f9387b94b344eaaf499afec05f4d1
	.. _REGISTER_LIST_WITH_PROGRAMSTATE: http://clang.llvm.org/doxygen/CheckerContext_8h.html#aa27656fa0ce65b0d9ba12eb3c02e8be9

	These macros will cover a majority of use cases; however, they still have a few limitations. They cannot be used inside namespaces (since they expand to contain top-level namespace references), and the data types that they define cannot be referenced from more than one file. Because of these restrictions, and in the interest of completeness, how to add new state information through manual class definitions will also be described.

Manually defining classes
-------------------------

	Checker-specific state data is defined using two templated types, ProgramStatePartialTrait_ and ProgramStateTrait_.  ``ProgramStatePartialTrait`` is used to represent the data types that can be used for state information. Explicit specializations of this template are needed to give certain methods for operating on each data type. Fortunately, specializations for ``bool`` and ``unsigned int``, as well as some more complex data structures such as `llvm::ImmutableList`_\ , `llvm::ImmutableMap`_, and `llvm::ImmutableSet`_, are provided in `ProgramStateTrait.h`_.

	.. _ProgramStatePartialTrait: http://clang.llvm.org/doxygen/classProgramStatePartialTrait.html
	.. _ProgramStateTrait: http://clang.llvm.org/doxygen/structclang_1_1ento_1_1ProgramStateTrait.html
	.. _llvm\:\:ImmutableList: http://llvm.org/doxygen/classllvm_1_1ImmutableList.html
	.. _llvm\:\:ImmutableMap: http://llvm.org/doxygen/classllvm_1_1ImmutableMap.html
	.. _llvm\:\:ImmutableSet: http://llvm.org/doxygen/classllvm_1_1ImmutableSet.html
	.. _ProgramStateTrait.h: http://clang.llvm.org/doxygen/ProgramState_8h_source.html

	A note if you plan to use a different data type with ``ProgramStatePartialTrait``: make sure that the data type used is immutable (i.e., the pointed-to value does not change). The ``ProgramState`` class makes this assumption, so you might see strange behavior if this rule is not followed.

	Specific categories of state data (e.g. the data for an individual checker) are defined using by the template ``ProgramStateTrait``, with different specializations representing the different categories. The most important method each such specialization must implement is ``GDMIndex``. This method is used to differentiate between the different categories of information. Each specialization must return a unique address that identifies it; in practice, this is usually done by declaring a static variable in the function and returning its address.

	If all that is needed is a single data value, no additional methods need to be defined in the specialization of ``ProgramStateTrait``. For more complex storage requirements, like maps, additional methods must be implemented to define how the data is accessed.

	All that is needed for our example is a ``bool`` type, representing the current status if the lock, so we now have all that we need to define our state type. We define a "dummy" class to use as the template parameter to ``ProgramStateTrait``, then define a specialization of ``ProgramStateTrait`` that is also a subclass of ``ProgramStatePartialTrait``::

		namespace {
			class LockState {};
		}

		namespace clang {
			namespace ento {
				template <> struct ProgramStateTrait<LockState>
				: public ProgramStatePartialTrait<bool> {
					static void * GDMIndex(void) {static int x=0; return \&x; }
				};
			}
		}

	The namespace "clang::ento" is used because that is where all of the code for Clang's static analysis machinery resides.

	Note that the above block of code is almost identical to what would be generated by a call to the ``REGISTER_TRAIT_WITH_PROGRAMSTATE`` macro as described in the previous section.

Each ``ProgramState`` is immutable: after it is created, it is not changed. To allow for simpler manipulations, ``ProgramState``\ s are not typically used directly by plugins; instead, plugins make use of a class called ``ProgramStateRef``, which holds a reference to the ``ProgramState``. When using the ``ProgramStateRef``, any action that changes the ``ProgramState`` will, instead of changing the original object, generate a modified copy, which is then assigned to the ``ProgramStateRef``.

To get the current lock/unlocked state, we use the `get`_ method::

	ProgramStateRef state;
	...
	bool currentlyLocked = state->get<LockState>();

.. _get: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1ProgramState.html#ace78e44b610c09f00b6ab3eb669fdbf7

and to set the current lock/unlocked state, we use the `set`_ method::

	ProgramStateRef state;
	...
	state = state->set<LockState>(true);

.. _set: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1ProgramState.html#afd8e60965d7ecadfebd9cba3cddc192a

More complex ``get`` and ``set`` methods are also available for when data other than a single value are used.

Detailed Rule Logic
===================

Now that we understand how what events we will be using, and how the Analyzer stores its states, we can define (at a high level) what rules our checker should enforce. Expressed in pseudocode, the algorithm is::

	when calling a function:
		determine which function is being called
		if the function is "lock":
			if the lock state is "locked":
				report a "Double Lock" warning
			set the lock state to "locked"
		if the function is "unlock":
			if the lock state is unlocked:
				report a "Double Unlock" warning
			set the lock state to "unlocked"
	at the end of a function:
		if the lock state is "locked":
			report a "failure to call unlock" warning

This translates into code as::

	void checkPreCall(const CallEvent & call, CheckerContext &C) const {
		const IdentifierInfo * identInfo = call.getCalleeIdentifier();
		if(!identInfo) {
			return;
		}
		std::string funcName = std::string(identInfo->getName());

		ProgramStateRef state = C.getState();

		if(funcName.compare("lock") == 0) {
			bool currentlyLocked = state->get<LockState>();
			if(currentlyLocked) {
				... (emit warning about double lock) ...
			}
			state = state->set<LockState>(true);
			C.addTransition(state);
		} else if(funcName.compare("unlock") == 0) {
			bool currentlyLocked = state->get<LockState>();
			if(!currentlyLocked) {
				... (emit warning about double unlock) ...
			}
			state = state->set<LockState>(false);
			C.addTransition(state);
		}

	}

	void checkEndPath(CheckerContext &C) const {
		ProgramStateRef state = C.getState();

		bool currentlyLocked = state->get<LockState>();
		if(currentlyLocked) {
			... (emit warning about returning without unlocking) ...
		}
	}

Reporting Bugs
==============

When we detect an mistake in the analyzed code (in the Analyzer, this is called a *bug*), we need to report it to the Analyzer so that it can be output. There are two classes used for this: `BugType`_ and  `BugReport`_.

.. _BugType: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1BugType.html
.. _BugReport: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1BugReport.html

``BugType``, as the name would suggest, represents a type of bug. Since we have three types of bugs, we define three ``BugType``\ s. We put these in our LockUnlockChecker class, and initialize them in the constructor.

The constructor for ``BugType`` takes two parameters: The name of the bug type, and the name of the category of the bug. These are used (e.g.) in the summary page generated by the scan-build tool.

The ``BugReport`` class represents a specific occurrence of an bug. In general, three parameters are used to form a ``BugReport``:

#. The type of bug, specified as an instance of the ``BugType`` class.
#. A short descriptive string. This is placed at the location of the bug in the detailed line-by-line output generated by scan-build.
#. Where the bug is. This includes both the location of the bug in the code and the program's state when this location is reached.

When providing the program's state to a ``BugReport``, it is standard to transition the current program state to a *sink node*, which is a special state that keeps the Analyzer from continuing to explore the same code path further. This prevents additional bugs from being reported along this path, limiting the number of bugs that will be output for any single programming mistake.

To generate a sink node, the function `generateSink`_ is called in the `CheckerContext`_ object. The pointer it returns can then be used as the third argument when forming a ``BugReport``. Overall, the sequence looks like::

	ExplodedNode * bugloc = C.generateSink();
	if(bugloc) {
		BugReport * bug = new BugReport(*DoubleLockBugType,
				"Call to lock when already locked", bugloc);
		C.EmitReport(bug);
	}

.. _generateSink: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1CheckerContext.html#adeea33a5a2bed190210c4a2bb807a6f0
.. _CheckerContext: http://clang.llvm.org/doxygen/classclang_1_1ento_1_1CheckerContext.html

Building and Testing
====================

We how have the compete source for the plugin (see below). All that remains is to compile and test.

To compile the plugin, we will need to use the following compile options:

* ``-shared``: Indicates that we want to produce a shared library.
* ``-fPIC``: Produces position-independent code, which is a must for all shared libraries.
* ``\`llvm-config --cxxflags\```: This will generate all of the compile options needed for LLVM, using the `llvm-config`_ tool.
* ``-I`llvm-config --src-root`/tools/clang/include`` and ``-I`llvm-config --obj-root`/tools/clang/include``: These specify the include paths for Clang-related header files. These are not included in the previous item, as they are not needed to build LLVM.

.. _llvm-config: http://llvm.org/docs/CommandGuide/llvm-config.html

Our final command line is thus ::

	g++ -shared -fPIC `llvm-config --cxxflags` -I`llvm-config --src-root`/tools/clang/include \
		-I`llvm-config --obj-root`/tools/clang/include -o LockUnlockChecker.so LockUnlockChecker.cpp

To test the checker, we create a file containing several functions that use the ``lock`` and ``unlock`` functions both correctly and incorrectly::

	extern void lock(void);
	extern void unlock(void);

	extern void otherfunction(void);

	/* Functions that use lock() and unlock() correctly. No bugs should be reported. */

	void good_function_1(void) {
		lock();

		unlock();
	}

	void good_function_2(int should_lock) {
		if(should_lock) {
			lock();
		}

		otherfunction();

		if(should_lock) {
			unlock();
		}
	}

	/* Functions that use lock() and unlock() incorrectly. */

	/* Expect a "return without unlocking" bug. */
	void bad_function_1(void) {
		lock();
	}

	/* Expect "return without locking" bug in the case where a is false */
	void bad_function_2(int a) {
		lock();

		if(a) {
			unlock();
		}
	}

	/* Expect "double unlock" bug (because default state is unlocked). */
	void bad_function_3(void) {
		unlock();
	}

	/* Expect "double lock" bug. */
	void bad_function_4(void) {
		lock();

		lock();
	}

We can run our plugin on this file using the `scan-build`_ tool as follows::

	$ scan-build -load-plugin ./LockUnlockChecker.so -enable-checker example.LockUnlockChecker gcc -c example.c
	scan-build: Using '/usr/bin/clang' for static analysis
	example.c:31:2: warning: Return from function without calling unlock
		lock();
		^~~~~~
	example.c:38:2: warning: Return from function without calling unlock
		if(a) {
		^
	example.c:45:2: warning: Call to unlock when already unlocked
		unlock();
		^~~~~~~~
	example.c:52:2: warning: Call to lock when already locked
		lock();
		^~~~~~
	4 warnings generated.
	scan-build: 4 bugs found.
	scan-build: Run 'scan-view /tmp/scan-build-2012-10-13-1' to examine bug reports.
	$

.. _scan-build: http://clang-analyzer.llvm.org/scan-build


Additional sources of information
=================================

Here are some additional resources that are useful when writing Clang Static Analyzer plugins:

* `Clang doxygen`_. Contains up-to-date documentation about the APIs available in Clang. Relevant entries have been linked throughout this tutorial. Also of use is the `LLVM doxygen`_\ , when dealing with classes from LLVM.
* The `cfe-dev mailing list`_. This is the primary mailing list used for discussion of Clang development (including static code analysis). The `archive`_ also contains a lot of information, although there is not an easy way to search it at present.

.. _Clang doxygen: http://clang.llvm.org/doxygen
.. _LLVM doxygen: http://llvm.org/doxygen
.. _cfe-dev mailing list: http://lists.cs.uiuc.edu/mailman/listinfo/cfe-dev
.. _archive: http://lists.cs.uiuc.edu/pipermail/cfe-dev

Full code of example plugin
===========================

Here is the complete code for the Analyzer developed in this tutorial::

	#include <string>

	#include "clang/StaticAnalyzer/Core/Checker.h"
	#include "clang/StaticAnalyzer/Core/PathSensitive/CheckerContext.h"
	#include "clang/StaticAnalyzer/Core/PathSensitive/CallEvent.h"
	#include "clang/StaticAnalyzer/Core/CheckerRegistry.h"
	#include "clang/StaticAnalyzer/Core/BugReporter/BugType.h"

	using namespace clang;
	using namespace ento;

	REGISTER_TRAIT_WITH_PROGRAMSTATE(LockState, bool);

	namespace {
		class LockUnlockChecker : public Checker<check::PreCall,check::EndPath > {
			OwningPtr<BugType> NoUnlockBugType;
			OwningPtr<BugType> DoubleLockBugType;
			OwningPtr<BugType> DoubleUnlockBugType;

			public:
			LockUnlockChecker(void) {
				NoUnlockBugType.reset(new BugType("Failure to call unlock", "Example Plugin"));
				DoubleLockBugType.reset(new BugType("Double Lock", "Example Plugin"));
				DoubleUnlockBugType.reset(new BugType("Double Unlock", "Example Plugin"));
			}
			
			void checkPreCall(const CallEvent & call, CheckerContext &C) const {
				const IdentifierInfo * identInfo = call.getCalleeIdentifier();
				if(!identInfo) {
					return;
				}
				std::string funcName = std::string(identInfo->getName());

				ProgramStateRef state = C.getState();

				if(funcName.compare("lock") == 0) {
					bool currentlyLocked = state->get<LockState>();
					if(currentlyLocked) {
						ExplodedNode * bugloc = C.generateSink();
						if(bugloc) {
							BugReport * bug = new BugReport(*DoubleLockBugType,
									"Call to lock when already locked", bugloc);
							C.emitReport(bug);
						}
					}
					state = state->set<LockState>(true);
					C.addTransition(state);
				} else if(funcName.compare("unlock") == 0) {
					bool currentlyLocked = state->get<LockState>();
					if(!currentlyLocked) {
						ExplodedNode * bugloc = C.generateSink();
						if(bugloc) {
							BugReport * bug = new BugReport(*DoubleUnlockBugType,
									"Call to unlock when already unlocked", bugloc);
							C.emitReport(bug);
						}
					}
					state = state->set<LockState>(false);
					C.addTransition(state);
				}

			}
			
			void checkEndPath(CheckerContext &C) const {
				ProgramStateRef state = C.getState();

				bool currentlyLocked = state->get<LockState>();
				if(currentlyLocked) {
					ExplodedNode * bugloc = C.generateSink();
					if(bugloc) {
						BugReport * bug = new BugReport(*NoUnlockBugType,
								"Return from function without calling unlock", bugloc);
						C.emitReport(bug);
					}
				}
			}
		};
	}

	extern "C" const char clang_analyzerAPIVersionString[] = CLANG_ANALYZER_API_VERSION_STRING;

	extern "C" void clang_registerCheckers(CheckerRegistry &registry) {
		registry.addChecker<LockUnlockChecker>("example.LockUnlockChecker", "Checker for use of lock()/unlock()");
	}

