Class {
	#name : #ClojureVarNode,
	#superclass : #ClojureExpressionNode,
	#instVars : [
		'varToken',
		'name'
	],
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
ClojureVarNode >> acceptVisitor: anExpressionVisitor [
	^ anExpressionVisitor visitVar: self
]

{ #category : #generated }
ClojureVarNode >> name [
	^ name
]

{ #category : #generated }
ClojureVarNode >> name: aClojureExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aClojureExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
ClojureVarNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
ClojureVarNode >> tokenVariables [
	^ #(#varToken)
]

{ #category : #generated }
ClojureVarNode >> varToken [
	^ varToken
]

{ #category : #generated }
ClojureVarNode >> varToken: aSmaCCToken [
	varToken := aSmaCCToken
]
