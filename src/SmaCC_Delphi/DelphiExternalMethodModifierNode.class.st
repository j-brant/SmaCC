Class {
	#name : #DelphiExternalMethodModifierNode,
	#superclass : #DelphiMethodModifierNode,
	#instVars : [
		'delayed',
		'library',
		'indexToken',
		'index',
		'nameToken',
		'methodName'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiExternalMethodModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternalMethodModifier: self
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> delayed [
	^ delayed
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> delayed: aSmaCCToken [
	delayed := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> index [
	^ index
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> index: aSmaCCToken [
	index := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> indexToken [
	^ indexToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> indexToken: aSmaCCToken [
	indexToken := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> library [
	^ library
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> library: aSmaCCToken [
	library := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> methodName [
	^ methodName
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> methodName: aSmaCCToken [
	methodName := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> nameToken [
	^ nameToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> nameToken: aSmaCCToken [
	nameToken := aSmaCCToken
]

{ #category : #generated }
DelphiExternalMethodModifierNode >> tokenVariables [
	^ #(#delayed #library #indexToken #index #nameToken #methodName #modifier)
]
