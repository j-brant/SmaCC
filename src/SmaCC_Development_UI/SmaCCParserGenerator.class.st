Class {
	#name : #SmaCCParserGenerator,
	#superclass : #SpPresenter,
	#instVars : [
		'parserClassName',
		'scannerClassName',
		'codeGeneratorType',
		'savedDefinition',
		'packageName',
		'notebook',
		'viewSymbols',
		'viewItemSets',
		'menuItems',
		'definitionText',
		'messagesText',
		'symbolsText',
		'itemSetsText',
		'testText',
		'menu'
	],
	#classVars : [
		'ShowPrecedenceConflicts'
	],
	#category : #'SmaCC_Development_UI'
}

{ #category : #'class initialization' }
SmaCCParserGenerator class >> initialize [
	ShowPrecedenceConflicts := false
]

{ #category : #'world menu' }
SmaCCParserGenerator class >> menuCommandOn: aBuilder [
	<worldMenu>
	
	(aBuilder item: #'SmaCC Parser Generator')
		parent: #Browsing;
		order: 100;
		help: 'SmaCC Parser Generator Tool';
		action: [ self open ]
]

{ #category : #'instance creation' }
SmaCCParserGenerator class >> open [
	^ (self new)
		open;
		yourself
]

{ #category : #actions }
SmaCCParserGenerator >> close [
	self isModified
		ifTrue: [ self promptToSaveChanges
				ifFalse: [ ^ self ] ].
	self window close
]

{ #category : #private }
SmaCCParserGenerator >> codeGeneratorClass [
	^ SmaCCCodeGenerator withAllSubclasses
		detect: [ :each | each typeName = codeGeneratorType ]
		ifNone: [ SmaCCSmalltalkCodeGenerator new ]
]

{ #category : #private }
SmaCCParserGenerator >> codeGeneratorClasses [
	^ SmaCCCodeGenerator withAllSubclasses select: [ :each | each typeName notNil ]
]

{ #category : #actions }
SmaCCParserGenerator >> compile [
	^self compile: #LALR1
]

{ #category : #private }
SmaCCParserGenerator >> compile: aSymbol [
	| grammar stream oldCharacterSize parserCompiler messages |
	(self scannerClassName isEmpty or: [ self parserClassName isEmpty ])
		ifTrue: [ ^ UIManager default alert: 'Both classes are not specified' ].
	((Smalltalk includesKey: self parserClassName) or: [ packageName notNil ])
		ifFalse:
			[ self setPackage.
			packageName isNil ifTrue: [ ^ self ] ].
	messages := OrderedCollection new.
	Cursor wait
		showWhile:
			[ oldCharacterSize := SmaCCGrammar maximumCharacterValue.
			[ self verifyParser ifFalse: [ ^ self ].
			parserCompiler := self compiler.
			parserCompiler
				codeGenerator: self codeGeneratorClass new;
				buildDefinition: self definition.
			parserCompiler codeGenerator defaultCategory: packageName.
			parserCompiler
				scannerClass: self scannerClassName;
				parserClass: self parserClassName.
			grammar := parserCompiler grammar.
			grammar type: aSymbol.
			stream := WriteStream on: String new.
			[ parserCompiler createChanges.
			parserCompiler codeGenerator compileChanges.
			viewSymbols ifTrue: [ symbolsText text: parserCompiler symbolsComment ].
			viewItemSets ifTrue: [ itemSetsText text: parserCompiler itemSetsComment ] ]
				on: SmaCCCompilationNotification
				do:
					[ :ex | 
					(ShowPrecedenceConflicts or: [ ('*precedence*' match: ex messageText) not ])
						ifTrue: [ messages add: ex messageText , (String with: Character cr with: Character cr) , ex tag ].
					ex pass ].
			messages asSortedCollection
				do:
					[ :each | 
					stream
						nextPutAll: '-------------------------';
						cr;
						nextPutAll: each;
						cr ].
			messagesText text: stream contents.
			messagesText text notEmpty ifTrue: [ notebook selectPage: (notebook pages at: 2) ].
			self markAsUnmodified ] ensure: [ SmaCCGrammar maximumCharacterValue: oldCharacterSize ] ]
]

{ #category : #private }
SmaCCParserGenerator >> compiler [
	^SmaCCGrammarCompiler new
]

{ #category : #actions }
SmaCCParserGenerator >> debugParse [
	| process |
	process := [ self parserClass parse: self testString ] newProcess.
	[ (process suspendedContext receiver isKindOf: SmaCCParser) and: [ process suspendedContext selector = #parse ] ]
		whileFalse: [ process step: process suspendedContext ].
	process debug
]

{ #category : #layout }
SmaCCParserGenerator >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: menu expand: false;
		add: notebook;
		yourself
]

{ #category : #private }
SmaCCParserGenerator >> definition [
	^ definitionText text asString
]

{ #category : #private }
SmaCCParserGenerator >> definition: source [
	definitionText text: source
]

{ #category : #initialization }
SmaCCParserGenerator >> definitionPage [
	definitionText := self newText.
	^ SpNotebookPage title: 'Definition' provider: [ definitionText ]
]

{ #category : #private }
SmaCCParserGenerator >> displayError: aString at: position [
	self textWidget
		ifNotNil:
			[ :each | 
			each text: (each text copyFrom: 1 to: position - 1) , aString , ' ->' , (each text copyFrom: position to: each text size).
			each selectionInterval: (position to: position + aString size + 2) ]
]

{ #category : #initialization }
SmaCCParserGenerator >> fileMenu [
	^ (self newMenu)
		addGroup:
				[ :group | 
					group
						addItem:
								[ :item | 
									item
										name: 'Open...';
										action: [ self findParserClass ] ];
						addItem:
								[ :item | 
									item
										name: 'Save';
										action: [ self compile ] ] ];
		addGroup:
				[ :group | 
					group
						addItem:
							[ :item | 
							item
								name: 'Exit';
								action: [ self close ] ] ]
]

{ #category : #actions }
SmaCCParserGenerator >> findParserClass [
	| class subclasses |
	self isModified
		ifTrue: [ self promptToSaveChanges
				ifFalse: [ ^ self ] ].
	subclasses := (SmaCCParser allSubclasses asSortedCollection: [ :a :b | a name < b name ]) asArray.
	class := UIManager default
		chooseFrom: (subclasses collect: [ :each | each name ])
		values: subclasses
		message: 'What class do you want to use?'.
	class isNil
		ifTrue: [ ^ self ].
	self parserClassName: class name.
	self updateDefinitionFor: class.
	self markAsUnmodified
]

{ #category : #initialization }
SmaCCParserGenerator >> initialize [
	parserClassName := ''.
	scannerClassName := ''.
	codeGeneratorType := #Smalltalk.
	savedDefinition := ''.
	viewSymbols := true.
	viewItemSets := false.
	menuItems := Dictionary new.
	super initialize
]

{ #category : #initialization }
SmaCCParserGenerator >> initializePresenters [
	menu := (self newMenuBar)
		addGroup:
				[ :group | 
					group
						addItem:
							[ :item | 
							item
								name: 'File';
								subMenu: self fileMenu ] ];
		addGroup:
				[ :group | 
					group
						addItem:
							[ :item | 
							item
								name: 'Options';
								subMenu: self optionsMenu ] ];
		addGroup:
				[ :group | 
					group
						addItem:
							[ :item | 
							item
								name: 'View';
								subMenu: self viewMenu ] ].
	notebook := self newNotebook.
	notebook
		addPage: self definitionPage;
		addPage: self messagesPage;
		addPage: self symbolsPage;
		addPage: self itemSetsPage;
		addPage: self testPage.
	self updateViewMenu.
	self updateOptionsMenu
]

{ #category : #initialization }
SmaCCParserGenerator >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter initialExtent: 650 @ 500
]

{ #category : #private }
SmaCCParserGenerator >> isModified [
	^ savedDefinition ~= self definition
]

{ #category : #private }
SmaCCParserGenerator >> isValidName: aString [
	^ aString first isUppercase and: [ RBScanner isVariable: aString ]
]

{ #category : #initialization }
SmaCCParserGenerator >> itemSetsPage [
	itemSetsText := self newText.
	itemSetsText beNotEditable.
	^ SpNotebookPage title: 'Item Sets' provider: [ itemSetsText ]
]

{ #category : #private }
SmaCCParserGenerator >> language [
	^ codeGeneratorType
]

{ #category : #actions }
SmaCCParserGenerator >> markAsUnmodified [
	savedDefinition := self definition
]

{ #category : #accessing }
SmaCCParserGenerator >> menu [
	^ menu
]

{ #category : #private }
SmaCCParserGenerator >> menuItemFor: aSymbol [
	^ menuItems at: aSymbol
]

{ #category : #initialization }
SmaCCParserGenerator >> messagesPage [
	messagesText := self newText.
	messagesText beNotEditable.
	^ SpNotebookPage title: 'Messages' provider: [ messagesText ]
]

{ #category : #initialization }
SmaCCParserGenerator >> optionsMenu [
	^ (self newMenu)
		addGroup:
				[ :group | 
					group
						autoRefresh: true;
						addItem:
								[ :item | 
									menuItems at: #setScannerClass put: item.
									item
										name: 'Scanner Class...';
										action: [ self setScannerClass ] ];
						addItem:
								[ :item | 
									menuItems at: #setParserClass put: item.
									item
										name: 'Parser Class...';
										action: [ self setParserClass ] ];
						addItem:
								[ :item | 
									menuItems at: #setPackage put: item.
									item
										name: 'Set Package...';
										action: [ self setPackage ] ] ];
		addGroup:
				[ :group | 
					group
						autoRefresh: true;
						addItem:
								[ :item | 
									menuItems at: #optimizeTransitionTable put: item.
									item
										name: 'Optimize Transition Table';
										action: [ self toggleOptimizeTransitionTable ] ] ]
]

{ #category : #actions }
SmaCCParserGenerator >> parse [
	self parseAndEvaluate: [ :each | UIManager default message: 'Parses without errors' ]
]

{ #category : #private }
SmaCCParserGenerator >> parseAndEvaluate: aBlock [
	| class |
	class := self parserClass.
	class isNil ifTrue: [ ^ UIManager default alert: 'No parser defined' ].
	aBlock
		value:
			(class
				parse: self testString
				onError:
					[ :aString :position | 
					notebook selectPage: notebook pages last.
					self displayError: aString at: position.
					^ self ])
]

{ #category : #actions }
SmaCCParserGenerator >> parseAndInspect [
	self parseAndEvaluate: [ :each | each inspect ]
]

{ #category : #private }
SmaCCParserGenerator >> parserClass [
	self parserClassName isEmpty
		ifTrue: [ ^ nil ].
	^ Smalltalk at: self parserClassName asSymbol
]

{ #category : #accessing }
SmaCCParserGenerator >> parserClassName [
	^ parserClassName
]

{ #category : #accessing }
SmaCCParserGenerator >> parserClassName: aString [
	parserClassName := aString.
	self updateOptionsMenu
]

{ #category : #private }
SmaCCParserGenerator >> promptToSaveChanges [
	^ (self confirm: 'The definition has been modified. Do you wish to retain your changes?') not
]

{ #category : #accessing }
SmaCCParserGenerator >> scannerClassName [
	^ scannerClassName
]

{ #category : #accessing }
SmaCCParserGenerator >> scannerClassName: aString [
	scannerClassName := aString.
	self updateOptionsMenu
]

{ #category : #actions }
SmaCCParserGenerator >> setCodeGenerator: aSymbol [
	codeGeneratorType := aSymbol
]

{ #category : #actions }
SmaCCParserGenerator >> setPackage [
	| name |
	name := UIManager default
		enterOrRequestFrom: RPackage organizer packageNames asSortedCollection
		title: 'Select package:'.
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self ].
	packageName := name
]

{ #category : #actions }
SmaCCParserGenerator >> setParserClass [
	| name |
	name := UIManager default request: 'Enter parser class name:' initialAnswer: self parserClassName.
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self ].
	(self isValidName: name)
		ifFalse: [ ^ UIManager default inform: 'Invalid Class Name' ].
	self parserClassName: name asSymbol
]

{ #category : #actions }
SmaCCParserGenerator >> setScannerClass [
	| name |
	name := UIManager default request: 'Enter scanner class name:' initialAnswer: self scannerClassName.
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self ].
	(self isValidName: name)
		ifFalse: [ ^ UIManager default inform: 'Invalid Class Name' ].
	self scannerClassName: name asSymbol
]

{ #category : #private }
SmaCCParserGenerator >> switchToDefinition [
	notebook selectedPage title ~= 'Definition' ifTrue: [ notebook selectPage: notebook pages first ]
]

{ #category : #initialization }
SmaCCParserGenerator >> symbolsPage [
	symbolsText := self newText.
	symbolsText beNotEditable.
	^ SpNotebookPage title: 'Symbols' provider: [ symbolsText ]
]

{ #category : #initialization }
SmaCCParserGenerator >> testMenu [
	^ (self newMenu)
		addGroup:
				[ :group | 
					group
						addItem:
								[ :item | 
									item
										name: 'Evaluate';
										action: [ self parse ] ];
						addItem:
								[ :item | 
									item
										name: 'Inspect...';
										action: [ self parseAndInspect ] ];
						addItem:
								[ :item | 
									item
										name: 'Debug';
										action: [ self debugParse ] ] ];
		yourself
]

{ #category : #initialization }
SmaCCParserGenerator >> testPage [
	testText := self newText.
	testText withoutEditionContextMenu.	"since it is broken"
	testText contextMenu: self testMenu.
	^ SpNotebookPage title: 'Test' provider: [ testText ]
]

{ #category : #private }
SmaCCParserGenerator >> testString [
	^ testText text asString
]

{ #category : #private }
SmaCCParserGenerator >> textWidget [
	notebook selectedPage == notebook pages first ifTrue: [ ^ definitionText ].
	notebook selectedPage == notebook pages last ifTrue: [ ^ testText ].
	^ nil
]

{ #category : #accessing }
SmaCCParserGenerator >> title [
	^ 'SmaCC'
]

{ #category : #actions }
SmaCCParserGenerator >> toggleOptimizeTransitionTable [
	SmaCCGrammarCompiler toggleOptimizeTransitionTable.
	self updateOptionsMenu
]

{ #category : #private }
SmaCCParserGenerator >> updateDefinitionFor: parserClass [
	| scannerClass |
	scannerClass := [ parserClass scannerClass ] on: Error do: [ :ex | ex return: nil ].
	scannerClass notNil ifTrue: [ self scannerClassName: scannerClass name ].
	self definition: parserClass parserDefinitionString.
	messagesText text: ''.
	symbolsText text: ''.
	itemSetsText text: ''.
	self switchToDefinition
]

{ #category : #private }
SmaCCParserGenerator >> updateMenuItem: aSymbol checked: aBoolean [
	| item |
	item := self menuItemFor: aSymbol.
	item
		icon:
			(self
				iconNamed:
					(aBoolean
						ifTrue: [ #checkBoxOn ]
						ifFalse: [ #checkBoxOff ]))
]

{ #category : #private }
SmaCCParserGenerator >> updateOptionsMenu [
	(self menuItemFor: #setScannerClass)
		name:
			'Scanner Class'
				,
					(scannerClassName isEmpty
						ifTrue: [ '' ]
						ifFalse: [ ' (' , scannerClassName , ')' ]) , '...'.
	(self menuItemFor: #setParserClass)
		name:
			'Parser Class'
				,
					(parserClassName isEmpty
						ifTrue: [ '' ]
						ifFalse: [ ' (' , parserClassName , ')' ]) , '...'.
	self
		updateMenuItem: #optimizeTransitionTable
		checked: SmaCCGrammarCompiler optimizeTransitionTable
]

{ #category : #private }
SmaCCParserGenerator >> updateViewMenu [
	self updateMenuItem: #viewSymbolsClicked checked: viewSymbols.
	self updateMenuItem: #viewItemSetsClicked checked: viewItemSets
]

{ #category : #private }
SmaCCParserGenerator >> verifyParser [
	^ [ SmaCCGrammarCompiler new
		codeGenerator: self codeGeneratorClass new;
		buildDefinition: self definition.
	true ]
		on: SmaCCParserError
		do: [ :ex | 
			self switchToDefinition.
			self displayError: ex description at: ex parser position.
			ex return: false ]
]

{ #category : #actions }
SmaCCParserGenerator >> viewItemSetsClicked [
	viewItemSets := viewItemSets not.
	self updateViewMenu
]

{ #category : #initialization }
SmaCCParserGenerator >> viewMenu [
	^ self newMenu
		addGroup:
			[ :group | 
			group
				autoRefresh: true;
				addItem:
						[ :item | 
							menuItems at: #viewSymbolsClicked put: item.
							item
								name: 'Symbols';
								action: [ self viewSymbolsClicked ] ];
				addItem:
						[ :item | 
							menuItems at: #viewItemSetsClicked put: item.
							item
								name: 'Item Sets';
								action: [ self viewItemSetsClicked ] ] ]
]

{ #category : #actions }
SmaCCParserGenerator >> viewSymbolsClicked [
	viewSymbols := viewSymbols not.
	self updateViewMenu
]
