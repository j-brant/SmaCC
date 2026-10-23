Class {
	#name : 'JavaSwitchBlockExpressionGroupNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'arrowToken',
		'modifiers',
		'type',
		'variable',
		'whenToken',
		'guard',
		'defaultToken',
		'value',
		'semicolon'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchBlockExpressionGroup: self
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> arrowToken [
	^ arrowToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> caseToken [
	^ caseToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> compositeNodeVariables [

	^ #( #constants #modifiers )
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> constants [
	^ constants
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> constants: anOrderedCollection [
	self setParents: self constants to: nil.
	constants := anOrderedCollection.
	self setParents: self constants to: self
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> defaultToken [
	^ defaultToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> guard [

	^ guard
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> guard: aJavaExpressionNode [

	self guard notNil ifTrue: [ self guard parent: nil ].
	guard := aJavaExpressionNode.
	self guard notNil ifTrue: [ self guard parent: self ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : 'generated-initialize-release' }
JavaSwitchBlockExpressionGroupNode >> initialize [
	super initialize.
	constants := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> modifiers [

	^ modifiers
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> modifiers: anOrderedCollection [

	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> nodeVariables [

	^ #( #type #variable #guard #value )
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> tokenVariables [

	^ #( #caseToken #arrowToken #whenToken #defaultToken )
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> type [

	^ type
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> type: aJavaTypeNode [

	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> value [
	^ value
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> value: aJavaProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJavaProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> variable [

	^ variable
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> variable: aJavaProgramNode [

	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> whenToken [

	^ whenToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> whenToken: aSmaCCToken [

	whenToken := aSmaCCToken
]
