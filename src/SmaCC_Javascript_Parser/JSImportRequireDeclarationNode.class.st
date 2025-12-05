Class {
	#name : 'JSImportRequireDeclarationNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'importToken',
		'name',
		'equalToken',
		'requireToken',
		'leftParen',
		'value',
		'rightParen',
		'semicolon'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSImportRequireDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportRequireDeclaration: self
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen #semicolon)
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> importToken [
	^ importToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> nodeVariables [
	^ #(#name)
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> requireToken [
	^ requireToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> requireToken: aSmaCCToken [
	requireToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> tokenVariables [
	^ #(#importToken #equalToken #requireToken #value)
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> value [
	^ value
]

{ #category : 'generated' }
JSImportRequireDeclarationNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
