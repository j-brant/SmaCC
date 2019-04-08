Class {
	#name : #CPPBracedInitializerExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'typeSpecifier',
		'initializerList'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBracedInitializerExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBracedInitializerExpression: self
]

{ #category : #generated }
CPPBracedInitializerExpressionNode >> initializerList [
	^ initializerList
]

{ #category : #generated }
CPPBracedInitializerExpressionNode >> initializerList: aCPPBracedListInitializerNode [
	self initializerList notNil
		ifTrue: [ self initializerList parent: nil ].
	initializerList := aCPPBracedListInitializerNode.
	self initializerList notNil
		ifTrue: [ self initializerList parent: self ]
]

{ #category : #generated }
CPPBracedInitializerExpressionNode >> nodeVariables [
	^ #(#typeSpecifier #initializerList)
]

{ #category : #generated }
CPPBracedInitializerExpressionNode >> typeSpecifier [
	^ typeSpecifier
]

{ #category : #generated }
CPPBracedInitializerExpressionNode >> typeSpecifier: aCPPProgramNode [
	self typeSpecifier notNil
		ifTrue: [ self typeSpecifier parent: nil ].
	typeSpecifier := aCPPProgramNode.
	self typeSpecifier notNil
		ifTrue: [ self typeSpecifier parent: self ]
]
