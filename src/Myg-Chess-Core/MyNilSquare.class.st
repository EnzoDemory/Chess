Class {
	#name : 'MyNilSquare',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'instance creation' }
MyNilSquare >> + aPoint [
	^ self
]

{ #category : 'instance creation' }
MyNilSquare >> down [
	^ self
]

{ #category : 'testing' }
MyNilSquare >> hasPiece [ 
	^ false
]

{ #category : 'testing' }
MyNilSquare >> isOnBoard [
	^false
]

{ #category : 'instance creation' }
MyNilSquare >> left [
	^ self
]

{ #category : 'instance creation' }
MyNilSquare >> right [
	^ self
]

{ #category : 'instance creation' }
MyNilSquare >> up [
	^ self
]
