Class {
	#name : #JSImportAliasDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'importToken',
		'name',
		'equalToken',
		'value',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSImportAliasDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportAliasDeclaration: self
]

{ #category : #generated }
JSImportAliasDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> importToken [
	^ importToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSImportAliasDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSImportAliasDeclarationNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> otherVariables [
	^ #(#value)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSImportAliasDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSImportAliasDeclarationNode >> tokenVariables [
	^ #(#importToken #equalToken)
]

{ #category : #generated }
JSImportAliasDeclarationNode >> value [
	^ value
]

{ #category : #generated }
JSImportAliasDeclarationNode >> value: anOrderedCollection [
	value := anOrderedCollection
]
