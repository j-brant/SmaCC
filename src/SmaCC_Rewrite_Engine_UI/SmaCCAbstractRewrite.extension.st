Extension { #name : #SmaCCAbstractRewrite }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCAbstractRewrite >> buildPresenterLayout [
	^ SpBoxLayout newTopToBottom
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCAbstractRewrite >> commentPresenter [
	| text |
	text := SpTextInputFieldPresenter new.
	text autoAccept: true.
	text text: self comment.
	text whenTextChangedDo: [ self comment: text text asString ].
	^ SpPresenter new
		layout:
			((SpBoxLayout newLeftToRight)
				spacing: 5;
				add: (SpLabelPresenter new label: 'Comment:') expand: false;
				add: text;
				yourself)
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCAbstractRewrite >> contextClass [
	^ SmaCCRewriteMatchContext
]
