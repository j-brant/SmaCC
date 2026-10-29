Class {
	#name : 'JavaRecordPatternNode',
	#superclass : 'JavaPatternNode',
	#instVars : [
		'type',
		'leftParen',
		'rightParen',
		'patterns',
		'commas'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaRecordPatternNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitRecordPattern: self
]

{ #category : 'generated' }
JavaRecordPatternNode >> commas [

	^ commas
]

{ #category : 'generated' }
JavaRecordPatternNode >> commas: anOrderedCollection [

	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaRecordPatternNode >> compositeNodeVariables [

	^ #( #patterns )
]

{ #category : 'generated' }
JavaRecordPatternNode >> ignoredCompositeTokenVariables [

	^ #( #commas )
]

{ #category : 'generated' }
JavaRecordPatternNode >> ignoredTokenVariables [

	^ #( #leftParen #rightParen )
]

{ #category : 'generated-initialize-release' }
JavaRecordPatternNode >> initialize [
	super initialize.
	patterns := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaRecordPatternNode >> leftParen [

	^ leftParen
]

{ #category : 'generated' }
JavaRecordPatternNode >> leftParen: aSmaCCToken [

	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JavaRecordPatternNode >> nodeVariables [

	^ #( #type )
]

{ #category : 'generated' }
JavaRecordPatternNode >> patterns [

	^ patterns
]

{ #category : 'generated' }
JavaRecordPatternNode >> patterns: anOrderedCollection [

	self setParents: self patterns to: nil.
	patterns := anOrderedCollection.
	self setParents: self patterns to: self
]

{ #category : 'generated' }
JavaRecordPatternNode >> rightParen [

	^ rightParen
]

{ #category : 'generated' }
JavaRecordPatternNode >> rightParen: aSmaCCToken [

	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JavaRecordPatternNode >> type [

	^ type
]

{ #category : 'generated' }
JavaRecordPatternNode >> type: aJavaTypeNode [

	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
