Trait {
	#name : #TTeradataProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitAliasedExpression: anAliasedExpression [
	^ self visitExpression: anAliasedExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitBeginLoadingStatement: aBeginLoadingStatement [
	^ self visitProgram: aBeginLoadingStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitBeginTransactionStatement: aBeginTransactionStatement [
	^ self visitProgram: aBeginTransactionStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitBetweenExpression: aBetweenExpression [
	^ self visitExpression: aBetweenExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCaseExpression: aCaseExpression [
	^ self visitExpression: aCaseExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCaseSpecificExpression: aCaseSpecificExpression [
	^ self visitExpression: aCaseSpecificExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCaseSpecificOption: aCaseSpecificOption [
	^ self visitProgram: aCaseSpecificOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCharacterSetOption: aCharacterSetOption [
	^ self visitProgram: aCharacterSetOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCheckWorkloadStatement: aCheckWorkloadStatement [
	^ self visitProgram: aCheckWorkloadStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCheckpointStatement: aCheckpointStatement [
	^ self visitProgram: aCheckpointStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitComment: aComment [
	^ self visitProgram: aComment
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCompressOption: aCompressOption [
	^ self visitProgram: aCompressOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitConversionExpression: aConversionExpression [
	^ self visitExpression: aConversionExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCountExpression: aCountExpression [
	^ self visitExpression: aCountExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCreateMacroStatement: aCreateMacroStatement [
	^ self visitProgram: aCreateMacroStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCreateTable: aCreateTable [
	^ self visitProgram: aCreateTable
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCreateTableColumn: aCreateTableColumn [
	^ self visitProgram: aCreateTableColumn
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCreateTableOption: aCreateTableOption [
	^ self visitProgram: aCreateTableOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitCreateView: aCreateView [
	^ self visitProgram: aCreateView
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitDatabaseStatement: aDatabaseStatement [
	^ self visitProgram: aDatabaseStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitDeleteQuery: aDeleteQuery [
	^ self visitProgram: aDeleteQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitDistinctExpression: aDistinctExpression [
	^ self visitExpression: aDistinctExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitDropTableQuery: aDropTableQuery [
	^ self visitProgram: aDropTableQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitElseExpression: anElseExpression [
	^ self visitProgram: anElseExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitEmptyGroupByExpression: anEmptyGroupByExpression [
	^ self visitExpression: anEmptyGroupByExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitEndLoadingStatement: anEndLoadingStatement [
	^ self visitProgram: anEndLoadingStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitEndTransactionStatement: anEndTransactionStatement [
	^ self visitProgram: anEndTransactionStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExceptQuery: anExceptQuery [
	^ self visitProgram: anExceptQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExecuteStatement: anExecuteStatement [
	^ self visitProgram: anExecuteStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExistsExpression: anExistsExpression [
	^ self visitExpression: anExistsExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExpressionList: anExpressionList [
	^ self visitProgram: anExpressionList
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitExtractExpression: anExtractExpression [
	^ self visitExpression: anExtractExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitFormatOption: aFormatOption [
	^ self visitProgram: aFormatOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitFunctionExpression: aFunctionExpression [
	^ self visitExpression: aFunctionExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitGroupBy: aGroupBy [
	^ self visitProgram: aGroupBy
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitHaving: aHaving [
	^ self visitProgram: aHaving
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitHelpSessionStatement: aHelpSessionStatement [
	^ self visitProgram: aHelpSessionStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIdentifierExpression: anIdentifierExpression [
	^ self visitExpression: anIdentifierExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIdentifierName: anIdentifierName [
	^ self visitProgram: anIdentifierName
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIgnoreNullsExpression: anIgnoreNullsExpression [
	^ self visitExpression: anIgnoreNullsExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitInQueryExpression: anInQueryExpression [
	^ self visitExpression: anInQueryExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitInValueExpression: anInValueExpression [
	^ self visitExpression: anInValueExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIndex: anIndex [
	^ self visitProgram: anIndex
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitInsertQuery: anInsertQuery [
	^ self visitProgram: anInsertQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIntersectQuery: anIntersectQuery [
	^ self visitProgram: anIntersectQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIntervalExpression: anIntervalExpression [
	^ self visitExpression: anIntervalExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIntoExpression: anIntoExpression [
	^ self visitProgram: anIntoExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitIsNullExpression: anIsNullExpression [
	^ self visitExpression: anIsNullExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitJoinTable: aJoinTable [
	^ self visitProgram: aJoinTable
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitLikeExpression: aLikeExpression [
	^ self visitExpression: aLikeExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitLockTableStatement: aLockTableStatement [
	^ self visitProgram: aLockTableStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitMergeQuery: aMergeQuery [
	^ self visitProgram: aMergeQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitMinusQuery: aMinusQuery [
	^ self visitProgram: aMinusQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitNotNullOption: aNotNullOption [
	^ self visitProgram: aNotNullOption
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitNullExpression: aNullExpression [
	^ self visitExpression: aNullExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitOrderByExpression: anOrderByExpression [
	^ self visitProgram: anOrderByExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitOverExpression: anOverExpression [
	^ self visitExpression: anOverExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitParameter: aParameter [
	^ self visitProgram: aParameter
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitPartitionByExpression: aPartitionByExpression [
	^ self visitProgram: aPartitionByExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitQualifyExpression: aQualifyExpression [
	^ self visitProgram: aQualifyExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitRollbackStatement: aRollbackStatement [
	^ self visitProgram: aRollbackStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitSelectQuery: aSelectQuery [
	^ self visitProgram: aSelectQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitSelectTable: aSelectTable [
	^ self visitProgram: aSelectTable
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitSetExpression: aSetExpression [
	^ self visitProgram: aSetExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitSetStatement: aSetStatement [
	^ self visitProgram: aSetStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitStarExpression: aStarExpression [
	^ self visitExpression: aStarExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitSubstringExpression: aSubstringExpression [
	^ self visitExpression: aSubstringExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitTable: aTable [
	^ self visitProgram: aTable
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitTimestampExpression: aTimestampExpression [
	^ self visitExpression: aTimestampExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitTitleExpression: aTitleExpression [
	^ self visitExpression: aTitleExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitTranslateExpression: aTranslateExpression [
	^ self visitExpression: aTranslateExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitTrimExpression: aTrimExpression [
	^ self visitExpression: aTrimExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUnicodeEscapeExpression: anUnicodeEscapeExpression [
	^ self visitExpression: anUnicodeEscapeExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUnionQuery: anUnionQuery [
	^ self visitProgram: anUnionQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUpdateQuery: anUpdateQuery [
	^ self visitProgram: anUpdateQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUsingColumn: anUsingColumn [
	^ self visitProgram: anUsingColumn
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitUsingStatement: anUsingStatement [
	^ self visitProgram: anUsingStatement
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitVariableExpression: aVariableExpression [
	^ self visitExpression: aVariableExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitWhenExpression: aWhenExpression [
	^ self visitProgram: aWhenExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitWhenMergeCondition: aWhenMergeCondition [
	^ self visitProgram: aWhenMergeCondition
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitWhereExpression: aWhereExpression [
	^ self visitProgram: aWhereExpression
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitWithQuery: aWithQuery [
	^ self visitProgram: aWithQuery
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitWithTableDefinition: aWithTableDefinition [
	^ self visitProgram: aWithTableDefinition
]

{ #category : #generated }
TTeradataProgramNodeVisitor >> visitXmlAggExpression: aXmlAggExpression [
	^ self visitExpression: aXmlAggExpression
]
