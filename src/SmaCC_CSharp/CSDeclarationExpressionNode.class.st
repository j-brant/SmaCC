Class {
	#name : #CSDeclarationExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'name'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSDeclarationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclarationExpression: self
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
	^ #(#type)
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
