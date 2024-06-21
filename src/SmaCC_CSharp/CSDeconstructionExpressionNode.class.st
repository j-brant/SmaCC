Class {
	#name : #CSDeconstructionExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'tuple'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSDeconstructionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeconstructionExpression: self
]

{ #category : #generated }
CSDeconstructionExpressionNode >> nodeVariables [
	^ #(#type #tuple)
]

{ #category : #generated }
CSDeconstructionExpressionNode >> tuple [
	^ tuple
]

{ #category : #generated }
CSDeconstructionExpressionNode >> tuple: aCSDeconstructionTupleNode [
	self tuple notNil ifTrue: [ self tuple parent: nil ].
	tuple := aCSDeconstructionTupleNode.
	self tuple notNil ifTrue: [ self tuple parent: self ]
]

{ #category : #generated }
CSDeconstructionExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSDeconstructionExpressionNode >> type: aCSVarTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSVarTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
