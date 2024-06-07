Class {
	#name : #PyComprehensionDictionaryItemNode,
	#superclass : #PyRootNode,
	#instVars : [
		'object',
		'colonToken',
		'value',
		'comp'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComprehensionDictionaryItemNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComprehensionDictionaryItem: self
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> comp [
	^ comp
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> comp: aPyComprehensionForNode [
	self comp notNil ifTrue: [ self comp parent: nil ].
	comp := aPyComprehensionForNode.
	self comp notNil ifTrue: [ self comp parent: self ]
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> nodeVariables [
	^ #(#object #value #comp)
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> object [
	^ object
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> object: aPyExpressionNode [
	self object notNil ifTrue: [ self object parent: nil ].
	object := aPyExpressionNode.
	self object notNil ifTrue: [ self object parent: self ]
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> tokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> value [
	^ value
]

{ #category : #generated }
PyComprehensionDictionaryItemNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
