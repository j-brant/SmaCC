Class {
	#name : #DelphiAnonymousFunctionDefinitionNode,
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
DelphiAnonymousFunctionDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnonymousFunctionDefinition: self
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> block [
	^ block
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> block: aDelphiStatementNode [
	self block notNil
		ifTrue: [ self block parent: nil ].
	block := aDelphiStatementNode.
	self block notNil
		ifTrue: [ self block parent: self ]
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> compositeNodeVariables [
	^ #(#definitions)
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> definitions [
	^ definitions
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> header [
	^ header
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> header: aDelphiFunctionHeaderNode [
	self header notNil
		ifTrue: [ self header parent: nil ].
	header := aDelphiFunctionHeaderNode.
	self header notNil
		ifTrue: [ self header parent: self ]
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
DelphiAnonymousFunctionDefinitionNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> nodeVariables [
	^ #(#header #block)
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
DelphiAnonymousFunctionDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]
