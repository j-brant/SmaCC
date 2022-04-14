Class {
	#name : #RustImplTraitTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'implToken',
		'typeBounds',
		'pluses'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustImplTraitTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImplTraitType: self
]

{ #category : #generated }
RustImplTraitTypeNode >> compositeNodeVariables [
	^ #(#typeBounds)
]

{ #category : #generated }
RustImplTraitTypeNode >> compositeTokenVariables [
	^ #(#pluses)
]

{ #category : #generated }
RustImplTraitTypeNode >> implToken [
	^ implToken
]

{ #category : #generated }
RustImplTraitTypeNode >> implToken: aSmaCCToken [
	implToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustImplTraitTypeNode >> initialize [
	super initialize.
	typeBounds := OrderedCollection new: 2.
	pluses := OrderedCollection new: 2.
]

{ #category : #generated }
RustImplTraitTypeNode >> pluses [
	^ pluses
]

{ #category : #generated }
RustImplTraitTypeNode >> pluses: anOrderedCollection [
	pluses := anOrderedCollection
]

{ #category : #generated }
RustImplTraitTypeNode >> tokenVariables [
	^ #(#implToken)
]

{ #category : #generated }
RustImplTraitTypeNode >> typeBounds [
	^ typeBounds
]

{ #category : #generated }
RustImplTraitTypeNode >> typeBounds: anOrderedCollection [
	self setParents: self typeBounds to: nil.
	typeBounds := anOrderedCollection.
	self setParents: self typeBounds to: self
]
