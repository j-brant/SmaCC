Class {
	#name : 'JavaTypePatternNode',
	#superclass : 'JavaPatternNode',
	#instVars : [
		'modifiers',
		'type',
		'variable'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaTypePatternNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitTypePattern: self
]

{ #category : 'generated' }
JavaTypePatternNode >> compositeNodeVariables [

	^ #( #modifiers )
]

{ #category : 'generated-initialize-release' }
JavaTypePatternNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaTypePatternNode >> modifiers [

	^ modifiers
]

{ #category : 'generated' }
JavaTypePatternNode >> modifiers: anOrderedCollection [

	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
JavaTypePatternNode >> nodeVariables [

	^ #( #type #variable )
]

{ #category : 'generated' }
JavaTypePatternNode >> type [

	^ type
]

{ #category : 'generated' }
JavaTypePatternNode >> type: aJavaTypeNode [

	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JavaTypePatternNode >> variable [

	^ variable
]

{ #category : 'generated' }
JavaTypePatternNode >> variable: aJavaProgramNode [

	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
