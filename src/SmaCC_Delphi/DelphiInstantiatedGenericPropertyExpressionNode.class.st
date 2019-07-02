Class {
	#name : #DelphiInstantiatedGenericPropertyExpressionNode,
	#superclass : #DelphiPropertyExpressionNode,
	#instVars : [
		'left',
		'typeArguments',
		'commas',
		'right'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstantiatedGenericPropertyExpression: self
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> compositeNodeVariables [
	^ #(#typeArguments)
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
DelphiInstantiatedGenericPropertyExpressionNode >> initialize [
	super initialize.
	typeArguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> left [
	^ left
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> right [
	^ right
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> tokenVariables [
	^ #(#left #right #period #name)
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> typeArguments [
	^ typeArguments
]

{ #category : #generated }
DelphiInstantiatedGenericPropertyExpressionNode >> typeArguments: anOrderedCollection [
	self setParents: self typeArguments to: nil.
	typeArguments := anOrderedCollection.
	self setParents: self typeArguments to: self
]
