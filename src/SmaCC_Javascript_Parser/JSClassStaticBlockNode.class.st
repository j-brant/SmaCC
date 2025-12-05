Class {
	#name : 'JSClassStaticBlockNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'staticToken',
		'leftBrace',
		'statements',
		'rightBrace'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSClassStaticBlockNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassStaticBlock: self
]

{ #category : 'generated' }
JSClassStaticBlockNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
JSClassStaticBlockNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSClassStaticBlockNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSClassStaticBlockNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSClassStaticBlockNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSClassStaticBlockNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSClassStaticBlockNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSClassStaticBlockNode >> statements [
	^ statements
]

{ #category : 'generated' }
JSClassStaticBlockNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
JSClassStaticBlockNode >> staticToken [
	^ staticToken
]

{ #category : 'generated' }
JSClassStaticBlockNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : 'generated' }
JSClassStaticBlockNode >> tokenVariables [
	^ #(#staticToken)
]
