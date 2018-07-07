Class {
	#name : #SmaCCGrammarDefinitionNode,
	#superclass : #SmaCCDefinitionNode,
	#instVars : [
		'rules'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCGrammarDefinitionNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitGrammarDefinition: self
]

{ #category : #generated }
SmaCCGrammarDefinitionNode >> compositeNodeVariables [
	^ #(#rules)
]

{ #category : #'generated-initialize-release' }
SmaCCGrammarDefinitionNode >> initialize [
	super initialize.
	rules := OrderedCollection new: 2.
]

{ #category : #generated }
SmaCCGrammarDefinitionNode >> rules [
	^ rules
]

{ #category : #generated }
SmaCCGrammarDefinitionNode >> rules: anOrderedCollection [
	self setParents: self rules to: nil.
	rules := anOrderedCollection.
	self setParents: self rules to: self
]
