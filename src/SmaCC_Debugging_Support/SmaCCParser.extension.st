Extension { #name : 'SmaCCParser' }

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser class >> filesWithParserErrorsIn: aDirectory [
	^ (self sourceFilesIn: aDirectory)
		select: [ :each | 
			[ self parseFile: each.
			false ]
				on: Error
				do: [ :ex | ex return: true ] ]
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> fillInGraphFromStack: nodeCollection returnTable: tableArray size: sizeInteger [
	self
		allActionsAndSymbolsForState: nodeCollection last state
		do: [ :action :symbol | 
			| id type next name entry top stream reduction |
			id := action bitShift: -2.
			type := action bitAnd: self actionMask.
			type = self acceptAction
				ifTrue: [ nodeCollection last success: true ].
			type = self shiftAction
				ifTrue: [ ((tableArray at: id) > sizeInteger or: [ self isAcceptState: id ])
						ifTrue: [ name := self symbolNameFor: symbol.
							next := nodeCollection last addDirectLinkToNodeNamed: name state: id.
							nodeCollection add: next.
							[ self fillInGraphFromStack: nodeCollection returnTable: tableArray size: sizeInteger + 1 ]
								ensure: [ nodeCollection removeLast ] ] ].
			type = self reduceAction
				ifTrue: [ entry := self reduceTable at: id.
					(entry at: 2) >= sizeInteger
						ifTrue: [ name := self symbolNameFor: entry first.
							stream := WriteStream on: String new.
							stream
								nextPutAll: name;
								nextPutAll: ' :'.
							nodeCollection size - (entry at: 2) + 1 to: nodeCollection size do: [ :i | 
								stream
									nextPut: $ ;
									nextPutAll: (nodeCollection at: i) name ].
							stream nextPut: $;.
							reduction := stream contents.
							top := nodeCollection at: nodeCollection size - (entry at: 2).
							nodeCollection size - (entry at: 2) + 1 to: nodeCollection size do: [ :i | (nodeCollection at: i) addReduction: reduction ].
							next := top addDirectLinkToNodeNamed: name state: ((self actionForState: top state and: entry first) bitShift: -2) ] ] ]
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> graphForStack: aCollection [
	| name next graphNodeStack returnTable |
	graphNodeStack := OrderedCollection new.
	graphNodeStack
		add: (SmaCCGraphNode
				named: ''
				state: aCollection first
				parser: self).
	2
		to: aCollection size
		do: [ :i | 
			name := self
					symbolForTransitionFrom: (aCollection at: i - 1)
					to: (aCollection at: i).
			next := SmaCCGraphNode
					named: name
					state: (aCollection at: i)
					parser: self.
			graphNodeStack last followed: next.
			graphNodeStack add: next ].
	returnTable := self maxReturnSizeTable.
	self
		fillInGraphFromStack: graphNodeStack
		returnTable: returnTable
		size: 0.
	^ graphNodeStack first
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser class >> gtExampleSmaCCParser [
	<gtExample>
	<label: 'SmaCCParser'>
	
	^ SmaCCDefinitionParser new.
	
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> isAcceptState: stateIndex [
	self
		allActionsAndSymbolsForState: stateIndex
		do: [ :action :symbol | 
			action = self acceptAction
				ifTrue: [ ^ true ] ].
	^ false
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> maxReturnSizeTable [
	| table |
	table := Array new: self transitionTable size withAll: 0.
	1 to: table size do: [ :i | 
		self
			allActionsAndSymbolsForState: i
			do: [ :action :symbol | 
				(action bitAnd: self actionMask) = self reduceAction
					ifTrue: [ | size |
						size := (self reduceTable at: (action bitShift: -2)) at: 2.
						table at: i put: ((table at: i) max: size) ] ] ].
	table max
		timesRepeat: [ 1 to: table size do: [ :i | 
				self
					allActionsAndSymbolsForState: i
					do: [ :action :symbol | 
						(action bitAnd: self actionMask) = self shiftAction
							ifTrue: [ | size |
								size := (table at: (action bitShift: -2)) - 1.
								table at: i put: ((table at: i) max: size) ] ] ] ].
	^ table
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser class >> sourceFilesIn: aDirectory [
	| pattern |
	pattern := String
			streamContents: [ :stream | 
				self fileExtensions
					do: [ :each | 
						stream
							nextPut: $*;
							nextPutAll: each ]
					separatedBy: [ stream nextPut: $; ] ].
	^ aDirectory allDirectories
		flatCollect: [ :each | each filesMatching: pattern ]
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> stackSymbolNames [
	| names |
	names := OrderedCollection new: stateStack size - 1.
	self symbolNamesFor: stateStack do: [ :each | names add: each ].
	^ names
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> symbolForTransitionFrom: fromState to: toState [
	| id |
	id := self symbolIdForTransitionFrom: fromState to: toState.
	^ self symbolNameFor: id
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> symbolIdForTransitionFrom: fromState to: toState [
	| toValue |
	toValue := (toState bitShift: 2) bitOr: self shiftAction.
	self
		allActionsAndSymbolsForState: fromState
		do: [ :action :symbol | 
			toValue = action
				ifTrue: [ ^ symbol ] ].
	^ 0
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> symbolNameFor: anInteger [
	^ self symbolNames at: anInteger ifAbsent: [ '?' ]
]

{ #category : '*SmaCC_Debugging_Support' }
SmaCCParser >> symbolNamesFor: aCollection do: aBlock [
	2
		to: aCollection size
		do: [ :i | 
			aBlock
				value: (self symbolForTransitionFrom: (aCollection at: i - 1) to: (aCollection at: i)) ]
]
