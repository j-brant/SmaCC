Class {
	#name : #DelphiResourceStringDefinitionNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'name',
		'equalToken',
		'value',
		'_deprecated',
		'semicolon'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiResourceStringDefinitionNode >> _deprecated [
	^ _deprecated
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> _deprecated: aDelphiDeprecatedModifierNode [
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: nil ].
	_deprecated := aDelphiDeprecatedModifierNode.
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: self ]
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitResourceStringDefinition: self
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> name [
	^ name
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> nodeVariables [
	^ #(#value #_deprecated)
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> tokenVariables [
	^ #(#name #equalToken)
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> value [
	^ value
]

{ #category : #generated }
DelphiResourceStringDefinitionNode >> value: aDelphiExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aDelphiExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
