Class {
	#name : 'CSSDeclarationNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'name',
		'star',
		'colon',
		'values'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclaration: self
]

{ #category : 'generated' }
CSSDeclarationNode >> colon [
	^ colon
]

{ #category : 'generated' }
CSSDeclarationNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
CSSDeclarationNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated-initialize-release' }
CSSDeclarationNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : 'generated' }
CSSDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
CSSDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
CSSDeclarationNode >> star [
	^ star
]

{ #category : 'generated' }
CSSDeclarationNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : 'generated' }
CSSDeclarationNode >> tokenVariables [
	^ #(#name #star #colon)
]

{ #category : 'generated' }
CSSDeclarationNode >> values [
	^ values
]

{ #category : 'generated' }
CSSDeclarationNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
