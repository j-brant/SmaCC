Class {
	#name : 'RustDocAttributeNode',
	#superclass : 'RustAttributeNode',
	#instVars : [
		'commentToken'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustDocAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDocAttribute: self
]

{ #category : 'generated' }
RustDocAttributeNode >> commentToken [
	^ commentToken
]

{ #category : 'generated' }
RustDocAttributeNode >> commentToken: aSmaCCToken [
	commentToken := aSmaCCToken
]

{ #category : 'generated' }
RustDocAttributeNode >> tokenVariables [
	^ #(#commentToken #hashToken #bang #leftBracket #equalsToken #unsafeToken #leftParen #rightParen #rightBracket)
]
