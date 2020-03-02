Class {
	#name : #JSTypeAliasDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'typeToken',
		'name',
		'equalToken',
		'type',
		'semicolon',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeAliasDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeAliasDeclaration: self
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> nodeVariables [
	^ #(#name #type #typeParameters)
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> tokenVariables [
	^ #(#typeToken #equalToken)
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> type [
	^ type
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
JSTypeAliasDeclarationNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
