Class {
	#name : #JSAmbientDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'declareToken',
		'declaration'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientDeclaration: self
]

{ #category : #generated }
JSAmbientDeclarationNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSAmbientDeclarationNode >> declaration: aJSProgramNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSAmbientDeclarationNode >> declareToken [
	^ declareToken
]

{ #category : #generated }
JSAmbientDeclarationNode >> declareToken: aSmaCCToken [
	declareToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientDeclarationNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSAmbientDeclarationNode >> tokenVariables [
	^ #(#declareToken)
]
