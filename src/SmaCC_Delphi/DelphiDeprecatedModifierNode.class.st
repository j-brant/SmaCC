Class {
	#name : #DelphiDeprecatedModifierNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'deprecatedToken',
		'message'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiDeprecatedModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeprecatedModifier: self
]

{ #category : #generated }
DelphiDeprecatedModifierNode >> deprecatedToken [
	^ deprecatedToken
]

{ #category : #generated }
DelphiDeprecatedModifierNode >> deprecatedToken: aSmaCCToken [
	deprecatedToken := aSmaCCToken
]

{ #category : #generated }
DelphiDeprecatedModifierNode >> message [
	^ message
]

{ #category : #generated }
DelphiDeprecatedModifierNode >> message: aSmaCCToken [
	message := aSmaCCToken
]

{ #category : #generated }
DelphiDeprecatedModifierNode >> tokenVariables [
	^ #(#deprecatedToken #message)
]
