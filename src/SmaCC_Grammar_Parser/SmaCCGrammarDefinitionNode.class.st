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

{ #category : #acccessing }
SmaCCGrammarDefinitionNode >> tokenNamed: aString [
	^ self tokenRules detect: [ :each | each name value = aString ] ifNone: [ nil ]
]

{ #category : #acccessing }
SmaCCGrammarDefinitionNode >> tokenRules [
	^ rules select: [ :each | each isKindOf: SmaCCTokenRuleNode ]
]
