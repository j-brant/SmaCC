Class {
	#name : #CSLocalFunctionDeclarationStatementNode,
	#superclass : #CSStatementNode,
	#instVars : [
		'header',
		'body'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalFunctionDeclarationStatement: self
]

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> body [
	^ body
]

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> body: aCSMethodBodyNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aCSMethodBodyNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> header [
	^ header
]

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> header: aCSMethodHeaderNode [
	self header notNil ifTrue: [ self header parent: nil ].
	header := aCSMethodHeaderNode.
	self header notNil ifTrue: [ self header parent: self ]
]

{ #category : #generated }
CSLocalFunctionDeclarationStatementNode >> nodeVariables [
	^ #(#header #body)
]
