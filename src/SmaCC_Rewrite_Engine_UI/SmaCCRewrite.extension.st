Extension { #name : #SmaCCRewrite }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> buildPresenterLayout [
	| layout |
	layout := SpBoxLayout newTopToBottom.
	layout spacing: 5.
	layout add: self commentPresenter expand: false.
	layout
		add:
			((SpPanedLayout newTopToBottom)
				positionOfSlider: 0.5;
				add: self matchPresenter;
				add: self transformationPresenter;
				yourself).
	^ layout
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> changedReplaceTo: aSymbol [
	| class rewrite |
	class := SmaCCRewriteTransformation withAllSubclasses detect: [ :each | each type = aSymbol ].
	self transformation class == class
		ifTrue: [ ^ self ].
	rewrite := class new.
	self transformation: rewrite
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> changedSearchTo: aSymbol [
	| class newMatch |
	class := SmaCCRewriteMatch withAllSubclasses detect: [ :each | each type = aSymbol ].
	self match class == class
		ifTrue: [ ^ self ].
	newMatch := class new.
	self match: newMatch
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> matchCodePresenterFor: typeMatch [
	^ (SpPresenter new)
		layout:
				((SpBoxLayout newTopToBottom)
						add:
								((SpPresenter new)
										layout:
												((SpBoxLayout newLeftToRight)
														add:
																((SpLabelPresenter new)
																		label: 'Match nodes of type:';
																		yourself)
															expand: false;
														add:
																((SpDropListPresenter new)
																		items: self nodeClasses;
																		in: [ :list | typeMatch nodeClass ifNotNil: [ :cls | list selectItem: cls ] ];
																		display: [ :each | each name ];
																		whenSelectedItemChangedDo: [ :each | typeMatch nodeClass: each ];
																		yourself);
														yourself);
										yourself)
							expand: false;
						add:
								((SpTextPresenter new)
										text: typeMatch code;
										whenTextChangedDo: [ :text | typeMatch code: text ];
										yourself);
						yourself);
		yourself
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> matchPatternPresenterFor: treeMatch [
	^ (SpPresenter new)
		layout:
				((SpBoxLayout newTopToBottom)
						add:
								((SpPresenter new)
										layout:
												((SpBoxLayout newLeftToRight)
														add:
																((SpLabelPresenter new)
																		label: 'Starting state for parser:';
																		yourself)
															expand: false;
														add:
																((SpDropListPresenter new)
																		items: (self parserClass ifNil: [ #(nil) ] ifNotNil: [ :cls | #(nil) , cls startingStateNames ]);
																		in: [ :list | treeMatch startingState ifNotNil: [ :each | list selectItem: each ] ];
																		display: [ :each | each ifNil: [ '' ] ];
																		whenSelectedItemChangedDo: [ :each | treeMatch startingState: each ];
																		yourself);
														yourself);
										yourself)
							expand: false;
						add:
								((SpTextPresenter new)
										text: treeMatch source;
										whenTextChangedDo: [ :text | treeMatch source: text ];
										yourself);
						yourself);
		yourself
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> matchPresenter [
	| notebook code pattern index |
	match class type = #Type
		ifTrue:
			[ index := 1.
			code := match.
			pattern := SmaCCRewriteTreeMatch new ]
		ifFalse:
			[ index := 2.
			code := SmaCCRewriteTypeMatch new.
			pattern := match ].
	notebook := SpNotebookPresenter new.
	notebook addPage: (SpNotebookPage title: 'Code' provider: [ self matchCodePresenterFor: code ]).
	notebook addPage: (SpNotebookPage title: 'Pattern' provider: [ self matchPatternPresenterFor: pattern ]).
	notebook selectPageIndex: index.
	notebook
		whenSelectedPageChangedDo: [ :each | self match: (notebook selectedPageIndex = 1 ifTrue: [ code ] ifFalse: [ pattern ]) ].
	^ notebook
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> matchTypes [
	^ (SmaCCRewriteMatch allSubclasses collect: [ :each | each type ])
		asSet asSortedCollection
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> nodeClasses [
	| classes parserNodeClasses |
	classes := SmaCCParseNode withAllSubclasses.
	parserNodeClasses := self parserNodeClasses.
	^ classes
		asSortedCollection:
			[ :a :b | 
			| aSortAtTop |
			(aSortAtTop := parserNodeClasses includes: a) = (parserNodeClasses includes: b)
				ifTrue: [ a name < b name ]
				ifFalse: [ aSortAtTop ] ]
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> parserNodeClasses [
	self parserClass
		ifNotNil:
			[ :pc | 
			pc symbolTypes
				do:
					[ :each | 
					| cls supers |
					(each ~= #SmaCCParseNode and: [ (cls := Smalltalk at: each) includesBehavior: SmaCCParseNode ])
						ifTrue:
							[ supers := cls withAllSuperclasses.
							^ (supers at: supers size - SmaCCParseNode withAllSuperclasses size) withAllSubclasses asSet ] ] ].
	^ #()
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> rewriteForMethod: aMethod [
	(match method == aMethod or: [ transformation method == aMethod ])
		ifTrue: [ ^ self ].
	^ nil
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationCodePresenterFor: codeTransformation [
	^ (SpTextPresenter new)
		text: codeTransformation code;
		whenTextChangedDo: [ :text | codeTransformation code: text ];
		yourself
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationPatternPresenterFor: stringTransformation [
	^ (SpTextPresenter new)
		text: stringTransformation string;
		whenTextChangedDo: [ :text | stringTransformation string: text ];
		yourself
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationPresenter [
	| notebook code pattern index |
	transformation class type = #Code
		ifTrue:
			[ index := 1.
			code := transformation.
			pattern := SmaCCRewriteStringTransformation new ]
		ifFalse:
			[ index := 2.
			code := SmaCCRewriteCodeTransformation new.
			pattern := transformation ].
	notebook := SpNotebookPresenter new.
	notebook addPage: (SpNotebookPage title: 'Code' provider: [ self transformationCodePresenterFor: code ]).
	notebook addPage: (SpNotebookPage title: 'Pattern' provider: [ self transformationPatternPresenterFor: pattern ]).
	notebook selectPageIndex: index.
	notebook
		whenSelectedPageChangedDo:
			[ :each | self transformation: (notebook selectedPageIndex = 1 ifTrue: [ code ] ifFalse: [ pattern ]) ].
	^ notebook
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationTypes [
	^ ((SmaCCRewriteTransformation allSubclasses
		collect: [ :each | each type ]) asSet
		remove: nil ifAbsent: [  ];
		yourself) asSortedCollection
]
