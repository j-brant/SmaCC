Extension { #name : #SmaCCRewritePropertyDefinition }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> addGlobal [
	| variable |
	variable := UITheme builder textEntry: 'Enter variable name:' title: 'Variable' entryText: ''.
	(variable notNil and: [ RBScanner isVariable: variable ])
		ifTrue: [ self addGlobal: variable ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> addLocal [
	| variable |
	variable := UITheme builder textEntry: 'Enter variable name:' title: 'Variable' entryText: ''.
	(variable notNil and: [ RBScanner isVariable: variable ])
		ifTrue: [ self addLocal: variable ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> buildPresenterLayout [
	| layout notebook |
	layout := SpBoxLayout newTopToBottom.
	layout spacing: 5.
	layout add: self commentPresenter expand: false.
	notebook := SpNotebookPresenter new.
	notebook addPage: (SpNotebookPage title: 'Locals' provider: [ self buildVariables: 'local' ]).
	notebook addPage: (SpNotebookPage title: 'Globals' provider: [ self buildVariables: 'global' ]).
	layout add: notebook.
	^ layout
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> buildVariables: aString [
	| presenter vars toolbar selector |
	selector := (aString , 's') asSymbol.
	presenter := SpPresenter new.
	vars := SpListPresenter new.
	vars items: (self perform: selector).
	toolbar := SpPresenter new.
	toolbar
		layout:
			((SpBoxLayout newTopToBottom)
				spacing: 5;
				add:
						((SpButtonPresenter new)
								label: 'Add';
								icon: (self iconNamed: #add);
								help: 'Add variable';
								action:
										[ self perform: ('add' , aString capitalized) asSymbol.
											vars items: (self perform: selector) ];
								yourself)
					expand: false;
				add:
						((SpButtonPresenter new)
								label: 'Remove';
								icon: (self iconNamed: #remove);
								help: 'Remove variable';
								action:
										[ vars selectedItems do: [ :each | self perform: ('remove' , aString capitalized , ':') asSymbol with: each ].
											vars items: (self perform: selector) ];
								yourself)
					expand: false).
	presenter
		layout:
			((SpBoxLayout newLeftToRight)
				add: vars;
				add: toolbar expand: false).
	^ presenter
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> globals [
	^ globalValues keys asSortedCollection
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> locals [
	^ propertyNames asSortedCollection
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> rewriteForMethod: aMethod [
	^ nil
]
