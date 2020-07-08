Class {
	#name : #TeradataCaseExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'caseToken',
		'whens',
		'endToken',
		'else',
		'expression'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCaseExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseExpression: self
]

{ #category : #generated }
TeradataCaseExpressionNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
TeradataCaseExpressionNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
TeradataCaseExpressionNode >> compositeNodeVariables [
	^ #(#whens)
]

{ #category : #generated }
TeradataCaseExpressionNode >> else [
	^ else
]

{ #category : #generated }
TeradataCaseExpressionNode >> else: aTeradataElseExpressionNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aTeradataElseExpressionNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
TeradataCaseExpressionNode >> endToken [
	^ endToken
]

{ #category : #generated }
TeradataCaseExpressionNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
TeradataCaseExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
TeradataCaseExpressionNode >> expression: aTeradataExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aTeradataExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
TeradataCaseExpressionNode >> initialize [
	super initialize.
	whens := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataCaseExpressionNode >> nodeVariables [
	^ #(#else #expression)
]

{ #category : #generated }
TeradataCaseExpressionNode >> tokenVariables [
	^ #(#caseToken #endToken)
]

{ #category : #generated }
TeradataCaseExpressionNode >> whens [
	^ whens
]

{ #category : #generated }
TeradataCaseExpressionNode >> whens: anOrderedCollection [
	self setParents: self whens to: nil.
	whens := anOrderedCollection.
	self setParents: self whens to: self
]
