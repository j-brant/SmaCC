Class {
	#name : #VBNetMembersImportsClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetMembersImportsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMembersImportsClause: self
]

{ #category : #generated }
VBNetMembersImportsClauseNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetMembersImportsClauseNode >> type [
	^ type
]

{ #category : #generated }
VBNetMembersImportsClauseNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
