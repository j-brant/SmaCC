Class {
	#name : #SmaCCTransformationToolkit2,
	#superclass : #SpPresenterWithModel,
	#instVars : [
		'filename',
		'resultsList',
		'previewResult',
		'notebook',
		'fileList'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #specs }
SmaCCTransformationToolkit2 class >> defaultSpec [
	^ SpBoxLayout newTopToBottom
		add: #notebook;
		yourself
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> addDirectory [

	| dir names match stream todo |
	dir := UITheme builder
		       chooseDirectory: 'Add all files in directory'
		       path: nil.
	dir ifNil: [ ^ self ].
	names := Set new.
	stream := WriteStream on: String new.
	(self model inputParserClass ifNil: [ SmaCCParser ]) fileExtensions
		do: [ :each | 
			stream
				nextPut: $*;
				nextPutAll: each ]
		separatedBy: [ stream nextPut: $; ].
	match := stream contents.
	todo := OrderedCollection with: dir.
	[ todo notEmpty ] whileTrue: [ 
		((dir := todo removeFirst) filesMatching: match) do: [ :each | 
			names add: each fullName ].
		todo addAll: dir directories ].
	self addFiles: names
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> addFiles [

	| name |
	name := self
		        promptForFile: 'Add file'
		        extensions:
			        ((self model inputParserClass ifNil: [ SmaCCParser ])
				         fileExtensions collect: [ :each | 
				         (each notEmpty and: [each first = $.])
					         ifTrue: [ each copyFrom: 2 to: each size ]
					         ifFalse: [ each ] ]).
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
	fileList := self newList
		            beMultipleSelection;
		            yourself.
	buttons := presenter newButtonBar.
	topPane := SpBoxLayout newLeftToRight
		           add: 'Files:' expand: false;
		           add: fileList yourself;
		           add: buttons expand: false;
		           yourself.

	buttons layout: (SpBoxLayout newTopToBottom
			 add: (self newButton
					  label: 'Add Dir';
					  action: [ self addDirectory ];
					  yourself)
			 expand: false;
			 add: (self newButton
					  label: 'Add';
					  action: [ self addFiles ];
					  yourself)
			 expand: false;
			 add: (self newButton
					  label: 'Remove';
					  action: [ self removeFiles ])
			 expand: false;
			 add: (self newButton
					  label: 'Preview';
					  action: [ self openResults ])
			 expand: false;
			 add: (self newButton
					  label: 'Run';
					  action: [ self run ])
			 expand: false;
			 yourself).
	table := self newTable.
	table
		addColumn: (SpStringTableColumn
				 title: 'File'
				 evaluated: [ :each | each filename ]);
		addColumn: (SpStringTableColumn
				 title: 'Error'
				 evaluated: [ :each | each errorString ifNil: [ '' ] ]);
		addColumn:
			(SpStringTableColumn title: 'Transformation' evaluated: [ :each | 
					 each transformation
						 ifNil: [ '' ]
						 ifNotNil: [ :t | t displayString ] ]);
		addColumn: (SpStringTableColumn
				 title: 'Line'
				 evaluated: [ :each | each startLine ifNil: [ '' ] ]);
		addColumn: (SpStringTableColumn
				 title: 'Column'
				 evaluated: [ :each | each startColumn ifNil: [ '' ] ]).
	presenter layout: (SpBoxLayout newTopToBottom
			 add: topPane;
			 add: table;
			 yourself).

	^ presenter
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> configurationPage [

	^ SpNotebookPage
		  title: 'Configuration'
		  provider: [ self buildConfigurationTab ]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initialize [
	self model: SmaCCTransformationToolkitModel new.
	super initialize

]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializePresenters [
	notebook := self newNotebook.

	notebook
		addPage: self configurationPage;
		addPage: self transformationPage;
		addPage: self previewPage
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> initializeWindow: aSpWindowPresenter [

	super initializeWindow: aSpWindowPresenter.

	aSpWindowPresenter
		title: 'SmaCC Transformation Toolkit'
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> modelChanged [
	fileList ifNotNil: [fileList items: self model files]
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> previewPage [
	^SpNotebookPage
		 title: 'Preview'
		 provider: [ self buildConfigurationTab ]
]

{ #category : #private }
SmaCCTransformationToolkit2 >> promptForFile: aTitle extensions: anArray [
	^ UIManager default
		chooseExistingFileReference: aTitle
		extensions: anArray
		path: FileSystem workingDirectory
]

{ #category : #actions }
SmaCCTransformationToolkit2 >> removeFiles [
	| files anArray |
	anArray := fileList selectedItems.
	anArray isEmpty
		ifTrue: [ ^ self ].
	(self confirm: 'Do you want to remove the files?')
		ifFalse: [ ^ self ].
	files := Set withAll: self model files.
	files removeAllFoundIn: anArray.
	self model files: files asSortedCollection.
	self modelChanged 
]

{ #category : #initialization }
SmaCCTransformationToolkit2 >> transformationPage [
	^SpNotebookPage
		 title: 'Transformations'
		 provider: [ 
			 (self class environment at: #MessageBrowser) new
				 messages: Object methods;
				 yourself]
]
