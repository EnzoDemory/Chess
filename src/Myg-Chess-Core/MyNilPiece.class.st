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

	^ color renderNilOn: aSquare
]

{ #category : 'rendering' }
MyNilPiece >> targetSquaresLegal: aBoolean [

	^ {}
]
