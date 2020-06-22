Class {
	#name : #VBNetMidAssignmentStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'midToken',
		'leftParen',
		'string',
		'commas',
		'start',
		'rightParen',
		'equals',
		'value',
		'length',
		'typeCharToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetMidAssignmentStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMidAssignmentStatement: self
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetMidAssignmentStatementNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> length [
	^ length
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> length: aVBNetExpressionNode [
	self length notNil
		ifTrue: [ self length parent: nil ].
	length := aVBNetExpressionNode.
	self length notNil
		ifTrue: [ self length parent: self ]
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> midToken [
	^ midToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> midToken: aSmaCCToken [
	midToken := aSmaCCToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> nodeVariables [
	^ #(#string #start #value #length)
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> start [
	^ start
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> start: aVBNetExpressionNode [
	self start notNil
		ifTrue: [ self start parent: nil ].
	start := aVBNetExpressionNode.
	self start notNil
		ifTrue: [ self start parent: self ]
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> string [
	^ string
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> string: aVBNetExpressionNode [
	self string notNil
		ifTrue: [ self string parent: nil ].
	string := aVBNetExpressionNode.
	self string notNil
		ifTrue: [ self string parent: self ]
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> tokenVariables [
	^ #(#midToken #leftParen #rightParen #equals #typeCharToken)
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> typeCharToken [
	^ typeCharToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> typeCharToken: aSmaCCToken [
	typeCharToken := aSmaCCToken
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetMidAssignmentStatementNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
