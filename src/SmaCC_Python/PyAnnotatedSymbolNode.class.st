Class {
	#name : #PyAnnotatedSymbolNode,
	#superclass : #PySymbolNode,
	#instVars : [
		'variableAnnotation'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAnnotatedSymbolNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAnnotatedSymbol: self
]

{ #category : #generated }
PyAnnotatedSymbolNode >> nodeVariables [
	^ #(#variableAnnotation)
]

{ #category : #generated }
PyAnnotatedSymbolNode >> variableAnnotation [
	^ variableAnnotation
]

{ #category : #generated }
PyAnnotatedSymbolNode >> variableAnnotation: aPyTypeAnnotationNode [
	self variableAnnotation notNil ifTrue: [ self variableAnnotation parent: nil ].
	variableAnnotation := aPyTypeAnnotationNode.
	self variableAnnotation notNil ifTrue: [ self variableAnnotation parent: self ]
]
