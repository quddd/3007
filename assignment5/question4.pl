/*Qudus Agbalaya 101007487*/

%myAppend(L1,L2,L3) to append 2 lists
myAppend([],L2,L2).
myAppend([H|L1],L2,[H|L]) :- myAppend(L1,L2,L).

%find the last element of a list using myAppend.
myFirst(X,L):- myAppend(_,[X|T],L).
myLast(X,L):- myAppend(_,[X],L).

%if X is next to Y in a list using myAppend
nextto(X,Y,L):-
	myAppend(_,[X,Y|_],L).
	
%myreverse(L1,L2)- if L1 is the reverse of L2
myReverse([],[]).
myReverse([H|T],L):-
	myReverse(T,L2),
	myAppend(L2,[H],L).