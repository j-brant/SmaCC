Class {
	#name : #RubyStringSymbolNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'colon',
		'name'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyStringSymbolNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStringSymbol: self
]

{ #category : #generated }
RubyStringSymbolNode >> colon [
	^ colon
]

{ #category : #generated }
RubyStringSymbolNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RubyStringSymbolNode >> name [
	^ name
]

{ #category : #generated }
RubyStringSymbolNode >> name: aRubyStringNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aRubyStringNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
RubyStringSymbolNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
RubyStringSymbolNode >> tokenVariables [
	^ #(#colon)
]
