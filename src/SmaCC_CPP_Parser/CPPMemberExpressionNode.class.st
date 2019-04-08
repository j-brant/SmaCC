Class {
	#name : #CPPMemberExpressionNode,
	#superclass : #CPPExpressionNode,
	#instVars : [
		'expression',
		'operator',
		'id',
		'templateToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPMemberExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberExpression: self
]

{ #category : #generated }
CPPMemberExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
CPPMemberExpressionNode >> expression: aCPPExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aCPPExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CPPMemberExpressionNode >> id [
	^ id
]

{ #category : #generated }
CPPMemberExpressionNode >> id: aCPPProgramNode [
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aCPPProgramNode.
	self id notNil
		ifTrue: [ self id parent: self ]
]

{ #category : #generated }
CPPMemberExpressionNode >> nodeVariables [
	^ #(#expression #id)
]

{ #category : #generated }
CPPMemberExpressionNode >> operator [
	^ operator
]

{ #category : #generated }
CPPMemberExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPMemberExpressionNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPMemberExpressionNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPMemberExpressionNode >> tokenVariables [
	^ #(#operator #templateToken)
]
