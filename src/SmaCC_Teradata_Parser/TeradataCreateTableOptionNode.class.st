Class {
	#name : #TeradataCreateTableOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'comma',
		'noToken',
		'fallbackToken',
		'beforeToken',
		'journalToken',
		'afterToken',
		'checksumToken',
		'equals',
		'value',
		'defaultToken',
		'mergeBlockRatioToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCreateTableOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTableOption: self
]

{ #category : #generated }
TeradataCreateTableOptionNode >> afterToken [
	^ afterToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> afterToken: aSmaCCToken [
	afterToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> beforeToken [
	^ beforeToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> beforeToken: aSmaCCToken [
	beforeToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> checksumToken [
	^ checksumToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> checksumToken: aSmaCCToken [
	checksumToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> comma [
	^ comma
]

{ #category : #generated }
TeradataCreateTableOptionNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> equals [
	^ equals
]

{ #category : #generated }
TeradataCreateTableOptionNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> fallbackToken [
	^ fallbackToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> fallbackToken: aSmaCCToken [
	fallbackToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> journalToken [
	^ journalToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> journalToken: aSmaCCToken [
	journalToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> mergeBlockRatioToken [
	^ mergeBlockRatioToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> mergeBlockRatioToken: aSmaCCToken [
	mergeBlockRatioToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> noToken [
	^ noToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> noToken: aSmaCCToken [
	noToken := aSmaCCToken
]

{ #category : #generated }
TeradataCreateTableOptionNode >> tokenVariables [
	^ #(#comma #noToken #fallbackToken #beforeToken #journalToken #afterToken #checksumToken #equals #value #defaultToken #mergeBlockRatioToken)
]

{ #category : #generated }
TeradataCreateTableOptionNode >> value [
	^ value
]

{ #category : #generated }
TeradataCreateTableOptionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
