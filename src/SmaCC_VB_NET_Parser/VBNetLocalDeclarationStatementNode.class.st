Class {
	#name : #VBNetLocalDeclarationStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'modifier',
		'variables',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalDeclarationStatement: self
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> compositeNodeVariables [
	^ #(#variables)
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetLocalDeclarationStatementNode >> initialize [
	super initialize.
	variables := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> modifier [
	^ modifier
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> tokenVariables [
	^ #(#modifier)
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> variables [
	^ variables
]

{ #category : #generated }
VBNetLocalDeclarationStatementNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
