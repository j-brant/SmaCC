Class {
	#name : #PyReturnNode,
	#superclass : #PyRootNode,
	#instVars : [
		'returnToken',
		'testlist'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyReturnNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitReturn: self
]

{ #category : #generated }
PyReturnNode >> nodeVariables [
	^ #(#testlist)
]

{ #category : #generated }
PyReturnNode >> returnToken [
	^ returnToken
]

{ #category : #generated }
PyReturnNode >> returnToken: aSmaCCToken [
	returnToken := aSmaCCToken
]

{ #category : #generated }
PyReturnNode >> testlist [
	^ testlist
]

{ #category : #generated }
PyReturnNode >> testlist: aPyRootNode [
	self testlist notNil
		ifTrue: [ self testlist parent: nil ].
	testlist := aPyRootNode.
	self testlist notNil
		ifTrue: [ self testlist parent: self ]
]

{ #category : #generated }
PyReturnNode >> tokenVariables [
	^ #(#returnToken)
]
