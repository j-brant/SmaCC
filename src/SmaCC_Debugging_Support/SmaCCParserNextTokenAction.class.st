Class {
	#name : #SmaCCParserNextTokenAction,
	#superclass : #SmaCCParserStepAction,
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #accessing }
SmaCCParserNextTokenAction class >> defaultIcon [
	^ icon
		ifNil: [ icon := Form
				extent: 15 @ 16
				depth: 32
				fromArray:
					#(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1103019710 66911484 0 1153153979 0 0 0 0 0 0 0 0 0 217314291 2523490665 4261478657 117045753 0 3526176045 3074967624 501408482 0 0 0 0 0 0 1136442556 3760135967 4027518735 1788188053 0 0 1236711094 3726713121 4044230158 1687919515 0 0 0 0 1905168014 4261478657 2774162010 401139944 0 0 0 0 167180022 2239396474 4194632965 2740739164 0 0 0 2256107897 4194632965 2139127936 133757176 0 0 0 0 33488638 1621073823 3977384466 3108390470 0 0 0 0 1637785246 3977384466 3659867429 1169865402 0 0 718656981 3258793277 4177921542 2189262205 133757176 0 0 0 0 0 384428521 2807584856 4278190080 100334330 0 3526176045 3325638969 735368404 0 0 0 0 0 0 0 0 0 1270133940 66911484 0 1286845363 50200061 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
				offset: 0 @ 0 ]
]

{ #category : #registration }
SmaCCParserNextTokenAction class >> gtActionFor: aDebugger [
	<gtSmaCCDebuggingParserAction>
	^ self forDebugger: aDebugger
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> defaultLabel [
	^ 'Next Token'
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> defaultOrder [
	^ 100
]

{ #category : #actions }
SmaCCParserNextTokenAction >> executeAction [
	| token |
	token := self session parser currentToken.
	self stepUntil: [ :context | self session parser currentToken ~~ token and: [ self session parser currentToken notNil ] ]
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> help [
	^ 'Run until we get the next token or a parse error is encountered.'
]
