Class {
	#name : 'SmaCCScannerStepToAction',
	#superclass : 'SmaCCDebuggingAction',
	#category : 'SmaCC_Debugging_Support-Debugger',
	#package : 'SmaCC_Debugging_Support',
	#tag : 'Debugger'
}

{ #category : 'actions' }
SmaCCScannerStepToAction >> executeAction [
	| scanner toIndex |
	toIndex := self stepToIndex.
	scanner := self smaccSession scanner.
	self
		stepUntil: [ :each | scanner stream position >= toIndex and: [ self smaccSession isScanning: each ] ].
	self stepOutOfStepMethod
]

{ #category : 'actions' }
SmaCCScannerStepToAction >> stepOutOfStepMethod [
	| stepContext |
	stepContext := self session context
		findContextSuchThat:
			[ :each | (each receiver isKindOf: SmaCCScanner) and: [ each selector = #step ] ].
	stepContext isNil
		ifTrue: [ ^ self ].
	self stepUntil: [ :context | false ] context: stepContext
]

{ #category : 'accessing' }
SmaCCScannerStepToAction >> stepToIndex [
	^ self subclassResponsibility
]
