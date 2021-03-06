Class {
	#name : #DelphiProgramFileNode,
	#superclass : #DelphiCompilationFileNode,
	#instVars : [
		'programToken',
		'programName',
		'modifier',
		'_deprecated',
		'semicolons',
		'usesToken',
		'moduleNames',
		'inTokens',
		'filenames',
		'commas',
		'main'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiProgramFileNode >> _deprecated [
	^ _deprecated
]

{ #category : #generated }
DelphiProgramFileNode >> _deprecated: aDelphiDeprecatedModifierNode [
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: nil ].
	_deprecated := aDelphiDeprecatedModifierNode.
	self _deprecated notNil
		ifTrue: [ self _deprecated parent: self ]
]

{ #category : #generated }
DelphiProgramFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgramFile: self
]

{ #category : #generated }
DelphiProgramFileNode >> commas [
	^ commas
]

{ #category : #generated }
DelphiProgramFileNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
DelphiProgramFileNode >> compositeNodeVariables [
	^ #(#moduleNames)
]

{ #category : #generated }
DelphiProgramFileNode >> compositeTokenVariables [
	^ #(#inTokens #filenames)
]

{ #category : #generated }
DelphiProgramFileNode >> filenames [
	^ filenames
]

{ #category : #generated }
DelphiProgramFileNode >> filenames: anOrderedCollection [
	filenames := anOrderedCollection
]

{ #category : #generated }
DelphiProgramFileNode >> ignoredCompositeTokenVariables [
	^ #(#semicolons #commas)
]

{ #category : #generated }
DelphiProgramFileNode >> inTokens [
	^ inTokens
]

{ #category : #generated }
DelphiProgramFileNode >> inTokens: anOrderedCollection [
	inTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
DelphiProgramFileNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	moduleNames := OrderedCollection new: 2.
	inTokens := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiProgramFileNode >> main [
	^ main
]

{ #category : #generated }
DelphiProgramFileNode >> main: aDelphiMainMethodDefinitionNode [
	self main notNil
		ifTrue: [ self main parent: nil ].
	main := aDelphiMainMethodDefinitionNode.
	self main notNil
		ifTrue: [ self main parent: self ]
]

{ #category : #generated }
DelphiProgramFileNode >> modifier [
	^ modifier
]

{ #category : #generated }
DelphiProgramFileNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
DelphiProgramFileNode >> moduleNames [
	^ moduleNames
]

{ #category : #generated }
DelphiProgramFileNode >> moduleNames: anOrderedCollection [
	self setParents: self moduleNames to: nil.
	moduleNames := anOrderedCollection.
	self setParents: self moduleNames to: self
]

{ #category : #generated }
DelphiProgramFileNode >> nodeVariables [
	^ #(#programName #_deprecated #main)
]

{ #category : #generated }
DelphiProgramFileNode >> programName [
	^ programName
]

{ #category : #generated }
DelphiProgramFileNode >> programName: aDelphiModuleNameNode [
	self programName notNil
		ifTrue: [ self programName parent: nil ].
	programName := aDelphiModuleNameNode.
	self programName notNil
		ifTrue: [ self programName parent: self ]
]

{ #category : #generated }
DelphiProgramFileNode >> programToken [
	^ programToken
]

{ #category : #generated }
DelphiProgramFileNode >> programToken: aSmaCCToken [
	programToken := aSmaCCToken
]

{ #category : #generated }
DelphiProgramFileNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
DelphiProgramFileNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
DelphiProgramFileNode >> tokenVariables [
	^ #(#programToken #modifier #usesToken #period)
]

{ #category : #generated }
DelphiProgramFileNode >> usesToken [
	^ usesToken
]

{ #category : #generated }
DelphiProgramFileNode >> usesToken: aSmaCCToken [
	usesToken := aSmaCCToken
]
