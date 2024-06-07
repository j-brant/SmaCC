Class {
	#name : #PyImportStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'importToken',
		'commaTokens',
		'names',
		'asTokens',
		'renames',
		'fromToken',
		'from',
		'starToken',
		'lparenToken',
		'rparenToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyImportStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitImportStatement: self
]

{ #category : #generated }
PyImportStatementNode >> asTokens [
	^ asTokens
]

{ #category : #generated }
PyImportStatementNode >> asTokens: anOrderedCollection [
	asTokens := anOrderedCollection
]

{ #category : #generated }
PyImportStatementNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyImportStatementNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyImportStatementNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PyImportStatementNode >> compositeTokenVariables [
	^ #(#commaTokens #asTokens #renames)
]

{ #category : #generated }
PyImportStatementNode >> from [
	^ from
]

{ #category : #generated }
PyImportStatementNode >> from: aPyRootNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aPyRootNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
PyImportStatementNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
PyImportStatementNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
PyImportStatementNode >> importToken [
	^ importToken
]

{ #category : #generated }
PyImportStatementNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyImportStatementNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	asTokens := OrderedCollection new: 2.
	renames := OrderedCollection new: 2.
]

{ #category : #generated }
PyImportStatementNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyImportStatementNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyImportStatementNode >> names [
	^ names
]

{ #category : #generated }
PyImportStatementNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
PyImportStatementNode >> nodeVariables [
	^ #(#from)
]

{ #category : #generated }
PyImportStatementNode >> renames [
	^ renames
]

{ #category : #generated }
PyImportStatementNode >> renames: anOrderedCollection [
	renames := anOrderedCollection
]

{ #category : #generated }
PyImportStatementNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyImportStatementNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyImportStatementNode >> starToken [
	^ starToken
]

{ #category : #generated }
PyImportStatementNode >> starToken: aSmaCCToken [
	starToken := aSmaCCToken
]

{ #category : #generated }
PyImportStatementNode >> tokenVariables [
	^ #(#importToken #fromToken #starToken #lparenToken #rparenToken #semicolonToken)
]
