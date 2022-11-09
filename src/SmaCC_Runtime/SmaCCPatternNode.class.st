"
SmaCCPatternNode is a parse node that matches other parse nodes when you are searching or rewriting parse trees.

Instance Variables:
	patternToken	<SmaCCPatternToken>	the token that holds our name and properties


"
Class {
	#name : #SmaCCPatternNode,
	#superclass : #SmaCCParseNode,
	#instVars : [
		'patternToken'
	],
	#category : 'SmaCC_Runtime'
}

{ #category : #'instance creation' }
SmaCCPatternNode class >> onToken: aSmaCCPatternToken [
	^ self new
		patternToken: aSmaCCPatternToken;
		yourself
]

{ #category : #comparing }
SmaCCPatternNode >> = anObject [
	^ super = anObject and: [ self patternToken = anObject patternToken ]
]

{ #category : #matching }
SmaCCPatternNode >> copyInContext: aDictionary [
	^ (aDictionary at: self ifAbsent: [ nil ]) copy
]

{ #category : #'reflective operations' }
SmaCCPatternNode >> doesNotUnderstand: aMessage [
	| sender |
	sender := thisContext sender.
	^ (aMessage arguments isEmpty
		and: [ (sender receiver isKindOf: SmaCCParser)
				and: [ sender method selector beginsWith: 'reduceActionFor' ] ])
		ifTrue: [ "
			Hack to work around adding parens around pattern nodes:
				JavaParser parseAll: '(`pattern`)+1' startingAt: JavaParser startingStateForexpression
			"
			self
				attributeNamed: aMessage selector
				ifAbsentPut: [ OrderedCollection new ] ]
		ifFalse: [ super doesNotUnderstand: aMessage ]
]

{ #category : #comparing }
SmaCCPatternNode >> hash [
	^ self patternToken hash
]

{ #category : #testing }
SmaCCPatternNode >> isListMatch [
	^ patternToken isListMatch
]

{ #category : #matching }
SmaCCPatternNode >> match: aSmaCCParseNode inContext: aDictionary [
	^ (aDictionary at: self ifAbsentPut: [ aSmaCCParseNode ])
		= aSmaCCParseNode
		and: [ patternToken testBlock value: aSmaCCParseNode ]
]

{ #category : #accessing }
SmaCCPatternNode >> name [
	^ patternToken name
]

{ #category : #accessing }
SmaCCPatternNode >> patternToken [
	^ patternToken
]

{ #category : #accessing }
SmaCCPatternNode >> patternToken: anObject [
	patternToken := anObject
]

{ #category : #variables }
SmaCCPatternNode >> tokenVariables [
	^ #(#patternToken)
]
