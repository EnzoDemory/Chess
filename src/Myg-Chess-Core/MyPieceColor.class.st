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

{ #category : 'path commands' }
MyPieceColor >> direction [ 
	 ^ self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MyPieceColor >> isWhite [
	 ^ self subclassResponsibility 
]

{ #category : 'accessing' }
MyPieceColor >> opponentColor [ 
	 ^ self subclassResponsibility 
]

{ #category : 'path commands' }
MyPieceColor >> pawnStartFile [
 
	 ^ self subclassResponsibility 
]
