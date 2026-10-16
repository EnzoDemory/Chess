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
