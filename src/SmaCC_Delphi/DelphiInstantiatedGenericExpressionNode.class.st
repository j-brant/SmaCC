Class {
	#name : #DelphiInstantiatedGenericExpressionNode,
	#superclass : #DelphiExpressionNode,
	#instVars : [
		'value',
		'left',
		'typeArguments',
		'commas',
		'right'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstantiatedGenericExpression: self
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> compositeNodeVariables [
	^ #(#typeArguments)
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
DelphiInstantiatedGenericExpressionNode >> initialize [
	super initialize.
	typeArguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> left [
	^ left
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> right [
	^ right
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> tokenVariables [
	^ #(#left #right)
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> typeArguments [
	^ typeArguments
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> typeArguments: anOrderedCollection [
	self setParents: self typeArguments to: nil.
	typeArguments := anOrderedCollection.
	self setParents: self typeArguments to: self
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> value [
	^ value
]

{ #category : #generated }
DelphiInstantiatedGenericExpressionNode >> value: aDelphiExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aDelphiExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
