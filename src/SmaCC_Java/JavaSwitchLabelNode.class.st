Class {
	#name : 'JavaSwitchLabelNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'colon',
		'defaultToken',
		'patterns',
		'whenToken',
		'guard'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaSwitchLabelNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSwitchLabel: self
]

{ #category : 'generated' }
JavaSwitchLabelNode >> caseToken [
	^ caseToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> colon [
	^ colon
]

{ #category : 'generated' }
JavaSwitchLabelNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaSwitchLabelNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaSwitchLabelNode >> compositeNodeVariables [

	^ #( #constants #patterns )
]

{ #category : 'generated' }
JavaSwitchLabelNode >> constants [
	^ constants
]

{ #category : 'generated' }
JavaSwitchLabelNode >> constants: anOrderedCollection [
	self setParents: self constants to: nil.
	constants := anOrderedCollection.
	self setParents: self constants to: self
]

{ #category : 'generated' }
JavaSwitchLabelNode >> defaultToken [

	^ defaultToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> defaultToken: aSmaCCToken [

	defaultToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> guard [

	^ guard
]

{ #category : 'generated' }
JavaSwitchLabelNode >> guard: aJavaExpressionNode [

	self guard notNil ifTrue: [ self guard parent: nil ].
	guard := aJavaExpressionNode.
	self guard notNil ifTrue: [ self guard parent: self ]
]

{ #category : 'generated' }
JavaSwitchLabelNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated-initialize-release' }
JavaSwitchLabelNode >> initialize [
	super initialize.
	constants := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	patterns := OrderedCollection new: 2.
]

{ #category : 'deprecated' }
JavaSwitchLabelNode >> modifiers [
	self deprecated: 'Use patterns instead'.
	^ patterns
		  inject: OrderedCollection new
		  into: [ :all :each |
			  each class = JavaTypePatternNode
				  ifTrue: [ all , each modifiers ]
				  ifFalse: [ all ] ]
]

{ #category : 'generated' }
JavaSwitchLabelNode >> nodeVariables [

	^ #( #guard )
]

{ #category : 'generated' }
JavaSwitchLabelNode >> patterns [

	^ patterns
]

{ #category : 'generated' }
JavaSwitchLabelNode >> patterns: anOrderedCollection [

	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : 'generated' }
JavaSwitchLabelNode >> tokenVariables [

	^ #( #caseToken #colon #defaultToken #whenToken )
]

{ #category : 'deprecated' }
JavaSwitchLabelNode >> type [
	self deprecated: 'Use patterns instead'.
	^ patterns ifNotEmpty: [ :all | all first type ]
]

{ #category : 'deprecated' }
JavaSwitchLabelNode >> variable [
	self deprecated: 'Use patterns instead'.
	^ patterns ifNotEmpty: [ :all |
		  all first class = JavaTypePatternNode ifTrue: [ all first variable ] ]
]

{ #category : 'generated' }
JavaSwitchLabelNode >> whenToken [

	^ whenToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> whenToken: aSmaCCToken [

	whenToken := aSmaCCToken
]
