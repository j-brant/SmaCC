Class {
	#name : #JSExportDeclarationElementNode,
	#superclass : #JSTSExportNode,
	#instVars : [
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
JSExportDeclarationElementNode >> nodeVariables [
	^ #(#declaration)
]
