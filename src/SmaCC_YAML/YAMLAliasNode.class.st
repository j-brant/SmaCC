Class {
	#name : #YAMLAliasNode,
	#superclass : #YAMLValueNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLAliasNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitAlias: self
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
	| anchorName |
	anchorName := '&' , name value allButFirst.
	^ (self document
		ifNotNil: [ :document | document findNodeWithAnchor: anchorName ])
		ifNil: [ self topParent findNodeWithAnchor: anchorName ]
]

{ #category : #accessing }
YAMLAliasNode >> object [
	^ self nodeForAlias ifNotNil: [ :node | node object ]
]

{ #category : #generated }
YAMLAliasNode >> tokenVariables [
	^ #(#name)
]
