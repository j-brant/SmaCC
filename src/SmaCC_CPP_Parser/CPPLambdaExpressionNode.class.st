Class {
	#name : #CPPLambdaExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'leftBracket',
		'rightBracket',
		'default',
		'captures',
		'ellipsises',
		'commas',
		'statement',
		'declarations',
		'arrow',
		'specifiers',
		'declarator',
		'exceptionSpecification',
		'mutableToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPLambdaExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLambdaExpression: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> arrow [
	^ arrow
]

{ #category : #generated }
CPPLambdaExpressionNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
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
CPPLambdaExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
CPPLambdaExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPLambdaExpressionNode >> compositeNodeVariables [
	^ #(#captures #declarations #specifiers)
]

{ #category : #generated }
CPPLambdaExpressionNode >> compositeTokenVariables [
	^ #(#ellipsises #commas #leftParens #rightParens)
]

{ #category : #generated }
CPPLambdaExpressionNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPLambdaExpressionNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
CPPLambdaExpressionNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPLambdaExpressionNode >> declarator: aCPPProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPLambdaExpressionNode >> default [
	^ default
]

{ #category : #generated }
CPPLambdaExpressionNode >> default: aSmaCCToken [
	default := aSmaCCToken
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
CPPLambdaExpressionNode >> exceptionSpecification [
	^ exceptionSpecification
]

{ #category : #generated }
CPPLambdaExpressionNode >> exceptionSpecification: aCPPProgramNode [
	self exceptionSpecification notNil
		ifTrue: [ self exceptionSpecification parent: nil ].
	exceptionSpecification := aCPPProgramNode.
	self exceptionSpecification notNil
		ifTrue: [ self exceptionSpecification parent: self ]
]

{ #category : #'generated-initialize-release' }
CPPLambdaExpressionNode >> initialize [
	super initialize.
	captures := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
CPPLambdaExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
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
CPPLambdaExpressionNode >> nodeVariables [
	^ #(#statement #declarator #exceptionSpecification)
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
CPPLambdaExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
CPPLambdaExpressionNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPLambdaExpressionNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
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
CPPLambdaExpressionNode >> tokenVariables [
	^ #(#leftBracket #rightBracket #default #arrow #mutableToken)
]
