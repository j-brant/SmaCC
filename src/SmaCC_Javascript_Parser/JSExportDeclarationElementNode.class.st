Class {
	#name : #JSExportDeclarationElementNode,
	#superclass : #JSTSExportNode,
	#instVars : [
		'decorators',
		'declaration'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportDeclarationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportDeclarationElement: self
]

{ #category : #generated }
JSExportDeclarationElementNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : #generated }
JSExportDeclarationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportDeclarationElementNode >> declaration: aJSProgramNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportDeclarationElementNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSExportDeclarationElementNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #'generated-initialize-release' }
JSExportDeclarationElementNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : #generated }
JSExportDeclarationElementNode >> nodeVariables [
	^ #(#declaration)
]
