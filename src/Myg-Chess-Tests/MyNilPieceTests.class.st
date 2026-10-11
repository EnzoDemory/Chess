Class {
	#name : 'MyNilPieceTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyNilPieceTests >> testNilPieceCannotMove [

	| board nilPiece |
	
	board := MyChessBoard empty.
	nilPiece := MyNilPiece new.
	board at: 'e3' put: nilPiece.
	
	self deny: (nilPiece canMoveTo: (board at: 'e4'))
]

{ #category : 'tests' }
MyNilPieceTests >> testNilPieceHasNoTargetSquares [
    
	 self assert: MyNilPiece new targetSquares isEmpty
]

{ #category : 'tests' }
MyNilPieceTests >> testNilPieceIsNotAPiece [

     self deny: MyNilPiece new isPiece
]

{ #category : 'tests' }
MyNilPieceTests >> testNilPieceNeverMoves [

    | nilPiece board|
	 
	 board := MyChessBoard empty.
	
    nilPiece := (board at: 'e4') contents.
    nilPiece moveTo: (board at: 'e5').

    self deny: (board at: 'e5') hasPiece
]

{ #category : 'tests' }
MyNilPieceTests >> testSquareIsEmptyAfterThePieceLeaves [
	 
	| board |
	
	 board := MyChessBoard empty.
	
    (board at: 'e2') contents: MyPawn white.
    (board at: 'e2') emptyContents.

    self deny: (board at: 'e2') hasPiece
]

{ #category : 'tests' }
MyNilPieceTests >> testSquareWithoutPieceHasNoPiece [
	 
	| board |
	
	 board := MyChessBoard empty.
	
    self deny: (board at: 'e4') hasPiece
]
