Class {
	#name : 'KotlinSingleAnnotationNode',
	#superclass : 'KotlinAnnotationNode',
	#instVars : [
		'target',
		'annotation',
		'atToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinSingleAnnotationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitSingleAnnotation: self
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> annotation [
	^ annotation
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> annotation: aKotlinUnescapedAnnotationNode [
	self annotation notNil ifTrue: [ self annotation parent: nil ].
	annotation := aKotlinUnescapedAnnotationNode.
	self annotation notNil ifTrue: [ self annotation parent: self ]
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> nodeVariables [
	^ #(#target #annotation)
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> target [
	^ target
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> target: aKotlinAnnotationUseSiteTargetNode [
	self target notNil ifTrue: [ self target parent: nil ].
	target := aKotlinAnnotationUseSiteTargetNode.
	self target notNil ifTrue: [ self target parent: self ]
]

{ #category : 'generated' }
KotlinSingleAnnotationNode >> tokenVariables [
	^ #(#atToken)
]
