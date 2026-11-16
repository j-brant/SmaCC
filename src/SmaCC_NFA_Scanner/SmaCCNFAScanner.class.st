Class {
	#name : 'SmaCCNFAScanner',
	#superclass : 'SmaCCScanner',
	#instVars : [
		'nfa',
		'compiledConditions',
		'scopeTransitions',
		'startIndex',
		'startIndexEnabled'
	],
	#classInstVars : [
		'nfa'
	],
	#category : 'SmaCC_NFA_Scanner',
	#package : 'SmaCC_NFA_Scanner'
}

{ #category : 'accessing' }
SmaCCNFAScanner class >> nfa [
	^ nfa
		ifNil: [ nfa := ((SmaCCGrammarCompiler new
					buildDefinition: self parserClass parserDefinitionString)
					scannerClass: self;
					parserClass: self parserClass;
					scannerCompiler) createFullRegex asNFA asNFAWithoutEpsilonTransitions ]
]

{ #category : 'accessing' }
SmaCCNFAScanner class >> nfa: anObject [
	nfa := anObject
]

{ #category : 'accessing' }
SmaCCNFAScanner class >> parserClass [
	^ self subclassResponsibility
]

{ #category : 'private' }
SmaCCNFAScanner >> advanceFrom: aNode into: states accepts: accepts [
	| hasChar |
	hasChar := false.
	aNode action notNil ifTrue: [ accepts addAll: aNode action ].
	(self transitionsFor: aNode)
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

{ #category : 'private' }
SmaCCNFAScanner >> advanceFromStartInto: states accepts: accepts [
	| root original transitions hasChar |
	root := self nfa.
	original := self transitionsFor: root.
	(original size <= 16 or: [ stream atEnd ])
		ifTrue: [ ^ self
				advanceFrom: root
				into: states
				accepts: accepts ].
	startIndex ifNil: [ startIndex := SmaCCNFAStartIndex new ].
	transitions := startIndex
			transitions: original
			forScope: self scope
			character: stream peek.
	transitions size = original size
		ifTrue: [ ^ self
				advanceFrom: root
				into: states
				accepts: accepts ].
	hasChar := false.
	root action notNil ifTrue: [ accepts addAll: root action ].
	transitions
		do: [ :edge | 
			edge isCharacterTransition ifTrue: [ hasChar := true ].
			(edge isEpsilonTransition
				or: [ (edge isStateEdge and: [ edge transitionObjects includes: self scope ])
						or: [ edge isConditionEdge and: [ self isConditionSatisfied: edge ] ] ])
				ifTrue: [ self
						advanceFrom: edge to
						into: states
						accepts: accepts ] ].
	hasChar ifTrue: [ states add: root ].
	states isEmpty
		ifTrue: [ self
				advanceFrom: root
				into: states
				accepts: accepts ]
]

{ #category : 'private' }
SmaCCNFAScanner >> checkForKeyword: aString [
]

{ #category : 'private' }
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

{ #category : 'testing' }
SmaCCNFAScanner >> isConditionSatisfied: anEdge [
	^ (self compiledConditionsFor: anEdge) anySatisfy: [ :each | each value ]
]

{ #category : 'accessing' }
SmaCCNFAScanner >> nfa [
	nfa ifNil: [ self nfa: self class nfa ].
	^ nfa
]

{ #category : 'accessing' }
SmaCCNFAScanner >> nfa: anObject [
	nfa := anObject.
	scopeTransitions := nil.
	startIndex := nil.
	startIndexEnabled := nfa transitions size > 16
]

{ #category : 'scanning' }
SmaCCNFAScanner >> scanForToken [
	| states accepts |
	states := IdentitySet new.
	accepts := Set new.
	startIndexEnabled
		ifTrue: [ self advanceFromStartInto: states accepts: accepts ]
		ifFalse: [ self
				advanceFrom: self nfa
				into: states
				accepts: accepts ].
	accepts notEmpty
		ifTrue: [ self recordMatch: accepts asSortedCollection asArray ].
	[ states notEmpty ] whileTrue: [ states := self scanNextCharacterFrom: states ].
	^ self reportLastMatch
]

{ #category : 'scanning' }
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

{ #category : 'scanning' }
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

{ #category : 'private' }
SmaCCNFAScanner >> transitionsFor: aNode [
	aNode == nfa ifFalse: [ ^ aNode transitions ].
	^ (scopeTransitions ifNil: [ scopeTransitions := IdentityDictionary new ])
		at: self scope
		ifAbsentPut: [ (aNode transitions
				select: [ :edge | edge isStateEdge not or: [ edge transitionObjects includes: self scope ] ])
				asArray ]
]
