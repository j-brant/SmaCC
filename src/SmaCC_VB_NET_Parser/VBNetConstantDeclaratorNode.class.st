Class {
	#name : #VBNetConstantDeclaratorNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'equals',
		'value',
		'asToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetConstantDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstantDeclarator: self
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> name [
	^ name
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> tokenVariables [
	^ #(#name #equals #asToken)
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> type [
	^ type
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> value [
	^ value
]

{ #category : #generated }
VBNetConstantDeclaratorNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
