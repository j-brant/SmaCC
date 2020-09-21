Class {
	#name : #JSMemberFunctionDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'signature',
		'leftBrace',
		'statements',
		'rightBrace',
		'staticToken',
		'modifier',
		'decorator',
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
	^ #(#statements)
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> decorator [
	^ decorator
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> decorator: aJSDecoratorExpressionNode [
	self decorator notNil
		ifTrue: [ self decorator parent: nil ].
	decorator := aJSDecoratorExpressionNode.
	self decorator notNil
		ifTrue: [ self decorator parent: self ]
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace #semicolon)
]

{ #category : #'generated-initialize-release' }
JSMemberFunctionDeclarationNode >> initialize [
	super initialize.
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
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSMemberFunctionDeclarationNode >> nodeVariables [
	^ #(#name #signature #decorator)
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
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
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
