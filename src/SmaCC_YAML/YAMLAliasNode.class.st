Class {
	#name : #YAMLAliasNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLAliasNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitAlias: self
]

{ #category : #accessing }
YAMLAliasNode >> anchorSource [
	^ self anchorSourceInterval
		ifNotNil: [ :interval | self completeSource asString copyFrom: interval first to: interval last ]
]

{ #category : #accessing }
YAMLAliasNode >> anchorSourceInterval [
	^ self nodeForAlias
		ifNotNil: [ :node | 
			| anchorName |
			anchorName := '&' , name value allButFirst.
			((node anchors anySatisfy: [ :each | each source = anchorName ])
				ifTrue: [ node startPosition ]
				ifFalse: [ (node parent anchors
						detect: [ :each | each source = anchorName ]
						ifNone: [ node ]) startPosition ]) to: node stopPosition ]
]

{ #category : #private }
YAMLAliasNode >> createObject [
	^ self nodeForAlias ifNotNil: [ :node | node object copy ]
]

{ #category : #generated }
YAMLAliasNode >> name [
	^ name
]

{ #category : #generated }
YAMLAliasNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #accessing }
YAMLAliasNode >> nodeForAlias [
	| anchorName nodes |
	anchorName := '&' , name value allButFirst.
	nodes := (self topParent findNodesWithAnchor: anchorName)
			asSortedCollection: [ :a :b | a stopPosition > b stopPosition ].
	^ nodes detect: [ :each | each stopPosition < self startPosition ] ifNone: [  ]
]

{ #category : #generated }
YAMLAliasNode >> tokenVariables [
	^ #(#name)
]
