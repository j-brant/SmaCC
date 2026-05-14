Class {
	#name : 'KotlinTryExpressionNode',
	#superclass : 'KotlinExpressionNode',
	#instVars : [
		'tryToken',
		'try',
		'catches',
		'finally'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTryExpressionNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTryExpression: self
]

{ #category : 'generated' }
KotlinTryExpressionNode >> catches [
	^ catches
]

{ #category : 'generated' }
KotlinTryExpressionNode >> catches: anOrderedCollection [
	self setParents: self catches to: nil.
	catches := anOrderedCollection.
	self setParents: self catches to: self
]

{ #category : 'generated' }
KotlinTryExpressionNode >> compositeNodeVariables [
	^ #(#catches)
]

{ #category : 'generated' }
KotlinTryExpressionNode >> finally [
	^ finally
]

{ #category : 'generated' }
KotlinTryExpressionNode >> finally: aKotlinFinallyBlockNode [
	self finally notNil ifTrue: [ self finally parent: nil ].
	finally := aKotlinFinallyBlockNode.
	self finally notNil ifTrue: [ self finally parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinTryExpressionNode >> initialize [
	super initialize.
	catches := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTryExpressionNode >> nodeVariables [
	^ #(#try #finally)
]

{ #category : 'generated' }
KotlinTryExpressionNode >> tokenVariables [
	^ #(#tryToken)
]

{ #category : 'generated' }
KotlinTryExpressionNode >> try [
	^ try
]

{ #category : 'generated' }
KotlinTryExpressionNode >> try: aKotlinBlockNode [
	self try notNil ifTrue: [ self try parent: nil ].
	try := aKotlinBlockNode.
	self try notNil ifTrue: [ self try parent: self ]
]

{ #category : 'generated' }
KotlinTryExpressionNode >> tryToken [
	^ tryToken
]

{ #category : 'generated' }
KotlinTryExpressionNode >> tryToken: aSmaCCToken [
	tryToken := aSmaCCToken
]
