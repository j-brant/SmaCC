Class {
	#name : #YAMLListItemNode,
	#superclass : #YAMLParseNode,
	#instVars : [
		'minus',
		'value'
	],
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
YAMLListItemNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitListItem: self
]

{ #category : #private }
YAMLListItemNode >> createObject [
	^ value ifNotNil: [ value isErrorNode ifFalse: [ value object ] ]
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
