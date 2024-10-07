Class {
	#name : #PyEllipsisNode,
	#superclass : #PyExpressionNode,
	#instVars : [
		'ellipsis'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyEllipsisNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitEllipsis: self
]

{ #category : #generated }
PyEllipsisNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
PyEllipsisNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
PyEllipsisNode >> tokenVariables [
	^ #(#ellipsis)
]
