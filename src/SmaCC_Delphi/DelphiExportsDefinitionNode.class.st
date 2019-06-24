Class {
	#name : #DelphiExportsDefinitionNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'exportsToken',
		'names',
		'commas',
		'semicolon'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiExportsDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportsDefinition: self
]

{ #category : #generated }
DelphiExportsDefinitionNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiExportsDefinitionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiExportsDefinitionNode >> compositeTokenVariables [
	^ #(#names)
]

{ #category : #generated }
DelphiExportsDefinitionNode >> exportsToken [
	^ exportsToken
]

{ #category : #generated }
DelphiExportsDefinitionNode >> exportsToken: aSmaCCToken [
	exportsToken := aSmaCCToken
]

{ #category : #generated }
DelphiExportsDefinitionNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
DelphiExportsDefinitionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
DelphiExportsDefinitionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiExportsDefinitionNode >> names [
	^ names
]

{ #category : #generated }
DelphiExportsDefinitionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
DelphiExportsDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
DelphiExportsDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
DelphiExportsDefinitionNode >> tokenVariables [
	^ #(#exportsToken)
]
