Class {
	#name : #VBNetInterfaceMemberSpecifierNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'type',
		'period',
		'name'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceMemberSpecifier: self
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> name [
	^ name
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> period [
	^ period
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> tokenVariables [
	^ #(#period #name)
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> type [
	^ type
]

{ #category : #generated }
VBNetInterfaceMemberSpecifierNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
