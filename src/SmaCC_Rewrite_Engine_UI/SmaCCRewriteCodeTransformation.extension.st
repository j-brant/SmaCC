Extension { #name : #SmaCCRewriteCodeTransformation }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteCodeTransformation >> source [
	^ self code
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteCodeTransformation >> title [
	^ 'Transformation'
]

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteCodeTransformation class >> type [
	^ #Code
]
