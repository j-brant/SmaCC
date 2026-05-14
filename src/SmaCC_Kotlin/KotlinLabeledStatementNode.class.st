Class {
	#name : 'KotlinLabeledStatementNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'label',
		'statement'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinLabeledStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitLabeledStatement: self
]

{ #category : 'generated' }
KotlinLabeledStatementNode >> label [
	^ label
]

{ #category : 'generated' }
KotlinLabeledStatementNode >> label: aKotlinLabelNode [
	self label notNil ifTrue: [ self label parent: nil ].
	label := aKotlinLabelNode.
	self label notNil ifTrue: [ self label parent: self ]
]

{ #category : 'generated' }
KotlinLabeledStatementNode >> nodeVariables [
	^ #(#label #statement)
]

{ #category : 'generated' }
KotlinLabeledStatementNode >> statement [
	^ statement
]

{ #category : 'generated' }
KotlinLabeledStatementNode >> statement: aKotlinNodeNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aKotlinNodeNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]
