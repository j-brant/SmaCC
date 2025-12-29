Class {
	#name : 'SmaCCParserStepThroughAction',
	#superclass : 'SmaCCParserStepAction',
	#category : 'SmaCC_Debugging_Support-Debugger',
	#package : 'SmaCC_Debugging_Support',
	#tag : 'Debugger'
}

{ #category : 'accessing' }
SmaCCParserStepThroughAction class >> defaultIcon [
	^ (Smalltalk at: #BrGlamorousIcons ifAbsent: [  ]) ifNil: [ self iconNamed: #glamorousOver ] ifNotNil: [ :cls | cls over ]
]

{ #category : 'accessing' }
SmaCCParserStepThroughAction class >> defaultName [
	^ 'Through Action'
]

{ #category : 'accessing' }
SmaCCParserStepThroughAction >> defaultOrder [
	^ 1
]

{ #category : 'actions' }
SmaCCParserStepThroughAction >> executeAction [
	| insidePerform performBlock |
	performBlock := [ :context | (context receiver isKindOf: SmaCCParser) and: [ context selector = #performAction: ] ].
	insidePerform := (self session context findContextSuchThat: performBlock) notNil.
	self
		stepUntil: [ :context | 
			insidePerform
				ifTrue: [ (context findContextSuchThat: performBlock) isNil ]
				ifFalse: [ insidePerform := performBlock value: context.
					false ] ]
]

{ #category : 'accessing' }
SmaCCParserStepThroughAction >> help [
	^ 'Run until we perform the next action (shift or reduce) or a parse error is encountered.'
]
