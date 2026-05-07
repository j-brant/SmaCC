Class {
	#name : 'KotlinValueArgumentNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'spread',
		'value',
		'name',
		'operator',
		'annotation'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinValueArgumentNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitValueArgument: self
]

{ #category : 'generated' }
KotlinValueArgumentNode >> annotation [
	^ annotation
]

{ #category : 'generated' }
KotlinValueArgumentNode >> annotation: aKotlinAnnotationNode [
	self annotation notNil ifTrue: [ self annotation parent: nil ].
	annotation := aKotlinAnnotationNode.
	self annotation notNil ifTrue: [ self annotation parent: self ]
]

{ #category : 'generated' }
KotlinValueArgumentNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinValueArgumentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinValueArgumentNode >> nodeVariables [
	^ #(#value #annotation)
]

{ #category : 'generated' }
KotlinValueArgumentNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinValueArgumentNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinValueArgumentNode >> spread [
	^ spread
]

{ #category : 'generated' }
KotlinValueArgumentNode >> spread: aSmaCCToken [
	spread := aSmaCCToken
]

{ #category : 'generated' }
KotlinValueArgumentNode >> tokenVariables [
	^ #(#spread #name #operator)
]

{ #category : 'generated' }
KotlinValueArgumentNode >> value [
	^ value
]

{ #category : 'generated' }
KotlinValueArgumentNode >> value: aKotlinExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aKotlinExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
