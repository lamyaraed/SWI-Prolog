%Name : Lamya Raed Aly
%ID : 20170399
%Group : Cs-4
%Task1

move([1,0]).
move([0,1]).
move([2,0]).
move([0,2]).
move([1,1]).

game(StartSeq,Expected):-
    game(StartSeq,Expected,[[StartSeq,0]],0).

game(Expected,Expected,_,_):-!.

game(StartSeq,Expected,Visited,Location):-
    movingBoat(StartSeq,Next,Location,NewLocation),
    not(member([Next,NewLocation],Visited)),
    not(unsafe(Next)),
    game(Next,Expected,[[Next,NewLocation]|Visited],NewLocation),
    write([Next,NewLocation]),nl.

unsafe([[RMission,RCanni],[LMission,LCanni]]):-
    (   (RMission<RCanni),(RMission>0))
    ;
    (   (LMission<LCanni),(LMission>0)).

movingBoat([[RMission,RCanni],[LMission,LCanni]],NewNext,0,1):-
    move([H,T]),
    not(H>RMission),
    not(T>RCanni),
    NewLMis is LMission + H,
    NewLCan is LCanni +T,
    NewRMis is RMission - H,
    NewRCan is RCanni -T,
    append([NewRMis],[NewRCan],R),
    append([NewLMis],[NewLCan],L),
    append([R],[L],NewNext).

movingBoat([[RMission,RCanni],[LMission,LCanni]],NewNext,1,0):-
    move([H,T]),
    not(H>LMission),
    not(T>LCanni),
    NewRMis is RMission + H,
    NewRCan is RCanni +T,
    NewLMis is LMission - H,
    NewLCan is LCanni -T,
    append([NewRMis],[NewRCan],R),
    append([NewLMis],[NewLCan],L),
    append([R],[L],NewNext).
