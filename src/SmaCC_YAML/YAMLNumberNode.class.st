Class {
	#name : 'YAMLNumberNode',
	#superclass : 'YAMLValueNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_YAML-Parser',
	#package : 'SmaCC_YAML',
	#tag : 'Parser'
}

{ #category : 'generated' }
YAMLNumberNode >> acceptVisitor: aParseVisitor [
	^ aParseVisitor visitNumber: self
]

{ #category : 'private' }
YAMLNumberNode >> createObject [
	| numberString exponent index |
	numberString := value value.
	(numberString size > 2 and: [ numberString first = $0 ])
		ifTrue: [ | base second |
			second := numberString second asLowercase.
			second = $x ifTrue: [ base := 16 ].
			second = $o ifTrue: [ base := 8 ].
			second = $b ifTrue: [ base := 2 ].
			base
				ifNotNil: [ ^ Integer readFrom: (numberString allButFirst: 2) base: base ] ].
	(numberString beginsWith: '.') ifTrue: [ numberString := '0' , numberString ].
	index := numberString asLowercase indexOf: $e.
	index > 0
		ifTrue: [ exponent := numberString allButFirst: index.
			exponent first = $+ ifTrue: [ exponent := exponent allButFirst ].
			numberString := numberString first: index - 1 ].
	^ [ | num |
	num := numberString asNumber.
	exponent ifNotNil: [ num := num * (10 ** exponent asNumber) ].
	num ] on: Error do: [ :ex | ex return: numberString ]
]

{ #category : 'generated' }
YAMLNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
YAMLNumberNode >> value [
	^ value
]

{ #category : 'generated' }
YAMLNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
