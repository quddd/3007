%Qudus Agbalaya
% 101007487

 
male(grandad).
male(bro).
male(dad).
male(uncl).
male(son).

female(grandmum).
female(mom).
female(sis).
female(aunty).
female(daughter).

father(dad,son).
father(dad,bro).
father(grandad,dad).
father(grandad,uncl).

mother(mom,sis).
mother(mom,daughter).
mother(grandmum,mom).
mother(grandmum,aunty).

married(dad, mom).
married(grandad, grandmum).

parent(X,Y):-
	father(X,Y);
	mother(X,Y).

different(X,Y):- X\=Y.

is_mother(X):-
	mother(X,_).

is_father(X):-
	father(X,_).
	
aunt(X,Y):-
	female(X), 
	parent(G,X),
	parent(P,Y),
	parent(G,P),
	not(parent(X,Y)).

uncle(X,Y):-
	male(X), 
	parent(G,X),
	parent(P,Y),
	parent(G,P),
	not(parent(X,Y)).
	
sister(X,Y):-
	female(X),
	mother(M,X),
	mother(M,Y).
	
brother(X,Y):-
	male(X),
	father(F,X),
	father(F,Y).
	
grandfather(X,Y):-
	male(X),
	parent(X,P),
	parent(P,Y).
	
	
grandmother(X,Y):-
	female(X),
	parent(X,P),
	parent(P,Y).

ancestor(X,Y):-
	parent(X,Y);
	parent(X,Z),
	ancestor(Z,Y).
	
	
/*
?- parent(grandmum,aunty).
true.

?- aunt(aunty,sis).
true.

?- uncle(uncl,son).
true .
*/
