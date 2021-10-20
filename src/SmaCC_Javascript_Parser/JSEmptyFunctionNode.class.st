Class {
	#name : #JSEmptyFunctionNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'functionToken',
		'signature',
		'semicolon',
		'name'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSEmptyFunctionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEmptyFunction: self
]

{ #category : #generated }
JSEmptyFunctionNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
JSEmptyFunctionNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #generated }
JSEmptyFunctionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSEmptyFunctionNode >> name [
	^ name
]

{ #category : #generated }
JSEmptyFunctionNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSEmptyFunctionNode >> nodeVariables [
	^ #(#signature #name)
]

{ #category : #generated }
JSEmptyFunctionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSEmptyFunctionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSEmptyFunctionNode >> signature [
	^ signature
]

{ #category : #generated }
JSEmptyFunctionNode >> signature: aJSCallSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSEmptyFunctionNode >> tokenVariables [
	^ #(#functionToken)
]
