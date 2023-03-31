Class {
	#name : #YAMLListItemNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'minus',
		'value'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLListItemNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitListItem: self
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

{ #category : #accessing }
YAMLListItemNode >> object [
	^ value ifNotNil: [ value object ]
]

{ #category : #generated }
YAMLListItemNode >> tokenVariables [
	^ #(#minus)
]

{ #category : #generated }
YAMLListItemNode >> value [
	^ value
]

{ #category : #generated }
YAMLListItemNode >> value: aYAMLValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aYAMLValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
