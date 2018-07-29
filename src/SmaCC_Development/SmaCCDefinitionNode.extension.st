Extension { #name : #SmaCCDefinitionNode }

{ #category : #'*SmaCC_Development' }
SmaCCDefinitionNode >> clearRegularExpression [
	^ self removeAttributeNamed: #regularExpression
]
