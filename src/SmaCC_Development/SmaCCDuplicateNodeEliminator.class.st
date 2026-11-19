"
SmaCCDuplicateNodeEliminator removes duplicate nodes from a scanner's DFA. It groups nodes by scanner action and ordered transition labels, then refines those groups by their destinations. Merging equivalent nodes can expose further duplicates after transitions are merged.
"
Class {
	#name : 'SmaCCDuplicateNodeEliminator',
	#superclass : 'SmaCCGraphAlgorithm',
	#instVars : [
		'root'
	],
	#category : 'SmaCC_Development-DFA/NFA',
	#package : 'SmaCC_Development',
	#tag : 'DFA/NFA'
}

{ #category : 'algorithm' }
SmaCCDuplicateNodeEliminator class >> removeDuplicateNodesIn: aSmaCCNode [
	^ self new removeDuplicateNodesIn: aSmaCCNode
]

{ #category : 'graph copying' }
SmaCCDuplicateNodeEliminator >> copyEdgesWith: aDictionary [
	| todo |
	todo := OrderedCollection with: root.
	[ todo notEmpty ]
		whileTrue:
			[ | node |
			node := todo removeFirst.
			(aDictionary at: node)
				transitions:
					(node sortedTransitions
						do:
							[ :each | 
							| copy |
							copy := each copy.
							copy to: (aDictionary at: each to).
							copy ]) ]
]

{ #category : 'graph copying' }
SmaCCDuplicateNodeEliminator >> copyGraph [
	| map |
	map := Dictionary new.
	self copyNodesInto: map.
	self copyEdgesWith: map.
	^ map at: root
]

{ #category : 'graph copying' }
SmaCCDuplicateNodeEliminator >> copyNodesInto: aDictionary [
	root allStates
		do: [ :each | aDictionary at: each put: each shallowCopy ]
]

{ #category : 'private' }
SmaCCDuplicateNodeEliminator >> duplicateNodesByRepresentative [
	| nodes partitions previousSize duplicates representatives |
	nodes := root allStates asSortedCollection.
	partitions := self
			partition: nodes
			by: [ :node | 
				{node action.
					node sortedTransitions collect: #transitionObjects as: Array} ].
	[ previousSize := partitions size.
	representatives := Dictionary new.
	partitions
		do: [ :group | group do: [ :node | representatives at: node put: group first ] ].
	partitions := self
			partition: nodes
			by: [ :node | 
				{representatives at: node.
					node sortedTransitions
						collect: [ :edge | representatives at: edge to ]
						as: Array} ].
	partitions size > previousSize ] whileTrue.
	duplicates := Dictionary new.
	partitions
		do: [ :group | group size > 1 ifTrue: [ duplicates at: group first put: group allButFirst ] ].
	^ duplicates
]

{ #category : 'algorithm' }
SmaCCDuplicateNodeEliminator >> mergeAllTransitions [
	root allStates do: [ :each | each mergeTransitions ]
]

{ #category : 'algorithm' }
SmaCCDuplicateNodeEliminator >> mergeNodeUsing: aDictionary [
	| seen todo mappings |
	mappings := Dictionary new.
	aDictionary
		keysAndValuesDo: [ :key :value | value do: [ :each | mappings at: each put: key ] ].
	seen := IdentitySet new.
	todo := OrderedCollection with: root.
	[ todo notEmpty ]
		whileTrue:
			[ | node mergedNode |
			node := todo removeFirst.
			node transitions
				do:
					[ :each | 
					(seen includes: each to)
						ifFalse: [ todo add: each to.
							seen add: each to ] ].
			mergedNode := mappings at: node ifAbsent: [ nil ].
			mergedNode notNil
				ifTrue: [ node mergeWith: mergedNode ] ]
]

{ #category : 'private' }
SmaCCDuplicateNodeEliminator >> partition: nodes by: aBlock [
	| groups |
	groups := Dictionary new.
	nodes
		do: [ :node | 
			(groups at: (aBlock value: node) ifAbsentPut: [ OrderedCollection new ])
				add: node ].
	^ groups values
]

{ #category : 'algorithm' }
SmaCCDuplicateNodeEliminator >> removeDuplicateNodesIn: aSmaCCNode [
	root := aSmaCCNode.
	self removeDuplicates.
	self copyGraph.
	^ root
]

{ #category : 'algorithm' }
SmaCCDuplicateNodeEliminator >> removeDuplicates [
	| toMerge |
	[ self mergeAllTransitions.
	toMerge := self duplicateNodesByRepresentative.
	toMerge notEmpty ] whileTrue: [ self mergeNodeUsing: toMerge ]
]
