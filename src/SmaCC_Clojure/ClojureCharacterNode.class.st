Class {
	#name : #ClojureCharacterNode,
	#superclass : #ClojureLiteralNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureCharacterNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitCharacter: self
]
