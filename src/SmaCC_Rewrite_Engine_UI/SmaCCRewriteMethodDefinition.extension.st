Extension { #name : #SmaCCRewriteMethodDefinition }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteMethodDefinition >> buildPresenterLayout [
	| layout code |
	layout := SpBoxLayout newTopToBottom.
	layout spacing: 5.
	layout add: self commentPresenter expand: false.
	code := SpCodePresenter new.
	code beForBehavior: SmaCCRewriteMatchContext.
	code autoAccept: true.
	code text: self source.
	code whenTextChangedDo: [ self source: code text asString ].
	layout add: code.
	^ layout
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
