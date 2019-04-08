Class {
	#name : #CPPBinaryExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'lefts',
		'operator',
		'right'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
CPPBinaryExpressionNode >> compositeNodeVariables [
	^ #(#lefts)
]

{ #category : #'generated-initialize-release' }
CPPBinaryExpressionNode >> initialize [
	super initialize.
	lefts := OrderedCollection new: 2.
]

{ #category : #generated }
CPPBinaryExpressionNode >> lefts [
	^ lefts
]

{ #category : #generated }
CPPBinaryExpressionNode >> lefts: anOrderedCollection [
	self setParents: self lefts to: nil.
	lefts := anOrderedCollection.
	self setParents: self lefts to: self
]

{ #category : #generated }
CPPBinaryExpressionNode >> nodeVariables [
	^ #(#right)
]

{ #category : #generated }
CPPBinaryExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPBinaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
CPPBinaryExpressionNode >> right: aCPPExpressionNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aCPPExpressionNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CPPBinaryExpressionNode >> tokenVariables [
	^ #(#operator)
]
