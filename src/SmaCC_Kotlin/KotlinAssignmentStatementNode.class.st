Class {
	#name : 'KotlinAssignmentStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'target',
		'operator',
		'value'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAssignmentStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAssignmentStatement: self
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> nodeVariables [
	^ #(#target #value)
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> target [
	^ target
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> target: aKotlinExpressionNode [
	self target notNil ifTrue: [ self target parent: nil ].
	target := aKotlinExpressionNode.
	self target notNil ifTrue: [ self target parent: self ]
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> value [
	^ value
]

{ #category : 'generated' }
KotlinAssignmentStatementNode >> value: aKotlinExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aKotlinExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
