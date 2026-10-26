Class {
	#name : 'RustStructExprTupleNode',
	#superclass : 'RustExpressionNode',
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustStructExprTupleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStructExprTuple: self
]
