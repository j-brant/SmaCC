Trait {
	#name : #TRubyProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
TRubyProgramNodeVisitor >> visitAccessExpression: anAccessExpression [
	^ self visitExpression: anAccessExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitAliasStatement: anAliasStatement [
	^ self visitExpression: anAliasStatement
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitArguments: anArguments [
	^ self visitProgram: anArguments
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitArrayExpression: anArrayExpression [
	^ self visitExpression: anArrayExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitAssignment: anAssignment [
	^ self visitExpression: anAssignment
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitAssociation: anAssociation [
	^ self visitExpression: anAssociation
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBeginBlock: aBeginBlock [
	^ self visitProgram: aBeginBlock
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBlock: aBlock [
	^ self visitExpression: aBlock
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBlockArgument: aBlockArgument [
	^ self visitProgram: aBlockArgument
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBoolean: aBoolean [
	^ self visitExpression: aBoolean
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitBreak: aBreak [
	^ self visitExpression: aBreak
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitCall: aCall [
	^ self visitExpression: aCall
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitCase: aCase [
	^ self visitExpression: aCase
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitCaseIn: aCaseIn [
	^ self visitProgram: aCaseIn
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitCharacter: aCharacter [
	^ self visitExpression: aCharacter
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitClass: aClass [
	^ self visitExpression: aClass
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitDefineFunctionExpression: aDefineFunctionExpression [
	^ self visitExpression: aDefineFunctionExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitDefined: aDefined [
	^ self visitExpression: aDefined
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitDictionary: aDictionary [
	^ self visitExpression: aDictionary
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitElse: anElse [
	^ self visitProgram: anElse
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitElseIf: anElseIf [
	^ self visitProgram: anElseIf
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitExpression: anEmptyStatement
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitEndBlock: anEndBlock [
	^ self visitProgram: anEndBlock
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitEnsure: anEnsure [
	^ self visitProgram: anEnsure
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitErrorStatement: anErrorStatement [
	^ self visitExpression: anErrorStatement
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitFor: aFor [
	^ self visitExpression: aFor
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitIf: anIf [
	^ self visitExpression: anIf
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitIfModifier: anIfModifier [
	^ self visitExpression: anIfModifier
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitIndexExpression: anIndexExpression [
	^ self visitExpression: anIndexExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitKeywordRestArgument: aKeywordRestArgument [
	^ self visitProgram: aKeywordRestArgument
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitLabel: aLabel [
	^ self visitExpression: aLabel
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitLambda: aLambda [
	^ self visitExpression: aLambda
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitMethod: aMethod [
	^ self visitExpression: aMethod
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitModule: aModule [
	^ self visitExpression: aModule
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitMultipleVariable: aMultipleVariable [
	^ self visitExpression: aMultipleVariable
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitNext: aNext [
	^ self visitExpression: aNext
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitNil: aNil [
	^ self visitExpression: aNil
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRangeExpression: aRangeExpression [
	^ self visitExpression: aRangeExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRedo: aRedo [
	^ self visitExpression: aRedo
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRegex: aRegex [
	^ self visitExpression: aRegex
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRescue: aRescue [
	^ self visitExpression: aRescue
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRescueElse: aRescueElse [
	^ self visitProgram: aRescueElse
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRescueModifier: aRescueModifier [
	^ self visitExpression: aRescueModifier
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRest: aRest [
	^ self visitProgram: aRest
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRestArgument: aRestArgument [
	^ self visitProgram: aRestArgument
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitRetry: aRetry [
	^ self visitExpression: aRetry
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitReturn: aReturn [
	^ self visitExpression: aReturn
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitSelf: aSelf [
	^ self visitExpression: aSelf
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitSingleton: aSingleton [
	^ self visitExpression: aSingleton
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitStar: aStar [
	^ self visitExpression: aStar
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitStatementGroup: aStatementGroup [
	^ self visitExpression: aStatementGroup
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitString: aString [
	^ self visitExpression: aString
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitStringLabel: aStringLabel [
	^ self visitExpression: aStringLabel
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitStringSymbol: aStringSymbol [
	^ self visitExpression: aStringSymbol
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitSymbol: aSymbol [
	^ self visitExpression: aSymbol
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUndefStatement: anUndefStatement [
	^ self visitExpression: anUndefStatement
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUnless: anUnless [
	^ self visitExpression: anUnless
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUnlessModifier: anUnlessModifier [
	^ self visitExpression: anUnlessModifier
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUntil: anUntil [
	^ self visitExpression: anUntil
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitUntilModifier: anUntilModifier [
	^ self visitExpression: anUntilModifier
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitVariable: aVariable [
	^ self visitExpression: aVariable
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitVariableReference: aVariableReference [
	^ self visitExpression: aVariableReference
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitWhen: aWhen [
	^ self visitProgram: aWhen
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitWhile: aWhile [
	^ self visitExpression: aWhile
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitWhileModifier: aWhileModifier [
	^ self visitExpression: aWhileModifier
]

{ #category : #generated }
TRubyProgramNodeVisitor >> visitYield: aYield [
	^ self visitExpression: aYield
]
