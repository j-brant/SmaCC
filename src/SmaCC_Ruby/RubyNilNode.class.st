Class {
	#name : 'RubyNilNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyNilNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNil: self
]

{ #category : 'generated' }
RubyNilNode >> name [
	^ name
]

{ #category : 'generated' }
RubyNilNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyNilNode >> tokenVariables [
	^ #(#name)
]
