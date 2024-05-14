Class {
	#name : #SmaCCMethodNodeSourceIntervalFinder,
	#superclass : #Object,
	#instVars : [
		'methodNode',
		'sourceString',
		'sourceAst',
		'sourceNode',
		'sourceInterval'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #finding }
SmaCCMethodNodeSourceIntervalFinder >> equivalentNodeTo: aNode in: otherTree [
	| equivParent nodeIndex equivNode |
	aNode isMethod ifTrue: [ ^ otherTree ].
	(aNode parent isReturn and: [ aNode parent parent parent isMethod ])
		ifTrue: [ equivNode := otherTree isSequence
					ifTrue: [ otherTree statements last ]
					ifFalse: [ otherTree ].
			^ equivNode isReturn ifTrue: [ equivNode value ] ifFalse: [ equivNode ] ].
	aNode parent isMethod
		ifTrue: [ otherTree isSequence ifTrue: [ ^ otherTree ] ifFalse: [ ^ otherTree parent ] ].
	equivParent := self equivalentNodeTo: aNode parent in: otherTree.
	equivParent ifNil: [ ^ nil ].
	nodeIndex := aNode parent children identityIndexOf: aNode.
	^ equivParent children at: nodeIndex ifAbsent: [ nil ]
]

{ #category : #finding }
SmaCCMethodNodeSourceIntervalFinder >> find [
	<return: #Interval>
	sourceAst := RBParser
			parseExpression: sourceString
			onError: [ :msg :pos | ^ sourceInterval := 1 to: 0 ].
	sourceNode := self equivalentNodeTo: methodNode in: sourceAst.
	sourceNode ifNil: [ ^ sourceInterval := 1 to: 0 ].
	^ sourceInterval := sourceNode start to: sourceNode stop
]

{ #category : #accessing }
SmaCCMethodNodeSourceIntervalFinder >> methodNode [
	^ methodNode
]

{ #category : #accessing }
SmaCCMethodNodeSourceIntervalFinder >> methodNode: anObject [
	methodNode := anObject
]

{ #category : #'accessing - computed' }
SmaCCMethodNodeSourceIntervalFinder >> sourceAst [
	^ sourceAst
]

{ #category : #'accessing - computed' }
SmaCCMethodNodeSourceIntervalFinder >> sourceInterval [
	^ sourceInterval
]

{ #category : #'accessing - computed' }
SmaCCMethodNodeSourceIntervalFinder >> sourceNode [
	^ sourceNode
]

{ #category : #accessing }
SmaCCMethodNodeSourceIntervalFinder >> sourceString [
	^ sourceString
]

{ #category : #accessing }
SmaCCMethodNodeSourceIntervalFinder >> sourceString: anObject [
	sourceString := anObject
]
