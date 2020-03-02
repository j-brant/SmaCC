Class {
	#name : #JSExportDeclarationElementNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'exportToken',
		'declaration'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportDeclarationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportDeclarationElement: self
]

{ #category : #generated }
JSExportDeclarationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportDeclarationElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportDeclarationElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSExportDeclarationElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSExportDeclarationElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSExportDeclarationElementNode >> tokenVariables [
	^ #(#exportToken)
]
