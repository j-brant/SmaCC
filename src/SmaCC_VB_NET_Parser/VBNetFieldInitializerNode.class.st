Class {
	#name : #VBNetFieldInitializerNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'value',
		'period',
		'name',
		'equals',
		'keyToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetFieldInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFieldInitializer: self
]

{ #category : #generated }
VBNetFieldInitializerNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetFieldInitializerNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetFieldInitializerNode >> keyToken [
	^ keyToken
]

{ #category : #generated }
VBNetFieldInitializerNode >> keyToken: aSmaCCToken [
	keyToken := aSmaCCToken
]

{ #category : #generated }
VBNetFieldInitializerNode >> name [
	^ name
]

{ #category : #generated }
VBNetFieldInitializerNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetFieldInitializerNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetFieldInitializerNode >> period [
	^ period
]

{ #category : #generated }
VBNetFieldInitializerNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
VBNetFieldInitializerNode >> tokenVariables [
	^ #(#period #name #equals #keyToken)
]

{ #category : #generated }
VBNetFieldInitializerNode >> value [
	^ value
]

{ #category : #generated }
VBNetFieldInitializerNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
