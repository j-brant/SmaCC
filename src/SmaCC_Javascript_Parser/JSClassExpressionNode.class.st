Class {
	#name : #JSClassExpressionNode,
	#superclass : #JSExpressionNode,
	#instVars : [
		'classToken',
		'leftBrace',
		'rightBrace',
		'elements',
		'extendsToken',
		'superclass',
		'implementsToken',
		'types',
		'commas',
		'name',
		'abstract',
		'decorators',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSClassExpressionNode >> abstract [
	^ abstract
]

{ #category : #generated }
JSClassExpressionNode >> abstract: aSmaCCToken [
	abstract := aSmaCCToken
]

{ #category : #generated }
JSClassExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassExpression: self
]

{ #category : #generated }
JSClassExpressionNode >> classToken [
	^ classToken
]

{ #category : #generated }
JSClassExpressionNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
JSClassExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
JSClassExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSClassExpressionNode >> compositeNodeVariables [
	^ #(#elements #types #decorators)
]

{ #category : #generated }
JSClassExpressionNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSClassExpressionNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
JSClassExpressionNode >> elements [
	^ elements
]

{ #category : #generated }
JSClassExpressionNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
JSClassExpressionNode >> extendsToken [
	^ extendsToken
]

{ #category : #generated }
JSClassExpressionNode >> extendsToken: aSmaCCToken [
	extendsToken := aSmaCCToken
]

{ #category : #generated }
JSClassExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
JSClassExpressionNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #generated }
JSClassExpressionNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
JSClassExpressionNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
JSClassExpressionNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	decorators := OrderedCollection new: 2.
]

{ #category : #generated }
JSClassExpressionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSClassExpressionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSClassExpressionNode >> name [
	^ name
]

{ #category : #generated }
JSClassExpressionNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSClassExpressionNode >> nodeVariables [
	^ #(#superclass #name #typeParameters)
]

{ #category : #generated }
JSClassExpressionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JSClassExpressionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JSClassExpressionNode >> superclass [
	^ superclass
]

{ #category : #generated }
JSClassExpressionNode >> superclass: aJSProgramNode [
	self superclass notNil
		ifTrue: [ self superclass parent: nil ].
	superclass := aJSProgramNode.
	self superclass notNil
		ifTrue: [ self superclass parent: self ]
]

{ #category : #generated }
JSClassExpressionNode >> tokenVariables [
	^ #(#classToken #extendsToken #implementsToken #abstract)
]

{ #category : #generated }
JSClassExpressionNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSClassExpressionNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]
]

{ #category : #generated }
JSClassExpressionNode >> types [
	^ types
]

{ #category : #generated }
JSClassExpressionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]
