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
	^ self parse: aString startingAt: anInteger
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
	^ self parseWithErrors: aString startingAt: anInteger
]
