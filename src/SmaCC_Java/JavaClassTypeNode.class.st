Class {
	#name : 'JavaClassTypeNode',
	#superclass : 'JavaTypeNode',
	#instVars : [
		'name',
		'annotations'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaClassTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassType: self
]

{ #category : 'generated' }
JavaClassTypeNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaClassTypeNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaClassTypeNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated-initialize-release' }
JavaClassTypeNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaClassTypeNode >> name [
	^ name
]

{ #category : 'generated' }
JavaClassTypeNode >> name: aJavaTypeNameNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJavaTypeNameNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JavaClassTypeNode >> nodeVariables [
	^ #(#name)
]
