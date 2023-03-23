Class {
	#name : #YAMLListItemNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'minus',
		'value',
		'anchor',
		'alias'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLListItemNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitListItem: self
]

{ #category : #generated }
YAMLListItemNode >> alias [
	^ alias
]

{ #category : #generated }
YAMLListItemNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
YAMLListItemNode >> anchor [
	^ anchor
]

{ #category : #generated }
YAMLListItemNode >> anchor: aSmaCCToken [
	anchor := aSmaCCToken
]

{ #category : #generated }
YAMLListItemNode >> minus [
	^ minus
]

{ #category : #generated }
YAMLListItemNode >> minus: aSmaCCToken [
	minus := aSmaCCToken
]

{ #category : #generated }
YAMLListItemNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
YAMLListItemNode >> tokenVariables [
	^ #(#minus #anchor #alias)
]

{ #category : #generated }
YAMLListItemNode >> value [
	^ value
]

{ #category : #generated }
YAMLListItemNode >> value: aYAMLParseNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLParseNode.
	self value notNil ifTrue: [ self value parent: self ]
]
