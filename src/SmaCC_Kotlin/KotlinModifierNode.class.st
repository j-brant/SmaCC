Class {
	#name : 'KotlinModifierNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinModifierNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitModifier: self
]

{ #category : 'generated' }
KotlinModifierNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinModifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinModifierNode >> tokenVariables [
	^ #(#name)
]
