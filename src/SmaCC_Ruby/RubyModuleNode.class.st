Class {
	#name : 'RubyModuleNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'moduleToken',
		'name',
		'statements',
		'semicolons',
		'rescues',
		'ensure',
		'endToken'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyModuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitModule: self
]

{ #category : 'generated' }
RubyModuleNode >> compositeNodeVariables [
	^ #(#statements #rescues)
]

{ #category : 'generated' }
RubyModuleNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : 'generated' }
RubyModuleNode >> endToken [
	^ endToken
]

{ #category : 'generated' }
RubyModuleNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : 'generated' }
RubyModuleNode >> ensure [
	^ ensure
]

{ #category : 'generated' }
RubyModuleNode >> ensure: aRubyEnsureNode [
	self ensure notNil ifTrue: [ self ensure parent: nil ].
	ensure := aRubyEnsureNode.
	self ensure notNil ifTrue: [ self ensure parent: self ]
]

{ #category : 'generated-initialize-release' }
RubyModuleNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	rescues := OrderedCollection new: 2.
]

{ #category : 'generated' }
RubyModuleNode >> moduleToken [
	^ moduleToken
]

{ #category : 'generated' }
RubyModuleNode >> moduleToken: aSmaCCToken [
	moduleToken := aSmaCCToken
]

{ #category : 'generated' }
RubyModuleNode >> name [
	^ name
]

{ #category : 'generated' }
RubyModuleNode >> name: aRubyExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aRubyExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
RubyModuleNode >> nodeVariables [
	^ #(#name #ensure)
]

{ #category : 'generated' }
RubyModuleNode >> rescues [
	^ rescues
]

{ #category : 'generated' }
RubyModuleNode >> rescues: anOrderedCollection [
	self setParents: self rescues to: nil.
	rescues := anOrderedCollection.
	self setParents: self rescues to: self
]

{ #category : 'generated' }
RubyModuleNode >> semicolons [
	^ semicolons
]

{ #category : 'generated' }
RubyModuleNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : 'generated' }
RubyModuleNode >> statements [
	^ statements
]

{ #category : 'generated' }
RubyModuleNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
RubyModuleNode >> tokenVariables [
	^ #(#moduleToken #endToken)
]
