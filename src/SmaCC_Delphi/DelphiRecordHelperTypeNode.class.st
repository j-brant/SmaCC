Class {
	#name : #DelphiRecordHelperTypeNode,
	#superclass : #DelphiTypeNode,
	#instVars : [
		'recordToken',
		'helperToken',
		'forToken',
		'record',
		'sections',
		'caseToken',
		'value',
		'colon',
		'type',
		'ofToken',
		'variantTypes',
		'semicolons',
		'endToken'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiRecordHelperTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordHelperType: self
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> compositeNodeVariables [
	^ #(#sections #variantTypes)
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> endToken [
	^ endToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> forToken [
	^ forToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> helperToken [
	^ helperToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> helperToken: aSmaCCToken [
	helperToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> ignoredCompositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #'generated-initialize-release' }
DelphiRecordHelperTypeNode >> initialize [
	super initialize.
	sections := OrderedCollection new: 2.
	variantTypes := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> nodeVariables [
	^ #(#record #type)
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> ofToken [
	^ ofToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> ofToken: aSmaCCToken [
	ofToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> record [
	^ record
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> record: aDelphiQualifiedNameNode [
	self record notNil
		ifTrue: [ self record parent: nil ].
	record := aDelphiQualifiedNameNode.
	self record notNil
		ifTrue: [ self record parent: self ]
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> recordToken [
	^ recordToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> recordToken: aSmaCCToken [
	recordToken := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> sections [
	^ sections
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> sections: anOrderedCollection [
	self setParents: self sections to: nil.
	sections := anOrderedCollection.
	self setParents: self sections to: self
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> tokenVariables [
	^ #(#recordToken #helperToken #forToken #caseToken #value #colon #ofToken #endToken)
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> type [
	^ type
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> type: aDelphiProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aDelphiProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> value [
	^ value
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> value: aSmaCCToken [
	value := aSmaCCToken
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> variantTypes [
	^ variantTypes
]

{ #category : #generated }
DelphiRecordHelperTypeNode >> variantTypes: anOrderedCollection [
	self setParents: self variantTypes to: nil.
	variantTypes := anOrderedCollection.
	self setParents: self variantTypes to: self
]
