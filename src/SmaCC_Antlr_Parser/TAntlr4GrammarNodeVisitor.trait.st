Trait {
	#name : #TAntlr4GrammarNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Antlr_Parser'
}

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitAction: anAction [
	^ self visitGrammar: anAction
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitActionBlock: anActionBlock [
	^ self visitGrammar: anActionBlock
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitAtom: anAtom [
	^ self visitGrammar: anAtom
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitBlock: aBlock [
	^ self visitGrammar: aBlock
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitBlockSet: aBlockSet [
	^ self visitGrammar: aBlockSet
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitChannelsSpec: aChannelsSpec [
	^ self visitGrammar: aChannelsSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitCharacterRange: aCharacterRange [
	^ self visitGrammar: aCharacterRange
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitDelegateGrammar: aDelegateGrammar [
	^ self visitGrammar: aDelegateGrammar
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitEbnf: anEbnf [
	^ self visitGrammar: anEbnf
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitEbnfSuffix: anEbnfSuffix [
	^ self visitGrammar: anEbnfSuffix
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitElement: anElement [
	^ self visitGrammar: anElement
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitElementOptions: anElementOptions [
	^ self visitGrammar: anElementOptions
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitExceptionHandler: anExceptionHandler [
	^ self visitGrammar: anExceptionHandler
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitFinallyClause: aFinallyClause [
	^ self visitGrammar: aFinallyClause
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitGrammar: aGrammar [
	^ self visitSmaCCParseNode: aGrammar
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitGrammarSpec: aGrammarSpec [
	^ self visitGrammar: aGrammarSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitImport: anImport [
	^ self visitGrammar: anImport
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitIntegerLiteral: anIntegerLiteral [
	^ self visitGrammar: anIntegerLiteral
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLabeledLexerElement: aLabeledLexerElement [
	^ self visitGrammar: aLabeledLexerElement
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerAlt: aLexerAlt [
	^ self visitGrammar: aLexerAlt
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerAtom: aLexerAtom [
	^ self visitGrammar: aLexerAtom
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerBlock: aLexerBlock [
	^ self visitGrammar: aLexerBlock
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerCharSet: aLexerCharSet [
	^ self visitGrammar: aLexerCharSet
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerCommand: aLexerCommand [
	^ self visitGrammar: aLexerCommand
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerCommands: aLexerCommands [
	^ self visitGrammar: aLexerCommands
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerElement: aLexerElement [
	^ self visitGrammar: aLexerElement
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLexerRuleSpec: aLexerRuleSpec [
	^ self visitGrammar: aLexerRuleSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitLocalsSpec: aLocalsSpec [
	^ self visitGrammar: aLocalsSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitModeSpec: aModeSpec [
	^ self visitGrammar: aModeSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitNamespaceName: aNamespaceName [
	^ self visitGrammar: aNamespaceName
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitNotSet: aNotSet [
	^ self visitGrammar: aNotSet
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitOption: anOption [
	^ self visitGrammar: anOption
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitOptionsSpec: anOptionsSpec [
	^ self visitGrammar: anOptionsSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitParserRuleSpec: aParserRuleSpec [
	^ self visitGrammar: aParserRuleSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitReferenceTerminal: aReferenceTerminal [
	^ self visitGrammar: aReferenceTerminal
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitRuleAction: aRuleAction [
	^ self visitGrammar: aRuleAction
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitRuleref: aRuleref [
	^ self visitGrammar: aRuleref
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitSetElement: aSetElement [
	^ self visitGrammar: aSetElement
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitGrammar: aStringLiteral
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitStringTerminal: aStringTerminal [
	^ self visitGrammar: aStringTerminal
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitThrowsSpec: aThrowsSpec [
	^ self visitGrammar: aThrowsSpec
]

{ #category : #generated }
TAntlr4GrammarNodeVisitor >> visitTokensSpec: aTokensSpec [
	^ self visitGrammar: aTokensSpec
]
