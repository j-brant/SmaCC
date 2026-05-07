Class {
	#name : 'KotlinFunctionValueParameterWithOptionalTypeNode',
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
KotlinFunctionValueParameterWithOptionalTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionValueParameterWithOptionalType: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinFunctionValueParameterWithOptionalTypeNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> nodeVariables [
	^ #(#parameter #expression)
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> parameter [
	^ parameter
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> parameter: aKotlinParameterNode [
	self parameter notNil ifTrue: [ self parameter parent: nil ].
	parameter := aKotlinParameterNode.
	self parameter notNil ifTrue: [ self parameter parent: self ]
]

{ #category : 'generated' }
KotlinFunctionValueParameterWithOptionalTypeNode >> tokenVariables [
	^ #(#operator)
]
