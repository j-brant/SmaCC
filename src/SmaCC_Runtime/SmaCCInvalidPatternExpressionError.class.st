Class {
	#name : 'SmaCCInvalidPatternExpressionError',
	#superclass : 'Error',
	#instVars : [
		'errorMessage',
		'position',
		'token'
	],
	#category : 'SmaCC_Runtime',
	#package : 'SmaCC_Runtime'
}

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> errorMessage [
	^ errorMessage
]

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> errorMessage: anObject [
	errorMessage := anObject
]

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> position [
	^ position
]

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> position: anObject [
	position := anObject
]

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> token [
	^ token
]

{ #category : 'accessing' }
SmaCCInvalidPatternExpressionError >> token: anObject [
	token := anObject
]
