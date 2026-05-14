Class {
	#name : 'KotlinImportDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'importToken',
		'path',
		'semicolonToken',
		'dot',
		'star',
		'asToken',
		'alias'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinImportDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitImportDeclaration: self
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> alias [
	^ alias
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> asToken [
	^ asToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> dot [
	^ dot
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> importToken [
	^ importToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> nodeVariables [
	^ #(#path)
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> path [
	^ path
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> path: aKotlinIdentifierNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aKotlinIdentifierNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> semicolonToken [
	^ semicolonToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> star [
	^ star
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> tokenVariables [
	^ #(#importToken #semicolonToken #dot #star #asToken #alias)
]
