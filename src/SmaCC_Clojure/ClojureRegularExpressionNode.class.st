Class {
	#name : #ClojureRegularExpressionNode,
	#superclass : #ClojureLiteralNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureRegularExpressionNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitRegularExpression: self
]
