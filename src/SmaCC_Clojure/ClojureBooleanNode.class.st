Class {
	#name : #ClojureBooleanNode,
	#superclass : #ClojureLiteralNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureBooleanNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitBoolean: self
]
