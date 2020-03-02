Class {
	#name : #JSExportDefaultImplementationElementNode,
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
JSExportDefaultImplementationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportDefaultImplementationElement: self
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSExportDefaultImplementationElementNode >> tokenVariables [
	^ #(#exportToken #defaultToken)
]
