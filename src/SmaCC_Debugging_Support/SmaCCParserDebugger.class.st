Class {
	#name : #SmaCCParserDebugger,
	#superclass : #GTGenericStackDebugger,
	#instVars : [
		'isGLR'
	],
	#classInstVars : [
		'availableAutomatically'
	],
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #accessing }
SmaCCParserDebugger class >> availableAutomatically [
	^ availableAutomatically ifNil: [ false ]
]

{ #category : #accessing }
SmaCCParserDebugger class >> availableAutomatically: aBoolean [
	availableAutomatically := aBoolean
]

{ #category : #accessing }
SmaCCParserDebugger class >> defaultTitle [
	^ 'SmaCCParser'
]

{ #category : #testing }
SmaCCParserDebugger class >> handlesContext: aContext [
	^ SmaCCParserDebugSession handlesContext: aContext
]

{ #category : #'class initialization' }
SmaCCParserDebugger class >> initialize [
	self register
]

{ #category : #'instance creation' }
SmaCCParserDebugger class >> on: aDebugSession [
	| glrClass |
	glrClass := Smalltalk at: #SmaCCGLRParser ifAbsent: [ self ].
	^ self basicNew
		isGLR: (aDebugSession parser isKindOf: glrClass);
		initialize;
		session: aDebugSession
]

{ #category : #'tools registry' }
SmaCCParserDebugger class >> register [
	self registerToolsOn: Smalltalk tools
]

{ #category : #'tools registry' }
SmaCCParserDebugger class >> registerToolsOn: aRegistry [
	aRegistry registerDebugger: self withRank: 60
]

{ #category : #accessing }
SmaCCParserDebugger class >> sessionClass [
	^ SmaCCParserDebugSession
]

{ #category : #building }
SmaCCParserDebugger >> buildGLRTransmissionsIn: browser [
	self isGLR
		ifTrue:
			[ browser transmit
				from: #stack port: #selection;
				to: #glrStates;
				transformed: [ :context | self session glrParserStates ];
				andShow:
						[ :composite | 
					composite table
						title: 'GLR';
						format:
								[ :each | (self session parser states identityIndexOf: each) printString ] ] ]
]

{ #category : #building }
SmaCCParserDebugger >> buildInputIn: browser [
	browser transmit
		fromOutsideEntityPort;
		to: #input;
		andShowIfNone: [ :composite | 
			| text |
			text := composite text.
			text
				title: 'Input';
				display: [ self session inputText ];
				withLineNumbers: true.
			text with: [ :c | self installActionsForRootPragmas: #(#SmaCCDebuggingInputAction) in: c ] ].
	browser transmit
		from: #stack port: #selection;
		to: #input port: #selectionInterval;
		transformed: [ :each | self session inputSelectionInterval ].
	browser transmit
		from: #stackState port: #selection;
		to: #input port: #selectionInterval;
		transformed: [ :each | 
			each notNil
				ifTrue: [ (self session tokenIntervalFor: each last) ifNil: [ self session inputSelectionInterval ] ] ]
]

{ #category : #building }
SmaCCParserDebugger >> buildPotentialTokensIn: browser [
	browser transmit
		from: #stack port: #selection;
		to: #potential;
		transformed: [ :context | self session potentialStateActions ];
		andShow: [ :composite | 
			composite table
				title: 'Possible Actions';
				column: 'Symbol'
					evaluated: [ :each | 
					each third
						ifTrue: [ each first asText allBold ]
						ifFalse: [ each first asText makeAllColor: Color red ] ];
				column: 'Action'
					evaluated: [ :each | 
					each third
						ifTrue: [ each second asText allBold ]
						ifFalse: [ each second asText makeAllColor: Color red ] ] ]
]

{ #category : #building }
SmaCCParserDebugger >> buildScannerStateIn: browser [
	browser transmit
		from: #stack port: #selection;
		to: #scannerState;
		transformed: [ :context | self session scannerProperties ];
		andShow:
				[ :composite | 
			composite table
				title: 'Scanner';
				column: 'Name' evaluated: [ :each | each first ];
				column: 'Value' evaluated: [ :each | each last ];
				with: [ :c | self installActionsForRootPragmas: #(#SmaCCDebuggingScannerAction) in: c ] ]
]

{ #category : #building }
SmaCCParserDebugger >> buildStackStateIn: browser [
	browser transmit
		from: #stack port: #selection;
		to: #stackState;
		transformed: [ :context | self session parserStack ];
		andShow: [ :composite | 
			composite table
				title: 'Parser Stack';
				column: 'Symbol' evaluated: [ :each | each first ];
				column: 'Value' evaluated: [ :each | each last ];
				morphicSelectionAct: [ :list | list selection last inspect ]
					icon: GLMUIThemeExtraIcons glamorousInspect
					on: $i
					entitled: 'Inspect';
				with: [ :c | 
					self
						installActionsForRootPragmas: #(#SmaCCDebuggingParserAction)
						in: c ] ]
]

{ #category : #private }
SmaCCParserDebugger >> currentInputSelectionInterval [
	^ self selectionIntervalForPane: #input
]

{ #category : #building }
SmaCCParserDebugger >> debuggerStructureIn: browser [
	browser
		row: [ :row | 
			row
				column: #stackState span: 6;
				column: #potential span: 6.
			self isGLR
				ifTrue: [ row column: #glrStates ] ].
	browser
		row: [ :row | 
			row
				column: #input span: 2;
				column: #scannerState ];
		row: [ :row | 
			row
				column: #stack;
				column: #code ];
		row: #inspector span: 0
]

{ #category : #building }
SmaCCParserDebugger >> debuggerTransmissionsIn: browser [
	super debuggerTransmissionsIn: browser.
	self buildGLRTransmissionsIn: browser.
	self buildStackStateIn: browser.
	self buildPotentialTokensIn: browser.
	self buildScannerStateIn: browser.
	self buildInputIn: browser
]

{ #category : #accessing }
SmaCCParserDebugger >> isGLR [
	^ isGLR ifNil: [ false ]
]

{ #category : #accessing }
SmaCCParserDebugger >> isGLR: aBoolean [
	isGLR := aBoolean
]
