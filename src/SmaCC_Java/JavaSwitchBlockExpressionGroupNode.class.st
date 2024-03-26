Class {
	#name : #JavaSwitchBlockExpressionGroupNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'arrowToken',
		'defaultToken',
		'value',
		'semicolon'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchBlockExpressionGroup: self
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> arrowToken [
	^ arrowToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> commas [
	^ commas
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> compositeNodeVariables [
	^ #(#constants)
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> constants [
	^ constants
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> constants: anOrderedCollection [
	self setParents: self constants to: nil.
	constants := anOrderedCollection.
	self setParents: self constants to: self
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JavaSwitchBlockExpressionGroupNode >> initialize [
	super initialize.
	constants := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> tokenVariables [
	^ #(#caseToken #arrowToken #defaultToken)
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> value [
	^ value
]

{ #category : #generated }
JavaSwitchBlockExpressionGroupNode >> value: aJavaProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJavaProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
