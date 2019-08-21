Class {
	#name : #DelphiVariableStatementNode,
	#superclass : #DelphiStatementNode,
	#instVars : [
		'varToken',
		'names',
		'commas',
		'assignmentToken',
		'value',
		'colon',
		'type'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiVariableStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableStatement: self
]

{ #category : #generated }
DelphiVariableStatementNode >> assignmentToken [
	^ assignmentToken
]

{ #category : #generated }
DelphiVariableStatementNode >> assignmentToken: aSmaCCToken [
	assignmentToken := aSmaCCToken
]

{ #category : #generated }
DelphiVariableStatementNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiVariableStatementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiVariableStatementNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiVariableStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiVariableStatementNode >> compositeTokenVariables [
	^ #(#names)
]

{ #category : #generated }
DelphiVariableStatementNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
DelphiVariableStatementNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiVariableStatementNode >> names [
	^ names
]

{ #category : #generated }
DelphiVariableStatementNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
DelphiVariableStatementNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
DelphiVariableStatementNode >> tokenVariables [
	^ #(#varToken #assignmentToken #colon)
]

{ #category : #generated }
DelphiVariableStatementNode >> type [
	^ type
]

{ #category : #generated }
DelphiVariableStatementNode >> type: aDelphiProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aDelphiProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
DelphiVariableStatementNode >> value [
	^ value
]

{ #category : #generated }
DelphiVariableStatementNode >> value: aDelphiExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aDelphiExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]

{ #category : #generated }
DelphiVariableStatementNode >> varToken [
	^ varToken
]

{ #category : #generated }
DelphiVariableStatementNode >> varToken: aSmaCCToken [
	varToken := aSmaCCToken
]
