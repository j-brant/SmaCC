Class {
	#name : 'JSIndexSignatureNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'leftBracket',
		'name',
		'colonTokens',
		'value',
		'rightBracket',
		'type'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSIndexSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexSignature: self
]

{ #category : 'generated' }
JSIndexSignatureNode >> colonTokens [
	^ colonTokens
]

{ #category : 'generated' }
JSIndexSignatureNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : 'generated' }
JSIndexSignatureNode >> ignoredCompositeTokenVariables [
	^ #(#colonTokens)
]

{ #category : 'generated' }
JSIndexSignatureNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated-initialize-release' }
JSIndexSignatureNode >> initialize [
	super initialize.
	colonTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSIndexSignatureNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JSIndexSignatureNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JSIndexSignatureNode >> name [
	^ name
]

{ #category : 'generated' }
JSIndexSignatureNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JSIndexSignatureNode >> nodeVariables [
	^ #(#name #type)
]

{ #category : 'generated' }
JSIndexSignatureNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JSIndexSignatureNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
JSIndexSignatureNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
JSIndexSignatureNode >> type [
	^ type
]

{ #category : 'generated' }
JSIndexSignatureNode >> type: aJSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JSIndexSignatureNode >> value [
	^ value
]

{ #category : 'generated' }
JSIndexSignatureNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
