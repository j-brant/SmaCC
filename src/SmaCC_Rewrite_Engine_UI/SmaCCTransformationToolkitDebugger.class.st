Class {
	#name : #SmaCCTransformationToolkitDebugger,
	#superclass : #SpPresenter,
	#traits : 'TDebugger',
	#classTraits : 'TDebugger classTrait',
	#instVars : [
		'session',
		'stack',
		'source',
		'input',
		'output',
		'inspector'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #accessing }
SmaCCTransformationToolkitDebugger class >> closeAllDebuggers [
	^ self allInstancesDo: [ :each | each close ]
]

{ #category : #'instance creation' }
SmaCCTransformationToolkitDebugger class >> debugSession: aDebugSession [
	| session |
	session := SmaCCTransformationToolkitDebugSession from: aDebugSession.
	^ (self on: session)
		open;
		yourself
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugger class >> defaultDebuggerRank [
	^ 12
]

{ #category : #debugging }
SmaCCTransformationToolkitDebugger class >> handlesContext: aContext [
	^ SmaCCTransformationToolkitDebugSession handlesContext: aContext
]

{ #category : #actions }
SmaCCTransformationToolkitDebugger >> close [
	self window ifNotNil: [ :window | window close ]
]

{ #category : #initialization }
SmaCCTransformationToolkitDebugger >> createToolBar [
	| send stepRule stepNode stepRewrite |
	send := SmaCCSendRuleDebugAction gtActionFor: self.
	stepRule := SmaCCStepRuleDebugAction gtActionFor: self.
	stepNode := SmaCCStepToNextNodeAction gtActionFor: self.
	stepRewrite := SmaCCStepToNextRewriteAction gtActionFor: self.
	^ (self newToolbar)
		add:
				((self newToolbarButton)
						label: 'Into';
						icon: send icon;
						action:
								[ send executeAction.
									self updateDisplay ]);
		add:
				((self newToolbarButton)
						label: 'Over';
						icon: stepRule icon;
						action:
								[ stepRule executeAction.
									self updateDisplay ]);
		add:
				((self newToolbarButton)
						label: 'Run to Next Node';
						icon: stepNode icon;
						action:
								[ stepNode executeAction.
									self updateDisplay ]);
		add:
				((self newToolbarButton)
						label: 'Run to Next Rewrite';
						icon: stepRewrite icon;
						action:
								[ stepRewrite executeAction.
									self updateDisplay ]);
		add:
				((self newToolbarButton)
						label: 'Debugger';
						icon: (self iconNamed: #glamorousBug);
						action:
								[ StDebugger debugSession: session.
									self close ]);
		yourself
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugger >> currentContext [
	^ stack selectedItem ifNil: [ session interruptedContext ] ifNotNil: [ :each | each last ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugger >> currentNode [
	^ stack selectedItem ifNil: [ session currentNode ] ifNotNil: [ :each | each last receiver match ]
]

{ #category : #layout }
SmaCCTransformationToolkitDebugger >> defaultLayout [
	^ (SpPanedLayout newTopToBottom)
		positionOfSlider: 0.66;
		add:
				((SpPanedLayout newTopToBottom)
						positionOfSlider: 0.4;
						add:
								(self newPresenter
										layout:
											((SpBoxLayout newTopToBottom)
												add: self createToolBar;
												add:
														((self newPresenter)
																layout:
																		((SpPanedLayout newLeftToRight)
																				positionOfSlider: 0.3;
																				add: stack;
																				add: source;
																				yourself);
																yourself);
												yourself));
						add:
								((self newPresenter)
										layout:
												((SpPanedLayout newLeftToRight)
														positionOfSlider: 0.5;
														add: input;
														add: output;
														yourself);
										yourself);
						yourself);
		add: inspector;
		yourself
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> highlightNodeInterval: anInterval in: presenter [
	| text |
	text := presenter adapter ifNil: [ ^ self ] ifNotNil: [ :each | each widget getText ].
	text
		removeAttribute: TextEmphasis underlined
		from: 1
		to: text size.
	(anInterval notNil and: [ anInterval last <= text size ])
		ifTrue:
			[ text
				addAttribute: TextEmphasis underlined
				from: anInterval first
				to: anInterval last.
			self scrollTo: anInterval first in: presenter ]
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> highlightNodes [
	| inputInterval outputInterval |
	self currentNode
		ifNotNil:
			[ :node | 
			inputInterval := node sourceInterval.
			outputInterval := self outputSelectionIntervalFor: node ].
	self highlightNodeInterval: inputInterval in: input.
	self highlightNodeInterval: outputInterval in: output
]

{ #category : #initialization }
SmaCCTransformationToolkitDebugger >> initializePresenters [
	source := self newText.
	stack := self newList.
	stack display: [ :each | each first displayString ].
	stack whenSelectionChangedDo: [ :each | self updateContext ].
	input := self newText.
	input text: session originalSource asString.
	output := self newText.
	inspector := self instantiate: StDebuggerInspector on: (StDebuggerInspectorModel on: StDebuggerContext new).
	inspector label: 'Receiver'.
	self whenDisplayDo: [ :each | self updateDisplay ]
]

{ #category : #initialization }
SmaCCTransformationToolkitDebugger >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter initialExtent: 850 @ 750
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> outputSelectionIntervalFor: aNode [
	| string stop matchContext start |
	aNode ifNil: [ ^ 1 to: 0 ].
	matchContext := session currentRewriteContext.
	string := session rewriteEngine source.
	start := matchContext startIndexFor: aNode.
	stop := matchContext stopIndexFor: aNode.
	^ (string stringIndexFor: start) to: (string stringIndexFor: stop)
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> scrollTo: anIndex in: presenter [
	| text line count |
	text := presenter text.
	line := text asString lineNumberCorrespondingToIndex: anIndex.
	count := text asString lineCount.
	presenter scrollValue: 0 @ ((line - 1) / count)
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugger >> session [
	^ session
]

{ #category : #initialization }
SmaCCTransformationToolkitDebugger >> setModelBeforeInitialization: aDomainObject [
	session := aDomainObject
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugger >> title [
	^ 'SmaCC Transformation Toolkit Debugger'
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> updateContext [
	stack selectedItem
		ifNil: [ source text: '' ]
		ifNotNil:
			[ :item | 
			source text: (session sourceForContext: item last andRewrite: item first).
			self highlightNodeInterval: (session sourceSelectionIntervalForContext: item last andRewrite: item first) in: source.
			inspector updateWith: (StDebuggerContext context: item last).
			self highlightNodes ]
]

{ #category : #private }
SmaCCTransformationToolkitDebugger >> updateDisplay [
	| items newSource |
	items := session transformationStack.
	stack items: items.
	items notEmpty ifTrue: [ stack selectItem: items first ].
	newSource := session newSource.
	newSource ~= output text asString ifTrue: [ output text: newSource ].
	self highlightNodes
]
