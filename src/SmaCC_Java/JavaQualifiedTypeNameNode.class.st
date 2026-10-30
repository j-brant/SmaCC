Class {
	#name : 'JavaQualifiedTypeNameNode',
	#superclass : 'JavaTypeNameNode',
	#instVars : [
		'nspace',
		'period',
		'annotations'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedTypeName: self
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> compositeNodeVariables [

	^ #( #annotations #arguments )
]

{ #category : 'generated-initialize-release' }
JavaQualifiedTypeNameNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> nodeVariables [
	^ #(#nspace)
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> nspace [
	^ nspace
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> nspace: aJavaTypeNameNode [
	self nspace notNil
		ifTrue: [ self nspace parent: nil ].
	nspace := aJavaTypeNameNode.
	self nspace notNil
		ifTrue: [ self nspace parent: self ]
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> period [
	^ period
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
JavaQualifiedTypeNameNode >> tokenVariables [
	^ #(#period #name)
]
