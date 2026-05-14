Class {
	#name : 'KotlinStatementNode',
	#superclass : 'KotlinNodeNode',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinStatementNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitStatement: self
]
