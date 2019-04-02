Class {
	#name : #CPPTranslationUnitNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarations'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTranslationUnitNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTranslationUnit: self
]

{ #category : #generated }
CPPTranslationUnitNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPTranslationUnitNode >> declarations: anOrderedCollection [
	declarations := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CPPTranslationUnitNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTranslationUnitNode >> otherVariables [
	^ #(#declarations)
]
