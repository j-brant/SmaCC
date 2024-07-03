Extension { #name : #SmaCCErrorNode }

{ #category : #'*SmaCC_Debugging_Support' }
SmaCCErrorNode >> addInspectorItemsIn: anObject as: aString to: aCollection [
	(anObject isKindOf: SmaCCToken)
		ifTrue: [ ^ aCollection
				add: {aString.
						#token.
						anObject} ].
	(anObject isKindOf: SmaCCParseNode)
		ifTrue: [ ^ aCollection
				add: {aString.
						#node.
						anObject} ].
	(anObject isKindOf: SequenceableCollection)
		ifTrue: [ anObject
				do: [ :each | 
					self
						addInspectorItemsIn: each
						as: aString
						to: aCollection ] ]
]

{ #category : #'*SmaCC_Debugging_Support' }
SmaCCErrorNode >> gtInspectorItems [
	| items |
	items := OrderedCollection new.
	stackContents
		do: [ :each | 
			self
				addInspectorItemsIn: each
				as: 'stack'
				to: items ].
	self
		addInspectorItemsIn: errorToken
		as: 'errorToken'
		to: items.
	dismissedTokens
		do: [ :each | 
			self
				addInspectorItemsIn: each
				as: 'dismissed'
				to: items ].
	^ items
]
