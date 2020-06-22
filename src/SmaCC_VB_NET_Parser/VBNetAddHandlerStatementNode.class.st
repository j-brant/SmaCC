Class {
	#name : #VBNetAddHandlerStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'addHandlerToken',
		'event',
		'comma',
		'handler'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAddHandlerStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAddHandlerStatement: self
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> addHandlerToken [
	^ addHandlerToken
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> addHandlerToken: aSmaCCToken [
	addHandlerToken := aSmaCCToken
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> comma [
	^ comma
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> event [
	^ event
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> event: aVBNetExpressionNode [
	self event notNil
		ifTrue: [ self event parent: nil ].
	event := aVBNetExpressionNode.
	self event notNil
		ifTrue: [ self event parent: self ]
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> handler [
	^ handler
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> handler: aVBNetExpressionNode [
	self handler notNil
		ifTrue: [ self handler parent: nil ].
	handler := aVBNetExpressionNode.
	self handler notNil
		ifTrue: [ self handler parent: self ]
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> nodeVariables [
	^ #(#event #handler)
]

{ #category : #generated }
VBNetAddHandlerStatementNode >> tokenVariables [
	^ #(#addHandlerToken #comma)
]
