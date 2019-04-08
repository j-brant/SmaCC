Class {
	#name : #CPPThisExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'thisToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPThisExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitThisExpression: self
]

{ #category : #generated }
CPPThisExpressionNode >> thisToken [
	^ thisToken
]

{ #category : #generated }
CPPThisExpressionNode >> thisToken: aSmaCCToken [
	thisToken := aSmaCCToken
]

{ #category : #generated }
CPPThisExpressionNode >> tokenVariables [
	^ #(#thisToken)
]
