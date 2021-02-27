Class {
	#name : #ClojureExpressionNode,
	#superclass : #SmaCCParseNode,
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureExpressionNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitExpression: self
]

{ #category : #testing }
ClojureExpressionNode >> isDiscarded [
	^ parent notNil and: [ parent isDiscarded ]
]

{ #category : #testing }
ClojureExpressionNode >> isQuoted [
	^ parent notNil and: [ parent isQuoted ]
]

{ #category : #testing }
ClojureExpressionNode >> isSyntaxQuoted [
	^ parent notNil and: [ parent isSyntaxQuoted ]
]

{ #category : #accessing }
ClojureExpressionNode >> listDepth [
	^ parent ifNil: [ 0 ] ifNotNil: [ parent listDepth ]
]
