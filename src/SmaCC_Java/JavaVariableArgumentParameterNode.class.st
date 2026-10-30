Class {
	#name : 'JavaVariableArgumentParameterNode',
	#superclass : 'JavaParameterNode',
	#instVars : [
		'annotations',
		'varArgsToken'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableArgumentParameter: self
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> compositeNodeVariables [

	^ #( #annotations #modifiers )
]

{ #category : 'generated-initialize-release' }
JavaVariableArgumentParameterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> tokenVariables [
	^ #(#varArgsToken)
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> varArgsToken [
	^ varArgsToken
]

{ #category : 'generated' }
JavaVariableArgumentParameterNode >> varArgsToken: aSmaCCToken [
	varArgsToken := aSmaCCToken
]
