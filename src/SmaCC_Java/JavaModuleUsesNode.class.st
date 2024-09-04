Class {
	#name : #JavaModuleUsesNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'usesToken',
		'name',
		'semicolon'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleUsesNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleUses: self
]

{ #category : #generated }
JavaModuleUsesNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JavaModuleUsesNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleUsesNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleUsesNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JavaModuleUsesNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaModuleUsesNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaModuleUsesNode >> tokenVariables [
	^ #(#usesToken)
]

{ #category : #generated }
JavaModuleUsesNode >> usesToken [
	^ usesToken
]

{ #category : #generated }
JavaModuleUsesNode >> usesToken: aSmaCCToken [
	usesToken := aSmaCCToken
]
