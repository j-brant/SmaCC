Class {
	#name : #TeradataSetStatementNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'setToken',
		'name',
		'equals',
		'value',
		'updateToken',
		'forToken',
		'sessionToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataSetStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetStatement: self
]

{ #category : #generated }
TeradataSetStatementNode >> equals [
	^ equals
]

{ #category : #generated }
TeradataSetStatementNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
TeradataSetStatementNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataSetStatementNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
TeradataSetStatementNode >> name [
	^ name
]

{ #category : #generated }
TeradataSetStatementNode >> name: aTeradataIdentifierNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aTeradataIdentifierNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
TeradataSetStatementNode >> nodeVariables [
	^ #(#name #value)
]

{ #category : #generated }
TeradataSetStatementNode >> sessionToken [
	^ sessionToken
]

{ #category : #generated }
TeradataSetStatementNode >> sessionToken: aSmaCCToken [
	sessionToken := aSmaCCToken
]

{ #category : #generated }
TeradataSetStatementNode >> setToken [
	^ setToken
]

{ #category : #generated }
TeradataSetStatementNode >> setToken: aSmaCCToken [
	setToken := aSmaCCToken
]

{ #category : #generated }
TeradataSetStatementNode >> tokenVariables [
	^ #(#setToken #equals #forToken #sessionToken #updateToken)
]

{ #category : #generated }
TeradataSetStatementNode >> updateToken [
	^ updateToken
]

{ #category : #generated }
TeradataSetStatementNode >> updateToken: aSmaCCToken [
	updateToken := aSmaCCToken
]

{ #category : #generated }
TeradataSetStatementNode >> value [
	^ value
]

{ #category : #generated }
TeradataSetStatementNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
