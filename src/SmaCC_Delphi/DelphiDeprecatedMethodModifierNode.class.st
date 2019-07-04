Class {
	#name : #DelphiDeprecatedMethodModifierNode,
	#superclass : #DelphiMethodModifierNode,
	#instVars : [
		'message'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiDeprecatedMethodModifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeprecatedMethodModifier: self
]

{ #category : #generated }
DelphiDeprecatedMethodModifierNode >> message [
	^ message
]

{ #category : #generated }
DelphiDeprecatedMethodModifierNode >> message: aSmaCCToken [
	message := aSmaCCToken
]

{ #category : #generated }
DelphiDeprecatedMethodModifierNode >> tokenVariables [
	^ #(#message #modifier)
]
