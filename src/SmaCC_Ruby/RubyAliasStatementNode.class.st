Class {
	#name : 'RubyAliasStatementNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'aliasToken',
		'toName',
		'fromName'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyAliasStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAliasStatement: self
]

{ #category : 'generated' }
RubyAliasStatementNode >> aliasToken [
	^ aliasToken
]

{ #category : 'generated' }
RubyAliasStatementNode >> aliasToken: aSmaCCToken [
	aliasToken := aSmaCCToken
]

{ #category : 'generated' }
RubyAliasStatementNode >> fromName [
	^ fromName
]

{ #category : 'generated' }
RubyAliasStatementNode >> fromName: aRubyExpressionNode [
	self fromName notNil ifTrue: [ self fromName parent: nil ].
	fromName := aRubyExpressionNode.
	self fromName notNil ifTrue: [ self fromName parent: self ]
]

{ #category : 'generated' }
RubyAliasStatementNode >> nodeVariables [
	^ #(#toName #fromName)
]

{ #category : 'generated' }
RubyAliasStatementNode >> toName [
	^ toName
]

{ #category : 'generated' }
RubyAliasStatementNode >> toName: aRubyExpressionNode [
	self toName notNil ifTrue: [ self toName parent: nil ].
	toName := aRubyExpressionNode.
	self toName notNil ifTrue: [ self toName parent: self ]
]

{ #category : 'generated' }
RubyAliasStatementNode >> tokenVariables [
	^ #(#aliasToken)
]
