Class {
	#name : 'MyWhiteColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyWhiteColor >> direction [ 
	 ^ #up
]

{ #category : 'as yet unclassified' }
MyWhiteColor >> isWhite [
	 ^ true
]

{ #category : 'as yet unclassified' }
MyWhiteColor >> opponentColor [ 
	 ^ MyPieceColor black 
]

{ #category : 'as yet unclassified' }
MyWhiteColor >> pawnStartFile [
 
	 ^ $2
]
