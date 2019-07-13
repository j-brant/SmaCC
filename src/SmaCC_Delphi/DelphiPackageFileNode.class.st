Class {
	#name : #DelphiPackageFileNode,
	#superclass : #DelphiCompilationFileNode,
	#instVars : [
		'packageToken',
		'packageName',
		'semicolons',
		'requiresToken',
		'requiresNames',
		'commas',
		'containsToken',
		'moduleNames',
		'inTokens',
		'filenames',
		'endToken'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiPackageFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPackageFile: self
]

{ #category : #generated }
DelphiPackageFileNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiPackageFileNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiPackageFileNode >> compositeNodeVariables [
	^ #(#requiresNames #moduleNames)
]

{ #category : #generated }
DelphiPackageFileNode >> compositeTokenVariables [
	^ #(#inTokens #filenames)
]

{ #category : #generated }
DelphiPackageFileNode >> containsToken [
	^ containsToken
]

{ #category : #generated }
DelphiPackageFileNode >> containsToken: aSmaCCToken [
	containsToken := aSmaCCToken
]

{ #category : #generated }
DelphiPackageFileNode >> endToken [
	^ endToken
]

{ #category : #generated }
DelphiPackageFileNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
DelphiPackageFileNode >> filenames [
	^ filenames
]

{ #category : #generated }
DelphiPackageFileNode >> filenames: anOrderedCollection [
	filenames := anOrderedCollection
]

{ #category : #generated }
DelphiPackageFileNode >> ignoredCompositeTokenVariables [
	^ #(#semicolons #commas)
]

{ #category : #generated }
DelphiPackageFileNode >> inTokens [
	^ inTokens
]

{ #category : #generated }
DelphiPackageFileNode >> inTokens: anOrderedCollection [
	inTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
DelphiPackageFileNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	requiresNames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	moduleNames := OrderedCollection new: 2.
	inTokens := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiPackageFileNode >> moduleNames [
	^ moduleNames
]

{ #category : #generated }
DelphiPackageFileNode >> moduleNames: anOrderedCollection [
	self setParents: self moduleNames to: nil.
	moduleNames := anOrderedCollection.
	self setParents: self moduleNames to: self
]

{ #category : #generated }
DelphiPackageFileNode >> nodeVariables [
	^ #(#packageName)
]

{ #category : #generated }
DelphiPackageFileNode >> packageName [
	^ packageName
]

{ #category : #generated }
DelphiPackageFileNode >> packageName: aDelphiModuleNameNode [
	self packageName notNil
		ifTrue: [ self packageName parent: nil ].
	packageName := aDelphiModuleNameNode.
	self packageName notNil
		ifTrue: [ self packageName parent: self ]
]

{ #category : #generated }
DelphiPackageFileNode >> packageToken [
	^ packageToken
]

{ #category : #generated }
DelphiPackageFileNode >> packageToken: aSmaCCToken [
	packageToken := aSmaCCToken
]

{ #category : #generated }
DelphiPackageFileNode >> requiresNames [
	^ requiresNames
]

{ #category : #generated }
DelphiPackageFileNode >> requiresNames: anOrderedCollection [
	self setParents: self requiresNames to: nil.
	requiresNames := anOrderedCollection.
	self setParents: self requiresNames to: self
]

{ #category : #generated }
DelphiPackageFileNode >> requiresToken [
	^ requiresToken
]

{ #category : #generated }
DelphiPackageFileNode >> requiresToken: aSmaCCToken [
	requiresToken := aSmaCCToken
]

{ #category : #generated }
DelphiPackageFileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
DelphiPackageFileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
DelphiPackageFileNode >> tokenVariables [
	^ #(#packageToken #requiresToken #containsToken #endToken #period)
]
