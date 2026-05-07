Class {
	#name : 'KotlinMultiAnnotationNode',
	#superclass : 'KotlinAnnotationNode',
	#instVars : [
		'target',
		'leftBracket',
		'annotations',
		'rightBracket',
		'atToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinMultiAnnotationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitMultiAnnotation: self
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated-initialize-release' }
KotlinMultiAnnotationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> nodeVariables [
	^ #(#target)
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> target [
	^ target
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> target: aKotlinAnnotationUseSiteTargetNode [
	self target notNil ifTrue: [ self target parent: nil ].
	target := aKotlinAnnotationUseSiteTargetNode.
	self target notNil ifTrue: [ self target parent: self ]
]

{ #category : 'generated' }
KotlinMultiAnnotationNode >> tokenVariables [
	^ #(#leftBracket #rightBracket #atToken)
]
