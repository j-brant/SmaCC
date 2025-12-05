Class {
	#name : 'JSExportImplementationElementNode',
	#superclass : 'JSTSExportNode',
	#instVars : [
		'decorators',
		'declaration'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSExportImplementationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportImplementationElement: self
]

{ #category : 'generated' }
JSExportImplementationElementNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : 'generated' }
JSExportImplementationElementNode >> declaration [
	^ declaration
]

{ #category : 'generated' }
JSExportImplementationElementNode >> declaration: aJSProgramNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : 'generated' }
JSExportImplementationElementNode >> decorators [
	^ decorators
]

{ #category : 'generated' }
JSExportImplementationElementNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : 'generated-initialize-release' }
JSExportImplementationElementNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSExportImplementationElementNode >> nodeVariables [
	^ #(#declaration)
]
