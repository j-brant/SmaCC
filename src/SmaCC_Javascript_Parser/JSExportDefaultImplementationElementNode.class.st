Class {
	#name : 'JSExportDefaultImplementationElementNode',
	#superclass : 'JSTSExportNode',
	#instVars : [
		'decorators',
		'defaultToken',
		'declaration',
		'semicolon'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportDefaultImplementationElement: self
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> declaration [
	^ declaration
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> declaration: aJSProgramNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> decorators [
	^ decorators
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> defaultToken [
	^ defaultToken
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : 'generated-initialize-release' }
JSExportDefaultImplementationElementNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JSExportDefaultImplementationElementNode >> tokenVariables [
	^ #(#defaultToken #exportToken)
]
