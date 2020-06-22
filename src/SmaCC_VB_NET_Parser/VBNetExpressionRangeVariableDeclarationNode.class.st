Class {
	#name : #VBNetExpressionRangeVariableDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'equals',
		'value',
		'asToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpressionRangeVariableDeclaration: self
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> tokenVariables [
	^ #(#name #equals #asToken)
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> value [
	^ value
]

{ #category : #generated }
VBNetExpressionRangeVariableDeclarationNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
