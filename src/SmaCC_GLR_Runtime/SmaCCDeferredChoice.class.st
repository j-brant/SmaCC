"
SmaCCDeferredChoice represents a choice between multiple parses.

Instance Variables
	choiceBlock	<BlockClosure>	a two argument block that decides what choice should be chosen
	possibleItems	<SequenceableCollection of: Object>	the choices


"
Class {
	#name : #SmaCCDeferredChoice,
	#superclass : #Object,
	#instVars : [
		'possibleItems',
		'choiceBlock'
	],
	#category : #'SmaCC_GLR_Runtime'
}

{ #category : #private }
SmaCCDeferredChoice class >> compare: firstCollection to: secondCollection [
	| index first second |
	first := firstCollection.
	second := secondCollection.
	[ first := self sortItems: first.
	second := self sortItems: second.
	index := 1.
	[ index <= first size and: [ index <= second size ] ]
		whileTrue: [ (first at: index) priority = (second at: index) priority
				ifTrue: [ index := index + 1 ]
				ifFalse: [ ^ (first at: index) priority - (second at: index) priority ] ].
	first := self subItemsIn: first.
	second := self subItemsIn: second.
	first notEmpty and: [ second notEmpty ] ] whileTrue.
	^ 0
]

{ #category : #private }
SmaCCDeferredChoice class >> deferredItemsIn: aCollection [
	^ aCollection
		select: [ :each | each isKindOf: SmaCCDeferredReduceAction ]
]

{ #category : #private }
SmaCCDeferredChoice class >> isStack: firstStack preferredOver: secondStack [
	^ (self
		compare: (self deferredItemsIn: firstStack)
		to: (self deferredItemsIn: secondStack)) <= 0
]

{ #category : #accessing }
SmaCCDeferredChoice class >> mergeStacks: stacksCollection [
	| result choiceBlock choices stacks |
	stacks := stacksCollection
		asSortedCollection: [ :a :b | self isStack: a preferredOver: b ].
	choices := 1 to: stacks size.
	choiceBlock := [ :possibleChoices :parser | 
	| returnValue newChoices |
	choices size == 1
		ifTrue: [ possibleChoices at: choices first ]
		ifFalse: [ returnValue := (SmaCCAmbiguousResultNotification forParser: parser)
				messageText: 'Ambiguous results';
				tag: (choices collect: [ :each | possibleChoices at: each ]);
				signal.
			newChoices := choices
				select: [ :each | (possibleChoices at: each) == returnValue ].
			newChoices notEmpty
				ifTrue: [ choices := newChoices ].
			returnValue ] ].
	result := OrderedCollection new.
	1 to: stacks first size do: [ :i | 
		| object |
		object := stacks first at: i.
		(stacks allSatisfy: [ :each | object == (each at: i) ])
			ifTrue: [ result add: object ]
			ifFalse: [ result
					add:
						(self new
							possibleItems: (stacks collect: [ :each | each at: i ]);
							choiceBlock: choiceBlock;
							yourself) ] ].
	^ result
]

{ #category : #private }
SmaCCDeferredChoice class >> sortItems: aCollection [
	^ aCollection asSortedCollection: [ :a :b | a priority < b priority ]
]

{ #category : #private }
SmaCCDeferredChoice class >> subItemsIn: aCollection [
	^ aCollection
		inject: OrderedCollection new
		into: [ :sum :each | 
			sum
				addAll: (self deferredItemsIn: each arguments);
				yourself ]
]

{ #category : #accessing }
SmaCCDeferredChoice >> choiceBlock: aBlock [
	choiceBlock := aBlock
]

{ #category : #accessing }
SmaCCDeferredChoice >> performOnSmaCCParser: aSmaCCParser [
	^ (choiceBlock value: possibleItems value: aSmaCCParser)
		performOnSmaCCParser: aSmaCCParser
]

{ #category : #accessing }
SmaCCDeferredChoice >> possibleItems [
	^ possibleItems
]

{ #category : #accessing }
SmaCCDeferredChoice >> possibleItems: aSequenceableCollection [
	possibleItems := aSequenceableCollection
]
