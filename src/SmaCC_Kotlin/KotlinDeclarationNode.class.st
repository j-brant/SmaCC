Class {
	#name : 'KotlinDeclarationNode',
	#superclass : 'KotlinNodeNode',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitDeclaration: self
]
