Class {
	#name : 'KotlinFinallyBlockNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'finallyToken',
		'block'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFinallyBlockNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFinallyBlock: self
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> block [
	^ block
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> block: aKotlinBlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aKotlinBlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> finallyToken [
	^ finallyToken
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> finallyToken: aSmaCCToken [
	finallyToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> nodeVariables [
	^ #(#block)
]

{ #category : 'generated' }
KotlinFinallyBlockNode >> tokenVariables [
	^ #(#finallyToken)
]
