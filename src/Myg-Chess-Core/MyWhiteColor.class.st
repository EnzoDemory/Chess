Class {
	#name : 'MyWhiteColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'path commands' }
MyWhiteColor >> direction [ 
	 ^ #up
]

{ #category : 'testing' }
MyWhiteColor >> isWhite [
	 ^ true
]

{ #category : 'accessing' }
MyWhiteColor >> opponentColor [ 
	 ^ MyPieceColor black 
]

{ #category : 'path commands' }
MyWhiteColor >> pawnStartFile [
 
	 ^ $2
]

{ #category : 'rendering' }
MyWhiteColor >> renderBishopOn: aSquare [
	^ aSquare ifWhiteSquare: 'B' ifBlackSquare: 'b'
]

{ #category : 'rendering' }
MyWhiteColor >> renderKingOn: aSquare [
	^ aSquare ifWhiteSquare: 'K' ifBlackSquare: 'k'
]

{ #category : 'rendering' }
MyWhiteColor >> renderKnightOn: aSquare [
	^ aSquare ifWhiteSquare: 'N' ifBlackSquare: 'n'
]

{ #category : 'rendering' }
MyWhiteColor >> renderPawnOn: aSquare [
	^ aSquare ifWhiteSquare: 'P' ifBlackSquare: 'p'
]

{ #category : 'rendering' }
MyWhiteColor >> renderQueenOn: aSquare [
	^ aSquare ifWhiteSquare: 'Q' ifBlackSquare: 'q'
]

{ #category : 'rendering' }
MyWhiteColor >> renderRookOn: aSquare [
	^ aSquare ifWhiteSquare: 'R' ifBlackSquare: 'r'
]
