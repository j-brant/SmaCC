Class {
	#name : #JavaModuleNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'moduleToken',
		'name',
		'leftBrace',
		'directives',
		'rightBrace',
		'openToken'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModule: self
]

{ #category : #generated }
JavaModuleNode >> compositeNodeVariables [
	^ #(#directives)
]

{ #category : #generated }
JavaModuleNode >> directives [
	^ directives
]

{ #category : #generated }
JavaModuleNode >> directives: anOrderedCollection [
	self setParents: self directives to: nil.
	directives := anOrderedCollection.
	self setParents: self directives to: self
]

{ #category : #generated }
JavaModuleNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : #'generated-initialize-release' }
JavaModuleNode >> initialize [
	super initialize.
	directives := OrderedCollection new: 2.
]

{ #category : #generated }
JavaModuleNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JavaModuleNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JavaModuleNode >> moduleToken [
	^ moduleToken
]

{ #category : #generated }
JavaModuleNode >> moduleToken: aSmaCCToken [
	moduleToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JavaModuleNode >> openToken [
	^ openToken
]

{ #category : #generated }
JavaModuleNode >> openToken: aSmaCCToken [
	openToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
JavaModuleNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
JavaModuleNode >> tokenVariables [
	^ #(#moduleToken #openToken)
]
