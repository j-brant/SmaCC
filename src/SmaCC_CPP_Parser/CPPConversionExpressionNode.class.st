Class {
	#name : #CPPConversionExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'castToken',
		'ltToken',
		'type',
		'gtToken',
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPConversionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConversionExpression: self
]

{ #category : #generated }
CPPConversionExpressionNode >> castToken [
	^ castToken
]

{ #category : #generated }
CPPConversionExpressionNode >> castToken: aSmaCCToken [
	castToken := aSmaCCToken
]

{ #category : #generated }
CPPConversionExpressionNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPConversionExpressionNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CPPConversionExpressionNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPConversionExpressionNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPConversionExpressionNode >> nodeVariables [
	^ #(#type #value)
]

{ #category : #generated }
CPPConversionExpressionNode >> tokenVariables [
	^ #(#castToken #ltToken #gtToken)
]

{ #category : #generated }
CPPConversionExpressionNode >> type [
	^ type
]

{ #category : #generated }
CPPConversionExpressionNode >> type: aCPPTypeIdentifierNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCPPTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CPPConversionExpressionNode >> value [
	^ value
]

{ #category : #generated }
CPPConversionExpressionNode >> value: aCPPExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
