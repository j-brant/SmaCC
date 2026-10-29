Class {
	#name : 'JavaSwitchBlockExpressionGroupNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'arrowToken',
		'defaultToken',
		'patterns',
		'whenToken',
		'guard',
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

	^ #( #constants #patterns )
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
	patterns := OrderedCollection new: 2.
]

{ #category : 'deprecated' }
JavaSwitchBlockExpressionGroupNode >> modifiers [
	self deprecated: 'Use patterns instead'.
	^ patterns
		  inject: OrderedCollection new
		  into: [ :all :each |
			  each class = JavaTypePatternNode
				  ifTrue: [ all , each modifiers ]
				  ifFalse: [ all ] ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> nodeVariables [

	^ #( #guard #value )
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> patterns [

	^ patterns
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> patterns: anOrderedCollection [

	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
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

	^ #( #caseToken #arrowToken #defaultToken #whenToken )
]

{ #category : 'deprecated' }
JavaSwitchBlockExpressionGroupNode >> type [
	self deprecated: 'Use patterns instead'.
	^ patterns ifNotEmpty: [ :all | all first type ]
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

{ #category : 'deprecated' }
JavaSwitchBlockExpressionGroupNode >> variable [
	self deprecated: 'Use patterns instead'.
	^ patterns ifNotEmpty: [ :all |
		  all first class = JavaTypePatternNode ifTrue: [ all first variable ] ]
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> whenToken [

	^ whenToken
]

{ #category : 'generated' }
JavaSwitchBlockExpressionGroupNode >> whenToken: aSmaCCToken [

	whenToken := aSmaCCToken
]
