Class {
	#name : 'MyNilColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyNilColor >> renderNilOn: aSquare [
	^ aSquare ifWhiteSquare: 'z' ifBlackSquare: 'x'
]
