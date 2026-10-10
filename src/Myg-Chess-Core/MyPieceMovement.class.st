Class {
	#name : 'MyPieceMovement',
	#superclass : 'MyMovement',
	#instVars : [
		'piece',
		'originSquare',
		'destinationSquare'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'instance creation' }
MyPieceMovement class >> withPiece: aPiece from: anOriginSquare to: aDestinationSquare [
	| instance |
	instance := MyPieceMovement new.
	instance piece: aPiece.
	instance originSquare: anOriginSquare.
	instance destinationSquare: aDestinationSquare.
	^ instance
]

{ #category : 'accessing' }
MyPieceMovement >> destinationSquare [

	^ destinationSquare
]

{ #category : 'accessing' }
MyPieceMovement >> destinationSquare: anObject [

	destinationSquare := anObject
]

{ #category : 'testing' }
MyPieceMovement >> isPawnDoubleStep [
	^ piece isPawn and: [ destinationSquare = (piece direction value: (piece direction value: originSquare )) ]
]

{ #category : 'accessing' }
MyPieceMovement >> originSquare [

	^ originSquare
]

{ #category : 'accessing' }
MyPieceMovement >> originSquare: anObject [

	originSquare := anObject
]

{ #category : 'testing' }
MyPieceMovement >> passedSquare [
	^ piece direction value: originSquare
]

{ #category : 'accessing' }
MyPieceMovement >> piece [

	^ piece
]

{ #category : 'accessing' }
MyPieceMovement >> piece: anObject [

	piece := anObject
]
