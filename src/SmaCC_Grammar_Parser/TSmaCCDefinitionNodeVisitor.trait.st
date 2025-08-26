Trait {
	#name : #TSmaCCDefinitionNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitAlternationRegex: anAlternationRegex [
	^ self visitRegex: anAlternationRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitAssociativeDirective: anAssociativeDirective [
	^ self visitDirective: anAssociativeDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitAttributeDirective: anAttributeDirective [
	^ self visitDirective: anAttributeDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitCharacterBlockRegex: aCharacterBlockRegex [
	^ self visitRegex: aCharacterBlockRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitCharacterRegex: aCharacterRegex [
	^ self visitRegex: aCharacterRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitClassProductionExpression: aClassProductionExpression [
	^ self visitProductionExpression: aClassProductionExpression
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitCodeProductionExpression: aCodeProductionExpression [
	^ self visitProductionExpression: aCodeProductionExpression
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitConcatenationRegex: aConcatenationRegex [
	^ self visitRegex: aConcatenationRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitConditionRegex: aConditionRegex [
	^ self visitRegex: aConditionRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitDefinition: aDefinition [
	^ self visitSmaCCParseNode: aDefinition
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitDefinitionError: aDefinitionError [
	^ self visitDefinition: aDefinitionError
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitDirective: aDirective [
	^ self visitDefinition: aDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitErrorSymbol: anErrorSymbol [
	^ self visitSymbol: anErrorSymbol
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitFlagDirective: aFlagDirective [
	^ self visitDirective: aFlagDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitGrammarDefinition: aGrammarDefinition [
	^ self visitDefinition: aGrammarDefinition
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitGroupTerm: aGroupTerm [
	^ self visitDefinition: aGroupTerm
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitIdDirective: anIdDirective [
	^ self visitDirective: anIdDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitIgnoreVariableDirective: anIgnoreVariableDirective [
	^ self visitDirective: anIgnoreVariableDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitIgnoreVariableWarningDirective: anIgnoreVariableWarningDirective [
	^ self visitDirective: anIgnoreVariableWarningDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitKeywordSymbol: aKeywordSymbol [
	^ self visitSymbol: aKeywordSymbol
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitNodeNameDirective: aNodeNameDirective [
	^ self visitDirective: aNodeNameDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitPostfixTerm: aPostfixTerm [
	^ self visitDefinition: aPostfixTerm
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitProductionExpression: aProductionExpression [
	^ self visitDefinition: aProductionExpression
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitProductionRule: aProductionRule [
	^ self visitDefinition: aProductionRule
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitProductionSymbol: aProductionSymbol [
	^ self visitSymbol: aProductionSymbol
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitRegex: aRegex [
	^ self visitDefinition: aRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitRepeatRegex: aRepeatRegex [
	^ self visitRegex: aRepeatRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitScannerSelectorsDirective: aScannerSelectorsDirective [
	^ self visitDirective: aScannerSelectorsDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitScopeDirective: aScopeDirective [
	^ self visitDirective: aScopeDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitStartDirective: aStartDirective [
	^ self visitDirective: aStartDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitSuperclassDirective: aSuperclassDirective [
	^ self visitDirective: aSuperclassDirective
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitSymbol: aSymbol [
	^ self visitDefinition: aSymbol
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitTokenRegex: aTokenRegex [
	^ self visitRegex: aTokenRegex
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitTokenRule: aTokenRule [
	^ self visitDefinition: aTokenRule
]

{ #category : #generated }
TSmaCCDefinitionNodeVisitor >> visitTokenSymbol: aTokenSymbol [
	^ self visitSymbol: aTokenSymbol
]
