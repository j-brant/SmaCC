Class {
	#name : #JSExportImplementationElementNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'exportToken',
		'declaration'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSExportImplementationElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportImplementationElement: self
]

{ #category : #generated }
JSExportImplementationElementNode >> declaration [
	^ declaration
]

{ #category : #generated }
JSExportImplementationElementNode >> declaration: aJSProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
JSExportImplementationElementNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSExportImplementationElementNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSExportImplementationElementNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
JSExportImplementationElementNode >> tokenVariables [
	^ #(#exportToken)
]
