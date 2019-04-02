Class {
	#name : #CPPPointerOperatorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'constTokens',
		'volatileTokens',
		'specifiers',
		'colonColons',
		'type',
		'names',
		'templateIdentifiers',
		'templateTokens'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPPointerOperatorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerOperator: self
]

{ #category : #generated }
CPPPointerOperatorNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPPointerOperatorNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPPointerOperatorNode >> compositeNodeVariables [
	^ #(#specifiers #templateIdentifiers)
]

{ #category : #generated }
CPPPointerOperatorNode >> compositeTokenVariables [
	^ #(#constTokens #volatileTokens #colonColons #names #templateTokens)
]

{ #category : #generated }
CPPPointerOperatorNode >> constTokens [
	^ constTokens
]

{ #category : #generated }
CPPPointerOperatorNode >> constTokens: anOrderedCollection [
	constTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPPointerOperatorNode >> initialize [
	super initialize.
	constTokens := OrderedCollection new: 2.
	volatileTokens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	colonColons := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPPointerOperatorNode >> names [
	^ names
]

{ #category : #generated }
CPPPointerOperatorNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPPointerOperatorNode >> otherVariables [
	^ #(#type)
]

{ #category : #generated }
CPPPointerOperatorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPPointerOperatorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPPointerOperatorNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPPointerOperatorNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPPointerOperatorNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPPointerOperatorNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPPointerOperatorNode >> type [
	^ type
]

{ #category : #generated }
CPPPointerOperatorNode >> type: anObject [
	type := anObject
]

{ #category : #generated }
CPPPointerOperatorNode >> volatileTokens [
	^ volatileTokens
]

{ #category : #generated }
CPPPointerOperatorNode >> volatileTokens: anOrderedCollection [
	volatileTokens := anOrderedCollection
]
