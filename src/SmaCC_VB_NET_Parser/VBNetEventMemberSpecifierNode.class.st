Class {
	#name : #VBNetEventMemberSpecifierNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'names',
		'period'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetEventMemberSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEventMemberSpecifier: self
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> compositeTokenVariables [
	^ #(#names)
]

{ #category : #'generated-initialize-release' }
VBNetEventMemberSpecifierNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> names [
	^ names
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> period [
	^ period
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
VBNetEventMemberSpecifierNode >> tokenVariables [
	^ #(#period)
]
