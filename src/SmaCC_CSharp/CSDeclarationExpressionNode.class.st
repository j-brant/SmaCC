Class {
	#name : #CSDeclarationExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'name',
		'type',
		'designation'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSDeclarationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclarationExpression: self
]

{ #category : #generated }
CSDeclarationExpressionNode >> designation [
	^ designation
]

{ #category : #generated }
CSDeclarationExpressionNode >> designation: aCSProgramNode [
	self designation notNil ifTrue: [ self designation parent: nil ].
	designation := aCSProgramNode.
	self designation notNil ifTrue: [ self designation parent: self ]
]

{ #category : #generated }
CSDeclarationExpressionNode >> name [
	^ name
]

{ #category : #generated }
CSDeclarationExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSDeclarationExpressionNode >> nodeVariables [
	^ #(#type #designation)
]

{ #category : #generated }
CSDeclarationExpressionNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
CSDeclarationExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSDeclarationExpressionNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
