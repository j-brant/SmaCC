Extension { #name : #SmaCCConditionRegexNode }

{ #category : #'*SmaCC_Development' }
SmaCCConditionRegexNode >> asRegularExpression [
	^ SmaCCConditionRENode new
		addCondition: (code source copyFrom: 3 to: code source size - 2);
		yourself
]
