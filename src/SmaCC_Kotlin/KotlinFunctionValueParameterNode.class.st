Class {
	#name : 'KotlinFunctionValueParameterNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'parameter',
		'operator',
		'expression',
		'annotations',
		'modifiers'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionValueParameter: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinFunctionValueParameterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> nodeVariables [
	^ #(#parameter #expression)
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> parameter [
	^ parameter
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> parameter: aKotlinParameterNode [
	self parameter notNil ifTrue: [ self parameter parent: nil ].
	parameter := aKotlinParameterNode.
	self parameter notNil ifTrue: [ self parameter parent: self ]
]

{ #category : 'generated' }
KotlinFunctionValueParameterNode >> tokenVariables [
	^ #(#operator)
]
