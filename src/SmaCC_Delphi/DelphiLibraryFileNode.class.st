Class {
	#name : #DelphiLibraryFileNode,
	#superclass : #DelphiCompilationFileNode,
	#instVars : [
		'libraryToken',
		'libraryName',
		'modifier',
		'_deprecated',
		'semicolons',
		'usesToken',
		'moduleNames',
		'inTokens',
		'filenames',
		'commas',
		'exports',
		'main'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiLibraryFileNode >> _deprecated [
	^ _deprecated
]

{ #category : #generated }
DelphiLibraryFileNode >> _deprecated: aDelphiDeprecatedModifierNode [
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: nil ].
	_deprecated := aDelphiDeprecatedModifierNode.
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: self ]
]

{ #category : #generated }
DelphiLibraryFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryFile: self
]

{ #category : #generated }
DelphiLibraryFileNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiLibraryFileNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiLibraryFileNode >> compositeNodeVariables [
	^ #(#moduleNames #exports)
]

{ #category : #generated }
DelphiLibraryFileNode >> compositeTokenVariables [
	^ #(#inTokens #filenames)
]

{ #category : #generated }
DelphiLibraryFileNode >> exports [
	^ exports
]

{ #category : #generated }
DelphiLibraryFileNode >> exports: anOrderedCollection [
	self setParents: self exports to: nil.
	exports := anOrderedCollection.
	self setParents: self exports to: self
]

{ #category : #generated }
DelphiLibraryFileNode >> filenames [
	^ filenames
]

{ #category : #generated }
DelphiLibraryFileNode >> filenames: anOrderedCollection [
	filenames := anOrderedCollection
]

{ #category : #generated }
DelphiLibraryFileNode >> ignoredCompositeTokenVariables [
	^ #(#semicolons #commas)
]

{ #category : #generated }
DelphiLibraryFileNode >> inTokens [
	^ inTokens
]

{ #category : #generated }
DelphiLibraryFileNode >> inTokens: anOrderedCollection [
	inTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
DelphiLibraryFileNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	moduleNames := OrderedCollection new: 2.
	inTokens := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	exports := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiLibraryFileNode >> libraryName [
	^ libraryName
]

{ #category : #generated }
DelphiLibraryFileNode >> libraryName: aDelphiModuleNameNode [
	self libraryName notNil
		ifTrue: [ self libraryName parent: nil ].
	libraryName := aDelphiModuleNameNode.
	self libraryName notNil
		ifTrue: [ self libraryName parent: self ]
]

{ #category : #generated }
DelphiLibraryFileNode >> libraryToken [
	^ libraryToken
]

{ #category : #generated }
DelphiLibraryFileNode >> libraryToken: aSmaCCToken [
	libraryToken := aSmaCCToken
]

{ #category : #generated }
DelphiLibraryFileNode >> main [
	^ main
]

{ #category : #generated }
DelphiLibraryFileNode >> main: aDelphiMainMethodDefinitionNode [
	self main notNil
		ifTrue: [ self main parent: nil ].
	main := aDelphiMainMethodDefinitionNode.
	self main notNil
		ifTrue: [ self main parent: self ]
]

{ #category : #generated }
DelphiLibraryFileNode >> modifier [
	^ modifier
]

{ #category : #generated }
DelphiLibraryFileNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
DelphiLibraryFileNode >> moduleNames [
	^ moduleNames
]

{ #category : #generated }
DelphiLibraryFileNode >> moduleNames: anOrderedCollection [
	self setParents: self moduleNames to: nil.
	moduleNames := anOrderedCollection.
	self setParents: self moduleNames to: self
]

{ #category : #generated }
DelphiLibraryFileNode >> nodeVariables [
	^ #(#libraryName #_deprecated #main)
]

{ #category : #generated }
DelphiLibraryFileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
DelphiLibraryFileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
DelphiLibraryFileNode >> tokenVariables [
	^ #(#libraryToken #modifier #usesToken #period)
]

{ #category : #generated }
DelphiLibraryFileNode >> usesToken [
	^ usesToken
]

{ #category : #generated }
DelphiLibraryFileNode >> usesToken: aSmaCCToken [
	usesToken := aSmaCCToken
]
