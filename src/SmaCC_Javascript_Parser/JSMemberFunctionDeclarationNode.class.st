Class {
	#name : #JSMemberFunctionDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'decorators',
		'name',
		'signature',
		'leftBrace',
		'statements',
		'rightBrace',
		'staticToken',
		'modifier',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSMemberFunctionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberFunctionDeclaration: self
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> compositeNodeVariables [
	^ #(#decorators #statements)
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace #semicolon)
]

{ #category : #'generated-initialize-release' }
JSMemberFunctionDeclarationNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> name: aJSProgramNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> nodeVariables [
	^ #(#name #signature)
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> signature: aJSCallSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> tokenVariables [
	^ #(#staticToken #modifier)
]
