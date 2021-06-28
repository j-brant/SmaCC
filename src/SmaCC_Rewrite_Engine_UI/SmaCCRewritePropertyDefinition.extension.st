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
SmaCCRewritePropertyDefinition >> buildInterfaceIn: aPresentation [
	| tabulator |
	(tabulator := aPresentation tabulator)
		row: [ :row | 
			row
				column: #label size: 75;
				column: #comment ]
			size: 25;
		row: #locals;
		row: #globals.
	tabulator transmit
		to: #label;
		andShow: [ :presentation | presentation label display: 'Comment:' ].
	tabulator transmit
		to: #comment;
		andShow: [ :presentation | 
			presentation text
				display: self comment;
				onChangeOfPort: #text act: [ :text | self comment: text text asString ] ].
	tabulator transmit
		to: #locals;
		andShow: [ :presentation | 
			presentation list
				title: 'Locals';
				updateOn: #locals from: [ self announcer ];
				act: [ self addLocal ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Add';
				act: [ :list | self removeLocal: list selection ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Remove';
				display: [ propertyNames asSortedCollection ] ].
	tabulator transmit
		to: #globals;
		andShow: [ :presentation | 
			presentation list
				title: 'Globals';
				updateOn: #globals from: [ self announcer ];
				act: [ self addGlobal ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Add';
				act: [ :list | self removeGlobal: list selection ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Remove';
				display: [ globalValues keys asSortedCollection ] ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> buildSpec2InterfaceIn: aPresentation [
	| commentPane commentField localsPane globalsPane locallist globallist |
	commentField := (aPresentation newText)
		text: self comment;
		autoAccept: true;
		whenTextChangedDo: [ :text | self comment: text asString ];
		yourself.
	commentPane := (SpBoxLayout newHorizontal)
		add: 'Comment:' expand: false;
		add: commentField;
		yourself.
	locallist := (aPresentation newList)
		items: propertyNames asSortedCollection;
		yourself.
	localsPane := (SpBoxLayout newVertical)
		add:
				((SpBoxLayout newHorizontal)
						vAlignEnd;
						add: 'Locals:' expand: false;
						add:
								((aPresentation newToolbar)
										addItemRight:
												((SpToolbarButtonPresenter new)
														icon: (self iconNamed: #remove);
														help: 'Remove';
														action: [ self removeLocal: locallist selectedItem ];
														yourself);
										addItemRight:
												((SpToolbarButtonPresenter new)
														icon: (self iconNamed: #add);
														help: 'Add';
														action: [ self addLocal ];
														yourself);
										yourself);
						yourself)
			expand: false;
		add: locallist;
		yourself.
	globallist := (aPresentation newList)
		items: globalValues keys asSortedCollection;
		yourself.
	globalsPane := (SpBoxLayout newVertical)
		add:
				((SpBoxLayout newHorizontal)
						vAlignEnd;
						add: 'Globals:' expand: false;
						add:
								((aPresentation newToolbar)
										addItemRight:
												((SpToolbarButtonPresenter new)
														icon: (self iconNamed: #remove);
														help: 'Remove';
														action: [ self removeGlobal: globallist selection ];
														yourself);
										addItemRight:
												((SpToolbarButtonPresenter new)
														icon: (self iconNamed: #add);
														help: 'Add';
														action: [ self addGlobal ];
														yourself);
										yourself);
						yourself)
			expand: false;
		add: globallist;
		yourself.
	aPresentation
		layout:
			((SpBoxLayout newVertical)
				add: commentPane expand: false;
				add: localsPane;
				add: globalsPane;
				yourself).
				
	self announcer when: #locals do: [ locallist items: propertyNames asSortedCollection ].
	self announcer when: #globals do: [ globallist items: globalValues keys asSortedCollection ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewritePropertyDefinition >> rewriteForMethod: aMethod [
	^ nil
]
