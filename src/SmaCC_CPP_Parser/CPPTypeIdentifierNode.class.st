Class {
	#name : #CPPTypeIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'namespaceSpecifiers',
		'templateTokens',
		'templates',
		'names',
		'autoTokens',
		'decltypeTokens',
		'leftParens',
		'expressions',
		'rightParens',
		'classTokens',
		'structTokens',
		'unionTokens',
		'specifiers',
		'templateIdentifiers',
		'enumTokens',
		'typenameTokens',
		'constTokens',
		'volatileTokens',
		'colonColons',
		'types',
		'ltTokens',
		'gtTokens',
		'arguments',
		'ellipsises',
		'commas',
		'virtualTokens',
		'privateTokens',
		'protectedTokens',
		'publicTokens',
		'finalTokens',
		'leftBraces',
		'rightBraces',
		'semicolons',
		'equals',
		'values',
		'leftBrackets',
		'rightBrackets',
		'exceptionSpecifications',
		'equalTokens',
		'zeros',
		'virtualSpecifierTokens',
		'statements',
		'defaultTokens',
		'deleteTokens',
		'usingTokens',
		'operatorTokens',
		'strings',
		'static_assertTokens',
		'externTokens',
		'declarations',
		'declarators',
		'identifiers',
		'colons',
		'tryTokens',
		'asmTokens',
		'namespaceTokens',
		'inlineTokens',
		'baseTypes',
		'namespaces',
		'definitions',
		'initializers',
		'handlers'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPTypeIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeIdentifier: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPTypeIdentifierNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> asmTokens [
	^ asmTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> asmTokens: anOrderedCollection [
	asmTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> autoTokens [
	^ autoTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> autoTokens: anOrderedCollection [
	autoTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> baseTypes [
	^ baseTypes
]

{ #category : #generated }
CPPTypeIdentifierNode >> baseTypes: anOrderedCollection [
	baseTypes := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> classTokens [
	^ classTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> classTokens: anOrderedCollection [
	classTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPTypeIdentifierNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> colons [
	^ colons
]

{ #category : #generated }
CPPTypeIdentifierNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPTypeIdentifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> compositeNodeVariables [
	^ #(#namespaceSpecifiers #templates #expressions #templateIdentifiers #arguments #values #exceptionSpecifications #statements #identifiers #namespaces #definitions #initializers #handlers)
]

{ #category : #generated }
CPPTypeIdentifierNode >> compositeTokenVariables [
	^ #(#templateTokens #autoTokens #decltypeTokens #leftParens #rightParens #classTokens #structTokens #unionTokens #enumTokens #typenameTokens #constTokens #volatileTokens #colonColons #ltTokens #gtTokens #ellipsises #commas #virtualTokens #privateTokens #protectedTokens #publicTokens #finalTokens #leftBraces #rightBraces #semicolons #equals #leftBrackets #rightBrackets #equalTokens #zeros #virtualSpecifierTokens #defaultTokens #deleteTokens #usingTokens #operatorTokens #strings #static_assertTokens #externTokens #colons #tryTokens #asmTokens #namespaceTokens #inlineTokens)
]

{ #category : #generated }
CPPTypeIdentifierNode >> constTokens [
	^ constTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> constTokens: anOrderedCollection [
	constTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarations: anOrderedCollection [
	declarations := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPTypeIdentifierNode >> declarators: anOrderedCollection [
	declarators := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> decltypeTokens [
	^ decltypeTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> decltypeTokens: anOrderedCollection [
	decltypeTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> defaultTokens [
	^ defaultTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> defaultTokens: anOrderedCollection [
	defaultTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> definitions [
	^ definitions
]

{ #category : #generated }
CPPTypeIdentifierNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> deleteTokens [
	^ deleteTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> deleteTokens: anOrderedCollection [
	deleteTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPTypeIdentifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> enumTokens [
	^ enumTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> enumTokens: anOrderedCollection [
	enumTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> equalTokens [
	^ equalTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> equalTokens: anOrderedCollection [
	equalTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> equals [
	^ equals
]

{ #category : #generated }
CPPTypeIdentifierNode >> equals: anOrderedCollection [
	equals := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPTypeIdentifierNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPTypeIdentifierNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> externTokens [
	^ externTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> externTokens: anOrderedCollection [
	externTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> finalTokens [
	^ finalTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> finalTokens: anOrderedCollection [
	finalTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> gtTokens [
	^ gtTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> gtTokens: anOrderedCollection [
	gtTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> handlers [
	^ handlers
]

{ #category : #generated }
CPPTypeIdentifierNode >> handlers: anOrderedCollection [
	self setParents: self handlers to: nil.
	handlers := anOrderedCollection.
	self setParents: self handlers to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
CPPTypeIdentifierNode >> identifiers: anOrderedCollection [
	self setParents: self identifiers to: nil.
	identifiers := anOrderedCollection.
	self setParents: self identifiers to: self
]

{ #category : #'generated-initialize-release' }
CPPTypeIdentifierNode >> initialize [
	super initialize.
	namespaceSpecifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
	templates := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	autoTokens := OrderedCollection new: 2.
	decltypeTokens := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	classTokens := OrderedCollection new: 2.
	structTokens := OrderedCollection new: 2.
	unionTokens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	enumTokens := OrderedCollection new: 2.
	typenameTokens := OrderedCollection new: 2.
	constTokens := OrderedCollection new: 2.
	volatileTokens := OrderedCollection new: 2.
	colonColons := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	ltTokens := OrderedCollection new: 2.
	gtTokens := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	virtualTokens := OrderedCollection new: 2.
	privateTokens := OrderedCollection new: 2.
	protectedTokens := OrderedCollection new: 2.
	publicTokens := OrderedCollection new: 2.
	finalTokens := OrderedCollection new: 2.
	leftBraces := OrderedCollection new: 2.
	rightBraces := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	equals := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	equalTokens := OrderedCollection new: 2.
	zeros := OrderedCollection new: 2.
	virtualSpecifierTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	defaultTokens := OrderedCollection new: 2.
	deleteTokens := OrderedCollection new: 2.
	usingTokens := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
	strings := OrderedCollection new: 2.
	static_assertTokens := OrderedCollection new: 2.
	externTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	declarators := OrderedCollection new: 2.
	identifiers := OrderedCollection new: 2.
	colons := OrderedCollection new: 2.
	tryTokens := OrderedCollection new: 2.
	asmTokens := OrderedCollection new: 2.
	namespaceTokens := OrderedCollection new: 2.
	inlineTokens := OrderedCollection new: 2.
	baseTypes := OrderedCollection new: 2.
	namespaces := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
	initializers := OrderedCollection new: 2.
	handlers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPTypeIdentifierNode >> initializers [
	^ initializers
]

{ #category : #generated }
CPPTypeIdentifierNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> inlineTokens [
	^ inlineTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> inlineTokens: anOrderedCollection [
	inlineTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftBraces [
	^ leftBraces
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftBraces: anOrderedCollection [
	leftBraces := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPTypeIdentifierNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> ltTokens [
	^ ltTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> ltTokens: anOrderedCollection [
	ltTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> names [
	^ names
]

{ #category : #generated }
CPPTypeIdentifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaceSpecifiers [
	^ namespaceSpecifiers
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaceSpecifiers: anOrderedCollection [
	self setParents: self namespaceSpecifiers to: nil.
	namespaceSpecifiers := anOrderedCollection.
	self setParents: self namespaceSpecifiers to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaceTokens [
	^ namespaceTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaceTokens: anOrderedCollection [
	namespaceTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaces [
	^ namespaces
]

{ #category : #generated }
CPPTypeIdentifierNode >> namespaces: anOrderedCollection [
	self setParents: self namespaces to: nil.
	namespaces := anOrderedCollection.
	self setParents: self namespaces to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> otherVariables [
	^ #(#names #specifiers #types #declarations #declarators #baseTypes)
]

{ #category : #generated }
CPPTypeIdentifierNode >> privateTokens [
	^ privateTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> privateTokens: anOrderedCollection [
	privateTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> protectedTokens [
	^ protectedTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> protectedTokens: anOrderedCollection [
	protectedTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> publicTokens [
	^ publicTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> publicTokens: anOrderedCollection [
	publicTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightBraces [
	^ rightBraces
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightBraces: anOrderedCollection [
	rightBraces := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPTypeIdentifierNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
CPPTypeIdentifierNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPTypeIdentifierNode >> specifiers: anOrderedCollection [
	specifiers := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> statements [
	^ statements
]

{ #category : #generated }
CPPTypeIdentifierNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> static_assertTokens [
	^ static_assertTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> static_assertTokens: anOrderedCollection [
	static_assertTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> strings [
	^ strings
]

{ #category : #generated }
CPPTypeIdentifierNode >> strings: anOrderedCollection [
	strings := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> structTokens [
	^ structTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> structTokens: anOrderedCollection [
	structTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPTypeIdentifierNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> templates [
	^ templates
]

{ #category : #generated }
CPPTypeIdentifierNode >> templates: anOrderedCollection [
	self setParents: self templates to: nil.
	templates := anOrderedCollection.
	self setParents: self templates to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> tryTokens [
	^ tryTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> tryTokens: anOrderedCollection [
	tryTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> typenameTokens [
	^ typenameTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> typenameTokens: anOrderedCollection [
	typenameTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> types [
	^ types
]

{ #category : #generated }
CPPTypeIdentifierNode >> types: anOrderedCollection [
	types := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> unionTokens [
	^ unionTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> unionTokens: anOrderedCollection [
	unionTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> usingTokens [
	^ usingTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> usingTokens: anOrderedCollection [
	usingTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> values [
	^ values
]

{ #category : #generated }
CPPTypeIdentifierNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
CPPTypeIdentifierNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> virtualTokens [
	^ virtualTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> virtualTokens: anOrderedCollection [
	virtualTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> volatileTokens [
	^ volatileTokens
]

{ #category : #generated }
CPPTypeIdentifierNode >> volatileTokens: anOrderedCollection [
	volatileTokens := anOrderedCollection
]

{ #category : #generated }
CPPTypeIdentifierNode >> zeros [
	^ zeros
]

{ #category : #generated }
CPPTypeIdentifierNode >> zeros: anOrderedCollection [
	zeros := anOrderedCollection
]
