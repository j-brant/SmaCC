Class {
	#name : 'KotlinUnescapedAnnotationNode',
	#superclass : 'KotlinAnnotationNode',
	#instVars : [
		'annotation'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinUnescapedAnnotationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitUnescapedAnnotation: self
]

{ #category : 'generated' }
KotlinUnescapedAnnotationNode >> annotation [
	^ annotation
]

{ #category : 'generated' }
KotlinUnescapedAnnotationNode >> annotation: aKotlinNodeNode [
	self annotation notNil ifTrue: [ self annotation parent: nil ].
	annotation := aKotlinNodeNode.
	self annotation notNil ifTrue: [ self annotation parent: self ]
]

{ #category : 'generated' }
KotlinUnescapedAnnotationNode >> nodeVariables [
	^ #(#annotation)
]
