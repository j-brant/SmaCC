Extension { #name : #SmaCCRewriteFile }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteFile >> buildPresenterLayout [
	| parserList |
	parserList := SpDropListPresenter new.
	parserList items: (SmaCCParser allSubclasses asSortedCollection: [ :a :b | a name < b name ]).
	parserList display: [ :each | each name ].
	parserList whenSelectedItemChangedDo: [ :each | self parserClass: each ].
	parserList selectItem: self parserClass.
	^ (SpBoxLayout newTopToBottom)
		spacing: 5;
		add:
				(SpPresenter new
						layout:
							((SpBoxLayout newLeftToRight)
								spacing: 5;
								add: (SpLabelPresenter new label: 'Parser:') expand: false;
								add: parserList;
								yourself))
			expand: false;
		yourself
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteFile >> rewriteForMethod: aMethod [
	rewrites do: [ :each | (each rewriteForMethod: aMethod) ifNotNil: [ :rewrite | ^ rewrite ] ].
	^ nil
]
