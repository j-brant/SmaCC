Class {
	#name : 'JavaPrimitiveTypeNode',
	#superclass : 'JavaTypeNode',
	#instVars : [
		'token',
		'annotations'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaPrimitiveTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrimitiveType: self
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated-initialize-release' }
JavaPrimitiveTypeNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> token [
	^ token
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> token: aSmaCCToken [
	token := aSmaCCToken
]

{ #category : 'generated' }
JavaPrimitiveTypeNode >> tokenVariables [
	^ #(#token)
]
