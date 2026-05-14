Class {
	#name : 'KotlinLabelNode',
	#superclass : 'KotlinStatementNode',
	#instVars : [
		'name',
		'atToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinLabelNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitLabel: self
]

{ #category : 'generated' }
KotlinLabelNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinLabelNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinLabelNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinLabelNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinLabelNode >> tokenVariables [
	^ #(#name #atToken)
]
