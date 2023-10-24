Class {
	#name : #PyInitNode,
	#superclass : #PyRootNode,
	#instVars : [
		'equalToken',
		'test'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyInitNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitInit: self
]

{ #category : #generated }
PyInitNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
PyInitNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
PyInitNode >> nodeVariables [
	^ #(#test)
]

{ #category : #generated }
PyInitNode >> test [
	^ test
]

{ #category : #generated }
PyInitNode >> test: aPyRootNode [
	self test notNil ifTrue: [ self test parent: nil ].
	test := aPyRootNode.
	self test notNil ifTrue: [ self test parent: self ]
]

{ #category : #generated }
PyInitNode >> tokenVariables [
	^ #(#equalToken)
]
