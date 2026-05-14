Class {
	#name : 'KotlinNodeNode',
	#superclass : 'SmaCCParseNode',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinNodeNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitNode: self
]
