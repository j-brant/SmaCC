Class {
	#name : #PyYieldNode,
	#superclass : #PyRootNode,
	#instVars : [
		'yieldToken',
		'testlist',
		'fromToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyYieldNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitYield: self
]

{ #category : #generated }
PyYieldNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
PyYieldNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
PyYieldNode >> nodeVariables [
	^ #(#testlist)
]

{ #category : #generated }
PyYieldNode >> testlist [
	^ testlist
]

{ #category : #generated }
PyYieldNode >> testlist: aPyRootNode [
	self testlist notNil
		ifTrue: [ self testlist parent: nil ].
	testlist := aPyRootNode.
	self testlist notNil
		ifTrue: [ self testlist parent: self ]
]

{ #category : #generated }
PyYieldNode >> tokenVariables [
	^ #(#yieldToken #fromToken)
]

{ #category : #generated }
PyYieldNode >> yieldToken [
	^ yieldToken
]

{ #category : #generated }
PyYieldNode >> yieldToken: aSmaCCToken [
	yieldToken := aSmaCCToken
]
