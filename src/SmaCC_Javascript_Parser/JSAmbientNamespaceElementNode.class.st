Class {
	#name : #JSAmbientNamespaceElementNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'declaration',
		'exportToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientNamespaceElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientNamespaceElement: self
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSAmbientNamespaceElementNode >> tokenVariables [
	^ #(#exportToken)
]
