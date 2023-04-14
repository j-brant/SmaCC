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
