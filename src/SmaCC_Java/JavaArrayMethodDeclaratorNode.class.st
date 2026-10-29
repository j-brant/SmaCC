Class {
	#name : 'JavaArrayMethodDeclaratorNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'declarator',
		'annotations',
		'leftBracket',
		'rightBracket'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayMethodDeclarator: self
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> declarator [
	^ declarator
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> declarator: aJavaProgramNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aJavaProgramNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated-initialize-release' }
JavaArrayMethodDeclaratorNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> nodeVariables [
	^ #(#declarator)
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JavaArrayMethodDeclaratorNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]
