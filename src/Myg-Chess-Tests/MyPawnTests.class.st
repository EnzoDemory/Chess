Class {
	#name : 'MyPawnTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTests >> testBlackPawnCanCaptureWhitePawnWithDiagonalMove [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn black.
	
	board at: 'f5' put: pawn.
	board at: 'e4' put: (MyPawn white).
	board at: 'g4' put: (MyPawn white).
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 3.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'f4'.
																		board at: 'e4'. 
																		board at: 'g4' }
]

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
MyPawnTests >> testBlackPawnCannotCaptureBlackPawnWithDiagonalMove [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn black.
	
	board at: 'f5' put: pawn.
	board at: 'e4' put: (MyPawn black).
	board at: 'g4' put: (MyPawn black).
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 1.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'f4' }
]

{ #category : 'tests' }
MyPawnTests >> testDiagonalCaptureRemovesCapturedPiece [

	| board whitePawn blackPawn |
    board := MyChessBoard empty.
    whitePawn := MyPawn white.
    blackPawn := MyPawn black.
    board at: 'e3' put: whitePawn.
    board at: 'f4' put: blackPawn.

    whitePawn moveTo: (board at: 'f4').

    self assert: (board at: 'f4') contents equals: whitePawn.
    self deny: (board at: 'e3') hasPiece.
    self deny: (board pieces includes: blackPawn)
	
]

{ #category : 'tests' }
MyPawnTests >> testPawnCannotCapturePawnWithForwardMove [
	| board blackPawn whitePawn|
	board := MyChessBoard empty.
	blackPawn := MyPawn black.
	board at: 'f5' put: blackPawn.
	whitePawn := MyPawn white.
	board at: 'f4' put: whitePawn.
	
	self assert: blackPawn legalTargetSquares size equals: 0.
	self assert: whitePawn legalTargetSquares size equals: 0.
]

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCanCaptureBlackPawnWithDiagonalMove [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn white.
	
	board at: 'e3' put: pawn.
	board at: 'f4' put: (MyPawn black).
	board at: 'd4' put: (MyPawn black).
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 3.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'e4'.
																		board at: 'f4'. 
																		board at: 'd4' }
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

{ #category : 'tests' }
MyPawnTests >> testWhitePawnCannotCaptureWhitePawnWithDiagonalMove [
	| board pawn pawnLegalMoves|
	board := MyChessBoard empty.
	pawn := MyPawn white.
	
	board at: 'e3' put: pawn.
	board at: 'f4' put: (MyPawn white).
	board at: 'd4' put: (MyPawn white).
	
	pawnLegalMoves := pawn legalTargetSquares.
	
	self assert: pawnLegalMoves size equals: 1.
	self assertCollection: pawnLegalMoves includesAll: {	board at: 'e4' }
]
