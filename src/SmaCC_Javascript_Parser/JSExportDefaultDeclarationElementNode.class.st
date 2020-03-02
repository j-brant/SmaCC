Class {
	#name : #JSExportDefaultDeclarationElementNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'exportToken',
		'defaultToken',
		'declaration',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportDefaultDeclarationElement: self
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> tokenVariables [
	^ #(#exportToken #defaultToken)
]
