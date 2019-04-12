Class {
	#name : #CPPPreprocessorMacro,
	#superclass : #Object,
	#instVars : [
		'interval',
		'source'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #'instance creation' }
CPPPreprocessorMacro class >> replacement: aString [
	^ self new
		source: aString;
		interval: (1 to: aString size);
		yourself
]

{ #category : #'instance creation' }
CPPPreprocessorMacro class >> replacement: aString interval: anInterval [
	^ self new
		source: aString;
		interval: anInterval;
		yourself
]

{ #category : #accessing }
CPPPreprocessorMacro >> interval [
	^ interval
]

{ #category : #accessing }
CPPPreprocessorMacro >> interval: anInterval [
	interval := anInterval
]

{ #category : #processing }
CPPPreprocessorMacro >> process: aToken on: aPreprocessor using: aParser [
	aPreprocessor
		removeMacro: aToken source
		around: [ aPreprocessor processSource: source inInterval: interval ].
	^ aToken stopPosition + 1
]

{ #category : #accessing }
CPPPreprocessorMacro >> source [
	^ source
]

{ #category : #accessing }
CPPPreprocessorMacro >> source: aString [
	source := aString
]
