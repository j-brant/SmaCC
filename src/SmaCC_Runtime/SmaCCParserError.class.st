"
SmaCCParserError is the exception raised when a parsing error occurs. The description of the exception will be the error message and the parameter of the exception is the parser. With this information, you can insert a custom error message in your text view that you are parsing. For example, in VisualWorks, the following code will insert an error message into your text view:
	textController insertAndSelect: ex description , ' ->' at: ex parameter position

"
Class {
	#name : #SmaCCParserError,
	#superclass : #Error,
	#instVars : [
		'isResumable'
	],
	#category : 'SmaCC_Runtime'
}

{ #category : #'initialize-release' }
SmaCCParserError >> initialize [
	super initialize.
	isResumable := false
]

{ #category : #testing }
SmaCCParserError >> isResumable [
	^ isResumable
]

{ #category : #accessing }
SmaCCParserError >> isResumable: aBoolean [
	isResumable := aBoolean
]

{ #category : #accessing }
SmaCCParserError >> parser [
	^ self tag
]

{ #category : #accessing }
SmaCCParserError >> parser: aSmaCCParser [
	self tag: aSmaCCParser
]
