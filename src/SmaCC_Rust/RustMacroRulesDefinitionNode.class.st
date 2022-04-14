Class {
	#name : #RustMacroRulesDefinitionNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'macroRulesToken',
		'bang',
		'name',
		'left',
		'rules',
		'semicolons',
		'right'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroRulesDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroRulesDefinition: self
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> bang [
	^ bang
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> bang: aSmaCCToken [
	bang := aSmaCCToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> compositeNodeVariables [
	^ #(#rules)
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #'generated-initialize-release' }
RustMacroRulesDefinitionNode >> initialize [
	super initialize.
	rules := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> left [
	^ left
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> macroRulesToken [
	^ macroRulesToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> macroRulesToken: aSmaCCToken [
	macroRulesToken := aSmaCCToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> name [
	^ name
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> right [
	^ right
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> rules [
	^ rules
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> rules: anOrderedCollection [
	self setParents: self rules to: nil.
	rules := anOrderedCollection.
	self setParents: self rules to: self
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RustMacroRulesDefinitionNode >> tokenVariables [
	^ #(#macroRulesToken #bang #name #left #right)
]
