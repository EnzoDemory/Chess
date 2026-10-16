Class {
	#name : 'MyBlackColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyBlackColor >> direction [ 
	 ^ #down
]

{ #category : 'testing' }
MyBlackColor >> isWhite [
	 ^ false
]

{ #category : 'accessing' }
MyBlackColor >> opponentColor [ 
	 ^ MyPieceColor white
]

{ #category : 'path commands' }
MyBlackColor >> pawnStartFile [
 
	 ^ $7
]

{ #category : 'rendering' }
MyBlackColor >> renderBishopOn: aSquare [
	^ aSquare ifWhiteSquare: 'V' ifBlackSquare: 'v'
]

{ #category : 'rendering' }
MyBlackColor >> renderKingOn: aSquare [
	^ aSquare ifWhiteSquare: 'L' ifBlackSquare: 'l'
]

{ #category : 'rendering' }
MyBlackColor >> renderKnightOn: aSquare [
	^ aSquare ifWhiteSquare: 'M' ifBlackSquare: 'm'
]

{ #category : 'rendering' }
MyBlackColor >> renderPawnOn: aSquare [
	^ aSquare ifWhiteSquare: 'O' ifBlackSquare: 'o'
]

{ #category : 'rendering' }
MyBlackColor >> renderQueenOn: aSquare [
	^ aSquare ifWhiteSquare: 'W' ifBlackSquare: 'w'
]

{ #category : 'rendering' }
MyBlackColor >> renderRookOn: aSquare [
	^ aSquare ifWhiteSquare: 'T' ifBlackSquare: 't'
]
