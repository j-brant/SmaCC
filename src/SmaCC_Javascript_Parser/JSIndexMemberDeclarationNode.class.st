Class {
	#name : #JSIndexMemberDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'signature',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSIndexMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexMemberDeclaration: self
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> nodeVariables [
	^ #(#signature)
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
JSIndexMemberDeclarationNode >> signature: aJSIndexSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aJSIndexSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]
