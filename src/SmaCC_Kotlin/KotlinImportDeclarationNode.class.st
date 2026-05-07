Class {
	#name : 'KotlinImportDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'importToken',
		'import',
		'semicolonToken',
		'dot',
		'star',
		'asToken',
		'_as'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinImportDeclarationNode >> _as [
	^ _as
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> _as: aSmaCCToken [
	_as := aSmaCCToken
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitImportDeclaration: self
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
KotlinImportDeclarationNode >> import [
	^ import
]

{ #category : 'generated' }
KotlinImportDeclarationNode >> import: aKotlinIdentifierNode [
	self import notNil ifTrue: [ self import parent: nil ].
	import := aKotlinIdentifierNode.
	self import notNil ifTrue: [ self import parent: self ]
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
	^ #(#import)
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
	^ #(#importToken #semicolonToken #dot #star #asToken #_as)
]
