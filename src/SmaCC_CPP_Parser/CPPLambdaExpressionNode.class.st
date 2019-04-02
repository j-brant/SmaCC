Class {
	#name : #CPPLambdaExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'leftBrackets',
		'rightBrackets',
		'captures',
		'ellipsises',
		'commas',
		'statement',
		'specifiers',
		'colonColons',
		'types',
		'names',
		'templateIdentifiers',
		'templateTokens',
		'identifiers',
		'exceptionSpecifications',
		'constTokens',
		'volatileTokens',
		'namespaceSpecifiers',
		'templates',
		'autoTokens',
		'enumTokens',
		'typenameTokens',
		'leftBraces',
		'values',
		'rightBraces',
		'decltypeTokens',
		'expressions',
		'classTokens',
		'structTokens',
		'unionTokens',
		'mutableToken'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambdaExpression: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> autoTokens [
	^ autoTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> autoTokens: anOrderedCollection [
	autoTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> captures [
	^ captures
]

{ #category : #generated }
CPPLambdaExpressionNode >> captures: anOrderedCollection [
	self setParents: self captures to: nil.
	captures := anOrderedCollection.
	self setParents: self captures to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> classTokens [
	^ classTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> classTokens: anOrderedCollection [
	classTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPLambdaExpressionNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPLambdaExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> compositeNodeVariables [
	^ #(#captures #templateIdentifiers #identifiers #exceptionSpecifications #namespaceSpecifiers #templates #values #expressions)
]

{ #category : #generated }
CPPLambdaExpressionNode >> compositeTokenVariables [
	^ #(#leftBrackets #rightBrackets #ellipsises #commas #colonColons #names #templateTokens #constTokens #volatileTokens #autoTokens #enumTokens #typenameTokens #leftBraces #rightBraces #decltypeTokens #classTokens #structTokens #unionTokens #leftParens #rightParens)
]

{ #category : #generated }
CPPLambdaExpressionNode >> constTokens [
	^ constTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> constTokens: anOrderedCollection [
	constTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> decltypeTokens [
	^ decltypeTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> decltypeTokens: anOrderedCollection [
	decltypeTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPLambdaExpressionNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> enumTokens [
	^ enumTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> enumTokens: anOrderedCollection [
	enumTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPLambdaExpressionNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPLambdaExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
CPPLambdaExpressionNode >> identifiers: anOrderedCollection [
	self setParents: self identifiers to: nil.
	identifiers := anOrderedCollection.
	self setParents: self identifiers to: self
]

{ #category : #'generated-initialize-release' }
CPPLambdaExpressionNode >> initialize [
	super initialize.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	captures := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	colonColons := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
	identifiers := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	constTokens := OrderedCollection new: 2.
	volatileTokens := OrderedCollection new: 2.
	namespaceSpecifiers := OrderedCollection new: 2.
	templates := OrderedCollection new: 2.
	autoTokens := OrderedCollection new: 2.
	enumTokens := OrderedCollection new: 2.
	typenameTokens := OrderedCollection new: 2.
	leftBraces := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	rightBraces := OrderedCollection new: 2.
	decltypeTokens := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	classTokens := OrderedCollection new: 2.
	structTokens := OrderedCollection new: 2.
	unionTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBraces [
	^ leftBraces
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBraces: anOrderedCollection [
	leftBraces := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> mutableToken [
	^ mutableToken
]

{ #category : #generated }
CPPLambdaExpressionNode >> mutableToken: aSmaCCToken [
	mutableToken := aSmaCCToken
]

{ #category : #generated }
CPPLambdaExpressionNode >> names [
	^ names
]

{ #category : #generated }
CPPLambdaExpressionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> namespaceSpecifiers [
	^ namespaceSpecifiers
]

{ #category : #generated }
CPPLambdaExpressionNode >> namespaceSpecifiers: anOrderedCollection [
	self setParents: self namespaceSpecifiers to: nil.
	namespaceSpecifiers := anOrderedCollection.
	self setParents: self namespaceSpecifiers to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
CPPLambdaExpressionNode >> otherVariables [
	^ #(#specifiers #types)
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBraces [
	^ rightBraces
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBraces: anOrderedCollection [
	rightBraces := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPLambdaExpressionNode >> specifiers: anOrderedCollection [
	specifiers := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> statement [
	^ statement
]

{ #category : #generated }
CPPLambdaExpressionNode >> statement: aCPPCompoundStatementNode [
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCPPCompoundStatementNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CPPLambdaExpressionNode >> structTokens [
	^ structTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> structTokens: anOrderedCollection [
	structTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPLambdaExpressionNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> templates [
	^ templates
]

{ #category : #generated }
CPPLambdaExpressionNode >> templates: anOrderedCollection [
	self setParents: self templates to: nil.
	templates := anOrderedCollection.
	self setParents: self templates to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> tokenVariables [
	^ #(#mutableToken)
]

{ #category : #generated }
CPPLambdaExpressionNode >> typenameTokens [
	^ typenameTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> typenameTokens: anOrderedCollection [
	typenameTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> types [
	^ types
]

{ #category : #generated }
CPPLambdaExpressionNode >> types: anOrderedCollection [
	types := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> unionTokens [
	^ unionTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> unionTokens: anOrderedCollection [
	unionTokens := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> values [
	^ values
]

{ #category : #generated }
CPPLambdaExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> volatileTokens [
	^ volatileTokens
]

{ #category : #generated }
CPPLambdaExpressionNode >> volatileTokens: anOrderedCollection [
	volatileTokens := anOrderedCollection
]
