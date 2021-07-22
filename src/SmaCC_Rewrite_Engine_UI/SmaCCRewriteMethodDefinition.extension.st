Extension { #name : #SmaCCRewriteMethodDefinition }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteMethodDefinition >> buildInterfaceIn: aPresentation [
	| tabulator |
	(tabulator := aPresentation tabulator)
		row: [ :row | 
			row
				column: #label size: 75;
				column: #comment ]
			size: 25;
		row: #source.
	tabulator transmit
		to: #label;
		andShow: [ :presentation | presentation label display: 'Comment:' ].
	tabulator transmit
		to: #comment;
		andShow: [ :presentation | 
			presentation text
				display: self comment;
				onChangeOfPort: #text act: [ :text | self comment: text text asString ] ].
	tabulator updateOn: #source from: #yourself.
	tabulator transmit
		to: #source;
		andShow: [ :presentation | 
			presentation pharoMethod
				title: 'Source';
				smalltalkClass: [ self contextClass ];
				display: self source;
				onChangeOfPort: #text act: [ :text | self source: text text asString ];
				morphicSelectionAct: [ :text | 
						text
							text: (RBParser parseMethod: text text asString) formattedCode;
							update ]
					icon: GLMUIThemeExtraIcons glamorousPlay
					on: $t
					entitled: 'Format' ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteMethodDefinition >> buildSpec2InterfaceIn: aPresentation [
	| commentPane commentField codePane coder |
	commentField := (aPresentation newText)
		text: self comment;
		autoAccept: true;
		whenTextChangedDo: [ :text | self comment: text asString ];
		yourself.
	commentPane := (SpBoxLayout newHorizontal)
		add: 'Comment:' expand: false;
		add: commentField;
		yourself.
	coder := aPresentation newCode.
	coder
		behavior: self contextClass;
		text: self source;
		whenTextChangedDo: [ :text | self source: text ];
		contextMenu:
				((aPresentation newMenu)
						addItem:
								[ :item | 
									item
										name: 'Format';
										action: [ coder text: (RBParser parseMethod: self source asString) formattedCode ] ];
						yourself).
	codePane := (SpBoxLayout newVertical)
		add: 'Source:' expand: false;
		add: coder;
		yourself.
	aPresentation
		layout:
			((SpBoxLayout newVertical)
				add: commentPane expand: false;
				add: codePane;
				yourself)	
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteMethodDefinition >> rewriteForMethod: aMethod [
	aMethod == self method
		ifTrue: [ ^ self ].
	^ nil
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteMethodDefinition >> title [
	^ 'Method'
]
