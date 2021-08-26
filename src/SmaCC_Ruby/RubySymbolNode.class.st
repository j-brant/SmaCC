Class {
	#name : 'RubySymbolNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'colon',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubySymbolNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbol: self
]

{ #category : 'generated' }
RubySymbolNode >> colon [
	^ colon
]

{ #category : 'generated' }
RubySymbolNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RubySymbolNode >> tokenVariables [
	^ #(#colon #value)
]

{ #category : 'generated' }
RubySymbolNode >> value [
	^ value
]

{ #category : 'generated' }
RubySymbolNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
