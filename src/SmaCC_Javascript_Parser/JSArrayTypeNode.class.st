Class {
	#name : 'JSArrayTypeNode',
	#superclass : 'JSTypeNode',
	#instVars : [
		'type',
		'leftBracket',
		'rightBracket',
		'readonlyToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSArrayTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayType: self
]

{ #category : 'generated' }
JSArrayTypeNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated' }
JSArrayTypeNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JSArrayTypeNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JSArrayTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
JSArrayTypeNode >> readonlyToken [
	^ readonlyToken
]

{ #category : 'generated' }
JSArrayTypeNode >> readonlyToken: aSmaCCToken [
	readonlyToken := aSmaCCToken
]

{ #category : 'generated' }
JSArrayTypeNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JSArrayTypeNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
JSArrayTypeNode >> tokenVariables [
	^ #(#readonlyToken)
]

{ #category : 'generated' }
JSArrayTypeNode >> type [
	^ type
]

{ #category : 'generated' }
JSArrayTypeNode >> type: aJSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
