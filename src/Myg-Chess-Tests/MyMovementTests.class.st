Class {
	#name : 'MyMovementTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyMovementTests >> testPassedSquareOfBlackDoubleStepIsTheSquareInBetween [
    | board pawn movement |
    board := MyChessBoard empty.
    pawn := MyPawn black.

    movement := MyPieceMovement withPiece: pawn from: (board at: 'e7') to: (board at: 'e5').

    self assert: movement passedSquare equals: (board at: 'e6')
]

{ #category : 'tests' }
MyMovementTests >> testPassedSquareOfWhiteDoubleStepIsTheSquareInBetween [
    | board pawn movement |
    board := MyChessBoard empty.
    pawn := MyPawn white.

    movement := MyPieceMovement withPiece: pawn from: (board at: 'e2') to: (board at: 'e4').

    self assert: movement passedSquare equals: (board at: 'e3')
]

{ #category : 'tests' }
MyMovementTests >> testPawnOneSquareForwardIsNotADoubleStep [
    | board pawn movement |
    board := MyChessBoard empty.
    pawn := MyPawn white.

    movement := MyPieceMovement withPiece: pawn from: (board at: 'e2') to: (board at: 'e3').

    self deny: movement isPawnDoubleStep
]

{ #category : 'tests' }
MyMovementTests >> testRookTwoSquaresForwardIsNotAPawnDoubleStep [
    | board rook movement |
    board := MyChessBoard empty.
    rook := MyRook white.

    movement := MyPieceMovement withPiece: rook from: (board at: 'e2') to: (board at: 'e4').

    self deny: movement isPawnDoubleStep
]

{ #category : 'tests' }
MyMovementTests >> testWhitePawnTwoSquaresForwardIsADoubleStep [
    | board pawn movement |
    board := MyChessBoard empty.
    pawn := MyPawn white.

    movement := MyPieceMovement withPiece: pawn from: (board at: 'e2') to: (board at: 'e4').

    self assert: movement isPawnDoubleStep
]
