Class {
	#name : 'JavaByteTypeNode',
	#superclass : 'JavaPrimitiveTypeNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaByteTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitByteType: self
]
