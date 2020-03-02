Class {
	#name : #JSAmbientFunctionDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'functionToken',
		'name',
		'signature',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientFunctionDeclaration: self
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> nodeVariables [
	^ #(#name #signature)
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> signature: aJSCallSignatureNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSAmbientFunctionDeclarationNode >> tokenVariables [
	^ #(#functionToken)
]
