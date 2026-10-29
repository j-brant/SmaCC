Class {
	#name : 'JavaModuleOpensNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'opensToken',
		'name',
		'semicolon',
		'toToken',
		'toNames',
		'commas'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaModuleOpensNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModuleOpens: self
]

{ #category : 'generated' }
JavaModuleOpensNode >> commas [

	^ commas
]

{ #category : 'generated' }
JavaModuleOpensNode >> commas: anOrderedCollection [

	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaModuleOpensNode >> compositeNodeVariables [

	^ #( #toNames )
]

{ #category : 'generated' }
JavaModuleOpensNode >> ignoredCompositeTokenVariables [

	^ #( #commas )
]

{ #category : 'generated' }
JavaModuleOpensNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : 'generated-initialize-release' }
JavaModuleOpensNode >> initialize [
	super initialize.
	toNames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaModuleOpensNode >> name [
	^ name
]

{ #category : 'generated' }
JavaModuleOpensNode >> name: aJavaNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JavaModuleOpensNode >> nodeVariables [

	^ #( #name )
]

{ #category : 'generated' }
JavaModuleOpensNode >> opensToken [
	^ opensToken
]

{ #category : 'generated' }
JavaModuleOpensNode >> opensToken: aSmaCCToken [
	opensToken := aSmaCCToken
]

{ #category : 'generated' }
JavaModuleOpensNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JavaModuleOpensNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'deprecated' }
JavaModuleOpensNode >> toName [

	self deprecated: 'Use toNames instead'.
	^ toNames ifEmpty: [ nil ] ifNotEmpty: [ :names | names first ]
]

{ #category : 'generated' }
JavaModuleOpensNode >> toNames [

	^ toNames
]

{ #category : 'generated' }
JavaModuleOpensNode >> toNames: anOrderedCollection [

	self setParents: self toNames to: nil.
	toNames := anOrderedCollection.
	self setParents: self toNames to: self
]

{ #category : 'generated' }
JavaModuleOpensNode >> toToken [
	^ toToken
]

{ #category : 'generated' }
JavaModuleOpensNode >> toToken: aSmaCCToken [
	toToken := aSmaCCToken
]

{ #category : 'generated' }
JavaModuleOpensNode >> tokenVariables [
	^ #(#opensToken #toToken)
]
