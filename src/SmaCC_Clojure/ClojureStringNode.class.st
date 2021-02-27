Class {
	#name : #ClojureStringNode,
	#superclass : #ClojureLiteralNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureStringNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitString: self
]
