Class {
	#name : 'JavaArrayVariableNameNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'variable',
		'annotations',
		'leftBracket',
		'rightBracket'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaArrayVariableNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayVariableName: self
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated-initialize-release' }
JavaArrayVariableNameNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> nodeVariables [
	^ #(#variable)
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> variable [
	^ variable
]

{ #category : 'generated' }
JavaArrayVariableNameNode >> variable: aJavaProgramNode [
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]
]
