Class {
	#name : 'KotlinDefinitelyNonNullableTypeNode',
	#superclass : 'KotlinTypeNode',
	#instVars : [
		'left',
		'ampToken',
		'right'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitDefinitelyNonNullableType: self
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> ampToken [
	^ ampToken
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> ampToken: aSmaCCToken [
	ampToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> left [
	^ left
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> left: aKotlinUserTypeNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aKotlinUserTypeNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> right [
	^ right
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> right: aKotlinUserTypeNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aKotlinUserTypeNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : 'generated' }
KotlinDefinitelyNonNullableTypeNode >> tokenVariables [
	^ #(#ampToken)
]
