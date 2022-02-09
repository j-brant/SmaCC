Class {
	#name : #TeradataCreateTableColumnNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'name',
		'type'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCreateTableColumnNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTableColumn: self
]

{ #category : #generated }
TeradataCreateTableColumnNode >> name [
	^ name
]

{ #category : #generated }
TeradataCreateTableColumnNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableColumnNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
TeradataCreateTableColumnNode >> tokenVariables [
	^ #(#name)
]

{ #category : #generated }
TeradataCreateTableColumnNode >> type [
	^ type
]

{ #category : #generated }
TeradataCreateTableColumnNode >> type: aTeradataTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aTeradataTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
