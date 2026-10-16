Class {
	#name : 'MyBlackColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyBlackColor >> direction [ 
	 ^ #down
]

{ #category : 'as yet unclassified' }
MyBlackColor >> isWhite [
	 ^ false
]

{ #category : 'as yet unclassified' }
MyBlackColor >> opponentColor [ 
	 ^ MyPieceColor white
]

{ #category : 'as yet unclassified' }
MyBlackColor >> pawnStartFile [
 
	 ^ $7
]
