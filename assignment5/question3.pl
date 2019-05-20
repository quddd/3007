/*Qudus Agbalaya 101007487*/

%to get the last element of a list
lastEle(X,[X]).
lastEle(X,[_|Cdr]):-
	lastEle(X,Cdr).

%maps grade value to corresponding letter grade
gradeMap(L,R) :- 
	maplist(lettergrade,L,R).

%maps grade value to corresponding letter grade
lettergrade(Letter,a) :- between(80,100,Letter).
lettergrade(Letter,b) :- between(70,79, Letter).
lettergrade(Letter,c) :- between(60,69, Letter).
lettergrade(Letter,d) :- between(50,59, Letter).
lettergrade(Letter,f) :- between(0 ,49, Letter).

% succeeds when the lists L1 and L2 are the result of splitting the elements of list List depending on the value of Pivot
split([],_,[],[]).

split([Car|Cdr],Pivot,[Car|Cdr1],L2):-
	Car=<Pivot,
	split(Cdr,Pivot,Cdr1,L2).
	
split([Car|Cdr],Pivot,L1,[Car|Cdr2]):-
	Car>Pivot,
	split(Cdr,Pivot,L1,Cdr2).

%sucess if x is next to Y	
nextto(X,Y,[X,Y|_]).
nextto(X,Y,[_|T]):-
	nextto(X,Y,T).

	
	