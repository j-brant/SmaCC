Class {
	#name : #PySpreadNode,
	#superclass : #PyRootNode,
	#instVars : [
		'operator',
		'test'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PySpreadNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitSpread: self
]

{ #category : #generated }
PySpreadNode >> nodeVariables [
	^ #(#test)
]

{ #category : #generated }
PySpreadNode >> operator [
	^ operator
]

{ #category : #generated }
PySpreadNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
PySpreadNode >> test [
	^ test
]

{ #category : #generated }
PySpreadNode >> test: aPyRootNode [
	self test notNil ifTrue: [ self test parent: nil ].
	test := aPyRootNode.
	self test notNil ifTrue: [ self test parent: self ]
]

{ #category : #generated }
PySpreadNode >> tokenVariables [
	^ #(#operator)
]
