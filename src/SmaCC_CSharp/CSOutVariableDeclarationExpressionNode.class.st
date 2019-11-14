Class {
	#name : #CSOutVariableDeclarationExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'name'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOutVariableDeclarationExpression: self
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> name [
	^ name
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSOutVariableDeclarationExpressionNode >> type: aCSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
