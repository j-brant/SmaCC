Class {
	#name : 'JavaDimensionNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'annotations'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaDimensionNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitDimension: self
]

{ #category : 'generated' }
JavaDimensionNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaDimensionNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaDimensionNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated-initialize-release' }
JavaDimensionNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]
