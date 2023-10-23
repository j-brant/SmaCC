Class {
	#name : #PythonScannerState,
	#superclass : #SmaCCScannerState,
	#instVars : [
		'lineJoiningStack',
		'indentStack',
		'tokenStack',
		'lastLineStart'
	],
	#category : #'SmaCC_Python'
}

{ #category : #comparing }
PythonScannerState >> = anObject [
	^ super = anObject
		and: [ self indentStack = anObject indentStack
				and: [ self lastLineStart = anObject lastLineStart
						and: [ self lineJoiningStack = anObject lineJoiningStack
								and: [ self tokenStack = anObject tokenStack ] ] ] ]
]

{ #category : #comparing }
PythonScannerState >> hash [
	^ super hash hashMultiply
		bitXor: ((self indentStack hash hashMultiply bitXor: self lastLineStart hash)
				bitXor: (self lineJoiningStack hash hashMultiply bitXor: self tokenStack hash))
]

{ #category : #accessing }
PythonScannerState >> indentStack [
	^ indentStack
]

{ #category : #accessing }
PythonScannerState >> indentStack: anObject [
	indentStack := anObject
]

{ #category : #accessing }
PythonScannerState >> lastLineStart [
	^ lastLineStart
]

{ #category : #accessing }
PythonScannerState >> lastLineStart: anObject [
	lastLineStart := anObject
]

{ #category : #accessing }
PythonScannerState >> lineJoiningStack [
	^ lineJoiningStack
]

{ #category : #accessing }
PythonScannerState >> lineJoiningStack: anObject [
	lineJoiningStack := anObject
]

{ #category : #accessing }
PythonScannerState >> tokenStack [
	^ tokenStack
]

{ #category : #accessing }
PythonScannerState >> tokenStack: anObject [
	tokenStack := anObject
]
