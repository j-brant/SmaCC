Class {
	#name : #ClojureExpressionNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureExpressionNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitExpression: self
]
