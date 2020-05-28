:-use_module([Level(test)]).

%up%
moves([R,C],[NR,C],Move):-
    R>0,
    NR is R-1,
    Move = 'up'.

%down%
moves([R,C],[NR,C],Move):-
    dim(X,_),
    R<(X-1),
    NR is R+1,
    Move = 'down'.

%left%
moves([R,C],[R,NC],Move):-
    C>0,
    NC is C-1,
    Move = 'left'.

%right%
moves([R,C],[R,NC],Move):-
    dim(_,Y),
    C<(Y-1),
    NC is C+1,
    Move = 'right'.

play(Moves,Stars):-
    start(Start),
    end(End),
    play(Moves,Stars,0,[],[Start],Start,End).

play(NM,NS,NS,NM,_,End,End):-!.

play(Moves, Stars, NS, NM, Visited, Start, End):-
    moves(Start,NewStart,Move),
    not(member(NewStart,Visited)),
    not(bomb(NewStart)),
    append(NM,[Move],NewM),
    (star(NewStart)-> NewS is NS+1; NewS is NS),
    play(Moves,Stars,NewS,NewM,[NewStart|Visited],NewStart,End).







