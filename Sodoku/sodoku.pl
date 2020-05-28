test([[0,2,6,0,0,0,8,1,0],
      [3,0,0,7,0,8,0,0,6],
      [4,0,0,0,5,0,0,0,7],
      [0,5,0,1,0,7,0,9,0],
      [0,0,3,9,0,5,1,0,0],
      [0,4,0,3,0,2,0,5,0],
      [1,0,0,0,3,0,0,0,2],
      [5,0,0,2,0,4,0,0,9],
      [0,3,8,0,0,0,4,6,0]]).

testSolution([[0,2,6,0,0,0,8,1,0],
              [3,0,0,7,0,8,0,0,6],
              [4,0,0,0,5,1,2,0,7],
              [8,5,2,1,0,7,6,9,0],
              [6,7,3,9,8,5,1,0,0],
              [9,4,1,3,0,2,0,5,0],
              [1,0,0,0,3,0,0,0,2],
              [5,0,0,2,0,4,0,0,9],
              [0,3,8,0,0,0,4,6,0]]).
test2([[0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0],
       [0,0,0,0,0,0,0,0,0]]).


num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).

%Block 0
block(Grid,Col,Row,PrevBlock,Block):-
   (Row < 3),
   (Col < 3),

   nth0(0,Grid,Row0),
   nth0(0,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(1,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(2,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(1,Grid,Row1),
   nth0(0,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(1,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(2,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(2,Grid,Row2),
   nth0(0,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(1,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(2,Row2,Value9),
   append([Value9],MyBlock8,Block).

%Block 1
block(Grid,Col,Row,PrevBlock,Block):-
   (Row < 3),
   (Col > 2),(Col<6),

   nth0(0,Grid,Row0),
   nth0(3,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),

   nth0(4,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(5,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(1,Grid,Row1),
   nth0(3,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),

   nth0(4,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(5,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(2,Grid,Row2),
   nth0(3,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(4,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(5,Row2,Value9),
   append([Value9],MyBlock8,Block).

%Block 2
block(Grid,Col,Row,PrevBlock,Block):-
   (Row < 3),
   (Col > 5),

   nth0(0,Grid,Row0),
   nth0(6,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(7,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(8,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(1,Grid,Row1),
   nth0(6,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(7,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(8,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(2,Grid,Row2),
   nth0(6,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(7,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(8,Row2,Value9),
   append([Value9],MyBlock8,Block).


%Block 3
block(Grid,Col,Row,PrevBlock,Block):-
   (Row > 2),(Row<6),
   (Col < 3),

   nth0(3,Grid,Row0),
   nth0(0,Row0,Value),
   append([Value],PrevBlock,MyBlock1),
   nth0(1,Row0,Value1),
   append([Value1],MyBlock1,MyBlock2),
   nth0(2,Row0,Value2),
   append([Value2],MyBlock2,MyBlock3),

   nth0(4,Grid,Row1),
   nth0(0,Row1,Value3),
   append([Value3],MyBlock3,MyBlock4),
   nth0(1,Row1,Value4),
   append([Value4],MyBlock4,MyBlock5),
   nth0(2,Row1,Value5),
   append([Value5],MyBlock5,MyBlock6),

   nth0(5,Grid,Row2),
   nth0(0,Row2,Value6),
   append([Value6],MyBlock6,MyBlock7),
   nth0(1,Row2,Value7),
   append([Value7],MyBlock7,MyBlock8),
   nth0(2,Row2,Value8),
   append([Value8],MyBlock8,Block).

%Block 4
block(Grid,Col,Row,PrevBlock,Block):-
   (Row > 2),(Row<6),
   (Col > 2),(Col<6),

   nth0(3,Grid,Row0),
   nth0(3,Row0,Value),
   append([Value],PrevBlock,MyBlock1),
   nth0(4,Row0,Value1),
   append([Value1],MyBlock1,MyBlock2),
   nth0(5,Row0,Value2),
   append([Value2],MyBlock2,MyBlock3),

   nth0(4,Grid,Row1),
   nth0(3,Row1,Value3),
   append([Value3],MyBlock3,MyBlock4),
   nth0(4,Row1,Value4),
   append([Value4],MyBlock4,MyBlock5),
   nth0(5,Row1,Value5),
   append([Value5],MyBlock5,MyBlock6),

   nth0(5,Grid,Row2),
   nth0(3,Row2,Value6),
   append([Value6],MyBlock6,MyBlock7),
   nth0(4,Row2,Value7),
   append([Value7],MyBlock7,MyBlock8),
   nth0(5,Row2,Value8),
   append([Value8],MyBlock8,Block).


%Block 5
block(Grid,Col,Row,PrevBlock,Block):-
   (Row > 2), ( Row < 6),
   (Col > 5),

   nth0(3,Grid,Row0),
   nth0(6,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(7,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(8,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(4,Grid,Row1),
   nth0(6,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(7,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(8,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(5,Grid,Row2),
   nth0(6,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(7,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(8,Row2,Value9),
   append([Value9],MyBlock8,Block).



%Block 6
block(Grid,Col,Row,PrevBlock,Block):-
   (Row > 5),
   (Col < 3),

   nth0(6,Grid,Row0),
   nth0(0,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(1,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(2,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(7,Grid,Row1),
   nth0(0,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(1,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(2,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(8,Grid,Row2),
   nth0(0,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(1,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(2,Row2,Value9),
   append([Value9],MyBlock8,Block).


%Block 7
block(Grid,Col,Row,PrevBlock,Block):-
   (Row > 5),
   (Col > 2),(Col<6),

   nth0(6,Grid,Row0),
   nth0(3,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(4,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(5,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(7,Grid,Row1),
   nth0(3,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(4,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(5,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(8,Grid,Row2),
   nth0(3,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(4,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(5,Row2,Value9),
   append([Value9],MyBlock8,Block).



%Block 8
block(Grid,Col,Row,PrevBlock,Block):-
   (Row >5),
   (Col > 5),

   nth0(6,Grid,Row0),
   nth0(6,Row0,Value1),
   append([Value1],PrevBlock,MyBlock1),
   nth0(7,Row0,Value2),
   append([Value2],MyBlock1,MyBlock2),
   nth0(8,Row0,Value3),
   append([Value3],MyBlock2,MyBlock3),

   nth0(7,Grid,Row1),
   nth0(6,Row1,Value4),
   append([Value4],MyBlock3,MyBlock4),
   nth0(7,Row1,Value5),
   append([Value5],MyBlock4,MyBlock5),
   nth0(8,Row1,Value6),
   append([Value6],MyBlock5,MyBlock6),

   nth0(8,Grid,Row2),
   nth0(6,Row2,Value7),
   append([Value7],MyBlock6,MyBlock7),
   nth0(7,Row2,Value8),
   append([Value8],MyBlock7,MyBlock8),
   nth0(8,Row2,Value9),
   append([Value9],MyBlock8,Block).



go(Start):-
   dfs([Start],[]).

sodokuTest():-
   test(Y),
   dfs([Y],[]).

isGoal(Grid):-
   not(getFirstEmpty(Grid,0,_,_)).

printGrid([]):-!.
printGrid([H|T]):-
   printRow(H),
   printGrid(T).

printRow([]):-
   put(10),!.
printRow([H|T]):-
   write(H),
   write(' '),
   write(' '),
   printRow(T).

%dfs to get the valid board
dfs([],_):-
    write('no Solution'),!.

dfs([State|_],_):-
    isGoal(State),
    printGrid(State),
    write('We Reached the goal').

dfs([State|T],Closed):-
    getValidChildren(State,[State|T],Closed,Children),
    append(Children,T,NewOpen),
    %write(Children),nl,
    dfs(NewOpen,[State|Closed]).

%gets all valid from validNum
%getValidChildren(State,Open,Closed,Children):-
%    findall(Next,validMove(State,Next,Open,Closed),Children).%


getValidChildren(State, Open ,Closed , Children):-
		bagof(X, validMove(State, X,Open, Closed), Children), ! .
getValidChildren(_,_,_,[]).

validMove(State,Next,Open,Closed):-
   getFirstEmpty(State,0,Col,Row),
   setValue(State,Col,Row,NewGrid),
   safeCol(NewGrid,Col),
   safeRow(NewGrid,Row),
   safeBlock(NewGrid,Col,Row),
   not(member(NewGrid,Open)),
   not(member(NewGrid,Closed)),
   Next = NewGrid.


checkDiff([]).
checkDiff([F|H]):-
   (   ((F = 0)->checkDiff(H));
   (   not(member(F,H))->checkDiff(H))).

%get index for 0 slot
getFirstEmpty([First|_],Pos,Col,Pos):-
   nth0(Col,First,0),!.
getFirstEmpty([_|Rest],Pos,Col,Row):-
   NPos is Pos+1,
   getFirstEmpty(Rest,NPos,Col,Row).

%Set Value
setValue(Grid,Col,Row,NewGrid):-
   num(X),
   nth0(Row,Grid,Row0),
   replace_element_at(Col,Row0,X,NewRow),
   replace_element_at(Row,Grid,NewRow,NewGrid).

%copy all list but replace the specified index
replace_element_at(0, [_|L], E, [E|L]):-!.
replace_element_at(N, [X|L], E, [X|R]) :-
   M is N-1,
   replace_element_at(M, L, E, R).


%check Coloumn Safety
safeCol(Grid,ColNum):-
   coloumn(Grid,ColNum,[],Col),
   checkDiff(Col).

coloumn(Grid,Index,Col,MyCol):-
   nth0(0,Grid,Row0),
   nth0(Index,Row0,Value1),
   append([Value1],Col,NewCol),
   nth0(1,Grid,Row1),
   nth0(Index,Row1,Value2),
   append([Value2],NewCol,NewCol1),
   nth0(2,Grid,Row2),
   nth0(Index,Row2,Value3),
   append([Value3],NewCol1,NewCol2),
   nth0(3,Grid,Row3),
   nth0(Index,Row3,Value4),
   append([Value4],NewCol2,NewCol3),
   nth0(4,Grid,Row4),
   nth0(Index,Row4,Value5),
   append([Value5],NewCol3,NewCol4),
   nth0(5,Grid,Row5),
   nth0(Index,Row5,Value6),
   append([Value6],NewCol4,NewCol5),
   nth0(6,Grid,Row6),
   nth0(Index,Row6,Value7),
   append([Value7],NewCol5,NewCol6),
   nth0(7,Grid,Row7),
   nth0(Index,Row7,Value8),
   append([Value8],NewCol6,NewCol7),
   nth0(8,Grid,Row8),
   nth0(Index,Row8,Value9),
   append([Value9],NewCol7,MyCol).

%Check Row Safety
safeRow(Grid,RowNum):-
   nth0(RowNum,Grid,Row0),
   checkDiff(Row0).


%Check Block Safety
safeBlock(State,Col,Row):-
   block(State,Col,Row,[],Grid),
   checkDiff(Grid).


testing(X):-
   test(Y),
   safeRow(Y,2).




















