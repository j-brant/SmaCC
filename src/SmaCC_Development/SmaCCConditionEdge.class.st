Class {
	#name : 'SmaCCConditionEdge',
	#superclass : 'SmaCCEdge',
	#category : 'SmaCC_Development-DFA/NFA',
	#package : 'SmaCC_Development',
	#tag : 'DFA/NFA'
}

{ #category : 'comparing' }
SmaCCConditionEdge >> <= aSmaCCEdge [
	^ self class ~= aSmaCCEdge class
		or: [ self transitionObjects first <= aSmaCCEdge transitionObjects first ]
]

{ #category : 'compiling' }
SmaCCConditionEdge >> codeSizeEstimate [
	^ transitionObjects size * 8
]

{ #category : 'compiling' }
SmaCCConditionEdge >> dispatchTo: aSmaCCCodeGenerator seen: aCollection [
	^ aSmaCCCodeGenerator acceptConditionEdge: self
]

{ #category : 'testing' }
SmaCCConditionEdge >> isConditionEdge [
	^ true
]
