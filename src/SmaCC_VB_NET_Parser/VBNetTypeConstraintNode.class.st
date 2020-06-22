Class {
	#name : #VBNetTypeConstraintNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetTypeConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeConstraint: self
]

{ #category : #generated }
VBNetTypeConstraintNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetTypeConstraintNode >> type [
	^ type
]

{ #category : #generated }
VBNetTypeConstraintNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
