Class {
	#name : 'KotlinAnnotatedStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'annotation',
		'statement'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnnotatedStatement: self
]

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> annotation [
	^ annotation
]

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> annotation: aKotlinAnnotationNode [
	self annotation notNil ifTrue: [ self annotation parent: nil ].
	annotation := aKotlinAnnotationNode.
	self annotation notNil ifTrue: [ self annotation parent: self ]
]

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> nodeVariables [
	^ #(#annotation #statement)
]

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> statement [
	^ statement
]

{ #category : 'generated' }
KotlinAnnotatedStatementNode >> statement: aKotlinNodeNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aKotlinNodeNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]
