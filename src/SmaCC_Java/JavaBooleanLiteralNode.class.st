Class {
	#name : 'JavaBooleanLiteralNode',
	#superclass : 'JavaLiteralNode',
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaBooleanLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBooleanLiteral: self
]
