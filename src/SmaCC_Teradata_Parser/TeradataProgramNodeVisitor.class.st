Class {
	#name : #TeradataProgramNodeVisitor,
	#superclass : #SmaCCParseNodeVisitor,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataProgramNodeVisitor >> visitAliasedExpression: anAliasedExpression [
	^ self visitExpression: anAliasedExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitBeginLoadingStatement: aBeginLoadingStatement [
	^ self visitProgram: aBeginLoadingStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitBeginTransactionStatement: aBeginTransactionStatement [
	^ self visitProgram: aBeginTransactionStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitBetweenExpression: aBetweenExpression [
	^ self visitExpression: aBetweenExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitCaseExpression: aCaseExpression [
	^ self visitExpression: aCaseExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitCheckWorkloadStatement: aCheckWorkloadStatement [
	^ self visitProgram: aCheckWorkloadStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitCheckpointStatement: aCheckpointStatement [
	^ self visitProgram: aCheckpointStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitCreateMacroStatement: aCreateMacroStatement [
	^ self visitProgram: aCreateMacroStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitDatabaseStatement: aDatabaseStatement [
	^ self visitProgram: aDatabaseStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitDeleteQuery: aDeleteQuery [
	^ self visitProgram: aDeleteQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitDropTableQuery: aDropTableQuery [
	^ self visitProgram: aDropTableQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitElseExpression: anElseExpression [
	^ self visitProgram: anElseExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitEndLoadingStatement: anEndLoadingStatement [
	^ self visitProgram: anEndLoadingStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitEndTransactionStatement: anEndTransactionStatement [
	^ self visitProgram: anEndTransactionStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitExecuteStatement: anExecuteStatement [
	^ self visitProgram: anExecuteStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitExtractExpression: anExtractExpression [
	^ self visitExpression: anExtractExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitFormatExpression: aFormatExpression [
	^ self visitExpression: aFormatExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitFunctionExpression: aFunctionExpression [
	^ self visitExpression: aFunctionExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitGroupBy: aGroupBy [
	^ self visitProgram: aGroupBy
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitHaving: aHaving [
	^ self visitProgram: aHaving
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitHelpSessionStatement: aHelpSessionStatement [
	^ self visitProgram: aHelpSessionStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitIdentifierExpression: anIdentifierExpression [
	^ self visitExpression: anIdentifierExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitInQueryExpression: anInQueryExpression [
	^ self visitExpression: anInQueryExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitInValueExpression: anInValueExpression [
	^ self visitExpression: anInValueExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitInsertQuery: anInsertQuery [
	^ self visitProgram: anInsertQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitIntervalExpression: anIntervalExpression [
	^ self visitExpression: anIntervalExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitIntoExpression: anIntoExpression [
	^ self visitProgram: anIntoExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitIsNullExpression: anIsNullExpression [
	^ self visitExpression: anIsNullExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitJoinTable: aJoinTable [
	^ self visitProgram: aJoinTable
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitLikeExpression: aLikeExpression [
	^ self visitExpression: aLikeExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitLockTableStatement: aLockTableStatement [
	^ self visitProgram: aLockTableStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitMergeQuery: aMergeQuery [
	^ self visitProgram: aMergeQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitNullExpression: aNullExpression [
	^ self visitExpression: aNullExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitOrderByExpression: anOrderByExpression [
	^ self visitProgram: anOrderByExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitOverExpression: anOverExpression [
	^ self visitExpression: anOverExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitParameter: aParameter [
	^ self visitProgram: aParameter
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitPartitionByExpression: aPartitionByExpression [
	^ self visitProgram: aPartitionByExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitQualifyExpression: aQualifyExpression [
	^ self visitProgram: aQualifyExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitRecursiveQuery: aRecursiveQuery [
	^ self visitProgram: aRecursiveQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitRollbackStatement: aRollbackStatement [
	^ self visitProgram: aRollbackStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitSelectQuery: aSelectQuery [
	^ self visitProgram: aSelectQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitSelectTable: aSelectTable [
	^ self visitProgram: aSelectTable
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitSetExpression: aSetExpression [
	^ self visitProgram: aSetExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitSetStatement: aSetStatement [
	^ self visitProgram: aSetStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitStarExpression: aStarExpression [
	^ self visitExpression: aStarExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitSubstringExpression: aSubstringExpression [
	^ self visitExpression: aSubstringExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitTable: aTable [
	^ self visitProgram: aTable
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitTrimExpression: aTrimExpression [
	^ self visitExpression: aTrimExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitTypeExpression: aTypeExpression [
	^ self visitExpression: aTypeExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitUnionQuery: anUnionQuery [
	^ self visitProgram: anUnionQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitUpdateQuery: anUpdateQuery [
	^ self visitProgram: anUpdateQuery
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitUsingStatement: anUsingStatement [
	^ self visitProgram: anUsingStatement
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitVariableExpression: aVariableExpression [
	^ self visitExpression: aVariableExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitWhenExpression: aWhenExpression [
	^ self visitProgram: aWhenExpression
]

{ #category : #generated }
TeradataProgramNodeVisitor >> visitWhenMergeCondition: aWhenMergeCondition [
	^ self visitProgram: aWhenMergeCondition
]
