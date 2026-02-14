Extension { #name : 'SmaCCParser' }

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParser class >> parse: aString previous: aNode [
	^ self
		parse: aString
		startingAt: self defaultStartingState
		previous: aNode
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParser class >> parse: aString startingAt: anInteger previous: aNode [
	| result |
	result := self parse: aString startingAt: anInteger.
	(result isKindOf: SmaCCParseNode) ifTrue: [ result assignIdsFrom: aNode ].
	^ result
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParser class >> parseWithErrors: aString previous: aNode [
	^ self
		parseWithErrors: aString
		startingAt: self defaultStartingState
		previous: aNode
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParser class >> parseWithErrors: aString startingAt: anInteger previous: aNode [
	| result |
	result := self parseWithErrors: aString startingAt: anInteger.
	(result isKindOf: SmaCCParseNode) ifTrue: [ result assignIdsFrom: aNode ].
	^ result
]
