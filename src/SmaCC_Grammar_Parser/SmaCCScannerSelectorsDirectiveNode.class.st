Class {
	#name : 'SmaCCScannerSelectorsDirectiveNode',
	#superclass : 'SmaCCDirectiveNode',
	#instVars : [
		'scannerSelectorsToken',
		'symbols'
	],
	#category : 'SmaCC_Grammar_Parser',
	#package : 'SmaCC_Grammar_Parser'
}

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitScannerSelectorsDirective: self
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> compositeTokenVariables [
	^ #(#symbols)
]

{ #category : 'generated-initialize-release' }
SmaCCScannerSelectorsDirectiveNode >> initialize [
	super initialize.
	symbols := OrderedCollection new: 2.
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> scannerSelectorsToken [
	^ scannerSelectorsToken
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> scannerSelectorsToken: aSmaCCToken [
	scannerSelectorsToken := aSmaCCToken
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> symbols [
	^ symbols
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> symbols: anOrderedCollection [
	symbols := anOrderedCollection
]

{ #category : 'generated' }
SmaCCScannerSelectorsDirectiveNode >> tokenVariables [
	^ #(#scannerSelectorsToken #directiveStartToken #semicolon)
]
