Class {
	#name : #CPPSizeofExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'sizeofToken',
		'expression',
		'type',
		'ellipsis',
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPSizeofExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSizeofExpression: self
]

{ #category : #generated }
CPPSizeofExpressionNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPSizeofExpressionNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPSizeofExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPSizeofExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPSizeofExpressionNode >> name [
	^ name
]

{ #category : #generated }
CPPSizeofExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPSizeofExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
CPPSizeofExpressionNode >> sizeofToken [
	^ sizeofToken
]

{ #category : #generated }
CPPSizeofExpressionNode >> sizeofToken: aSmaCCToken [
	sizeofToken := aSmaCCToken
]

{ #category : #generated }
CPPSizeofExpressionNode >> tokenVariables [
	^ #(#sizeofToken #ellipsis #name)
]

{ #category : #generated }
CPPSizeofExpressionNode >> type [
	^ type
]

{ #category : #generated }
CPPSizeofExpressionNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
