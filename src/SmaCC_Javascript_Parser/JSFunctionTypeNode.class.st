Class {
	#name : #JSFunctionTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'restParameter',
		'parameters',
		'commas',
		'arrow',
		'type',
		'typeParameters'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSFunctionTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionType: self
]

{ #category : #generated }
JSFunctionTypeNode >> arrow [
	^ arrow
]

{ #category : #generated }
JSFunctionTypeNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
JSFunctionTypeNode >> commas [
	^ commas
]

{ #category : #generated }
JSFunctionTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JSFunctionTypeNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
JSFunctionTypeNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
JSFunctionTypeNode >> initialize [
	super initialize.
	parameters := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JSFunctionTypeNode >> nodeVariables [
	^ #(#restParameter #type #typeParameters)
]

{ #category : #generated }
JSFunctionTypeNode >> parameters [
	^ parameters
]

{ #category : #generated }
JSFunctionTypeNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
JSFunctionTypeNode >> restParameter [
	^ restParameter
]

{ #category : #generated }
JSFunctionTypeNode >> restParameter: aJSRestVariableDeclarationNode [
	self restParameter notNil ifTrue: [ self restParameter parent: nil ].
	restParameter := aJSRestVariableDeclarationNode.
	self restParameter notNil ifTrue: [ self restParameter parent: self ]
]

{ #category : #generated }
JSFunctionTypeNode >> tokenVariables [
	^ #(#arrow)
]

{ #category : #generated }
JSFunctionTypeNode >> type [
	^ type
]

{ #category : #generated }
JSFunctionTypeNode >> type: aJSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSFunctionTypeNode >> typeParameters [
	^ typeParameters
]

{ #category : #generated }
JSFunctionTypeNode >> typeParameters: aJSTypeParametersNode [
	self typeParameters notNil ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aJSTypeParametersNode.
	self typeParameters notNil ifTrue: [ self typeParameters parent: self ]
]
