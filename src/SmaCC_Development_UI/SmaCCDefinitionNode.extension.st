Extension { #name : #SmaCCDefinitionNode }

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> buildInterfaceIn: presentation [
	presentation text
		title: 'Definition';
		display: [ self source ]
]

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> buildVariableNameInterfaceFor: aString in: presentation [
	| tabulator refs commonName count |
	tabulator := presentation tabulator.
	tabulator title: 'Var Name'.
	tabulator
		row: [ :r | 
			r
				column: #label size: 100;
				column: #commonName ]
		size: 35.
	refs := (self allReferencesTo: aString) select: [ :each | each isKindOf: SmaCCSymbolNode ].
	count := 0.
	commonName := ''.
	(Bag withAll: (refs collect: [ :e | e variableName ]))
		doWithOccurrences: [ :each :occ | 
			(each = '' or: [ occ > count ])
				ifTrue: [ count := occ.
					commonName := each ] ].
	refs doWithIndex: [ :each :i | each buildVariableNameInterfaceIn: tabulator index: i ].
	tabulator row: #last.
	tabulator transmit
		to: #label;
		andShow: [ :a | a label display: 'Default Name:' ].
	tabulator transmit
		to: #commonName;
		andShow: [ :a | 
			a text
				display: commonName;
				onChangeOfPort: #text
					act: [ :text | 
					refs
						do: [ :each | 
							(each variableName = '' or: [ each variableName = commonName ])
								ifTrue: [ each variableName: text text asString ] ].
					commonName := text text asString ] ]
]

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> matches: aString [
	^ (self source asLowercase indexOfSubCollection: aString asLowercase) > 0
]

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> scannerClass [
	^ self topParent attributeNamed: #scannerClass ifAbsent: [ SmaCCScanner ]
]

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> tags [
	^ #()
]

{ #category : #'*SmaCC_Development_UI' }
SmaCCDefinitionNode >> updateSource: aSmaCCString [
]
