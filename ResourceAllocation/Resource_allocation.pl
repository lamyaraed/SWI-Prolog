processes([p1,p2,p3,p4]).

available([[r1, 1], [r2, 0]]).

:- dynamic
	available_resources(_).

allocated(p1, []).
allocated(p2, [r1]).
allocated(p3, [r1]).
allocated(p4, [r2]).

requested(p1, [r1]).
requested(p3, [r2]).
requested(p2, [r2]).



safe_State(SafeSeq):-
	processes(P),
	length(P, Len),
	available(A),
	retractall(available_resources(_)),
	assert(available_resources(A)),
	safe_State(P, Len, 0, [], SafeSeq).

safe_State([], 0, 0, SafeSeq, SafeSeq):- !.

safe_State([H|T], Len, Counter, Tmp, SafeSeq):-
    (Counter < Len),
    (
	can_execute(H)->
	allocated(H,Res),
        release(Res),
        append(Tmp,[H], Tmp2),
		NewLen is Len - 1,
        safe_State(T, NewLen, 0, Tmp2, SafeSeq)
     ;
	 C is Counter + 1,
        append(T, [H], L),
        safe_State(L, Len, C, Tmp, SafeSeq)
	).

can_execute(P):-
	(
	not(requested(P, X));
	requested(P, Request),
	available_resources(Avail),
	checkAvailable(Request, Avail, [])
   ).


checkAvailable([], _, _):-!.

checkAvailable([H|T], [[H,AvailNum]|AvailT], UpdatedList):-
    AvailNum > 0,
    NewAvail is AvailNum - 1,
	append(UpdatedList, [[H, NewAvail]], L),
	append(L, AvailT, L2),
    checkAvailable(T, L2, [])
	;
    !, false.

checkAvailable([H|T], [[ResName, AvailNum]|AvailT], UpdatedList):-
	append(UpdatedList, [[ResName, AvailNum]], L),
	checkAvailable([H|T], AvailT, L).


release([]):-!.
release([H|T]):-
   available_resources(Avail),
   updateResource(H, Avail, []),
   release(T).


updateResource(H, [[H, AvailNum]|AvailT], CurrentList):-
	NewAvail is AvailNum + 1,
	append(CurrentList, [[H, NewAvail]], L),
	append(L, AvailT, NewList),
	retractall(available_resources(_)),
	assert(available_resources(NewList)), !.

updateResource(H, [[ResName, AvailNum]|AvailT], CurrentList):-
	append(CurrentList, [[ResName, AvailNum]], NewCurrentList),
	updateResource(H, AvailT, NewCurrentList).
