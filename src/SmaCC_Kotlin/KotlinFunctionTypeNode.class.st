Class {
	#name : 'KotlinFunctionTypeNode',
	#superclass : 'KotlinTypeNode',
	#instVars : [
		'suspendToken',
		'parameter',
		'arrowToken',
		'type',
		'receiverType',
		'dot'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFunctionTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFunctionType: self
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> arrowToken [
	^ arrowToken
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> dot [
	^ dot
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> nodeVariables [
	^ #(#parameter #type #receiverType)
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> parameter [
	^ parameter
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> parameter: aKotlinFunctionTypeParametersNode [
	self parameter notNil ifTrue: [ self parameter parent: nil ].
	parameter := aKotlinFunctionTypeParametersNode.
	self parameter notNil ifTrue: [ self parameter parent: self ]
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> receiverType [
	^ receiverType
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> receiverType: aKotlinTypeNode [
	self receiverType notNil ifTrue: [ self receiverType parent: nil ].
	receiverType := aKotlinTypeNode.
	self receiverType notNil ifTrue: [ self receiverType parent: self ]
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> suspendToken [
	^ suspendToken
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> suspendToken: aSmaCCToken [
	suspendToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> tokenVariables [
	^ #(#suspendToken #arrowToken #dot)
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinFunctionTypeNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
