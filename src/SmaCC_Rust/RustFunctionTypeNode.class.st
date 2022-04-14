Class {
	#name : #RustFunctionTypeNode,
	#superclass : #RustTypeNode,
	#instVars : [
		'externToken',
		'abi',
		'unsafeToken',
		'fnToken',
		'leftParen',
		'rightParen',
		'arrow',
		'types',
		'attrs',
		'names',
		'colons',
		'commas',
		'ellipsis',
		'forToken',
		'lt',
		'gt',
		'params'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustFunctionTypeNode >> abi [
	^ abi
]

{ #category : #generated }
RustFunctionTypeNode >> abi: aSmaCCToken [
	abi := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionType: self
]

{ #category : #generated }
RustFunctionTypeNode >> arrow [
	^ arrow
]

{ #category : #generated }
RustFunctionTypeNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> attrs [
	^ attrs
]

{ #category : #generated }
RustFunctionTypeNode >> attrs: anOrderedCollection [
	self setParents: self attrs to: nil.
	attrs := anOrderedCollection.
	self setParents: self attrs to: self
]

{ #category : #generated }
RustFunctionTypeNode >> colons [
	^ colons
]

{ #category : #generated }
RustFunctionTypeNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
RustFunctionTypeNode >> commas [
	^ commas
]

{ #category : #generated }
RustFunctionTypeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustFunctionTypeNode >> compositeNodeVariables [
	^ #(#types #attrs #params)
]

{ #category : #generated }
RustFunctionTypeNode >> compositeTokenVariables [
	^ #(#names #colons #commas)
]

{ #category : #generated }
RustFunctionTypeNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
RustFunctionTypeNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> externToken [
	^ externToken
]

{ #category : #generated }
RustFunctionTypeNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> fnToken [
	^ fnToken
]

{ #category : #generated }
RustFunctionTypeNode >> fnToken: aSmaCCToken [
	fnToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> forToken [
	^ forToken
]

{ #category : #generated }
RustFunctionTypeNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> gt [
	^ gt
]

{ #category : #generated }
RustFunctionTypeNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustFunctionTypeNode >> initialize [
	super initialize.
	types := OrderedCollection new: 2.
	attrs := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	colons := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	params := OrderedCollection new: 2.
]

{ #category : #generated }
RustFunctionTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustFunctionTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> lt [
	^ lt
]

{ #category : #generated }
RustFunctionTypeNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> names [
	^ names
]

{ #category : #generated }
RustFunctionTypeNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
RustFunctionTypeNode >> params [
	^ params
]

{ #category : #generated }
RustFunctionTypeNode >> params: anOrderedCollection [
	self setParents: self params to: nil.
	params := anOrderedCollection.
	self setParents: self params to: self
]

{ #category : #generated }
RustFunctionTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustFunctionTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustFunctionTypeNode >> tokenVariables [
	^ #(#externToken #abi #unsafeToken #fnToken #leftParen #rightParen #arrow #ellipsis #forToken #lt #gt)
]

{ #category : #generated }
RustFunctionTypeNode >> types [
	^ types
]

{ #category : #generated }
RustFunctionTypeNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
RustFunctionTypeNode >> unsafeToken [
	^ unsafeToken
]

{ #category : #generated }
RustFunctionTypeNode >> unsafeToken: aSmaCCToken [
	unsafeToken := aSmaCCToken
]
