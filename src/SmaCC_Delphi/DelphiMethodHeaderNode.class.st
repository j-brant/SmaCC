Class {
	#name : #DelphiMethodHeaderNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'annotations',
		'qualifiedName',
		'left',
		'right',
		'modifiers'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiMethodHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodHeader: self
]

{ #category : #generated }
DelphiMethodHeaderNode >> annotations [
	^ annotations
]

{ #category : #generated }
DelphiMethodHeaderNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : #generated }
DelphiMethodHeaderNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : #'generated-initialize-release' }
DelphiMethodHeaderNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiMethodHeaderNode >> left [
	^ left
]

{ #category : #generated }
DelphiMethodHeaderNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiMethodHeaderNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
DelphiMethodHeaderNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : #generated }
DelphiMethodHeaderNode >> nodeVariables [
	^ #(#qualifiedName)
]

{ #category : #generated }
DelphiMethodHeaderNode >> qualifiedName [
	^ qualifiedName
]

{ #category : #generated }
DelphiMethodHeaderNode >> qualifiedName: aDelphiQualifiedNameNode [
	self qualifiedName notNil
		ifTrue: [ self qualifiedName parent: nil ].
	qualifiedName := aDelphiQualifiedNameNode.
	self qualifiedName notNil
		ifTrue: [ self qualifiedName parent: self ]
]

{ #category : #generated }
DelphiMethodHeaderNode >> right [
	^ right
]

{ #category : #generated }
DelphiMethodHeaderNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiMethodHeaderNode >> tokenVariables [
	^ #(#left #right)
]
