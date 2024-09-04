Class {
	#name : #JavaModuleExportsNode,
	#superclass : #JavaProgramNode,
	#instVars : [
		'exportsToken',
		'name',
		'semicolon',
		'toToken',
		'toNames',
		'commas'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaModuleExportsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleExports: self
]

{ #category : #generated }
JavaModuleExportsNode >> commas [
	^ commas
]

{ #category : #generated }
JavaModuleExportsNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JavaModuleExportsNode >> compositeNodeVariables [
	^ #(#toNames)
]

{ #category : #generated }
JavaModuleExportsNode >> exportsToken [
	^ exportsToken
]

{ #category : #generated }
JavaModuleExportsNode >> exportsToken: aSmaCCToken [
	exportsToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleExportsNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
JavaModuleExportsNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JavaModuleExportsNode >> initialize [
	super initialize.
	toNames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
JavaModuleExportsNode >> name [
	^ name
]

{ #category : #generated }
JavaModuleExportsNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JavaModuleExportsNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JavaModuleExportsNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JavaModuleExportsNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JavaModuleExportsNode >> toNames [
	^ toNames
]

{ #category : #generated }
JavaModuleExportsNode >> toNames: anOrderedCollection [
	self setParents: self toNames to: nil.
	toNames := anOrderedCollection.
	self setParents: self toNames to: self
]

{ #category : #generated }
JavaModuleExportsNode >> toToken [
	^ toToken
]

{ #category : #generated }
JavaModuleExportsNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : #generated }
JavaModuleExportsNode >> tokenVariables [
	^ #(#exportsToken #toToken)
]
