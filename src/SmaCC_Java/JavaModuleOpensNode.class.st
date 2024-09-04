Class {
	#name : #JavaModuleOpensNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'opensToken',
		'name',
		'semicolon',
		'toToken',
		'toName'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleOpensNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleOpens: self
]

{ #category : #generated }
JavaModuleOpensNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JavaModuleOpensNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleOpensNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleOpensNode >> nodeVariables [
	^ #(#name #toName)
]

{ #category : #generated }
JavaModuleOpensNode >> opensToken [
	^ opensToken
]

{ #category : #generated }
JavaModuleOpensNode >> opensToken: aSmaCCToken [
	opensToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleOpensNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaModuleOpensNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaModuleOpensNode >> toName [
	^ toName
]

{ #category : #generated }
JavaModuleOpensNode >> toName: aJavaNameNode [
	self toName notNil ifTrue: [ self toName parent: nil ].
	toName := aJavaNameNode.
	self toName notNil ifTrue: [ self toName parent: self ]
]

{ #category : #generated }
JavaModuleOpensNode >> toToken [
	^ toToken
]

{ #category : #generated }
JavaModuleOpensNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleOpensNode >> tokenVariables [
	^ #(#opensToken #toToken)
]
