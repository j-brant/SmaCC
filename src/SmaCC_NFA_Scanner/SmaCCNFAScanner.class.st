Class {
	#name : #SmaCCNFAScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'nfa',
		'compiledConditions'
	],
	#classInstVars : [
		'nfa'
	],
	#category : #'SmaCC_NFA_Scanner'
}

{ #category : #accessing }
SmaCCNFAScanner class >> nfa [
	^ nfa
		ifNil: [ nfa := ((SmaCCGrammarCompiler new
					buildDefinition: self parserClass parserDefinitionString)
					scannerClass: self;
					parserClass: self parserClass;
					scannerCompiler) createFullRegex asNFA asNFAWithoutEpsilonTransitions ]
]

{ #category : #accessing }
SmaCCNFAScanner class >> nfa: anObject [
	nfa := anObject
]

{ #category : #accessing }
SmaCCNFAScanner class >> parserClass [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> advanceFrom: aNode into: states accepts: accepts [
	| hasChar |
	hasChar := false.
	aNode action notNil ifTrue: [ accepts addAll: aNode action ].
	aNode transitions
		do: [ :each | 
			each isCharacterTransition ifTrue: [ hasChar := true ].
			(each isEpsilonTransition
				or: [ (each isStateEdge and: [ each transitionObjects includes: self scope ])
						or: [ each isConditionEdge and: [ self isConditionSatisfied: each ] ] ])
				ifTrue: [ self
						advanceFrom: each to
						into: states
						accepts: accepts ] ].
	hasChar ifTrue: [ states add: aNode ]
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> checkForKeyword: aString [
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> compiledConditionsFor: anEdge [
	^ (compiledConditions ifNil: [ compiledConditions := IdentityDictionary new ])
		at: anEdge
		ifAbsentPut: [ anEdge transitionObjects
				collect: [ :each | 
					self class compiler
						source: '[' , each , ']';
						receiver: self;
						evaluate ] ]
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> isConditionSatisfied: anEdge [
	^ (self compiledConditionsFor: anEdge) anySatisfy: [ :each | each value ]
]

{ #category : #accessing }
SmaCCNFAScanner >> nfa [
	^ nfa ifNil: [ nfa := self class nfa ]
]

{ #category : #accessing }
SmaCCNFAScanner >> nfa: anObject [
	nfa := anObject
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> scanForToken [
	| states accepts |
	states := IdentitySet new.
	accepts := Set new.
	self
		advanceFrom: self nfa
		into: states
		accepts: accepts.
	accepts notEmpty
		ifTrue: [ self recordMatch: accepts asSortedCollection asArray ].
	[ states notEmpty ] whileTrue: [ states := self scanNextCharacterFrom: states ].
	^ self reportLastMatch
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> scanNextCharacterFrom: states [
	| newStates accepts |
	newStates := IdentitySet new.
	accepts := Set new.
	self step.
	states
		do: [ :each | 
			self
				stepNextCharacterFrom: each
				into: newStates
				accepts: accepts ].
	accepts notEmpty
		ifTrue: [ self recordMatch: accepts asSortedCollection asArray ].
	^ newStates
]

{ #category : #'as yet unclassified' }
SmaCCNFAScanner >> stepNextCharacterFrom: aNode into: newStates accepts: accepts [
	aNode transitions
		do: [ :each | 
			(each isCharacterTransition
				and: [ each transitionObjects includes: currentCharacter ])
				ifTrue: [ self
						advanceFrom: each to
						into: newStates
						accepts: accepts ] ]
]
