Class {
	#name : #VBNetRemoveHandlerStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'removeHandlerToken',
		'event',
		'comma',
		'handler'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRemoveHandlerStatement: self
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> comma [
	^ comma
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> event [
	^ event
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> event: aVBNetExpressionNode [
	self event notNil
		ifTrue: [ self event parent: nil ].
	event := aVBNetExpressionNode.
	self event notNil
		ifTrue: [ self event parent: self ]
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> handler [
	^ handler
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> handler: aVBNetExpressionNode [
	self handler notNil
		ifTrue: [ self handler parent: nil ].
	handler := aVBNetExpressionNode.
	self handler notNil
		ifTrue: [ self handler parent: self ]
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> nodeVariables [
	^ #(#event #handler)
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> removeHandlerToken [
	^ removeHandlerToken
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> removeHandlerToken: aSmaCCToken [
	removeHandlerToken := aSmaCCToken
]

{ #category : #generated }
VBNetRemoveHandlerStatementNode >> tokenVariables [
	^ #(#removeHandlerToken #comma)
]
