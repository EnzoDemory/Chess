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
