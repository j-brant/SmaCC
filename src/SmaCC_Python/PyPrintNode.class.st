Class {
	#name : #PyPrintNode,
	#superclass : #PyRootNode,
	#instVars : [
		'printToken',
		'testlist',
		'greaterThanGreaterThanToken'
	],
	#category : 'SmaCC_Python'
}

{ #category : #generated }
PyPrintNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitPrint: self
]

{ #category : #generated }
PyPrintNode >> greaterThanGreaterThanToken [
	^ greaterThanGreaterThanToken
]

{ #category : #generated }
PyPrintNode >> greaterThanGreaterThanToken: aSmaCCToken [
	greaterThanGreaterThanToken := aSmaCCToken
]

{ #category : #generated }
PyPrintNode >> nodeVariables [
	^ #(#testlist)
]

{ #category : #generated }
PyPrintNode >> printToken [
	^ printToken
]

{ #category : #generated }
PyPrintNode >> printToken: aSmaCCToken [
	printToken := aSmaCCToken
]

{ #category : #generated }
PyPrintNode >> testlist [
	^ testlist
]

{ #category : #generated }
PyPrintNode >> testlist: aPyRootNode [
	self testlist notNil
		ifTrue: [ self testlist parent: nil ].
	testlist := aPyRootNode.
	self testlist notNil
		ifTrue: [ self testlist parent: self ]
]

{ #category : #generated }
PyPrintNode >> tokenVariables [
	^ #(#printToken #greaterThanGreaterThanToken)
]
