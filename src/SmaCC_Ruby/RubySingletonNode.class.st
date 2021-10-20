Class {
	#name : 'RubySingletonNode',
	#superclass : 'RubyExpressionNode',
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubySingletonNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSingleton: self
]
