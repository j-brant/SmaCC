Class {
	#name : 'KotlinAnnotationNode',
	#superclass : 'KotlinNodeNode',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnnotationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnnotation: self
]
