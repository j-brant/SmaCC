Class {
	#name : 'JavaMatchAllPatternNode',
	#superclass : 'JavaPatternNode',
	#instVars : [
		'underscore'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaMatchAllPatternNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitMatchAllPattern: self
]

{ #category : 'generated' }
JavaMatchAllPatternNode >> tokenVariables [

	^ #( #underscore )
]

{ #category : 'generated' }
JavaMatchAllPatternNode >> underscore [

	^ underscore
]

{ #category : 'generated' }
JavaMatchAllPatternNode >> underscore: aSmaCCToken [

	underscore := aSmaCCToken
]
