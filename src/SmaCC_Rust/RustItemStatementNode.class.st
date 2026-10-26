Class {
	#name : 'RustItemStatementNode',
	#superclass : 'RustStatementNode',
	#instVars : [
		'item'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustItemStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitItemStatement: self
]

{ #category : 'generated' }
RustItemStatementNode >> item [
	^ item
]

{ #category : 'generated' }
RustItemStatementNode >> item: aRustItemNode [
	self item notNil ifTrue: [ self item parent: nil ].
	item := aRustItemNode.
	self item notNil ifTrue: [ self item parent: self ]
]

{ #category : 'generated' }
RustItemStatementNode >> nodeVariables [
	^ #(#item)
]
