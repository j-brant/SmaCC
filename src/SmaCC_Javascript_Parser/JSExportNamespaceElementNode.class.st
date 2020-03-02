Class {
	#name : #JSExportNamespaceElementNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'exportToken',
		'declaration'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportNamespaceElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportNamespaceElement: self
]

{ #category : #generated }
JSExportNamespaceElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportNamespaceElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportNamespaceElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSExportNamespaceElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSExportNamespaceElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSExportNamespaceElementNode >> tokenVariables [
	^ #(#exportToken)
]
