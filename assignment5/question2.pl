/*Qudus Agbalaya 101007487*/

actor(jonny, depp, gender(male)).
actor(bruce, willis, gender(male)).
actor(glenn, close, gender(female)).
actor(orlando, bloom, gender(male)).
actor(jennifer, lawrence, gender(female)).
actor(sean, bean, gender(male)).
actor(angelina, jolie, gender(female)).
actor(keira, knightley, gender(female)).
actor(benedict, cumberbatch, gender(male)).
actor(james,mcavoy, gender(male)).
actor(robin, williams, gender(male)).
actor(emilia, clarke, gender(female)).
actor(ryan, reynolds, gender(male)).
actor(chris, pratt, gender(male)).
actor(karen, gillan, gender(female)).

movie(year(2003), title([pirates,of,the,carribean]), cast([actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)])).
movie(year(2014), title([guardians, of, the, galaxy]), cast([actor(chris, pratt), actor(karen,gillan) ])).
movie(year(1988), title([die,hard]), cast([actor(bruce, willis)])).
movie(year(2001), title([lord,of,the,rings]), cast([actor(orlando, bloom), actor(sean, bean)])).
movie(year(2016), title([xmen, apocalypse]), cast([actor(jennifer,lawrence), actor(james, mcavoy)])).
movie(year(2014), title([the,imitation,game]), cast([actor(benedict, cumberbatch), actor(keira, knightley)])).
movie(year(2012), title([the,hunger,games]), cast([actor(jennifer,lawrence)])).
movie(year(2016), title([deadpool]), cast([actor(ryan, reynolds)])).

% a.) ?- movie(year(Y), T,_), Y < 2010.

% b.) ?- movie(_,title(T),_), member(of,T), member(the,T).

% c.) ?- movie(_,title(T1), cast(X1)), movie(_,title(T2), cast(X2)), member(actor(X,Y),X1), member(actor(X,Y),X2), T1 \=T2.

% d.) ?- movie(_,title(T), cast(X)), member(actor(chris,_), X).

% e.) ?- actor(First,Last,gender(female)).

% f.) ?- movie(_,title(T),cast(Actor)), member( actor( sean,bean),Actor).

% g.) ?- movie(_,title(T1), cast(Cast1)), movie(_,title(T2), cast(Cast2)), member(actor(X,Y),Cast1), member(actor(X,Y),Cast2), T1 \=T2.

% h.) ?- movie(year(Y),title(T),_),  not((movie(year(Y2),title(T2),_), Y > Y2)).

% i.) ?- actor(Firstname,Lastname,_), not((movie(year(Y),title(T),cast(X)), member(actor(Firstname,Lastname),X))).

