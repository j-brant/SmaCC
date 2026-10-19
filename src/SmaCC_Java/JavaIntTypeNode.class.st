Class {
	#name : 'JavaIntTypeNode',
	#superclass : 'JavaPrimitiveTypeNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaIntTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntType: self
]
