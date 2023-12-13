Class {
	#name : #JavaTypeArgumentNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'annotations',
		'type',
		'questionMark',
		'token'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaTypeArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeArgument: self
]

{ #category : #generated }
JavaTypeArgumentNode >> annotations [
	^ annotations
]

{ #category : #generated }
JavaTypeArgumentNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : #generated }
JavaTypeArgumentNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : #'generated-initialize-release' }
JavaTypeArgumentNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : #generated }
JavaTypeArgumentNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
JavaTypeArgumentNode >> questionMark [
	^ questionMark
]

{ #category : #generated }
JavaTypeArgumentNode >> questionMark: aSmaCCToken [
	questionMark := aSmaCCToken
]

{ #category : #generated }
JavaTypeArgumentNode >> token [
	^ token
]

{ #category : #generated }
JavaTypeArgumentNode >> token: aSmaCCToken [
	token := aSmaCCToken
]

{ #category : #generated }
JavaTypeArgumentNode >> tokenVariables [
	^ #(#questionMark #token)
]

{ #category : #generated }
JavaTypeArgumentNode >> type [
	^ type
]

{ #category : #generated }
JavaTypeArgumentNode >> type: aJavaTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
