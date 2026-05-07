Class {
	#name : 'KotlinMemberNode',
	#superclass : 'KotlinNodeNode',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinMemberNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitMember: self
]
