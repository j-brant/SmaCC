Class {
	#name : #RustTraitObjectTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'typeBounds',
		'pluses',
		'dynToken'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustTraitObjectTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTraitObjectType: self
]

{ #category : #generated }
RustTraitObjectTypeNode >> compositeNodeVariables [
	^ #(#typeBounds)
]

{ #category : #generated }
RustTraitObjectTypeNode >> compositeTokenVariables [
	^ #(#pluses)
]

{ #category : #generated }
RustTraitObjectTypeNode >> dynToken [
	^ dynToken
]

{ #category : #generated }
RustTraitObjectTypeNode >> dynToken: aSmaCCToken [
	dynToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustTraitObjectTypeNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : #generated }
RustTraitObjectTypeNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustTraitObjectTypeNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustTraitObjectTypeNode >> tokenVariables [
	^ #(#dynToken)
]

{ #category : #generated }
RustTraitObjectTypeNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustTraitObjectTypeNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]
