Class {
	#name : #ClojureNilNode,
	#superclass : #ClojureLiteralNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureNilNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitNil: self
]
