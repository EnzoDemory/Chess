Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyPawn >> captureMoves [
	^ self diagonalSquares select: [ :s | s notNil and: [ s hasPiece and: [ self isWhite ~= s contents isWhite ] ] ]
	
]

{ #category : 'path commands' }
MyPawn >> diagonalSquares [
	^ { self forwardSquare ifNotNil: #left . self forwardSquare ifNotNil: #right }
]

{ #category : 'path commands' }
MyPawn >> direction [
	^ self isWhite ifTrue: [ #up ]
						ifFalse: [ #down ]
]

{ #category : 'path commands' }
MyPawn >> forwardMoves [
	^ self oneStepForward, self twoStepForward 
	 
	
]

{ #category : 'path commands' }
MyPawn >> forwardOf: aSquare [
	^ self direction value: aSquare
	
]

{ #category : 'path commands' }
MyPawn >> forwardSquare [
	^ self forwardOf: square
	
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'testing' }
MyPawn >> isFirstMove [
	^ self isWhite
		   ifTrue: [ square file = $2 ]
		   ifFalse: [ square file = $7 ]
	
	
]

{ #category : 'path commands' }
MyPawn >> oneStepForward [
	^ { self forwardSquare } select: [ :s | s notNil and: [ s hasPiece not ] ]
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ self forwardMoves, self captureMoves
]

{ #category : 'path commands' }
MyPawn >> twoStepForward [
	^ (self oneStepForward collect: [ :oneStep | self forwardOf: oneStep ])
	select: [ :s | self isFirstMove and: [ s notNil and: [ s hasPiece not ] ] ]
]
