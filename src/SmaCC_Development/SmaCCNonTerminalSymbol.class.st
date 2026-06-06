Class {
	#name : 'SmaCCNonTerminalSymbol',
	#superclass : 'SmaCCSymbol',
	#instVars : [
		'productions',
		'position'
	],
	#category : 'SmaCC_Development-Model',
	#package : 'SmaCC_Development',
	#tag : 'Model'
}

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> addProduction: aSmaCCRHS [
	productions add: aSmaCCRHS.
	aSmaCCRHS symbol: self
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> calculateFirstTerminals [
	| initialSize |
	initialSize := firstTerminals size.
	productions isEmpty
		ifTrue: [ firstTerminals add: grammar emptySymbol ]
		ifFalse: [ productions
				do: [ :each | firstTerminals addAll: each firstTerminals ] ].
	^ initialSize ~= firstTerminals size
]

{ #category : 'initialize-release' }
SmaCCNonTerminalSymbol >> initialize [
	super initialize.
	productions := OrderedCollection new
]

{ #category : 'testing' }
SmaCCNonTerminalSymbol >> isEmpty [
	^ productions isEmpty
]

{ #category : 'testing' }
SmaCCNonTerminalSymbol >> isExplicitlyDefined [
	^ RBScanner isVariable: self name
]

{ #category : 'testing' }
SmaCCNonTerminalSymbol >> isTerminal [
	^ false
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> modelTypes: anIdentitySet [
	| types |
	(anIdentitySet includes: self)
		ifTrue: [ ^ #() ].
	anIdentitySet add: self.
	types := Set new.
	productions
		do: [ :each | types addAll: (each modelTypes: anIdentitySet) ].
	anIdentitySet remove: self.
	^ types
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> position [
	^ (position ifNil: [ 0 ]) + 10000000
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> position: anInteger [
	position ifNil: [ position := anInteger ]
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> positionOf: aSmaCCRHS [
	^ productions indexOf: aSmaCCRHS
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> productions [
	^ productions
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> productionsDo: aBlock [
	self productions do: aBlock
]

{ #category : 'testing' }
SmaCCNonTerminalSymbol >> returnsSingleVariable [
	^ productions anySatisfy: [ :each | each returnsSingleVariable ]
]

{ #category : 'testing' }
SmaCCNonTerminalSymbol >> returnsVariableCollection [
	^ productions anySatisfy: [ :each | each returnsVariableCollection ]
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> ruleNumber [
	^ position ifNil: [ 0 ]
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> size [
	^ productions size
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> usedBy [
	| usedBy |
	usedBy := IdentitySet new.
	self usedByInto: usedBy seen: IdentitySet new.
	^ usedBy
]

{ #category : 'private' }
SmaCCNonTerminalSymbol >> usedByInto: usesSet seen: seenSet [
	(seenSet includes: self) ifTrue: [ ^ self ].
	seenSet add: self.
	self grammar symbols
		do: [ :each | 
			(each isTerminal not
				and: [ each productions anySatisfy: [ :s | s collection includes: self ] ])
				ifTrue: [ each isExplicitlyDefined
						ifTrue: [ usesSet add: each ]
						ifFalse: [ each usedByInto: usesSet seen: seenSet ] ] ]
]

{ #category : 'accessing' }
SmaCCNonTerminalSymbol >> variableName [
	self
		productionsDo:
			[ :each | 
			| vars |
			vars := each variableNames asArray.
			vars notEmpty
				ifTrue: [ ^ vars first ] ].
	^ self
		error:
			'No variable found -- should only be called when returnsSingleVariable is true'
]
