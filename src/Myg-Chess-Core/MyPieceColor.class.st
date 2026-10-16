Class {
	#name : 'MyPieceColor',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'constants' }
MyPieceColor class >> black [
	 ^ MyBlackColor new
]

{ #category : 'constants' }
MyPieceColor class >> white [
	 ^ MyWhiteColor new
]

{ #category : 'comparing' }
MyPieceColor >> = aPieceColor [
	^ self class = aPieceColor class
]

{ #category : 'as yet unclassified' }
MyPieceColor >> direction [ 
	 ^ self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MyPieceColor >> isWhite [
	 ^ self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MyPieceColor >> opponentColor [ 
	 ^ self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MyPieceColor >> pawnStartFile [
 
	 ^ self subclassResponsibility 
]
