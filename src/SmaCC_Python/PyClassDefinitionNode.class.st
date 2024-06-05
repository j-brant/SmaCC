Class {
	#name : #PyClassDefinitionNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'classToken',
		'cname',
		'colonToken',
		'statements',
		'decorators',
		'lparenToken',
		'rparenToken',
		'superClasses',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyClassDefinitionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitClassDefinition: self
]

{ #category : #generated }
PyClassDefinitionNode >> classToken [
	^ classToken
]

{ #category : #generated }
PyClassDefinitionNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
PyClassDefinitionNode >> cname [
	^ cname
]

{ #category : #generated }
PyClassDefinitionNode >> cname: aSmaCCToken [
	cname := aSmaCCToken
]

{ #category : #generated }
PyClassDefinitionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyClassDefinitionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyClassDefinitionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyClassDefinitionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyClassDefinitionNode >> compositeNodeVariables [
	^ #(#statements #decorators #superClasses)
]

{ #category : #generated }
PyClassDefinitionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyClassDefinitionNode >> decorators [
	^ decorators
]

{ #category : #generated }
PyClassDefinitionNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #'generated-initialize-release' }
PyClassDefinitionNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	decorators := OrderedCollection new: 2.
	superClasses := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyClassDefinitionNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyClassDefinitionNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyClassDefinitionNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyClassDefinitionNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyClassDefinitionNode >> statements [
	^ statements
]

{ #category : #generated }
PyClassDefinitionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyClassDefinitionNode >> superClasses [
	^ superClasses
]

{ #category : #generated }
PyClassDefinitionNode >> superClasses: anOrderedCollection [
	self setParents: self superClasses to: nil.
	superClasses := anOrderedCollection.
	self setParents: self superClasses to: self
]

{ #category : #generated }
PyClassDefinitionNode >> tokenVariables [
	^ #(#classToken #cname #colonToken #lparenToken #rparenToken #semicolonToken)
]
