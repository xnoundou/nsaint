% Compulsory fixed declaration
:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,cube_size/1.
:- multifile start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,invgen_template/1.
:- multifile cfg_exit_relation/1,stmtsrc/2,strengthening/2.

% data(V1,..,Vn) represents the program variables.
preds(p(_, data(V1, V2)), []).
trans_preds(p(_, data(V1, V2)), p(_, data(V1p, V2p)), []).

% Physical name map.
var2names(p(pc(_), data(V1, V2)), [(V1, 'x'), (V2, 'n')]).

% start location:
start(pc(init)).

% error location:
error(pc(err)).

% cutpoint locations:
cutpoint(pc(loop)).

% template Shape(optional)
invgen_template(2).

% 3 transitions

% Note: In all the transitions, position of the variables in 'data'
%       determines their Name. For example, every second entry in
%       'data' in following transitions corresponds to n.

% assume(n > 0);x=0;
r(p(pc(init), data(V1, V2)), p(pc(loop), data(V1p, V2p)), [(V2 >= 1)], [V1p = 0, V2p = V2], 1).

% assume(x<n);x++;
r(p(pc(loop), data(V1, V2)), p(pc(loop), data(V1p, V2p)), [(V1 +1 =< V2)], [V1p = V1 + 1, V2p = V2], 2).

% assume(x > n);
r(p(pc(loop), data(V1, V2)), p(pc(err), data(V1p, V2p)), [(V1 >= 1+ V2)], [V1p = V1, V2p = V2], 3). 


% Result of abstract interpreter(optional)
strengthening(p(pc(loop), data(V1, V2)), [ V2  >= 1, V1 >= 0 ]). % n > 0, x >= 0
