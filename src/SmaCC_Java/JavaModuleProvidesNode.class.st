Class {
	#name : #JavaModuleProvidesNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'providesToken',
		'name',
		'withToken',
		'withNames',
		'commas',
		'semicolon'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleProvidesNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleProvides: self
]

{ #category : #generated }
JavaModuleProvidesNode >> commas [
	^ commas
]

{ #category : #generated }
JavaModuleProvidesNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JavaModuleProvidesNode >> compositeNodeVariables [
	^ #(#withNames)
]

{ #category : #generated }
JavaModuleProvidesNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JavaModuleProvidesNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JavaModuleProvidesNode >> initialize [
	super initialize.
	withNames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JavaModuleProvidesNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleProvidesNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleProvidesNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JavaModuleProvidesNode >> providesToken [
	^ providesToken
]

{ #category : #generated }
JavaModuleProvidesNode >> providesToken: aSmaCCToken [
	providesToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleProvidesNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaModuleProvidesNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaModuleProvidesNode >> tokenVariables [
	^ #(#providesToken #withToken)
]

{ #category : #generated }
JavaModuleProvidesNode >> withNames [
	^ withNames
]

{ #category : #generated }
JavaModuleProvidesNode >> withNames: anOrderedCollection [
	self setParents: self withNames to: nil.
	withNames := anOrderedCollection.
	self setParents: self withNames to: self
]

{ #category : #generated }
JavaModuleProvidesNode >> withToken [
	^ withToken
]

{ #category : #generated }
JavaModuleProvidesNode >> withToken: aSmaCCToken [
	withToken := aSmaCCToken
]
