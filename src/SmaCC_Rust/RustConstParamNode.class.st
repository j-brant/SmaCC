Class {
	#name : 'RustConstParamNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'constToken',
		'name',
		'colon',
		'type',
		'equalsToken',
		'defaultValue',
		'operator',
		'defaultName'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustConstParamNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstParam: self
]

{ #category : 'generated' }
RustConstParamNode >> colon [
	^ colon
]

{ #category : 'generated' }
RustConstParamNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> constToken [
	^ constToken
]

{ #category : 'generated' }
RustConstParamNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> defaultName [
	^ defaultName
]

{ #category : 'generated' }
RustConstParamNode >> defaultName: aSmaCCToken [
	defaultName := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> defaultValue [
	^ defaultValue
]

{ #category : 'generated' }
RustConstParamNode >> defaultValue: aRustExpressionNode [
	self defaultValue notNil ifTrue: [ self defaultValue parent: nil ].
	defaultValue := aRustExpressionNode.
	self defaultValue notNil ifTrue: [ self defaultValue parent: self ]
]

{ #category : 'generated' }
RustConstParamNode >> equalsToken [
	^ equalsToken
]

{ #category : 'generated' }
RustConstParamNode >> equalsToken: aSmaCCToken [
	equalsToken := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> name [
	^ name
]

{ #category : 'generated' }
RustConstParamNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> nodeVariables [
	^ #(#type #defaultValue)
]

{ #category : 'generated' }
RustConstParamNode >> operator [
	^ operator
]

{ #category : 'generated' }
RustConstParamNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RustConstParamNode >> tokenVariables [
	^ #(#constToken #name #colon #equalsToken #operator #defaultName)
]

{ #category : 'generated' }
RustConstParamNode >> type [
	^ type
]

{ #category : 'generated' }
RustConstParamNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]
