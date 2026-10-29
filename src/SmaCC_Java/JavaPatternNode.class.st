Class {
	#name : 'JavaPatternNode',
	#superclass : 'JavaProgramNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaPatternNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitPattern: self
]
