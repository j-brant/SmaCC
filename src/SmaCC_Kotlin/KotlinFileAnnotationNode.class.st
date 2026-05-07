Class {
	#name : 'KotlinFileAnnotationNode',
	#superclass : 'KotlinAnnotationNode',
	#instVars : [
		'atToken',
		'fileToken',
		'colonToken',
		'leftBracket',
		'annotations',
		'rightBracket'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFileAnnotationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFileAnnotation: self
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> fileToken [
	^ fileToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> fileToken: aSmaCCToken [
	fileToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinFileAnnotationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileAnnotationNode >> tokenVariables [
	^ #(#atToken #fileToken #colonToken #leftBracket #rightBracket)
]
