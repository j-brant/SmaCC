Class {
	#name : #VBNetQueryExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'fromTokens',
		'names',
		'inTokens',
		'values',
		'asTokens',
		'types',
		'commas',
		'aggregateTokens',
		'intoTokens',
		'declarations',
		'selectTokens',
		'distinctTokens',
		'expressions',
		'orderTokens',
		'byTokens',
		'takeTokens',
		'whileTokens',
		'skipTokens',
		'letTokens',
		'groupTokens',
		'joinTokens',
		'onTokens',
		'lhses',
		'equalsTokens',
		'rhses',
		'andTokens'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetQueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQueryExpression: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> aggregateTokens [
	^ aggregateTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> aggregateTokens: anOrderedCollection [
	aggregateTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> andTokens [
	^ andTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> andTokens: anOrderedCollection [
	andTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> asTokens [
	^ asTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> asTokens: anOrderedCollection [
	asTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> byTokens [
	^ byTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> byTokens: anOrderedCollection [
	byTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetQueryExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> compositeNodeVariables [
	^ #(#values #types #declarations #expressions #lhses #rhses)
]

{ #category : #generated }
VBNetQueryExpressionNode >> compositeTokenVariables [
	^ #(#fromTokens #names #inTokens #asTokens #commas #aggregateTokens #intoTokens #selectTokens #distinctTokens #orderTokens #byTokens #takeTokens #whileTokens #skipTokens #letTokens #groupTokens #joinTokens #onTokens #equalsTokens #andTokens #leftParens #rightParens)
]

{ #category : #generated }
VBNetQueryExpressionNode >> declarations [
	^ declarations
]

{ #category : #generated }
VBNetQueryExpressionNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> distinctTokens [
	^ distinctTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> distinctTokens: anOrderedCollection [
	distinctTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> equalsTokens [
	^ equalsTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> equalsTokens: anOrderedCollection [
	equalsTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> expressions [
	^ expressions
]

{ #category : #generated }
VBNetQueryExpressionNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> fromTokens [
	^ fromTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> fromTokens: anOrderedCollection [
	fromTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> groupTokens [
	^ groupTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> groupTokens: anOrderedCollection [
	groupTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> inTokens [
	^ inTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> inTokens: anOrderedCollection [
	inTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
VBNetQueryExpressionNode >> initialize [
	super initialize.
	fromTokens := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	inTokens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	asTokens := OrderedCollection new: 2.
	types := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	aggregateTokens := OrderedCollection new: 2.
	intoTokens := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	selectTokens := OrderedCollection new: 2.
	distinctTokens := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	orderTokens := OrderedCollection new: 2.
	byTokens := OrderedCollection new: 2.
	takeTokens := OrderedCollection new: 2.
	whileTokens := OrderedCollection new: 2.
	skipTokens := OrderedCollection new: 2.
	letTokens := OrderedCollection new: 2.
	groupTokens := OrderedCollection new: 2.
	joinTokens := OrderedCollection new: 2.
	onTokens := OrderedCollection new: 2.
	lhses := OrderedCollection new: 2.
	equalsTokens := OrderedCollection new: 2.
	rhses := OrderedCollection new: 2.
	andTokens := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetQueryExpressionNode >> intoTokens [
	^ intoTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> intoTokens: anOrderedCollection [
	intoTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> joinTokens [
	^ joinTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> joinTokens: anOrderedCollection [
	joinTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> letTokens [
	^ letTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> letTokens: anOrderedCollection [
	letTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> lhses [
	^ lhses
]

{ #category : #generated }
VBNetQueryExpressionNode >> lhses: anOrderedCollection [
	self setParents: self lhses to: nil.
	lhses := anOrderedCollection.
	self setParents: self lhses to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> names [
	^ names
]

{ #category : #generated }
VBNetQueryExpressionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> onTokens [
	^ onTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> onTokens: anOrderedCollection [
	onTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> orderTokens [
	^ orderTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> orderTokens: anOrderedCollection [
	orderTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> rhses [
	^ rhses
]

{ #category : #generated }
VBNetQueryExpressionNode >> rhses: anOrderedCollection [
	self setParents: self rhses to: nil.
	rhses := anOrderedCollection.
	self setParents: self rhses to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> selectTokens [
	^ selectTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> selectTokens: anOrderedCollection [
	selectTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> skipTokens [
	^ skipTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> skipTokens: anOrderedCollection [
	skipTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> takeTokens [
	^ takeTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> takeTokens: anOrderedCollection [
	takeTokens := anOrderedCollection
]

{ #category : #generated }
VBNetQueryExpressionNode >> types [
	^ types
]

{ #category : #generated }
VBNetQueryExpressionNode >> types: anOrderedCollection [
	self setParents: self types to: nil.
	types := anOrderedCollection.
	self setParents: self types to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> values [
	^ values
]

{ #category : #generated }
VBNetQueryExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
VBNetQueryExpressionNode >> whileTokens [
	^ whileTokens
]

{ #category : #generated }
VBNetQueryExpressionNode >> whileTokens: anOrderedCollection [
	whileTokens := anOrderedCollection
]
