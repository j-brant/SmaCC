Class {
	#name : 'KotlinTypeTestNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'operator',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeTestNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeTest: self
]

{ #category : 'generated' }
KotlinTypeTestNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinTypeTestNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinTypeTestNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeTestNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
KotlinTypeTestNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinTypeTestNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
