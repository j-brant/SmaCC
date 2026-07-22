Class {
	#name : 'JSImportAssertionEntryNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'name',
		'colonToken',
		'value'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSImportAssertionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportAssertionEntry: self
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> name [
	^ name
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> tokenVariables [
	^ #(#name #value)
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> value [
	^ value
]

{ #category : 'generated' }
JSImportAssertionEntryNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
