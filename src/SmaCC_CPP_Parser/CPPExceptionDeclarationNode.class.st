Class {
	#name : #CPPExceptionDeclarationNode,
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
CPPExceptionDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExceptionDeclaration: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPExceptionDeclarationNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> asmTokens [
	^ asmTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> asmTokens: anOrderedCollection [
	asmTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> autoTokens [
	^ autoTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> autoTokens: anOrderedCollection [
	autoTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> baseTypes [
	^ baseTypes
]

{ #category : #generated }
CPPExceptionDeclarationNode >> baseTypes: anOrderedCollection [
	baseTypes := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> classTokens [
	^ classTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> classTokens: anOrderedCollection [
	classTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPExceptionDeclarationNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> colons [
	^ colons
]

{ #category : #generated }
CPPExceptionDeclarationNode >> colons: anOrderedCollection [
	colons := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CPPExceptionDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> compositeNodeVariables [
	^ #(#namespaceSpecifiers #templates #expressions #templateIdentifiers #arguments #values #exceptionSpecifications #statements #identifiers #namespaces #definitions #initializers #handlers)
]

{ #category : #generated }
CPPExceptionDeclarationNode >> compositeTokenVariables [
	^ #(#templateTokens #autoTokens #decltypeTokens #leftParens #rightParens #classTokens #structTokens #unionTokens #enumTokens #typenameTokens #constTokens #volatileTokens #colonColons #ltTokens #gtTokens #ellipsises #commas #virtualTokens #privateTokens #protectedTokens #publicTokens #finalTokens #leftBraces #rightBraces #semicolons #equals #leftBrackets #rightBrackets #equalTokens #zeros #virtualSpecifierTokens #defaultTokens #deleteTokens #usingTokens #operatorTokens #strings #static_assertTokens #externTokens #colons #tryTokens #asmTokens #namespaceTokens #inlineTokens)
]

{ #category : #generated }
CPPExceptionDeclarationNode >> constTokens [
	^ constTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> constTokens: anOrderedCollection [
	constTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarations: anOrderedCollection [
	declarations := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarators [
	^ declarators
]

{ #category : #generated }
CPPExceptionDeclarationNode >> declarators: anOrderedCollection [
	declarators := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> decltypeTokens [
	^ decltypeTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> decltypeTokens: anOrderedCollection [
	decltypeTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> defaultTokens [
	^ defaultTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> defaultTokens: anOrderedCollection [
	defaultTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> definitions [
	^ definitions
]

{ #category : #generated }
CPPExceptionDeclarationNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> deleteTokens [
	^ deleteTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> deleteTokens: anOrderedCollection [
	deleteTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ellipsises [
	^ ellipsises
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ellipsises: anOrderedCollection [
	ellipsises := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> enumTokens [
	^ enumTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> enumTokens: anOrderedCollection [
	enumTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> equalTokens [
	^ equalTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> equalTokens: anOrderedCollection [
	equalTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> equals [
	^ equals
]

{ #category : #generated }
CPPExceptionDeclarationNode >> equals: anOrderedCollection [
	equals := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> exceptionSpecifications [
	^ exceptionSpecifications
]

{ #category : #generated }
CPPExceptionDeclarationNode >> exceptionSpecifications: anOrderedCollection [
	self setParents: self exceptionSpecifications to: nil.
	exceptionSpecifications := anOrderedCollection.
	self setParents: self exceptionSpecifications to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> expressions [
	^ expressions
]

{ #category : #generated }
CPPExceptionDeclarationNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> externTokens [
	^ externTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> externTokens: anOrderedCollection [
	externTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> finalTokens [
	^ finalTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> finalTokens: anOrderedCollection [
	finalTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> gtTokens [
	^ gtTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> gtTokens: anOrderedCollection [
	gtTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> handlers [
	^ handlers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> handlers: anOrderedCollection [
	self setParents: self handlers to: nil.
	handlers := anOrderedCollection.
	self setParents: self handlers to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> identifiers [
	^ identifiers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> identifiers: anOrderedCollection [
	self setParents: self identifiers to: nil.
	identifiers := anOrderedCollection.
	self setParents: self identifiers to: self
]

{ #category : #'generated-initialize-release' }
CPPExceptionDeclarationNode >> initialize [
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
CPPExceptionDeclarationNode >> initializers [
	^ initializers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> initializers: anOrderedCollection [
	self setParents: self initializers to: nil.
	initializers := anOrderedCollection.
	self setParents: self initializers to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> inlineTokens [
	^ inlineTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> inlineTokens: anOrderedCollection [
	inlineTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftBraces [
	^ leftBraces
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftBraces: anOrderedCollection [
	leftBraces := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftBrackets [
	^ leftBrackets
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ltTokens [
	^ ltTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> ltTokens: anOrderedCollection [
	ltTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> names [
	^ names
]

{ #category : #generated }
CPPExceptionDeclarationNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaceSpecifiers [
	^ namespaceSpecifiers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaceSpecifiers: anOrderedCollection [
	self setParents: self namespaceSpecifiers to: nil.
	namespaceSpecifiers := anOrderedCollection.
	self setParents: self namespaceSpecifiers to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaceTokens [
	^ namespaceTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaceTokens: anOrderedCollection [
	namespaceTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaces [
	^ namespaces
]

{ #category : #generated }
CPPExceptionDeclarationNode >> namespaces: anOrderedCollection [
	self setParents: self namespaces to: nil.
	namespaces := anOrderedCollection.
	self setParents: self namespaces to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> otherVariables [
	^ #(#names #specifiers #types #declarations #declarators #baseTypes)
]

{ #category : #generated }
CPPExceptionDeclarationNode >> privateTokens [
	^ privateTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> privateTokens: anOrderedCollection [
	privateTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> protectedTokens [
	^ protectedTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> protectedTokens: anOrderedCollection [
	protectedTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> publicTokens [
	^ publicTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> publicTokens: anOrderedCollection [
	publicTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightBraces [
	^ rightBraces
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightBraces: anOrderedCollection [
	rightBraces := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightBrackets [
	^ rightBrackets
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
CPPExceptionDeclarationNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> specifiers: anOrderedCollection [
	specifiers := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> statements [
	^ statements
]

{ #category : #generated }
CPPExceptionDeclarationNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> static_assertTokens [
	^ static_assertTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> static_assertTokens: anOrderedCollection [
	static_assertTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> strings [
	^ strings
]

{ #category : #generated }
CPPExceptionDeclarationNode >> strings: anOrderedCollection [
	strings := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> structTokens [
	^ structTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> structTokens: anOrderedCollection [
	structTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templateIdentifiers [
	^ templateIdentifiers
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templateIdentifiers: anOrderedCollection [
	self setParents: self templateIdentifiers to: nil.
	templateIdentifiers := anOrderedCollection.
	self setParents: self templateIdentifiers to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templateTokens [
	^ templateTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templateTokens: anOrderedCollection [
	templateTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templates [
	^ templates
]

{ #category : #generated }
CPPExceptionDeclarationNode >> templates: anOrderedCollection [
	self setParents: self templates to: nil.
	templates := anOrderedCollection.
	self setParents: self templates to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> tryTokens [
	^ tryTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> tryTokens: anOrderedCollection [
	tryTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> typenameTokens [
	^ typenameTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> typenameTokens: anOrderedCollection [
	typenameTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> types [
	^ types
]

{ #category : #generated }
CPPExceptionDeclarationNode >> types: anOrderedCollection [
	types := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> unionTokens [
	^ unionTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> unionTokens: anOrderedCollection [
	unionTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> usingTokens [
	^ usingTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> usingTokens: anOrderedCollection [
	usingTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> values [
	^ values
]

{ #category : #generated }
CPPExceptionDeclarationNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
CPPExceptionDeclarationNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> virtualTokens [
	^ virtualTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> virtualTokens: anOrderedCollection [
	virtualTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> volatileTokens [
	^ volatileTokens
]

{ #category : #generated }
CPPExceptionDeclarationNode >> volatileTokens: anOrderedCollection [
	volatileTokens := anOrderedCollection
]

{ #category : #generated }
CPPExceptionDeclarationNode >> zeros [
	^ zeros
]

{ #category : #generated }
CPPExceptionDeclarationNode >> zeros: anOrderedCollection [
	zeros := anOrderedCollection
]
