Class {
	#name : #SmaCCParserDebugger,
	#superclass : #SpPresenter,
	#traits : 'TDebugger',
	#classTraits : 'TDebugger classTrait',
	#instVars : [
		'isGLR',
		'notebook',
		'sourceText',
		'parserStackTable',
		'stateActionsTable',
		'scannerPropertiesTable',
		'session',
		'toolbar',
		'methodSource',
		'glrLabel'
	],
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #accessing }
SmaCCParserDebugger class >> closeAllDebuggers [
	^ self allInstancesDo: [ :each | each close ]
]

{ #category : #'instance creation' }
SmaCCParserDebugger class >> debugSession: aDebugSession [
	| session |
	session := SmaCCParserDebugSession from: aDebugSession.
	^ (self on: session)
		open;
		yourself
]

{ #category : #accessing }
SmaCCParserDebugger class >> defaultDebuggerRank [

	^ 11
]

{ #category : #debugging }
SmaCCParserDebugger class >> handlesContext: aContext [
	^ SmaCCParserDebugSession handlesContext: aContext
]

{ #category : #actions }
SmaCCParserDebugger >> close [
	self window ifNotNil: [ :window | window close ]
]

{ #category : #initialization }
SmaCCParserDebugger >> contextPage [
	^ SpNotebookPage title: 'Context' provider: [ self methodSource ]
]

{ #category : #initialization }
SmaCCParserDebugger >> createSourceText [
	sourceText := self newText.
	sourceText text: session inputText
]

{ #category : #initialization }
SmaCCParserDebugger >> createToolBar [
	| throughAction intoReduceAction nextTokenAction nextCharacterAction toCursorAction resumeAction buttons |
	glrLabel := self newLabel.
	throughAction := SmaCCParserStepThroughAction forDebugger: self.
	intoReduceAction := SmaCCParserStepToReduceAction forDebugger: self.
	nextTokenAction := SmaCCParserNextTokenAction forDebugger: self.
	nextCharacterAction := SmaCCStepToNextCharacterAction forDebugger: self.
	toCursorAction := SmaCCStepToCursorAction forDebugger: self.
	resumeAction := ResumeDebugAction forDebugger: self.
	buttons := (self newToolbar)
		add:
				((self newToolbarButton)
						label: 'Through Action';
						icon: throughAction icon;
						action:
								[ throughAction executeAction.
									self updateParser ]);
		add:
				((self newToolbarButton)
						label: 'Into Reduce';
						icon: intoReduceAction icon;
						action:
								[ intoReduceAction executeAction.
									self updateParser ]);
		add:
				((self newToolbarButton)
						label: 'Next Token';
						icon: nextTokenAction icon;
						action:
								[ nextTokenAction executeAction.
									self updateParser ]);
		add:
				((self newToolbarButton)
						label: 'Next Character';
						icon: nextCharacterAction icon;
						action:
								[ nextCharacterAction executeAction.
									self updateScanner ]);
		add:
				((self newToolbarButton)
						label: 'To Cursor';
						icon: toCursorAction icon;
						action:
								[ toCursorAction executeAction.
									self updateScanner ]);
		add:
				((self newToolbarButton)
						label: 'Resume';
						icon: (self iconNamed: #glamorousGo);
						action: [ resumeAction executeAction ]);
		add:
				((self newToolbarButton)
						label: 'Debugger';
						icon: (self iconNamed: #glamorousBug);
						action:
								[ StDebugger debugSession: session.
									self close ]);
		yourself.
	self isGLR ifFalse: [ ^ toolbar := buttons ].
	toolbar := self newPresenter
		layout:
			((SpBoxLayout newLeftToRight)
				spacing: 5;
				add: buttons;
				addLast: glrLabel expand: false;
				yourself).
	self updateGLRStates
]

{ #category : #accessing }
SmaCCParserDebugger >> currentContext [
	^ session interruptedContext
]

{ #category : #accessing }
SmaCCParserDebugger >> currentInputSelectionInterval [
	^ sourceText selectionInterval
]

{ #category : #layout }
SmaCCParserDebugger >> defaultLayout [
	^ (SpBoxLayout newTopToBottom)
		spacing: 5;
		add: notebook;
		add: toolbar expand: false;
		add: sourceText;
		yourself
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> glrStateText [
	| text index states |
	states := self session glrParserStates.
	index := states identityIndexOf: self session parser currentGLRState ifAbsent: [ 1 ].
	text := ('GLR State: ' , index printString , ' of ' , states size printString) asText.
	text allBold.
	^ text
]

{ #category : #initialization }
SmaCCParserDebugger >> initializePresenters [
	self createToolBar.
	notebook := self newNotebook.
	notebook
		addPage: self parserPage;
		addPage: self scannerPage.
	self createSourceText
]

{ #category : #initialization }
SmaCCParserDebugger >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter initialExtent: 750 @ 650
]

{ #category : #accessing }
SmaCCParserDebugger >> isGLR [
	| glrClass |
	^ isGLR
		ifNil:
			[ glrClass := Smalltalk at: #SmaCCGLRParser ifAbsent: [ self ].
			isGLR := session parser isKindOf: glrClass ]
]

{ #category : #initialization }
SmaCCParserDebugger >> methodSource [
	^ methodSource ifNil: [ methodSource := self newText ]
]

{ #category : #initialization }
SmaCCParserDebugger >> parserPage [
	| parserPresenter |
	parserPresenter := self newPresenter.
	parserStackTable := self newTable.
	parserStackTable
		addColumn: (SpStringTableColumn title: 'Symbol' evaluated: [ :each | each first ifNil: [ '' ] ]);
		addColumn: (SpStringTableColumn title: 'Value' evaluated: [ :each | each last displayString ]).
	self updateParserStack.
	parserStackTable whenSelectedDo: [ :item | self selectSourceFor: item ].
	stateActionsTable := self newTable.
	stateActionsTable
		addColumn:
				(SpStringTableColumn
						title: 'Symbol'
						evaluated:
							[ :each | 
							| text |
							text := each first asText.
							each third
								ifTrue:
									[ text
										makeAllColor: Color black;
										allBold ]
								ifFalse: [ text makeAllColor: Color red ] ]);
		addColumn:
				(SpStringTableColumn
						title: 'Action'
						evaluated:
							[ :each | 
							| text |
							text := each second asText.
							each third
								ifTrue:
									[ text
										makeAllColor: Color black;
										allBold ]
								ifFalse: [ text makeAllColor: Color red ] ]).
	self updateParserStates.
	parserPresenter
		layout:
			((SpBoxLayout newLeftToRight)
				spacing: 5;
				add: parserStackTable;
				add: stateActionsTable;
				yourself).
	^ SpNotebookPage title: 'Parser' provider: [ parserPresenter ]
]

{ #category : #initialization }
SmaCCParserDebugger >> scannerPage [
	scannerPropertiesTable := self newTable.
	scannerPropertiesTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: [ :each | each first ]);
		addColumn: (SpStringTableColumn title: 'Value' evaluated: [ :each | each last ]).
	self updateScannerProperties.
	^ SpNotebookPage title: 'Scanner' provider: [ scannerPropertiesTable ]
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> selectSourceFor: anObject [
	(session tokenIntervalFor: anObject) ifNotNil: [ :interval | sourceText selectionInterval: interval ]
]

{ #category : #accessing }
SmaCCParserDebugger >> session [
	^ session
]

{ #category : #initialization }
SmaCCParserDebugger >> setModelBeforeInitialization: aDomainObject [
	session := aDomainObject
]

{ #category : #accessing }
SmaCCParserDebugger >> title [
	^ 'SmaCC Debugger'
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateContext [
	(session isInsideReductionAction or: [ session isScanning ])
		ifTrue:
			[ notebook pages size < 3 ifTrue: [ notebook addPage: self contextPage ].
			self methodSource text: session context sourceCode.
			self methodSource selectionInterval: (session selectedCodeRangeForContext: session context) ]
		ifFalse: [ notebook pages size < 3 ifFalse: [ notebook removePage: notebook pages last ] ]
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateDisplay [
	self updateParserStack.
	self updateParserStates.
	self updateGLRStates.
	self updateScannerProperties.
	self updateContext
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateGLRStates [
	glrLabel isNil ifTrue: [ ^ self ].
	glrLabel label: self glrStateText
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateParser [
	notebook selectPage: notebook pages first.
	self updateDisplay
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateParserStack [
	| items |
	items := session parserStack.
	parserStackTable items: items.
	((1 to: items size) detect: [ :i | (items at: i) last ~= '' ] ifNone: [  ])
		ifNotNil: [ :i | parserStackTable selectIndex: i ]
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateParserStates [
	stateActionsTable items: session potentialStateActions
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateScanner [
	| scanner success start end |
	notebook selectPage: notebook pages second.
	self updateDisplay.
	scanner := self session scanner.
	success := scanner matchActions notNil.
	success ifFalse: [ ^ self ].
	start := scanner debugStart + 1.
	end := scanner debugEnd.
	sourceText selectionInterval: (start to: end)
]

{ #category : #'private-updating' }
SmaCCParserDebugger >> updateScannerProperties [
	scannerPropertiesTable items: session scannerProperties
]
