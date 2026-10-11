Class {
	#name : 'MyMovement',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyMovement >> canExecuteEnPassantBy: aPawn on: aSquare [
	  ^ self subclassResponsibility 
]

{ #category : 'testing' }
MyMovement >> isPawnDoubleStep [ 
	^ self subclassResponsibility
]
