Class {
	#name : #CPPAlignmentSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'alignasToken',
		'leftParen',
		'value',
		'rightParen',
		'ellipsis'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAlignmentSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlignmentSpecifier: self
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> alignasToken [
	^ alignasToken
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> alignasToken: aSmaCCToken [
	alignasToken := aSmaCCToken
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> tokenVariables [
	^ #(#alignasToken #leftParen #rightParen #ellipsis)
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> value [
	^ value
]

{ #category : #generated }
CPPAlignmentSpecifierNode >> value: aCPPProgramNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPProgramNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
