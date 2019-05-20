/*Qudus Agbalaya 101007487*/

%true if its a list
list([]).
list([_|T]):-
	list(T).

%turn a tree to a flatlist	
treeFlat([],[]).
treeFlat([H|T],F):-
	treeFlat(H,NewL),
	treeFlat(T,NewLl),
	append(NewL,NewLl,F).	
treeFlat(L,[L]).

%helper function for summing terms in a list
listSum([],0).
listSum([H|T],R):-
	listSum(T, SumT),
	R is H + SumT.

%sum terms in a tree
treeSum([],0).
treeSum(L,S):-
	treeFlat(L, NewL),
	listSum(NewL, S).

%treeMerge
	
