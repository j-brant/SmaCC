"
SmaCCDeferredChoice represents a choice between multiple parses.

Instance Variables
	choiceBlock	<BlockClosure>	a two argument block that decides what choice should be chosen
	possibleItems	<SequenceableCollection of: Object>	the choices


"
Class {
	#name : 'SmaCCDeferredChoice',
	#superclass : 'Object',
	#instVars : [
		'possibleItems',
		'choiceBlock',
		'choices',
		'stacksCollection',
		'sortedChoices'
	],
	#category : 'SmaCC_GLR_Runtime',
	#package : 'SmaCC_GLR_Runtime'
}

{ #category : 'accessing' }
SmaCCDeferredChoice class >> mergeStacks: stacksCollection [
	| result |
	result := OrderedCollection new.
	1
		to: stacksCollection first size
		do: [ :i | 
			| object |
			object := stacksCollection first at: i.
			(stacksCollection allSatisfy: [ :each | object == (each at: i) ])
				ifTrue: [ result add: object ]
				ifFalse: [ result
						add: (self new
								possibleItems: (stacksCollection collect: [ :each | each at: i ]);
								stacksCollection: stacksCollection;
								yourself) ] ].
	^ result
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> allPossibleItems [
	^ self choices collect: [ :each | possibleItems at: each ]
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> choiceBlock: aBlock [
	choiceBlock := aBlock
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> choices [
	^ choices
		ifNil: [ choices := (1 to: stacksCollection size) asOrderedCollection ]
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> chooseIn: aSmaCCParser [
	| returnValue newChoices |
	^ self choices size == 1
		ifTrue: [ possibleItems at: choices first ]
		ifFalse: [ returnValue := (SmaCCAmbiguousResultNotification forParser: aSmaCCParser)
					messageText: 'Ambiguous results';
					tag: self;
					signal.
			newChoices := choices
					select: [ :each | (possibleItems at: each) == returnValue ].
			newChoices notEmpty
				ifTrue: [ choices := newChoices.
					sortedChoices
						ifNotNil: [ sortedChoices := sortedChoices select: [ :each | choices includes: each ] ] ].

			returnValue ]
]

{ #category : 'private' }
SmaCCDeferredChoice >> compare: firstCollection to: secondCollection [
	| first second firstItem secondItem firstHeap secondHeap |
	first := firstCollection.
	second := secondCollection.
	[ firstHeap := self sortItems: first.
	secondHeap := self sortItems: second.
	[ firstHeap notEmpty and: [ secondHeap notEmpty ] ]
		whileTrue: [ firstItem := firstHeap first.
			secondItem := secondHeap first.
			firstItem priority = secondItem priority
				ifFalse: [ ^ firstItem priority - secondItem priority ].
			firstHeap removeFirst.
			secondHeap removeFirst ].
	first := self subItemsIn: first.
	second := self subItemsIn: second.
	first notEmpty and: [ second notEmpty ] ] whileTrue.
	^ 0
]

{ #category : 'private' }
SmaCCDeferredChoice >> deferredItemsIn: aCollection [
	| deferred |
	deferred := OrderedCollection new.
	aCollection
		do: [ :each | 
			(each isKindOf: SmaCCDeferredReduceAction)
				ifTrue: [ deferred add: each ]
				ifFalse: [ (each isKindOf: SmaCCDeferredChoice)
						ifTrue: [ deferred addAll: (self deferredItemsIn: {each preferredItem}) ] ] ].
	^ deferred
]

{ #category : 'private' }
SmaCCDeferredChoice >> isStack: firstStack preferredOver: secondStack [
	^ (self
		compare: (self deferredItemsIn: firstStack)
		to: (self deferredItemsIn: secondStack)) <= 0
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> performOnSmaCCParser: aSmaCCParser [
	^ (self chooseIn: aSmaCCParser) performOnSmaCCParser: aSmaCCParser
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> possibleItems: aSequenceableCollection [
	possibleItems := aSequenceableCollection
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> preferredItem [
	^ possibleItems at: self sortedChoices first
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> sortedChoices [
	^ sortedChoices
		ifNil: [ sortedChoices := Heap
					withAll: self choices
					sortBlock: [ :a :b | self isStack: (stacksCollection at: a) preferredOver: (stacksCollection at: b) ] ]
]

{ #category : 'private' }
SmaCCDeferredChoice >> sortItems: aCollection [
	^ Heap withAll: aCollection sortBlock: [ :a :b | a priority < b priority ]
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> stacksCollection [
	^ stacksCollection
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> stacksCollection: anObject [
	stacksCollection := anObject
]

{ #category : 'accessing' }
SmaCCDeferredChoice >> stopPosition [
	^ self preferredItem stopPosition
]

{ #category : 'private' }
SmaCCDeferredChoice >> subItemsIn: aCollection [
	^ aCollection
		inject: OrderedCollection new
		into: [ :sum :each | 
			sum
				addAll: (self deferredItemsIn: each arguments);
				yourself ]
]
