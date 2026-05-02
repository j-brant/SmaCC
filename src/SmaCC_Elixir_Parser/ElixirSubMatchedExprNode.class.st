Class {
	#name : 'ElixirSubMatchedExprNode',
	#superclass : 'ElixirProgramNode',
	#instVars : [
		'identifiers',
		'expressions',
		'op',
		'dot',
		'arg',
		'int',
		'fn',
		'stab',
		'end',
		'leftParen',
		'rightParen',
		'semi',
		'close',
		'float',
		'char',
		'leftBracket',
		'rightBracket',
		'args',
		'cen',
		'struct',
		'leftCurly',
		'rightCurly',
		'elements',
		'_true',
		'_false',
		'_nil',
		'string',
		'open',
		'parts',
		'sigil',
		'atom',
		'alias',
		'call',
		'call2'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _false [
	^ _false
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _false: aSmaCCToken [
	_false := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _nil [
	^ _nil
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _nil: aSmaCCToken [
	_nil := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _true [
	^ _true
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> _true: aSmaCCToken [
	_true := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubMatchedExpr: self
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> alias [
	^ alias
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> alias: anObject [
	self setParent: self alias to: nil.
	alias := anObject.
	self setParent: self alias to: self
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> arg [
	^ arg
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> arg: anElixirBracketArgNode [
	self arg notNil ifTrue: [ self arg parent: nil ].
	arg := anElixirBracketArgNode.
	self arg notNil ifTrue: [ self arg parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> args [
	^ args
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> args: anElixirProgramNode [
	self args notNil ifTrue: [ self args parent: nil ].
	args := anElixirProgramNode.
	self args notNil ifTrue: [ self args parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> atom [
	^ atom
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> atom: aSmaCCToken [
	atom := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> call [
	^ call
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> call2 [
	^ call2
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> call2: anElixirCallArgsParensNode [
	self call2 notNil ifTrue: [ self call2 parent: nil ].
	call2 := anElixirCallArgsParensNode.
	self call2 notNil ifTrue: [ self call2 parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> call: anElixirCallArgsParensNode [
	self call notNil ifTrue: [ self call parent: nil ].
	call := anElixirCallArgsParensNode.
	self call notNil ifTrue: [ self call parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> cen [
	^ cen
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> cen: aSmaCCToken [
	cen := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> char [
	^ char
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> char: aSmaCCToken [
	char := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> close [
	^ close
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> close: aSmaCCToken [
	close := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> compositeNodeVariables [
	^ #(#expressions)
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> compositeTokenVariables [
	^ #(#parts)
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> dot [
	^ dot
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> elements [
	^ elements
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> elements: anElixirContainerArgsNode [
	self elements notNil ifTrue: [ self elements parent: nil ].
	elements := anElixirContainerArgsNode.
	self elements notNil ifTrue: [ self elements parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> end [
	^ end
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> end: anElixirEndEoeNode [
	self end notNil ifTrue: [ self end parent: nil ].
	end := anElixirEndEoeNode.
	self end notNil ifTrue: [ self end parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> expressions [
	^ expressions
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> expressions: anOrderedCollection [
	self setParents: self expressions to: nil.
	expressions := anOrderedCollection.
	self setParents: self expressions to: self
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> float [
	^ float
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> float: aSmaCCToken [
	float := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> fn [
	^ fn
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> fn: anElixirFnEoeNode [
	self fn notNil ifTrue: [ self fn parent: nil ].
	fn := anElixirFnEoeNode.
	self fn notNil ifTrue: [ self fn parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> identifiers [
	^ identifiers
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> identifiers: anOrderedCollection [
	self setParent: self identifiers to: nil.
	identifiers := anOrderedCollection.
	self setParent: self identifiers to: self
]

{ #category : 'generated-initialize-release' }
ElixirSubMatchedExprNode >> initialize [
	super initialize.
	identifiers := OrderedCollection new: 2.
	expressions := OrderedCollection new: 2.
	parts := OrderedCollection new: 2.
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> int [
	^ int
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> int: aSmaCCToken [
	int := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftCurly [
	^ leftCurly
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftCurly: aSmaCCToken [
	leftCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> nodeVariables [
	^ #(#arg #fn #stab #end #args #struct #elements #call #call2)
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> op [
	^ op
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> open [
	^ open
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> open: aSmaCCToken [
	open := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> otherVariables [
	^ #(#identifiers #alias)
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> parts [
	^ parts
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> parts: anOrderedCollection [
	parts := anOrderedCollection
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightCurly [
	^ rightCurly
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightCurly: aSmaCCToken [
	rightCurly := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> semi [
	^ semi
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> semi: aSmaCCToken [
	semi := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> sigil [
	^ sigil
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> sigil: aSmaCCToken [
	sigil := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> stab [
	^ stab
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> stab: anElixirStabNode [
	self stab notNil ifTrue: [ self stab parent: nil ].
	stab := anElixirStabNode.
	self stab notNil ifTrue: [ self stab parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> string [
	^ string
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> string: aSmaCCToken [
	string := aSmaCCToken
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> struct [
	^ struct
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> struct: anElixirStructExprNode [
	self struct notNil ifTrue: [ self struct parent: nil ].
	struct := anElixirStructExprNode.
	self struct notNil ifTrue: [ self struct parent: self ]
]

{ #category : 'generated' }
ElixirSubMatchedExprNode >> tokenVariables [
	^ #(#op #dot #int #leftParen #rightParen #semi #close #float #char #leftBracket #rightBracket #cen #leftCurly #rightCurly #_true #_false #_nil #string #open #sigil #atom)
]
