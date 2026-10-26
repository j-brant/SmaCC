Class {
	#name : 'RustWhileLetLoopExpressionNode',
	#superclass : 'RustExpressionNode',
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustWhileLetLoopExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhileLetLoopExpression: self
]
