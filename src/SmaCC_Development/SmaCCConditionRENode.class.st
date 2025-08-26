Class {
	#name : #SmaCCConditionRENode,
	#superclass : #SmaCCRegularExpressionNode,
	#instVars : [
		'conditions',
		'node'
	],
	#category : #'SmaCC_Development-Regular Expressions'
}

{ #category : #adding }
SmaCCConditionRENode >> addCondition: aString [
	conditions add: aString
]

{ #category : #private }
SmaCCConditionRENode >> asNFAStartingWith: aSmaCCNode [
	| endNode startNode |
	startNode := node asNFAStartingWith: aSmaCCNode.
	endNode := SmaCCNode new.
	endNode action: action.
	startNode addEdgeTo: endNode onConditions: conditions.
	^ endNode
]

{ #category : #accessing }
SmaCCConditionRENode >> conditions [
	^ conditions
]

{ #category : #accessing }
SmaCCConditionRENode >> conditions: anObject [
	conditions := anObject
]

{ #category : #'initialize-release' }
SmaCCConditionRENode >> initialize [
	super initialize.
	conditions := OrderedCollection new
]

{ #category : #accessing }
SmaCCConditionRENode >> node [
	^ node
]

{ #category : #accessing }
SmaCCConditionRENode >> node: anObject [
	node := anObject
]

{ #category : #accessing }
SmaCCConditionRENode >> possibleMatchesSize [
	^ SmallInteger maxVal
]

{ #category : #constructing }
SmaCCConditionRENode >> | aSmaCCRegularExpressionNode [
	self class = aSmaCCRegularExpressionNode class
		ifFalse: [ ^ super | aSmaCCRegularExpressionNode ].
	aSmaCCRegularExpressionNode conditions do: [ :each | self addCondition: each ].
	^ self
]
