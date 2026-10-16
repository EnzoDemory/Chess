Class {
	#name : 'MyNilPiece',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyNilPiece >> canMoveTo: aSquare [
	
	^ false
]

{ #category : 'rendering' }
MyNilPiece >> initialize [
	super initialize.
	color := MyNilColor new
]

{ #category : 'testing' }
MyNilPiece >> isPiece [
	
	^ false
]

{ #category : 'rendering' }
MyNilPiece >> renderPieceOn: aSquare [

	^ aSquare renderNil: self
]

{ #category : 'rendering' }
MyNilPiece >> targetSquaresLegal: aBoolean [

	^ {}
]
