Extension { #name : #SmaCCRewriteTypeMatch }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteTypeMatch >> source [
	^ self code
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteTypeMatch >> title [
	^ 'Match'
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteTypeMatch class >> type [
	^ #Type
]
