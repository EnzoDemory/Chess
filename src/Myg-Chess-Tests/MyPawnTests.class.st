Class {
	#name : 'MyPawnTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTests >> testBlackPawnCanMoveOneOrTwoSquaresForwardWhenStarting [
	| board pawn |
	board := MyChessBoard empty.
	pawn := MyPawn black.
	board at: 'e7' put: pawn.
	
	self assert: pawn legalTargetSquares equals: { board at: 'e6'. board at: 'e5' }
	
]

{ #category : 'tests' }
MyPawnTests >> testBlackPawnCanOnlyMoveForward [
	| board pawn |
	board := MyChessBoard empty.
	pawn := MyPawn black.
	board at: 'e5' put: pawn.
	
	self assert: pawn legalTargetSquares equals: { board at: 'e4' }
	
]

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanMoveOneOrTwoSquaresForwardWhenStarting [
	| board pawn |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e2' put: pawn.
	
	self assert: pawn legalTargetSquares equals: { board at: 'e3'. board at: 'e4' }
	
]

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanOnlyMoveForward [
	| board pawn |
	board := MyChessBoard empty.
	pawn := MyPawn white.
	board at: 'e4' put: pawn.
	
	self assert: pawn legalTargetSquares equals: { board at: 'e5' }
	
]
