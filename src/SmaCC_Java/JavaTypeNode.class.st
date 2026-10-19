Class {
	#name : 'JavaTypeNode',
	#superclass : 'JavaProgramNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitType: self
]
