Class {
	#name : #DelphiInterfaceTypeNode,
	#superclass : #DelphiClassOrInterfaceTypeNode,
	#instVars : [
		'interfaceToken',
		'guid',
		'components',
		'accessToken',
		'partial'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiInterfaceTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInterfaceType: self
]

{ #category : #generated }
DelphiInterfaceTypeNode >> accessToken [
	^ accessToken
]

{ #category : #generated }
DelphiInterfaceTypeNode >> accessToken: aSmaCCToken [
	accessToken := aSmaCCToken
]

{ #category : #generated }
DelphiInterfaceTypeNode >> components [
	^ components
]

{ #category : #generated }
DelphiInterfaceTypeNode >> components: anOrderedCollection [
	self setParents: self components to: nil.
	components := anOrderedCollection.
	self setParents: self components to: self
]

{ #category : #generated }
DelphiInterfaceTypeNode >> compositeNodeVariables [
	^ #(#components #superclasses)
]

{ #category : #generated }
DelphiInterfaceTypeNode >> guid [
	^ guid
]

{ #category : #generated }
DelphiInterfaceTypeNode >> guid: aDelphiGuidNode [
	self guid notNil
		ifTrue: [ self guid parent: nil ].
	guid := aDelphiGuidNode.
	self guid notNil
		ifTrue: [ self guid parent: self ]
]

{ #category : #'generated-initialize-release' }
DelphiInterfaceTypeNode >> initialize [
	super initialize.
	components := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiInterfaceTypeNode >> interfaceToken [
	^ interfaceToken
]

{ #category : #generated }
DelphiInterfaceTypeNode >> interfaceToken: aSmaCCToken [
	interfaceToken := aSmaCCToken
]

{ #category : #generated }
DelphiInterfaceTypeNode >> nodeVariables [
	^ #(#guid)
]

{ #category : #generated }
DelphiInterfaceTypeNode >> partial [
	^ partial
]

{ #category : #generated }
DelphiInterfaceTypeNode >> partial: aSmaCCToken [
	partial := aSmaCCToken
]

{ #category : #generated }
DelphiInterfaceTypeNode >> tokenVariables [
	^ #(#interfaceToken #accessToken #partial #left #right #endToken)
]
