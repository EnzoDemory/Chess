Class {
	#name : 'MyChessBoardTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessBoardTests >> testBoardRemembersAPawnDoubleStep [

    | board pawn |
    board := MyChessBoard empty.
    pawn := MyPawn white.
    board at: 'e2' put: pawn.

    pawn moveTo: (board at: 'e4').

    self assert: board lastMovement isPawnDoubleStep
]

{ #category : 'tests' }
MyChessBoardTests >> testBoardRemembersASingleStepAsNotADoubleStep [
    | board pawn |
    board := MyChessBoard empty.
    pawn := MyPawn white.
    board at: 'e2' put: pawn.

    pawn moveTo: (board at: 'e3').

    self deny: board lastMovement isPawnDoubleStep
]

{ #category : 'tests' }
MyChessBoardTests >> testNewBoardHasNoPawnDoubleStep [

    self deny: MyChessBoard empty lastMovement isPawnDoubleStep
]

{ #category : 'tests' }
MyChessBoardTests >> testNextMoveReplaceTheLastMovement [

    | board pawn rook |
    board := MyChessBoard empty.
    pawn := MyPawn white.
    rook := MyRook black.
    board at: 'e2' put: pawn.
    board at: 'a7' put: rook.

    pawn moveTo: (board at: 'e4').
    rook moveTo: (board at: 'a6').

    self deny: board lastMovement isPawnDoubleStep
]
