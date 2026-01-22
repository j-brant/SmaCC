Class {
	#name : 'SmaCCConditionRENode',
	#superclass : 'SmaCCRegularExpressionNode',
	#instVars : [
		'conditions'
	],
	#category : 'SmaCC_Development-Regular Expressions',
	#package : 'SmaCC_Development',
	#tag : 'Regular Expressions'
}

{ #category : 'adding' }
SmaCCConditionRENode >> addCondition: aString [
	conditions add: aString
]

{ #category : 'private' }
SmaCCConditionRENode >> asNFAStartingWith: aSmaCCNode [
	| endNode |
	endNode := SmaCCNode new.
	endNode action: action.
	aSmaCCNode addEdgeTo: endNode onConditions: conditions.
	^ endNode
]

{ #category : 'testing' }
SmaCCConditionRENode >> canBeEmpty [
	^ true
]

{ #category : 'accessing' }
SmaCCConditionRENode >> conditions [
	^ conditions
]

{ #category : 'accessing' }
SmaCCConditionRENode >> conditions: anObject [
	conditions := anObject
]

{ #category : 'initialize-release' }
SmaCCConditionRENode >> initialize [
	super initialize.
	conditions := OrderedCollection new
]

{ #category : 'accessing' }
SmaCCConditionRENode >> possibleMatchesSize [
	^ SmallInteger maxVal
]

{ #category : 'constructing' }
SmaCCConditionRENode >> | aSmaCCRegularExpressionNode [
	self class = aSmaCCRegularExpressionNode class
		ifFalse: [ ^ super | aSmaCCRegularExpressionNode ].
	aSmaCCRegularExpressionNode conditions do: [ :each | self addCondition: each ].
	^ self
]
