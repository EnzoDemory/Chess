Class {
	#name : 'MyPawnTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTests >> testBlackPawnCanMoveOneOrTwoSquaresForwardWhenStarting [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn black.
	board at: 'e7' put: pawn.
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 2.
	self assertCollection: pawnLegalMoves includesAll: { board at: 'e6'. 
																		board at: 'e5' }
	
]

{ #category : 'tests' }
MyPawnTests >> testBlackPawnCanOnlyMoveForward [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn black.
	board at: 'e5' put: pawn.
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 1.
	self assertCollection: pawnLegalMoves includesAll: {board at: 'e4' }
	
]

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanMoveOneOrTwoSquaresForwardWhenStarting [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e2' put: pawn.
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 2.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'e3'.
																		board at: 'e4'}
	
]

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanOnlyMoveForward [
	| board pawn pawnLegalMoves |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e4' put: pawn.
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 1.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'e5' }
	
]
