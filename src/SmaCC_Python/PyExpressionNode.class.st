Class {
	#name : #PyExpressionNode,
	#superclass : #PyRootNode,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExpressionNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExpression: self
]
