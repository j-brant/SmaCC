Class {
	#name : 'RubyRestNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'operator',
		'name'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyRestNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRest: self
]

{ #category : 'generated' }
RubyRestNode >> name [
	^ name
]

{ #category : 'generated' }
RubyRestNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyRestNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyRestNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyRestNode >> tokenVariables [
	^ #(#operator #name)
]
