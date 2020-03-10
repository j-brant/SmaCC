Class {
	#name : #JSExportImplementationElementNode,
	#superclass : #JSTSExportNode,
	#instVars : [
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
JSExportImplementationElementNode >> nodeVariables [
	^ #(#declaration)
]
