Class {
	#name : 'MyNilSquareTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyNilSquareTests >> testMovingOffTheBoardGivesASquareThatIsNotOnBoard [

    | board |
    board := MyChessBoard empty.

    self deny: (board at: 'a1') left isOnBoard
]

{ #category : 'tests' }
MyNilSquareTests >> testMovingOnTheBoardGivesSquareThatIsOnBoard [

    | board |
    board := MyChessBoard empty.

    self assert: (board at: 'a1') right isOnBoard
]

{ #category : 'tests' }
MyNilSquareTests >> testNilSquareHasNoPiece [

    self deny: MyNilSquare new hasPiece
]

{ #category : 'tests' }
MyNilSquareTests >> testNilSquareIsNotOnBoard [

    self deny: MyNilSquare new up left isOnBoard
]
