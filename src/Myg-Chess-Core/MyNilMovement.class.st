Class {
	#name : 'MyNilMovement',
	#superclass : 'MyMovement',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyNilMovement >> canExecuteEnPassantBy: aPawn on: aSquare [
	  ^ false
]

{ #category : 'testing' }
MyNilMovement >> isPawnDoubleStep [
	^ false
]

{ #category : 'testing' }
MyNilMovement >> removePawnCapturedWithEnPassantBy: aPawn on: aSquare [
	 	^self
]
