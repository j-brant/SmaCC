Class {
	#name : #CSNullConditionalMemberAccessNode,
	#superclass : #CSMemberAccessNode,
	#instVars : [
		'questionMarkToken',
		'identifierToken',
		'accesses'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSNullConditionalMemberAccessNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNullConditionalMemberAccess: self
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> accesses [
	^ accesses
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> accesses: anOrderedCollection [
	self setParents: self accesses to: nil.
	accesses := anOrderedCollection.
	self setParents: self accesses to: self
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> compositeNodeVariables [
	^ #(#accesses)
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> identifierToken [
	^ identifierToken
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> identifierToken: aSmaCCToken [
	identifierToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CSNullConditionalMemberAccessNode >> initialize [
	super initialize.
	accesses := OrderedCollection new: 2.
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
CSNullConditionalMemberAccessNode >> tokenVariables [
	^ #(#questionMarkToken #identifierToken #periodToken #identifier #name)
]
