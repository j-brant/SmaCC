Class {
	#name : #DelphiTypeTypeNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'typeToken',
		'typeName',
		'leftParen',
		'codePage',
		'rightParen'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiTypeTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeType: self
]

{ #category : #generated }
DelphiTypeTypeNode >> codePage [
	^ codePage
]

{ #category : #generated }
DelphiTypeTypeNode >> codePage: aSmaCCToken [
	codePage := aSmaCCToken
]

{ #category : #generated }
DelphiTypeTypeNode >> ignoredTokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
DelphiTypeTypeNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
DelphiTypeTypeNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
DelphiTypeTypeNode >> nodeVariables [
	^ #(#typeName)
]

{ #category : #generated }
DelphiTypeTypeNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
DelphiTypeTypeNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
DelphiTypeTypeNode >> tokenVariables [
	^ #(#typeToken #codePage)
]

{ #category : #generated }
DelphiTypeTypeNode >> typeName [
	^ typeName
]

{ #category : #generated }
DelphiTypeTypeNode >> typeName: aDelphiQualifiedNameNode [
	self typeName notNil
		ifTrue: [ self typeName parent: nil ].
	typeName := aDelphiQualifiedNameNode.
	self typeName notNil
		ifTrue: [ self typeName parent: self ]
]

{ #category : #generated }
DelphiTypeTypeNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
DelphiTypeTypeNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
