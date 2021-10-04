Class {
	#name : #JSExportDefaultDeclarationElementNode,
	#superclass : #JSTSExportNode,
	#instVars : [
		'decorators',
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
JSExportDefaultDeclarationElementNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> declaration: aJSProgramNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSExportDefaultDeclarationElementNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
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
JSExportDefaultDeclarationElementNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JSExportDefaultDeclarationElementNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
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
	^ #(#defaultToken #exportToken)
]
