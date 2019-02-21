Class {
	#name : #JSONMemberNode,
	#superclass : #JSONParseNode,
	#instVars : [
		'name',
		'colon',
		'value'
	],
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
JSONMemberNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitMember: self
]

{ #category : #generated }
JSONMemberNode >> colon [
	^ colon
]

{ #category : #generated }
JSONMemberNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
JSONMemberNode >> name [
	^ name
]

{ #category : #generated }
JSONMemberNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
JSONMemberNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
JSONMemberNode >> tokenVariables [
	^ #(#name #colon)
]

{ #category : #generated }
JSONMemberNode >> value [
	^ value
]

{ #category : #generated }
JSONMemberNode >> value: aJSONParseNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aJSONParseNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
