Class {
	#name : #CSAnonymousFunctionParameterNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'modifiers',
		'type',
		'name'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSAnonymousFunctionParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnonymousFunctionParameter: self
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #'generated-initialize-release' }
CSAnonymousFunctionParameterNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> name [
	^ name
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> type [
	^ type
]

{ #category : #generated }
CSAnonymousFunctionParameterNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
