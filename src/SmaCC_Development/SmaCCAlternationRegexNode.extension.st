Extension { #name : #SmaCCAlternationRegexNode }

{ #category : #'*SmaCC_Development' }
SmaCCAlternationRegexNode >> asRegularExpression [
	^ self left regularExpression | self right regularExpression
]
