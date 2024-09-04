Class {
	#name : #JavaModuleRequiresNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'requiresToken',
		'name',
		'semicolon',
		'staticToken',
		'transitiveToken'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleRequiresNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleRequires: self
]

{ #category : #generated }
JavaModuleRequiresNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JavaModuleRequiresNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleRequiresNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleRequiresNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JavaModuleRequiresNode >> requiresToken [
	^ requiresToken
]

{ #category : #generated }
JavaModuleRequiresNode >> requiresToken: aSmaCCToken [
	requiresToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleRequiresNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaModuleRequiresNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaModuleRequiresNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JavaModuleRequiresNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleRequiresNode >> tokenVariables [
	^ #(#requiresToken #staticToken #transitiveToken)
]

{ #category : #generated }
JavaModuleRequiresNode >> transitiveToken [
	^ transitiveToken
]

{ #category : #generated }
JavaModuleRequiresNode >> transitiveToken: aSmaCCToken [
	transitiveToken := aSmaCCToken
]
