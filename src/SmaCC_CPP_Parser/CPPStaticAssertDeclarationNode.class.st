Class {
	#name : #CPPStaticAssertDeclarationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'static_assertToken',
		'leftParen',
		'condition',
		'comma',
		'label',
		'rightParen',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPStaticAssertDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStaticAssertDeclaration: self
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> comma [
	^ comma
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> condition [
	^ condition
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> condition: aCPPExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aCPPExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> label [
	^ label
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> static_assertToken [
	^ static_assertToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> static_assertToken: aSmaCCToken [
	static_assertToken := aSmaCCToken
]

{ #category : #generated }
CPPStaticAssertDeclarationNode >> tokenVariables [
	^ #(#static_assertToken #leftParen #comma #label #rightParen #semicolon)
]
