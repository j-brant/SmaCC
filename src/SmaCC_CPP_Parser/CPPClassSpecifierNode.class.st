Class {
	#name : #CPPClassSpecifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'classTokens',
		'structTokens',
		'unionTokens',
		'colonColons',
		'types',
		'names',
		'templateIdentifiers',
		'templateTokens',
		'ltTokens',
		'gtTokens',
		'arguments',
		'ellipsises',
		'commas',
		'specifiers',
		'virtualTokens',
		'privateTokens',
		'protectedTokens',
		'publicTokens',
		'finalTokens',
		'leftBraces',
		'rightBraces',
		'semicolons',
		'leftBrackets',
		'rightBrackets',
		'leftParens',
		'rightParens',
		'identifiers',
		'exceptionSpecifications',
		'constTokens',
		'volatileTokens',
		'namespaceSpecifiers',
		'templates',
		'autoTokens',
		'enumTokens',
		'typenameTokens',
		'equalTokens',
		'zeros',
		'virtualSpecifierTokens',
		'equals',
		'values',
		'decltypeTokens',
		'expressions',
		'statements',
		'colons',
		'initializers',
		'tryTokens',
		'handlers',
		'defaultTokens',
		'deleteTokens',
		'usingTokens',
		'operatorTokens',
		'strings',
		'static_assertTokens',
		'declarators',
		'asmTokens',
		'namespaceTokens',
		'baseTypes',
		'externTokens',
		'declarations',
		'inlineTokens',
		'namespaces',
		'definitions'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPClassSpecifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassSpecifier: self
]

{ #category : #generated }
CPPClassSpecifierNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPClassSpecifierNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> asmTokens [
	^ asmTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> asmTokens: anOrderedCollection [
	asmTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> autoTokens [
	^ autoTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> autoTokens: anOrderedCollection [
	autoTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> baseTypes [
	^ baseTypes
]

{ #category : #generated }
CPPClassSpecifierNode >> baseTypes: anOrderedCollection [
	baseTypes := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> classTokens [
	^ classTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> classTokens: anOrderedCollection [
	classTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPClassSpecifierNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> colons [
	^ colons
]

{ #category : #generated }
CPPClassSpecifierNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> commas [
	^ commas
]

{ #category : #generated }
CPPClassSpecifierNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> compositeNodeVariables [
	^ #(#templateIdentifiers #arguments #identifiers #exceptionSpecifications #namespaceSpecifiers #templates #values #expressions #statements #initializers #handlers #namespaces #definitions)
]

{ #category : #generated }
CPPClassSpecifierNode >> compositeTokenVariables [
	^ #(#classTokens #structTokens #unionTokens #colonColons #templateTokens #ltTokens #gtTokens #ellipsises #commas #virtualTokens #privateTokens #protectedTokens #publicTokens #finalTokens #leftBraces #rightBraces #semicolons #leftBrackets #rightBrackets #leftParens #rightParens #constTokens #volatileTokens #autoTokens #enumTokens #typenameTokens #equalTokens #zeros #virtualSpecifierTokens #equals #decltypeTokens #colons #tryTokens #defaultTokens #deleteTokens #usingTokens #operatorTokens #strings #static_assertTokens #asmTokens #namespaceTokens #externTokens #inlineTokens)
]

{ #category : #generated }
CPPClassSpecifierNode >> constTokens [
	^ constTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> constTokens: anOrderedCollection [
	constTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPClassSpecifierNode >> declarations: anOrderedCollection [
	declarations := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPClassSpecifierNode >> declarators: anOrderedCollection [
	declarators := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> decltypeTokens [
	^ decltypeTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> decltypeTokens: anOrderedCollection [
	decltypeTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> defaultTokens [
	^ defaultTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> defaultTokens: anOrderedCollection [
	defaultTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> definitions [
	^ definitions
]

{ #category : #generated }
CPPClassSpecifierNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> deleteTokens [
	^ deleteTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> deleteTokens: anOrderedCollection [
	deleteTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPClassSpecifierNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> enumTokens [
	^ enumTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> enumTokens: anOrderedCollection [
	enumTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> equalTokens [
	^ equalTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> equalTokens: anOrderedCollection [
	equalTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> equals [
	^ equals
]

{ #category : #generated }
CPPClassSpecifierNode >> equals: anOrderedCollection [
	equals := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPClassSpecifierNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPClassSpecifierNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> externTokens [
	^ externTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> externTokens: anOrderedCollection [
	externTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> finalTokens [
	^ finalTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> finalTokens: anOrderedCollection [
	finalTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> gtTokens [
	^ gtTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> gtTokens: anOrderedCollection [
	gtTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> handlers [
	^ handlers
]

{ #category : #generated }
CPPClassSpecifierNode >> handlers: anOrderedCollection [
	self setParents: self handlers to: nil.
	handlers := anOrderedCollection.
	self setParents: self handlers to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
CPPClassSpecifierNode >> identifiers: anOrderedCollection [
	self setParents: self identifiers to: nil.
	identifiers := anOrderedCollection.
	self setParents: self identifiers to: self
]

{ #category : #'generated-initialize-release' }
CPPClassSpecifierNode >> initialize [
	super initialize.
	classTokens := OrderedCollection new: 2.
	structTokens := OrderedCollection new: 2.
	unionTokens := OrderedCollection new: 2.
	colonColons := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	templateIdentifiers := OrderedCollection new: 2.
	templateTokens := OrderedCollection new: 2.
	ltTokens := OrderedCollection new: 2.
	gtTokens := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	ellipsises := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
	virtualTokens := OrderedCollection new: 2.
	privateTokens := OrderedCollection new: 2.
	protectedTokens := OrderedCollection new: 2.
	publicTokens := OrderedCollection new: 2.
	finalTokens := OrderedCollection new: 2.
	leftBraces := OrderedCollection new: 2.
	rightBraces := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	identifiers := OrderedCollection new: 2.
	exceptionSpecifications := OrderedCollection new: 2.
	constTokens := OrderedCollection new: 2.
	volatileTokens := OrderedCollection new: 2.
	namespaceSpecifiers := OrderedCollection new: 2.
	templates := OrderedCollection new: 2.
	autoTokens := OrderedCollection new: 2.
	enumTokens := OrderedCollection new: 2.
	typenameTokens := OrderedCollection new: 2.
	equalTokens := OrderedCollection new: 2.
	zeros := OrderedCollection new: 2.
	virtualSpecifierTokens := OrderedCollection new: 2.
	equals := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	decltypeTokens := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	colons := OrderedCollection new: 2.
	initializers := OrderedCollection new: 2.
	tryTokens := OrderedCollection new: 2.
	handlers := OrderedCollection new: 2.
	defaultTokens := OrderedCollection new: 2.
	deleteTokens := OrderedCollection new: 2.
	usingTokens := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
	strings := OrderedCollection new: 2.
	static_assertTokens := OrderedCollection new: 2.
	declarators := OrderedCollection new: 2.
	asmTokens := OrderedCollection new: 2.
	namespaceTokens := OrderedCollection new: 2.
	baseTypes := OrderedCollection new: 2.
	externTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	inlineTokens := OrderedCollection new: 2.
	namespaces := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
]

{ #category : #generated }
CPPClassSpecifierNode >> initializers [
	^ initializers
]

{ #category : #generated }
CPPClassSpecifierNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> inlineTokens [
	^ inlineTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> inlineTokens: anOrderedCollection [
	inlineTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBraces [
	^ leftBraces
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBraces: anOrderedCollection [
	leftBraces := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPClassSpecifierNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPClassSpecifierNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> ltTokens [
	^ ltTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> ltTokens: anOrderedCollection [
	ltTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> names [
	^ names
]

{ #category : #generated }
CPPClassSpecifierNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaceSpecifiers [
	^ namespaceSpecifiers
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaceSpecifiers: anOrderedCollection [
	self setParents: self namespaceSpecifiers to: nil.
	namespaceSpecifiers := anOrderedCollection.
	self setParents: self namespaceSpecifiers to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaceTokens [
	^ namespaceTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaceTokens: anOrderedCollection [
	namespaceTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaces [
	^ namespaces
]

{ #category : #generated }
CPPClassSpecifierNode >> namespaces: anOrderedCollection [
	self setParents: self namespaces to: nil.
	namespaces := anOrderedCollection.
	self setParents: self namespaces to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> otherVariables [
	^ #(#types #names #specifiers #declarators #baseTypes #declarations)
]

{ #category : #generated }
CPPClassSpecifierNode >> privateTokens [
	^ privateTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> privateTokens: anOrderedCollection [
	privateTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> protectedTokens [
	^ protectedTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> protectedTokens: anOrderedCollection [
	protectedTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> publicTokens [
	^ publicTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> publicTokens: anOrderedCollection [
	publicTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBraces [
	^ rightBraces
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBraces: anOrderedCollection [
	rightBraces := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPClassSpecifierNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPClassSpecifierNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
CPPClassSpecifierNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPClassSpecifierNode >> specifiers: anOrderedCollection [
	specifiers := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> statements [
	^ statements
]

{ #category : #generated }
CPPClassSpecifierNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> static_assertTokens [
	^ static_assertTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> static_assertTokens: anOrderedCollection [
	static_assertTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> strings [
	^ strings
]

{ #category : #generated }
CPPClassSpecifierNode >> strings: anOrderedCollection [
	strings := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> structTokens [
	^ structTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> structTokens: anOrderedCollection [
	structTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPClassSpecifierNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> templates [
	^ templates
]

{ #category : #generated }
CPPClassSpecifierNode >> templates: anOrderedCollection [
	self setParents: self templates to: nil.
	templates := anOrderedCollection.
	self setParents: self templates to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> tryTokens [
	^ tryTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> tryTokens: anOrderedCollection [
	tryTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> typenameTokens [
	^ typenameTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> typenameTokens: anOrderedCollection [
	typenameTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> types [
	^ types
]

{ #category : #generated }
CPPClassSpecifierNode >> types: anOrderedCollection [
	types := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> unionTokens [
	^ unionTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> unionTokens: anOrderedCollection [
	unionTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> usingTokens [
	^ usingTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> usingTokens: anOrderedCollection [
	usingTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> values [
	^ values
]

{ #category : #generated }
CPPClassSpecifierNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
CPPClassSpecifierNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> virtualTokens [
	^ virtualTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> virtualTokens: anOrderedCollection [
	virtualTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> volatileTokens [
	^ volatileTokens
]

{ #category : #generated }
CPPClassSpecifierNode >> volatileTokens: anOrderedCollection [
	volatileTokens := anOrderedCollection
]

{ #category : #generated }
CPPClassSpecifierNode >> zeros [
	^ zeros
]

{ #category : #generated }
CPPClassSpecifierNode >> zeros: anOrderedCollection [
	zeros := anOrderedCollection
]
