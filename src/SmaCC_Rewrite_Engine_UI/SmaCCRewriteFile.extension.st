Extension { #name : #SmaCCRewriteFile }

{ #category : #'*SmaCC_Rewrite_Engine_UI' }
SmaCCRewriteFile >> rewriteForMethod: aMethod [
	rewrites do: [ :each | (each rewriteForMethod: aMethod) ifNotNil: [ :rewrite | ^ rewrite ] ].
	^ nil
]
