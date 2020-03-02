Class {
	#name : #JSAmbientPropertyMemberDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'semicolon',
		'colonToken',
		'type',
		'staticToken',
		'modifier',
		'signature'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientPropertyMemberDeclaration: self
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon #colonToken)
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> name: aJSProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> nodeVariables [
	^ #(#name #type #signature)
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> signature [
	^ signature
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> signature: aJSCallSignatureNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> tokenVariables [
	^ #(#staticToken #modifier)
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> type [
	^ type
]

{ #category : #generated }
JSAmbientPropertyMemberDeclarationNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
