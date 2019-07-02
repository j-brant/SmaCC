Class {
	#name : #DelphiAnonymousProcedureDefinitionNode,
	#superclass : #DelphiExpressionNode,
	#instVars : [
		'header',
		'definitions',
		'block',
		'semicolon'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnonymousProcedureDefinition: self
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> block [
	^ block
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> block: aDelphiStatementNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aDelphiStatementNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> compositeNodeVariables [
	^ #(#definitions)
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> header [
	^ header
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> header: aDelphiProcedureHeaderNode [
	self header notNil
		ifTrue: [ self header parent: nil ].
	header := aDelphiProcedureHeaderNode.
	self header notNil
		ifTrue: [ self header parent: self ]
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
DelphiAnonymousProcedureDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> nodeVariables [
	^ #(#header #block)
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
DelphiAnonymousProcedureDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]
