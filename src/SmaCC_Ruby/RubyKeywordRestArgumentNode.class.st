Class {
	#name : 'RubyKeywordRestArgumentNode',
	#superclass : 'RubyProgramNode',
	#instVars : [
		'operator',
		'name',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitKeywordRestArgument: self
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> name [
	^ name
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> tokenVariables [
	^ #(#operator #value #name)
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> value [
	^ value
]

{ #category : 'generated' }
RubyKeywordRestArgumentNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
