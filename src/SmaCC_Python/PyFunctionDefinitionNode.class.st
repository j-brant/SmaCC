Class {
	#name : #PyFunctionDefinitionNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'defToken',
		'fname',
		'lparenToken',
		'parameters',
		'commaTokens',
		'rparenToken',
		'returnAnnotation',
		'colonToken',
		'statements',
		'asyncToken',
		'decorators'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyFunctionDefinitionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitFunctionDefinition: self
]

{ #category : #generated }
PyFunctionDefinitionNode >> asyncToken [
	^ asyncToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> asyncToken: aSmaCCToken [
	asyncToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyFunctionDefinitionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyFunctionDefinitionNode >> compositeNodeVariables [
	^ #(#parameters #statements #decorators)
]

{ #category : #generated }
PyFunctionDefinitionNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyFunctionDefinitionNode >> decorators [
	^ decorators
]

{ #category : #generated }
PyFunctionDefinitionNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
PyFunctionDefinitionNode >> defToken [
	^ defToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> defToken: aSmaCCToken [
	defToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> fname [
	^ fname
]

{ #category : #generated }
PyFunctionDefinitionNode >> fname: aSmaCCToken [
	fname := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyFunctionDefinitionNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	decorators := OrderedCollection new: 2.
]

{ #category : #generated }
PyFunctionDefinitionNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> nodeVariables [
	^ #(#returnAnnotation)
]

{ #category : #generated }
PyFunctionDefinitionNode >> parameters [
	^ parameters
]

{ #category : #generated }
PyFunctionDefinitionNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
PyFunctionDefinitionNode >> returnAnnotation [
	^ returnAnnotation
]

{ #category : #generated }
PyFunctionDefinitionNode >> returnAnnotation: aPyReturnTypeAnnotationNode [
	self returnAnnotation notNil ifTrue: [ self returnAnnotation parent: nil ].
	returnAnnotation := aPyReturnTypeAnnotationNode.
	self returnAnnotation notNil ifTrue: [ self returnAnnotation parent: self ]
]

{ #category : #generated }
PyFunctionDefinitionNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyFunctionDefinitionNode >> statements [
	^ statements
]

{ #category : #generated }
PyFunctionDefinitionNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
PyFunctionDefinitionNode >> tokenVariables [
	^ #(#defToken #fname #lparenToken #rparenToken #colonToken #asyncToken #semicolonToken)
]
