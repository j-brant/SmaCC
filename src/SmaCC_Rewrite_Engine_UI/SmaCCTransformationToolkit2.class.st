Class {
	#name : #SmaCCTransformationToolkit2,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'filename',
		'resultsList',
		'previewResult',
		'notebook',
		'fileList',
		'menuBar',
		'ruleEditor'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #specs }
SmaCCTransformationToolkit2 class >> defaultSpec [
	^ SpBoxLayout newTopToBottom
		add: #menuBar expand: false;
		add: #notebook;
		yourself
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> addDirectory [
	| dir names match stream todo |
	dir := UITheme builder chooseDirectory: 'Add all files in directory' path: nil.
	dir ifNil: [ ^ self ].
	names := Set new.
	stream := WriteStream on: String new.
	(self model inputParserClass ifNil: [ SmaCCParser ]) fileExtensions
		do:
			[ :each | 
			stream
				nextPut: $*;
				nextPutAll: each ]
		separatedBy: [ stream nextPut: $; ].
	match := stream contents.
	todo := OrderedCollection with: dir.
	[ todo notEmpty ]
		whileTrue:
			[ ((dir := todo removeFirst) filesMatching: match) do: [ :each | names add: each fullName ].
			todo addAll: dir directories ].
	self addFiles: names
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> addFiles [
	| name |
	name := self
		promptForFile: 'Add file'
		extensions:
			((self model inputParserClass ifNil: [ SmaCCParser ]) fileExtensions
				collect:
					[ :each | (each notEmpty and: [ each first = $. ]) ifTrue: [ each copyFrom: 2 to: each size ] ifFalse: [ each ] ]).
	name ifNil: [ ^ self ].
	self addFiles: (Array with: name)
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> addFiles: aCollection [
	| files |
	files := Set withAll: self model files.
	files addAll: aCollection.
	self model files: files asSortedCollection asArray.
	self modelChanged
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> buildConfigurationTab [
	| presenter buttons topPane table |
	presenter := SpPresenter new.
	fileList := (self newList)
		beMultipleSelection;
		yourself.
	buttons := presenter newButtonBar.
	topPane := (SpBoxLayout newLeftToRight)
		add: 'Files:' expand: false;
		add: fileList;
		add: buttons expand: false;
		yourself.
	buttons
		layout:
			((SpBoxLayout newTopToBottom)
				add:
						((self newButton)
								label: 'Add Dir';
								action: [ self addDirectory ];
								yourself)
					expand: false;
				add:
						((self newButton)
								label: 'Add';
								action: [ self addFiles ];
								yourself)
					expand: false;
				add:
						((self newButton)
								label: 'Remove';
								action: [ self removeFiles ])
					expand: false;
				add:
						((self newButton)
								label: 'Preview';
								action: [ self openResults ])
					expand: false;
				add:
						((self newButton)
								label: 'Run';
								action: [ self run ])
					expand: false;
				yourself).
	table := self newTable.
	table
		addColumn: (SpStringTableColumn title: 'File' evaluated: [ :each | each filename ]);
		addColumn: (SpStringTableColumn title: 'Error' evaluated: [ :each | each errorString ifNil: [ '' ] ]);
		addColumn:
				(SpStringTableColumn
						title: 'Transformation'
						evaluated: [ :each | each transformation ifNil: [ '' ] ifNotNil: [ :t | t displayString ] ]);
		addColumn: (SpStringTableColumn title: 'Line' evaluated: [ :each | each startLine ifNil: [ '' ] ]);
		addColumn: (SpStringTableColumn title: 'Column' evaluated: [ :each | each startColumn ifNil: [ '' ] ]).
	presenter
		layout:
			((SpBoxLayout newTopToBottom)
				add: topPane;
				add: table;
				yourself).
	^ presenter
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> buildEditMenu [
	^SpMenuPresenter new
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Find'; shortcut: #find; action: [  ] ];
				                  addItem: [ :item | item name: 'Replace'; shortcut: $h; action: [  ] ] ];
		               addGroup: [ :group | 
								group addItem: [ :item | item name: 'Format'; action: [  ] ] ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> buildFileMenu [
	^SpMenuPresenter new
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Load Configuration'; shortcut: #open; action: [ self loadConfiguration ] ];
				                  addItem: [ :item | item name: 'Save Configuration'; shortcut: #save; action: [ self saveConfiguration ] ] ];
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Open Rewrites'; action: [  ] ];
				                  addItem: [ :item | item name: 'Save Rewrites'; action: [  ] ] ];
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'New Window'; action: [  ] ] ];
		               addGroup: [ :group | group addItem: [ :item | item name: 'Exit'; shortcut: #close; action: [  ] ] ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> buildTransformMenu [

	^SpMenuPresenter new
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Input Parser...'; action: [  ] ];
				                  addItem: [ :item | item name: 'Validation Parser...'; action: [  ] ] ];
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Set Server (localhost)'; action: [  ] ] ];
		               addGroup: [ :group | 
			               group addItem: [ :item | item name: 'User Server'; action: [  ] ] ];
		               addGroup: [ :group | 
								group addItem: [ :item | item name: 'Transform All'; shortcut: $R ctrl; action: [  ] ];
										addItem: [ :item | item name: 'Transform Remaining'; action: [  ] ];
										addItem: [ :item | item name: 'Transform Selected'; shortcut: $r ctrl; action: [  ] ];
										addItem: [ :item | item name: 'Transform All With Errors Or Warnings'; action: [  ] ] ];
							addGroup: [ :group | 
			               group addItem: [ :item | item name: 'View Input File'; action: [  ] ] ];
							addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Export Results...'; action: [  ] ] ];
							addGroup: [ :group | 
			               group addItem: [ :item | item name: 'Select all files from errors'; action: [  ] ] ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> buildTransformationTab [
	ruleEditor := (SmaCCRewriteEditor2 new)
		model: self model;
		modelChanged;
		yourself.
	^ ruleEditor
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> configurationPage [
	^ SpNotebookPage title: 'Configuration' provider: [ self buildConfigurationTab ]
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> ensureRewriteFilename [

	| name |
	self model rewrites filename ifNil: [ 
		name := self
			        promptForSaveFile: 'Save Rewrites To'
			        extensions: #( 'rw' ).
		name isNil ifTrue: [ ^ self ].
		self model rewrites filename: name ]
]

{ #category : #private }
SmaCCTransformationToolkit2 >> fileResults [
	^ resultsList ifNil: [ resultsList := CollectionValueHolder value: OrderedCollection new ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initialize [
	self model: SmaCCTransformationToolkitModel new.
	super initialize

]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializeMenu [

	menuBar := self newMenuBar.
	menuBar addGroup: [ :group | 
		group
			addItem: [ :item | 
				item
					name: 'File';
					subMenu: self buildFileMenu ];
			addItem: [ :item | 
				item
					name: 'Edit';
					subMenu: self buildEditMenu ];
			addItem: [ :item | 
				item
					name: 'Transform';
					subMenu: self buildTransformMenu ] ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializeNotebook [

	notebook := self newNotebook.
	notebook
		addPage: self configurationPage;
		addPage: self transformationPage;
		addPage: self previewPage
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializePresenters [
	self initializeMenu.
	self initializeNotebook
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializeWindow: aSpWindowPresenter [

	super initializeWindow: aSpWindowPresenter.

	aSpWindowPresenter
		title: 'SmaCC Transformation Toolkit'
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> loadConfiguration [
	| file |
	file := self promptForFile: 'Load Configuration File' extensions: #('rwc').
	file ifNil: [ ^ self ].
	self loadConfigurationFrom: file
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> loadConfigurationFrom: file [
	self model: (SmaCCTransformationToolkitModel new loadFile: file).
	self modelChanged.
	self fileResults removeAll.
	self result: SmaCCRewriteCompleteResult new
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> modelChanged [
	fileList ifNotNil: [ fileList items: self model files ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> previewPage [
	^SpNotebookPage
		 title: 'Preview'
		 provider: [ self buildConfigurationTab ]
]

{ #category : #accessing }
SmaCCTransformationToolkit2 >> previewResultHolder [
	^ previewResult ifNil: [ previewResult := NewValueHolder value: SmaCCRewriteResult new ]
]

{ #category : #private }
SmaCCTransformationToolkit2 >> promptForFile: aTitle extensions: anArray [
	^ UIManager default
		chooseExistingFileReference: aTitle
		extensions: anArray
		path: FileSystem workingDirectory
]

{ #category : #private }
SmaCCTransformationToolkit2 >> promptForSaveFile: aTitle extensions: anArray [
	^ UIManager default
		chooseForSaveFileReference: aTitle
		extensions: anArray
		path: FileSystem workingDirectory
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> removeFiles [
	| files anArray |
	anArray := fileList selectedItems.
	anArray isEmpty ifTrue: [ ^ self ].
	(self confirm: 'Do you want to remove the files?') ifFalse: [ ^ self ].
	files := Set withAll: self model files.
	files removeAllFoundIn: anArray.
	self model files: files asSortedCollection.
	self modelChanged
]

{ #category : #private }
SmaCCTransformationToolkit2 >> result: aSmaCCRewriteResult [
	self previewResultHolder value: aSmaCCRewriteResult
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> saveConfiguration [
	self ensureRewriteFilename.
	filename
		ifNil:
			[ filename := self promptForSaveFile: 'Save Configuration To' extensions: #('rwc').
			filename ifNil: [ ^ self ] ].
	self model saveTo: filename
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> transformationPage [
	^ SpNotebookPage title: 'Transformation' provider: [ self buildTransformationTab ]
]
