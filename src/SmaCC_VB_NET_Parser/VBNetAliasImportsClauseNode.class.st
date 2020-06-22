Class {
	#name : #VBNetAliasImportsClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'equals',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAliasImportsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAliasImportsClause: self
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> name [
	^ name
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> tokenVariables [
	^ #(#name #equals)
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> type [
	^ type
]

{ #category : #generated }
VBNetAliasImportsClauseNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
