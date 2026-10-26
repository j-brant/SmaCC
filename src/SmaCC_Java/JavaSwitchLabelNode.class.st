Class {
	#name : 'JavaSwitchLabelNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'caseToken',
		'constants',
		'commas',
		'colon',
		'modifiers',
		'type',
		'variable',
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

	^ #( #constants #modifiers )
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
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaSwitchLabelNode >> modifiers [

	^ modifiers
]

{ #category : 'generated' }
JavaSwitchLabelNode >> modifiers: anOrderedCollection [

	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
JavaSwitchLabelNode >> nodeVariables [

	^ #( #type #variable #guard )
]

{ #category : 'generated' }
JavaSwitchLabelNode >> tokenVariables [

	^ #( #caseToken #colon #whenToken )
]

{ #category : 'generated' }
JavaSwitchLabelNode >> type [

	^ type
]

{ #category : 'generated' }
JavaSwitchLabelNode >> type: aJavaTypeNode [

	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JavaSwitchLabelNode >> variable [

	^ variable
]

{ #category : 'generated' }
JavaSwitchLabelNode >> variable: aJavaProgramNode [

	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]

{ #category : 'generated' }
JavaSwitchLabelNode >> whenToken [

	^ whenToken
]

{ #category : 'generated' }
JavaSwitchLabelNode >> whenToken: aSmaCCToken [

	whenToken := aSmaCCToken
]
