Class {
	#name : #SmaCCTransformationToolkit,
	#superclass : #SpPresenter,
	#instVars : [
		'model',
		'filename',
		'notebook',
		'results',
		'transformationsPresenter',
		'configurationPresenter',
		'filesListPresenter',
		'resultsTablePresenter',
		'transformationsTreePresenter',
		'previewResultsListPresenter',
		'previewResult',
		'previewInputSourcePresenter',
		'previewOutputSourcePresenter',
		'transformationTreePresenter',
		'transformationRulePresenter',
		'progressDialog',
		'progressCounts',
		'createSubdirectories',
		'runOnServer',
		'optionsMenu'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #'instance creation' }
SmaCCTransformationToolkit class >> menuCommandOn: aBuilder [
	<worldMenu>
	
	(aBuilder item: #'SmaCC Transformation Toolkit')
		parent: #Browsing;
		order: 101;
		action: [ self open ]
]

{ #category : #'instance creation' }
SmaCCTransformationToolkit class >> open [
	^ (self new)
		open;
		yourself
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> addDirectory [
	| names match stream todo dir |
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
	match isEmpty ifTrue: [ match := '*' ].
	todo := OrderedCollection with: dir.
	[ todo notEmpty ]
		whileTrue:
			[ ((dir := todo removeFirst) filesMatching: match) do: [ :each | names add: each fullName ].
			todo addAll: dir directories ].
	self addFiles: names
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> addFile [
	| name |
	name := self
		promptForFile: 'Add file'
		extensions:
			((self model inputParserClass ifNil: [ SmaCCParser ]) fileExtensions
				collect: [ :each | each first = $. ifTrue: [ each copyFrom: 2 to: each size ] ifFalse: [ each ] ]).
	name ifNil: [ ^ self ].
	self addFiles: (Array with: name asFileReference pathString)
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> addFileRule [
	| rewrite file |
	file := UIManager default
		chooseForSaveFileReference: 'Enter rewrite rule file name'
		extensions: #('rw')
		path: FileSystem workingDirectory.
	file ifNil: [ ^ self ].
	rewrite := file asFileReference exists
		ifTrue: [ SmaCCRewriteRuleFileParser parseFile: file ]
		ifFalse: [ SmaCCRewriteFile new filename: file ].
	self addRewrite: rewrite
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> addFiles: aCollection [
	| files |
	files := Set withAll: self model files.
	files addAll: aCollection.
	self model files: files asSortedCollection asArray
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> addPreviewSource: aString named: title to: aNotebook [
	self
		addPreviewSource: aString
		named: title
		to: aNotebook
		updateOnSelection: nil
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> addPreviewSource: aString named: title to: aNotebook updateOnSelection: aSymbol [
	aNotebook
		addPage:
			(SpNotebookPage
				title: title
				provider:
					[ | text |
					text := self newText.
					text text: aString.
					text beNotEditable.
					aSymbol
						ifNotNil: [ text whenSelectionChangedDo: [ :new | self updatePreviewAnnotations: (self perform: aSymbol with: new) ] ].
					text ])
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> addResult: aResult [
	self incrementPercent.
	results addFirst: aResult.
	self updateResults
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> addRewrite: newRewrite [
	| selected |
	selected := self selectedRewrite.
	selected isComposite
		ifTrue: [ selected addTransformation: newRewrite ]
		ifFalse: [ selected parent notNil ifTrue: [ selected parent addTransformation: newRewrite before: selected ] ].
	self updateAndSelectRewrite: newRewrite
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> annotationsInNewRange: interval [
	^ (previewResult transformedString annotationsInNewRange: interval)
		asSortedCollection: [ :a :b | a nodeInterval first < b nodeInterval first ]
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> annotationsInOriginalRange: interval [
	^ (previewResult transformedString annotationsInOriginalRange: interval)
		asSortedCollection: [ :a :b | a nodeInterval first < b nodeInterval first ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> configurationMenu [
	^ self newMenuBar
		addGroup:
			[ :group | 
			group
				addItem:
						[ :item | 
							item
								name: 'Load';
								iconName: #glamorousOpen;
								action: [ self loadConfiguration ] ];
				addItem:
						[ :item | 
							item
								name: 'Save';
								iconName: #glamorousSave;
								action: [ self saveConfiguration ] ];
				addItem:
						[ :addItem | 
							addItem
								name: 'Options';
								subMenu:
										((optionsMenu := self newMenu)
												addItem:
														[ :item | 
															item
																name: 'Input Parser...';
																action: [ self selectInputParser ] ];
												addItem:
														[ :item | 
															item
																name: 'Validation Parser...';
																action: [ self selectValidationParser ] ];
												addItem:
														[ :item | 
															item
																name: 'Output Directory...';
																action: [ self setOutputDirectory ] ];
												addItem:
														[ :item | 
															(createSubdirectories := item)
																name: 'Create Subdirectories';
																action: [ self setCreateSubdirectories ] ];
												addItem:
														[ :item | 
															item
																name: 'Server...';
																action: [ self setServer ] ];
												addItem:
														[ :item | 
															(runOnServer := item)
																name: 'Run on Server';
																action: [ self setRunOnServer ] ]).
							self updateMenuItems ] ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> configurationPage [
	^ SpNotebookPage title: 'Configuration' provider: [ self configurationPresenter ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> configurationPresenter [
	^ configurationPresenter
		ifNil:
			[ configurationPresenter := (self newPresenter)
				layout:
						((SpPanedLayout newTopToBottom)
								add:
										((self newPresenter)
												layout:
														((SpBoxLayout newTopToBottom)
																spacing: 5;
																add: self configurationMenu expand: false;
																add: (self newLabel label: 'Files') expand: false;
																add:
																		(self newPresenter
																				layout:
																					((SpBoxLayout newLeftToRight)
																						spacing: 5;
																						add: self filesListPresenter;
																						addLast: self filesListButtons expand: false;
																						yourself));
																yourself);
												yourself);
								add:
										((self newPresenter)
												layout:
														((SpBoxLayout newTopToBottom)
																add: (self newLabel label: 'Results') expand: false;
																add: self resultsTablePresenter;
																yourself);
												yourself);
								yourself);
				yourself ]
]

{ #category : #private }
SmaCCTransformationToolkit >> connectModel [
	| weakAnnouncer |
	model addDependent: self.
	weakAnnouncer := model announcer weak.
	weakAnnouncer
		when: #files
		send: #updateFiles
		to: self.
	weakAnnouncer
		when: #rewrites
		send: #updateRewrites
		to: self
]

{ #category : #'preview-actions' }
SmaCCTransformationToolkit >> debugRewrite: aSmaCCRewrite forNode: aClass at: anInterval [
	| block |
	aSmaCCRewrite ifNil: [ ^ self ].
	block := [ :rewrite :node | 
	rewrite == aSmaCCRewrite
		and: [ node class == aClass and: [ node startPosition = anInterval first and: [ node stopPosition = anInterval last ] ] ] ].
	self debugUsingSeachBlock: block andTransformationBlock: block
]

{ #category : #'preview-actions' }
SmaCCTransformationToolkit >> debugUsingSeachBlock: searchBlock andTransformationBlock: transformationBlock [
	self
		openResultFor: self selectedFile
		before:
			[ SmaCCRewriteMatch haltBlock: searchBlock.
			SmaCCRewriteTransformation haltBlock: transformationBlock ]
		after:
			[ SmaCCRewriteMatch haltBlock: nil.
			SmaCCRewriteTransformation haltBlock: nil ]
]

{ #category : #layout }
SmaCCTransformationToolkit >> defaultLayout [
	^ (SpBoxLayout newTopToBottom)
		add: notebook;
		yourself
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> deleteRewrite [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent notNil
				ifTrue:
					[ rewrite parent removeTransformation: rewrite.
					self updateRewrites.
					self displayRewrite: self selectedRewrite ] ]
]

{ #category : #private }
SmaCCTransformationToolkit >> disconnectModel [
	model announcer unsubscribe: self.
	model removeDependent: self
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> displayPreviewResult: aResult [
	previewResult := aResult.
	self previewInputSourcePresenter removeAll.
	self previewOutputSourcePresenter removeAll.
	aResult filename ifNil: [ ^ self ].
	self
		addPreviewSource: previewResult inputSource
		named: self previewInputFilename
		to: self previewInputSourcePresenter
		updateOnSelection: #annotationsInOriginalRange:.
	self
		addPreviewSource: previewResult outputSource
		named: self previewOutputFilename
		to: self previewOutputSourcePresenter
		updateOnSelection: #annotationsInNewRange:.
	previewResult additionalFiles
		keysAndValuesDo:
			[ :key :value | 
			self
				addPreviewSource: value asString
				named: key asFileReference basename
				to: self previewOutputSourcePresenter ].
	self previewInputSourcePresenter selectPage: self previewInputSourcePresenter pages first.
	self previewOutputSourcePresenter selectPage: self previewOutputSourcePresenter pages first
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> displayRewrite: aRewrite [
	self transformationRulePresenter layout: aRewrite buildPresenterLayout
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> ensureRewriteFilename [
	| name |
	self model rewrites filename isNil
		ifTrue:
			[ name := self promptForSaveFile: 'Save Rewrites To' extensions: #('rw').
			name ifNil: [ ^ self ].
			self model rewrites filename: name ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> filesListButtons [
	^ (self newPresenter)
		layout:
				((SpBoxLayout newTopToBottom)
						spacing: 5;
						add:
								((self newButton)
										label: 'Preview';
										icon: (self iconNamed: #glamorousSpawn);
										help: 'Show preview for file';
										action: [ self preview ];
										yourself)
							expand: false;
						add:
								((self newButton)
										label: 'Run Selected';
										icon: (self iconNamed: #glamorousPlay);
										help: 'Run Selected';
										action: [ self run ];
										yourself)
							expand: false;
						add:
								((self newButton)
										label: 'Run All';
										icon: (self iconNamed: #glamorousGo);
										help: 'Run All';
										action: [ self runAll ];
										yourself)
							expand: false;
						add:
								((self newButton)
										label: 'Add Files';
										icon: (self iconNamed: #glamorousFolder);
										help: 'Add all files from directory';
										action: [ self addDirectory ];
										yourself)
							expand: false;
						add:
								((self newButton)
										label: 'Add File';
										icon: (self iconNamed: #glamorousAdd);
										help: 'Add file';
										action: [ self addFile ];
										yourself)
							expand: false;
						add:
								((self newButton)
										label: 'Remove Files';
										icon: (self iconNamed: #glamorousRemove);
										help: 'Remove selected files';
										action: [ self removeFiles ];
										yourself)
							expand: false;
						yourself);
		yourself
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> filesListPresenter [
	^ filesListPresenter
		ifNil:
			[ filesListPresenter := (self newFilteringList)
				itemFilter:
						[ :each :pattern | 
							pattern isEmpty
								or:
									[ (each
										findString: pattern
										startingAt: 1
										caseSensitive: false) > 0 ] ];
				yourself.
			filesListPresenter listPresenter beMultipleSelection.
			filesListPresenter ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> gotoPreviewTab [
	notebook selectPage: self previewTab
]

{ #category : #'preview-actions' }
SmaCCTransformationToolkit >> gotoRewrite: aRewrite [
	notebook selectPage: self rewriteTab.
	self selectAndScrollToRewrite: aRewrite
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> incrementPercent [
	progressCounts at: 1 put: progressCounts first + 1.
	progressDialog ifNotNil: [ progressDialog progressPercent: progressCounts first / progressCounts last * 100 ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> initialize [
	super initialize.
	self model: SmaCCTransformationToolkitModel new.
	results := OrderedCollection new.
	progressCounts := {0.
		0}
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> initializePresenters [
	notebook := self newNotebook.
	notebook
		addPage: self configurationPage;
		addPage: self transformationsPage;
		addPage: self previewPage
]

{ #category : #layout }
SmaCCTransformationToolkit >> initializeWindow: aWindowPresenter [
	super initializeWindow: aWindowPresenter.
	aWindowPresenter initialExtent: 800 @ 600
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> inputSourcePresenter [
	^ self previewInputSourcePresenter pages ifNotEmpty: [ :pages | pages first activePresenter ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> loadConfiguration [
	| file |
	file := self promptForFile: 'Load Configuration File' extensions: #('rwc').
	file ifNil: [ ^ self ].
	self loadConfiguration: file
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> loadConfiguration: aFileReference [
	self model: SmaCCTransformationToolkitModel new.
	self model loadFile: aFileReference.
	filename := aFileReference.
	results removeAll.
	self updateResults.
	self displayPreviewResult: SmaCCRewriteCompleteResult new
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> loadRewrites [
	| file |
	file := self promptForFile: 'Load Transformation File' extensions: #('rw').
	file ifNil: [ ^ self ].
	self model loadRewriteFile: file
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> localFilename: aString [
	| name |
	name := model createSubdirectories
		ifTrue:
			[ | commonParentDir |
			commonParentDir := model commonParentDirectory.
			(commonParentDir notEmpty and: [ commonParentDir last ~= FileSystem disk delimiter ])
				ifTrue: [ commonParentDir := commonParentDir , '/' ].
			aString asFileReference pathString allButFirst: commonParentDir size ]
		ifFalse: [ aString asFileReference basename ].
	^ name
]

{ #category : #accessing }
SmaCCTransformationToolkit >> model [
	^ model
]

{ #category : #accessing }
SmaCCTransformationToolkit >> model: aSmaCCTransformationToolkitModel [
	model notNil ifTrue: [ self disconnectModel ].
	model := aSmaCCTransformationToolkitModel.
	model notNil ifTrue: [ self connectModel ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteDown [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					| index |
					index := parent rewrites identityIndexOf: rewrite.
					index = parent rewrites size
						ifFalse:
							[ parent removeTransformation: rewrite.
							index < parent rewrites size
								ifTrue: [ parent addTransformation: rewrite before: (parent rewrites at: index + 1) ]
								ifFalse: [ parent addTransformation: rewrite ].
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteInto [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					| index newParent |
					index := parent rewrites identityIndexOf: rewrite.
					(index > 1 and: [ (newParent := parent rewrites at: index - 1) isComposite ])
						ifTrue:
							[ parent removeTransformation: rewrite.
							newParent addTransformation: rewrite.
							self updateAndSelectRewrite: rewrite ].
					(index < parent rewrites size and: [ (newParent := parent rewrites at: index + 1) isComposite ])
						ifTrue:
							[ parent removeTransformation: rewrite.
							newParent rewrites isEmpty
								ifTrue: [ newParent addTransformation: rewrite ]
								ifFalse: [ newParent addTransformation: rewrite before: newParent rewrites first ].
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteOut [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					parent parent
						ifNotNil:
							[ :grandparent | 
							parent removeTransformation: rewrite.
							grandparent addTransformation: rewrite before: parent.
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteToBottom [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					parent rewrites last == rewrite
						ifFalse:
							[ parent removeTransformation: rewrite.
							parent addTransformation: rewrite.
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteToTop [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					parent rewrites first == rewrite
						ifFalse:
							[ parent removeTransformation: rewrite.
							parent addTransformation: rewrite before: parent rewrites first.
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> moveRewriteUp [
	self selectedRewrite
		ifNotNil:
			[ :rewrite | 
			rewrite parent
				ifNotNil:
					[ :parent | 
					| index |
					index := parent rewrites identityIndexOf: rewrite.
					index > 1
						ifTrue:
							[ parent removeTransformation: rewrite.
							parent addTransformation: rewrite before: (parent rewrites at: index - 1).
							self updateAndSelectRewrite: rewrite ] ] ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> openResultFor: aFilename [
	self
		openResultFor: aFilename
		before: [  ]
		after: [  ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> openResultFor: aFilename before: beforeBlock after: afterBlock [
	aFilename ifNil: [ ^ self ].
	[ | result processor |
	result := SmaCCRewriteCompleteResult new.
	processor := SmaCCRewriteProcessor new.
	processor rules: self model rewrites.
	processor parserClass: self model inputParserClass.
	processor validationParserClass: self model validationParserClass.
	processor debug: true.
	beforeBlock value.
	[ [ processor processFile: aFilename usingResult: result ] on: Error , Halt do: [ :ex | ex pass ] ]
		ensure:
			[ afterBlock value.
			processor debug: false ].
	self displayPreviewResult: result.
	self gotoPreviewTab ] fork
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> outputSourcePresenter [
	^ self previewOutputSourcePresenter pages ifNotEmpty: [ :pages | pages first activePresenter ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> parserClasses [
	^ SmaCCParser allSubclasses asSortedCollection: [ :a :b | a name < b name ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> preview [
	self openResultFor: self selectedFile
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewFilesPresenter [
	^ (self newPresenter)
		layout:
				((SpPanedLayout newLeftToRight)
						add: self previewInputSourcePresenter;
						add: self previewOutputSourcePresenter;
						yourself);
		yourself
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> previewInputFilename [
	^ (previewResult notNil and: [ previewResult filename notNil ])
		ifTrue: [ previewResult filename asFileReference basename ]
		ifFalse: [ 'Input' ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewInputSourcePresenter [
	^ previewInputSourcePresenter ifNil: [ previewInputSourcePresenter := self newNotebook ]
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> previewOutputFilename [
	^ (previewResult notNil and: [ previewResult outputFilename notNil ])
		ifTrue: [ previewResult outputFilename asFileReference basename ]
		ifFalse: [ 'Output' ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewOutputSourcePresenter [
	^ previewOutputSourcePresenter ifNil: [ previewOutputSourcePresenter := self newNotebook ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewPage [
	^ SpNotebookPage title: 'Preview' provider: [ self previewPresenter ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewPresenter [
	^ (self newPresenter)
		layout:
				((SpPanedLayout newTopToBottom)
						positionOfSlider: 0.7;
						add: self previewFilesPresenter;
						add: self previewResultsListPresenter;
						yourself);
		yourself
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> previewResultsListPresenter [
	^ previewResultsListPresenter
		ifNil:
			[ previewResultsListPresenter := (self newTable)
				addColumn: (SpStringTableColumn title: 'Rewrite' evaluated: [ :each | each rewrite displayString ]);
				addColumn: (SpStringTableColumn title: 'Node' evaluated: [ :each | each nodeClass displayString ]);
				addColumn:
						(SpStringTableColumn
								title: 'Location'
								evaluated: [ :each | each nodeInterval first printString , '-' , each nodeInterval last printString ]);
				whenSelectedDo: [ :each | self updateEditorsForAnnotation: each ];
				contextMenu:
						((SpMenuPresenter new)
								addItem:
										[ :item | 
											item
												name: 'Goto rewrite';
												action: [ previewResultsListPresenter selectedItem ifNotNil: [ :sel | self gotoRewrite: sel rewrite ] ] ];
								addItem:
										[ :item | 
											item
												name: 'Debug';
												action:
														[ previewResultsListPresenter selectedItem
																ifNotNil:
																	[ :sel | 
																	self
																		debugRewrite: sel rewrite
																		forNode: sel nodeClass
																		at: sel nodeInterval ] ] ];
								yourself);
				yourself ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> previewTab [
	^ notebook pageAt: 3
]

{ #category : #private }
SmaCCTransformationToolkit >> promptForFile: aTitle extensions: anArray [
	^ UIManager default
		chooseExistingFileReference: aTitle
		extensions: anArray
		path: FileSystem workingDirectory
		preview: nil
]

{ #category : #private }
SmaCCTransformationToolkit >> promptForSaveFile: aTitle extensions: anArray [
	^ UIManager default
		chooseForSaveFileReference: aTitle
		extensions: anArray
		path: FileSystem workingDirectory
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> removeFiles [
	| files |
	files := self selectedFiles asSet.
	model files: (model files reject: [ :each | files includes: each ]).
	self updateFiles
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> resultsTablePresenter [
	^ resultsTablePresenter
		ifNil:
			[ resultsTablePresenter := (self newTable)
				addColumn: (SpStringTableColumn title: 'File' evaluated: [ :each | self localFilename: each filename ]);
				addColumn: (SpStringTableColumn title: 'Error' evaluated: [ :each | each errorString ifNil: [ '' ] ]);
				addColumn:
						(SpStringTableColumn
								title: 'Transformation'
								evaluated: [ :each | each transformation ifNil: [ '' ] ifNotNil: [ :t | t displayString ] ]);
				addColumn:
						(SpStringTableColumn
								title: 'Location'
								evaluated:
									[ :each | each startLine ifNil: [ '' ] ifNotNil: [ :line | line asString , ':' , (each startColumn ifNil: [ '' ]) asString ] ]);
				yourself ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> rewriteTab [
	^ notebook pageAt: 2
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> run [
	self runOn: (self selectedFiles collect: #asFileReference)
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> runAll [
	self runOn: (model files collect: #asFileReference)
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> runOn: aCollection [
	| process window |
	process := [ [ self model runOn: aCollection ]
		ensure:
			[ window ifNotNil: [ window close ].
			progressDialog := nil ] ] newProcess.
	results := results removeAllSuchThat: [ :each | aCollection includes: each filename asFileReference ].
	self updateResults.
	aCollection size > 1
		ifTrue:
			[ window := (progressDialog := SpProgressDialog new)
				title: 'SmaCC';
				label: 'Transforming ' , aCollection size printString , ' files';
				progressPercent: 0;
				openDialog.
			progressCounts := {0.
				aCollection size} ].
	process resume
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> saveConfiguration [
	| file |
	file := UIManager default
		chooseForSaveFileReference: 'Enter the file name'
		extensions: #('rwc')
		path: (filename ifNil: [ '' ] ifNotNil: [ filename pathString ]).
	file ifNil: [ ^ self ].
	self saveConfigurationTo: file asFileReference
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> saveConfigurationTo: aFileReference [
	self model saveTo: aFileReference.
	filename := aFileReference
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> saveRewrites [
	self ensureRewriteFilename.
	self model saveRewrites
]

{ #category : #private }
SmaCCTransformationToolkit >> selectAndScrollToRewrite: aRewrite [
	transformationsTreePresenter selectItem: aRewrite.
	self displayRewrite: aRewrite
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> selectInputParser [
	| class |
	class := UIManager default chooseDropList: 'Select input parser class' list: self parserClasses.
	class ifNil: [ ^ self ].
	self model inputParserClass: class
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> selectValidationParser [
	| class |
	class := UIManager default chooseDropList: 'Select validation parser class' list: self parserClasses.
	class ifNil: [ ^ self ].
	self model validationParserClass: class
]

{ #category : #private }
SmaCCTransformationToolkit >> selectedFile [
	^ filesListPresenter selectedItem
]

{ #category : #private }
SmaCCTransformationToolkit >> selectedFiles [
	^ filesListPresenter listPresenter selectedItems
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> selectedRewrite [
	transformationsTreePresenter selectedItem ifNotNil: [ :value | ^ value ].
	^ model rewrites
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> setCreateSubdirectories [
	self model createSubdirectories: (UIManager default questionWithoutCancel: 'Create subdirectories')
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> setOutputDirectory [
	| dir |
	dir := UIManager default
		chooseDirectory: 'Choose output directory'
		path: (self model outputDirectory ifNil: [ '' ]) asFileReference.
	dir ifNil: [ ^ self ].
	self model outputDirectory: dir pathString
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> setRunOnServer [
	self model runOnServer: (UIManager default questionWithoutCancel: 'Run on server')
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> setServer [
	| server |
	server := UIManager default
		textEntry: 'Enter server name:'
		title: 'Server'
		entryText: self model server.
	server ifNil: [ ^ self ].
	self model server: server
]

{ #category : #accessing }
SmaCCTransformationToolkit >> title [
	^ 'SmaCC Transformation Toolkit'
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> transformationButtons [
	^ (self newPresenter)
		layout:
				((SpBoxLayout newLeftToRight)
						vAlignCenter;
						spacing: 5;
						add:
								((self newLabel)
										label: 'Rewrites';
										yourself)
							expand: false;
						add:
								((self newMenuBar)
										help: 'Add';
										addGroup:
												[ :group | 
													group
														addItem:
															[ :addItem | 
															addItem
																name: 'Add';
																subMenu:
																		((self newMenu)
																				addItem:
																						[ :item | 
																							item
																								name: 'Rewrite';
																								action: [ self addRewrite: SmaCCRewrite newInstance ] ];
																				addItem:
																						[ :item | 
																							item
																								name: 'Method';
																								action: [ self addRewrite: SmaCCRewriteMethodDefinition new ] ];
																				addItem:
																						[ :item | 
																							item
																								name: 'Properties';
																								action: [ self addRewrite: SmaCCRewritePropertyDefinition new ] ];
																				addItem:
																						[ :item | 
																							item
																								name: 'File';
																								action: [ self addFileRule ] ]) ] ]);
						add:
								((self newButton)
										icon: (self iconNamed: #remove);
										help: 'Remove selected transformation';
										action: [ (self confirm: 'Do you want to delete the transformation?') ifTrue: [ self deleteRewrite ] ];
										yourself);
						add:
								((self newButton)
										icon: (self iconNamed: #open);
										help: 'Load transformations file';
										action: [ self loadRewrites ];
										yourself);
						add:
								((self newButton)
										icon: (self iconNamed: #smallSave);
										help: 'Save transformations file';
										action: [ self saveRewrites ];
										yourself);
						yourself);
		yourself
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> transformationRulePresenter [
	^ transformationRulePresenter
		ifNil:
			[ transformationRulePresenter := (self newPresenter)
				layout:
						((SpBoxLayout newTopToBottom)
								add:
										((self newPresenter)
												extent: 600 @ 600;
												yourself);
								yourself);
				yourself ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> transformationTreePresenter [
	transformationTreePresenter
		ifNil:
			[ transformationsTreePresenter := (self newTree)
				children: [ :rewrite | rewrite rewrites ];
				display: [ :rewrite | rewrite displayString ];
				whenSelectedItemChangedDo: [ :rewrite | rewrite ifNotNil: [ self displayRewrite: rewrite ] ];
				yourself.
			self updateRewrites ].
	^ transformationsTreePresenter
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> transformationsPage [
	^ SpNotebookPage title: 'Transformations' provider: [ self transformationsPresenter ]
]

{ #category : #'initialize-release' }
SmaCCTransformationToolkit >> transformationsPresenter [
	^ transformationsPresenter
		ifNil:
			[ transformationsPresenter := (self newPresenter)
				layout:
						((SpPanedLayout newLeftToRight)
								positionOfSlider: 0.3;
								add:
										(self newPresenter
												layout:
													((SpBoxLayout newTopToBottom)
														add: self transformationButtons expand: false;
														add: self transformationTreePresenter;
														yourself));
								add: self transformationRulePresenter;
								yourself);
				yourself ]
]

{ #category : #updating }
SmaCCTransformationToolkit >> update: anAspect with: anObject [
	anAspect = #resultAdded ifTrue: [ self addResult: anObject ].
	self updateMenuItems
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> updateAndSelectRewrite: rewrite [
	self updateRewrites.
	self selectAndScrollToRewrite: rewrite
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> updateEditorsForAnnotation: annotation [
	self inputSourcePresenter
		ifNotNil:
			[ :presenter | 
			| text |
			text := presenter adapter widget getText.
			text
				removeAttribute: TextEmphasis underlined
				from: 1
				to: text size.
			annotation
				ifNotNil:
					[ text
						addAttribute: TextEmphasis underlined
						from: annotation nodeInterval first
						to: annotation nodeInterval last.
					presenter
						scrollValue:
							0 @ (((text asString lineNumberCorrespondingToIndex: annotation nodeInterval first) + 1) / text asString lineCount) ].
			presenter adapter widget setText: text ].
	self outputSourcePresenter
		ifNotNil:
			[ :presenter | 
			| text |
			text := presenter adapter widget getText.
			text
				removeAttribute: TextEmphasis underlined
				from: 1
				to: text size.
			annotation
				ifNotNil:
					[ | firstIndex |
					firstIndex := SmallInteger maxVal.
					(previewResult transformedString annotationRangesFor: annotation)
						do:
							[ :each | 
							firstIndex := firstIndex min: each first.
							text
								addAttribute: TextEmphasis underlined
								from: each first
								to: each last ].
					firstIndex < SmallInteger maxVal
						ifTrue:
							[ presenter scrollValue: 0 @ (((text asString lineNumberCorrespondingToIndex: firstIndex) + 1) / text asString lineCount) ] ].
			presenter adapter widget setText: text ]
]

{ #category : #private }
SmaCCTransformationToolkit >> updateFiles [
	filesListPresenter items: model files
]

{ #category : #private }
SmaCCTransformationToolkit >> updateMenuItems [
	| items |
	optionsMenu ifNil: [ ^ self ].
	items := optionsMenu defaultGroup menuItems.
	items first name: 'Input Parser (' , (self model inputParserClass ifNil: [ '' ] ifNotNil: [ :cls | cls name ]) , ')...'.
	(items at: 2)
		name: 'Validation Parser (' , (self model validationParserClass ifNil: [ '' ] ifNotNil: [ :cls | cls name ]) , ')...'.
	(items at: 3)
		name:
			'Output Directory (' , (self model outputDirectory ifNil: [ '' ] ifNotNil: [ :dir | dir asFileReference pathString ])
				, ')...'.
	(items at: 4)
		name: 'Create Subdirectories (' , (self model createSubdirectories ifTrue: [ 'yes' ] ifFalse: [ 'no' ]) , ')...'.
	(items at: 5) name: 'Server (' , (self model server ifNil: [ '' ]) , ')...'.
	(items at: 6) name: 'Run on Server (' , (self model runOnServer ifTrue: [ 'yes' ] ifFalse: [ 'no' ]) , ')...'
]

{ #category : #'ui-preview' }
SmaCCTransformationToolkit >> updatePreviewAnnotations: aCollection [
	previewResultsListPresenter ifNotNil: [ previewResultsListPresenter items: aCollection ]
]

{ #category : #'configuration-actions' }
SmaCCTransformationToolkit >> updateResults [
	self resultsTablePresenter items: results
]

{ #category : #'transformation-actions' }
SmaCCTransformationToolkit >> updateRewrites [
	transformationsTreePresenter ifNil: [ ^ self ].
	transformationsTreePresenter roots: {model rewrites}.
	transformationsTreePresenter expandAll.
	self selectedRewrite ifNotNil: [ :value | self displayRewrite: value ]
]
