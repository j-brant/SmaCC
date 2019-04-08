Class {
	#name : #CPPTranslationUnitNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarations'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPTranslationUnitNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTranslationUnit: self
]

{ #category : #generated }
CPPTranslationUnitNode >> compositeNodeVariables [
	^ #(#declarations)
]

{ #category : #generated }
CPPTranslationUnitNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPTranslationUnitNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #'generated-initialize-release' }
CPPTranslationUnitNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
]
