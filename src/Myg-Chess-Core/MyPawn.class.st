Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyPawn >> forwardMoves [
	^ self oneStepForward
	 
	
]

{ #category : 'path commands' }
MyPawn >> forwardOf: aSquare [
	^ self isWhite
		   ifTrue: [ aSquare up ]
		   ifFalse: [ aSquare down ]
	
]

{ #category : 'path commands' }
MyPawn >> forwardSquare [
	^ self isWhite
		   ifTrue: [ square up ]
		   ifFalse: [ square down ]
	
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
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

	^ self forwardMoves
]
