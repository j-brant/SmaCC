Class {
	#name : 'JavaDoubleTypeNode',
	#superclass : 'JavaPrimitiveTypeNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaDoubleTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoubleType: self
]
