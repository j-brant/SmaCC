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
SmaCCRewrite >> matchPresenter [
	^ SpNotebookPresenter new
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> matchTypes [
	^ (SmaCCRewriteMatch allSubclasses collect: [ :each | each type ])
		asSet asSortedCollection
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> rewriteForMethod: aMethod [
	(match method == aMethod or: [ transformation method == aMethod ])
		ifTrue: [ ^ self ].
	^ nil
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationPresenter [
	^ SpNotebookPresenter new
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewrite >> transformationTypes [
	^ ((SmaCCRewriteTransformation allSubclasses
		collect: [ :each | each type ]) asSet
		remove: nil ifAbsent: [  ];
		yourself) asSortedCollection
]
