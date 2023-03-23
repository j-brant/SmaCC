Class {
	#name : #YAMLScannerState,
	#superclass : #SmaCCScannerState,
	#instVars : [
		'opened',
		'tokens',
		'indents'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #comparing }
YAMLScannerState >> = anObject [
	^ super = anObject
		and: [ self indents = anObject indents
				and: [ self opened = anObject opened and: [ self tokens = anObject tokens ] ] ]
]

{ #category : #comparing }
YAMLScannerState >> hash [
	^ ((super hash hashMultiply bitXor: self indents hash) hashMultiply
		bitXor: self opened hash) hashMultiply bitXor: self tokens hash
]

{ #category : #accessing }
YAMLScannerState >> indents [
	^ indents
]

{ #category : #accessing }
YAMLScannerState >> indents: anObject [
	indents := anObject
]

{ #category : #accessing }
YAMLScannerState >> opened [
	^ opened
]

{ #category : #accessing }
YAMLScannerState >> opened: anObject [
	opened := anObject
]

{ #category : #accessing }
YAMLScannerState >> tokens [
	^ tokens
]

{ #category : #accessing }
YAMLScannerState >> tokens: anObject [
	tokens := anObject
]
