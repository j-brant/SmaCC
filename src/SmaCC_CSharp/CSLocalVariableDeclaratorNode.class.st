Class {
	#name : #CSLocalVariableDeclaratorNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'name',
		'equalToken',
		'refToken',
		'expression'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLocalVariableDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalVariableDeclarator: self
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> expression [
	^ expression
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> name [
	^ name
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> tokenVariables [
	^ #(#name #equalToken #refToken)
]
