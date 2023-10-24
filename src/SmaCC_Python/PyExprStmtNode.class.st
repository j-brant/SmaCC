Class {
	#name : #PyExprStmtNode,
	#superclass : #PyRootNode,
	#instVars : [
		'testlist',
		'assigns',
		'tos',
		'typeAnnotations'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyExprStmtNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitExprStmt: self
]

{ #category : #generated }
PyExprStmtNode >> assigns [
	^ assigns
]

{ #category : #generated }
PyExprStmtNode >> assigns: anOrderedCollection [
	assigns := anOrderedCollection
]

{ #category : #generated }
PyExprStmtNode >> compositeNodeVariables [
	^ #(#tos #typeAnnotations)
]

{ #category : #generated }
PyExprStmtNode >> compositeTokenVariables [
	^ #(#assigns)
]

{ #category : #'generated-initialize-release' }
PyExprStmtNode >> initialize [
	super initialize.
	assigns := OrderedCollection new: 2.
	tos := OrderedCollection new: 2.
	typeAnnotations := OrderedCollection new: 2.
]

{ #category : #generated }
PyExprStmtNode >> nodeVariables [
	^ #(#testlist)
]

{ #category : #generated }
PyExprStmtNode >> testlist [
	^ testlist
]

{ #category : #generated }
PyExprStmtNode >> testlist: aPyRootNode [
	self testlist notNil
		ifTrue: [ self testlist parent: nil ].
	testlist := aPyRootNode.
	self testlist notNil
		ifTrue: [ self testlist parent: self ]
]

{ #category : #generated }
PyExprStmtNode >> tos [
	^ tos
]

{ #category : #generated }
PyExprStmtNode >> tos: anOrderedCollection [
	self setParents: self tos to: nil.
	tos := anOrderedCollection.
	self setParents: self tos to: self
]

{ #category : #generated }
PyExprStmtNode >> typeAnnotations [
	^ typeAnnotations
]

{ #category : #generated }
PyExprStmtNode >> typeAnnotations: anOrderedCollection [
	self setParents: self typeAnnotations to: nil.
	typeAnnotations := anOrderedCollection.
	self setParents: self typeAnnotations to: self
]
