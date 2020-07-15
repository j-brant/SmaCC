Class {
	#name : #TeradataParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataParser class >> ambiguousTransitions [
^#(
#[ 0 14 1 141] 
#[ 0 250 3 21] 
#[ 0 250 3 85] 
#[ 0 250 3 109] 
#[ 0 254 3 21] 
#[ 0 254 3 85] 
#[ 0 254 3 109] 
#[ 1 10 3 21] 
#[ 1 10 3 85] 
#[ 1 10 3 109] 
#[ 1 34 1 38] 
#[ 1 34 1 42 1 46] 
#[ 1 34 5 5] 
#[ 1 98 2 29] 
#[ 1 98 2 33] 
#[ 1 98 2 37] 
#[ 1 98 2 41] 
#[ 1 98 6 149] 
#[ 1 98 2 45] 
#[ 1 34 1 42] 
#[ 1 42 1 182] 
#[ 1 182 5 5] 
#[ 2 10 3 21] 
#[ 2 10 3 85] 
#[ 2 10 3 109] 
#[ 2 14 3 21] 
#[ 2 14 3 85] 
#[ 2 14 3 109] 
#[ 2 18 3 21] 
#[ 2 18 3 85] 
#[ 2 18 3 109] 
#[ 2 22 3 21] 
#[ 2 22 3 85] 
#[ 2 22 3 109] 
#[ 2 26 3 21] 
#[ 2 26 3 85] 
#[ 2 26 3 109] 
#[ 2 30 3 21] 
#[ 2 30 3 85] 
#[ 2 30 3 109] 
#[ 2 34 3 21] 
#[ 2 34 3 85] 
#[ 2 34 3 109] 
#[ 2 38 3 21] 
#[ 2 38 3 85] 
#[ 2 38 3 109] 
#[ 2 42 3 21] 
#[ 2 42 3 85] 
#[ 2 42 3 109] 
#[ 2 46 3 21] 
#[ 2 46 3 85] 
#[ 2 46 3 109] 
#[ 2 50 3 21] 
#[ 2 50 3 85] 
#[ 2 50 3 109] 
#[ 2 54 3 21] 
#[ 2 54 3 85] 
#[ 2 54 3 109] 
#[ 2 62 3 21] 
#[ 2 62 3 85] 
#[ 2 62 3 109] 
#[ 2 70 3 21] 
#[ 2 70 7 253] 
#[ 2 70 3 85] 
#[ 2 70 3 109] 
#[ 2 74 3 21] 
#[ 2 74 3 85] 
#[ 2 74 3 109] 
#[ 2 78 3 21] 
#[ 2 78 3 85] 
#[ 2 78 3 109] 
#[ 2 82 3 21] 
#[ 2 82 3 85] 
#[ 2 82 3 109] 
#[ 2 86 3 21] 
#[ 2 86 3 85] 
#[ 2 86 3 109] 
#[ 2 246 3 21] 
#[ 2 246 3 85] 
#[ 2 246 3 109] 
#[ 2 250 3 21] 
#[ 2 250 9 229] 
#[ 2 250 3 85] 
#[ 2 250 3 109] 
#[ 2 182 3 82] 
#[ 2 54 3 21 3 142] 
#[ 2 54 3 25 3 142] 
#[ 2 54 3 29 3 142] 
#[ 2 54 3 33 3 142] 
#[ 2 54 3 37 3 142] 
#[ 2 54 3 41 3 142] 
#[ 2 54 3 45 3 142] 
#[ 2 54 3 49 3 142] 
#[ 2 54 3 53 3 142] 
#[ 2 54 3 57 3 142] 
#[ 2 54 3 61 3 142] 
#[ 2 54 3 65 3 142] 
#[ 2 54 3 69 3 142] 
#[ 2 54 3 77 3 142] 
#[ 2 54 3 81 3 142] 
#[ 2 54 3 85 3 142] 
#[ 2 54 3 89 3 142] 
#[ 2 54 3 93 3 142] 
#[ 2 54 3 97 3 142] 
#[ 2 54 3 101 3 142] 
#[ 2 54 3 105 3 142] 
#[ 2 54 3 109 3 142] 
#[ 2 54 3 113 3 142] 
#[ 1 138 3 146] 
#[ 3 21 3 150] 
#[ 3 85 3 150] 
#[ 3 109 3 150] 
#[ 2 54 3 21 4 70] 
#[ 2 54 3 25 4 70] 
#[ 2 54 3 29 4 70] 
#[ 2 54 3 33 4 70] 
#[ 2 54 3 37 4 70] 
#[ 2 54 3 41 4 70] 
#[ 2 54 3 45 4 70] 
#[ 2 54 3 49 4 70] 
#[ 2 54 3 53 4 70] 
#[ 2 54 3 57 4 70] 
#[ 2 54 3 61 4 70] 
#[ 2 54 3 65 4 70] 
#[ 2 54 3 69 4 70] 
#[ 2 54 3 77 4 70] 
#[ 2 54 3 81 4 70] 
#[ 2 54 3 85 4 70] 
#[ 2 54 3 89 4 70] 
#[ 2 54 3 93 4 70] 
#[ 2 54 3 97 4 70] 
#[ 2 54 3 101 4 70] 
#[ 2 54 3 105 4 70] 
#[ 2 54 3 109 4 70] 
#[ 2 54 3 113 4 70] 
#[ 1 138 4 74] 
#[ 3 21 4 78] 
#[ 3 85 4 78] 
#[ 3 109 4 78]
	).
]

{ #category : #'generated-accessing' }
TeradataParser class >> cacheId [
	^'2020-07-15T09:41:40.635258-05:00'
]

{ #category : #generated }
TeradataParser class >> definitionComment [
"%glr;
%ignorecase;
%left ""UNION"";
%left ""OR"";
%left ""AND"";
%nonassoc ""="" ""<>"" ""NE"" ""<"" ""<="" "">"" "">="" ""BETWEEN"";
%left ""||"";
%nonassoc ""LIKE"" ""IN"" ""NOT"";
%left ""+"" ""-"";
%left ""*"" ""/"" ""MOD"";
%right ""**"";

%prefix Teradata;
%suffix Node;
%root Program;
%hierarchy Expression (
    AliasedExpression
    BetweenExpression
    BinaryExpression
    CaseExpression
    CaseSpecificExpression
    CastExpression
    ConversionExpression
    CountExpression
    ExistsExpression
    ExtractExpression
    FunctionExpression
    IdentifierExpression
    InQueryExpression
    IntervalExpression
    InValueExpression
    IsNullExpression
    LikeExpression
    LiteralExpression
    NullExpression
    OverExpression
    QueryExpression
    StarExpression
    SubstringExpression
    TimestampExpression
    TitleExpression
    TranslateExpression
    TrimExpression
    UnaryExpression
    VariableExpression
);

<identifier>
	: [a-z_\$][a-z0-9_\$]* 
	| (\"" [^\""\r\n]* \"")+
	;
<variable>
	: \: <identifier>
	| \?
	;
<string>
	: (\' [^\']* \')+
	| \' [0-9A-F]* \' \s* XC[VF]?
	;
<number>
	: [0-9]+ ((\. [0-9]*) | X+)?	# XXXX -- patterns?
	;
<whitespace>
	: \s+
	;
<comment>
	: \-\- [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
File
	: Statements "";"" 'semicolon'* {{}}
	| "";"" 'semicolon'* {{}}
	;
Statements
	: Statement 'statement'
	| Statements "";"" 'semicolon'* "";"" 'semicolon' Statement 'statement'
	;
Statement
	: SelectQuery
	| DeleteQuery
	| ExecuteStatement
	| DatabaseStatement
	| TransactionStatement
	| HelpSessionStatement
	| SetStatement
	| CheckWorkloadStatement
	| LoadingStatement
	| UsingStatement
	| InsertQuery
	| UpdateQuery
	| DropTableQuery
	| CheckpointStatement
	| CreateMacroStatement
	| LockTableStatement
	| RollbackStatement
	| MergeQuery	;
MergeQuery
	: ""MERGE"" 'mergeToken' ""INTO"" 'intoToken'? Table 'mergeTable' ""USING"" 'usingToken' Table 'usingTable' ""ON"" 'onToken' Expression 'condition' WhenMergeCondition 'whenMerge'+ {{}}
	;
WhenMergeCondition
	: ""WHEN"" 'whenToken' ""MATCHED"" 'matchedToken' ""THEN"" 'thenToken' ""UPDATE"" 'updateToken' ""SET"" 'setToken' SetExpressionList {{}}
	| ""WHEN"" 'whenToken' ""NOT"" 'notToken' ""MATCHED"" 'matchedToken' ""THEN"" 'thenToken' ""INSERT"" 'insertToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' (""VALUES"" 'valuesToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen')? {{}}
	;
RollbackStatement
	: ""ROLLBACK"" 'rollbackToken' ""WORK"" 'workToken' <string> 'work' ""FROM"" 'fromToken' TableList WhereExpression {{}}
	;
LockTableStatement
	: (""LOCKING"" 'lockToken' | ""LOCK"" 'lockToken') ""TABLE"" 'tableToken'? TableName 'table' ""FOR"" 'forToken' <identifier> 'lock' Statement 'statement'? {{}}
	;
CreateMacroStatement
	: ""CREATE"" 'createToken' ""MACRO"" 'macroToken' IdentifierName 'name' MacroArgs ""AS"" 'asToken' ""("" 'leftParen' Statements "";"" 'semicolon'* "")"" 'rightParen' {{}}
	;
MacroArgs
	:
	| ""("" 'leftParen' ParameterList "")"" 'rightParen'
	;
ParameterList
	: Parameter 'parameter'
	| ParameterList "","" 'comma' Parameter 'parameter'
	;
Parameter
	: IdentifierName 'name' Type 'type' {{}}
	;
Type
	: TypeName 'name' (""("" 'leftParen' <number> 'precision' ("","" 'comma' <number> 'scale')? "")"" 'rightParen')? {{}}
	;
TypeName
	: ""CHAR""
	| ""VARCHAR""
	| ""CLOB""
	| ""DATE""
	| ""TIME""
	| ""TIMESTAMP""
	| ""BYTEINT""
	| ""SMALLINT""
	| ""INT""
	| ""INTEGER""
	| ""BIGINT""
	| ""DEC""
	| ""DECIMAL""
	| ""NUMERIC""
	| ""FLOAT""
	| ""REAL""
	| ""NUMBER""
	;
CheckpointStatement
	: ""CHECKPOINT"" 'checkpointToken' ""LOADING"" 'loadingToken' ""INTERVAL"" 'intervalToken' <number> 'interal' ""END"" 'endToken'? {{}}
	;
DropTableQuery
	: ""DROP"" 'dropToken' ""TABLE"" 'tableToken' TableName 'table' {{}}
	;
UpdateQuery
	: ""UPDATE"" 'updateToken' TableName 'table' ""SET"" 'setToken' SetExpressionList WhereExpression? (""ELSE"" 'elseToken' (InsertQuery 'else' | UpdateQuery 'else'))? {{}}
	| ""UPDATE"" 'updateToken' TableName 'table' ""FROM"" 'fromToken' TableList ""SET"" 'setToken' SetExpressionList WhereExpression? {{}}
	;
SetExpressionList
	: SetExpression 'setExpression'
	| SetExpressionList "","" 'comma' SetExpression 'setExpression'
	;
SetExpression
	: Identifier 'name' ""="" 'equals' Expression 'value' {{}}
	;
InsertQuery
	: (""INSERT"" 'insertToken' | ""INS"" 'insertToken') ""INTO"" 'intoToken'? TableName 'table' (""("" 'leftParen' ExpressionList "")"" 'rightParen')? ""VALUES"" 'valuesToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' {{}}
	| (""INSERT"" 'insertToken' | ""INS"" 'insertToken') ""INTO"" 'intoToken' TableName 'table' (""("" 'leftParen' ExpressionList "")"" 'rightParen')? SelectQuery 'query' {{}}
	;
UsingStatement
	: ""USING"" 'usingToken' ExpressionList Statement 'statement' {{}}
	;
LoadingStatement
	: ""BEGIN"" 'beginToken' ""LOADING"" 'loadingToken' TableName 'table' ""ERRORFILES"" 'errorfilesToken' ExpressionList ""WITH"" 'withToken' ""INTERVAL"" 'intervalToken' {{BeginLoadingStatement}}
	| ""END"" 'endToken' ""LOADING"" 'loadingToken' {{EndLoadingStatement}}
	;
CheckWorkloadStatement
	: ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""FOR"" 'forToken' Statement 'statement'  {{}}
	| ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""END"" 'endToken'  {{}}
	;
SetStatement
	: ""SET"" 'setToken' IdentifierName 'name' ""="" 'equals' Expression 'value' ""UPDATE"" 'updateToken'? ""FOR"" 'forToken' ""SESSION"" 'sessionToken' {{}}
	;
HelpSessionStatement
	: ""HELP"" 'helpToken' ""SESSION"" 'sessionToken' {{}}
	;
TransactionStatement
	: ""BT"" 'beginToken' {{BeginTransactionStatement}}
	| ""ET"" 'endToken' {{EndTransactionStatement}}
	;
DatabaseStatement
	: ""DATABASE"" 'databaseToken' IdentifierName 'database' {{}}
	;
ExecuteStatement
	: (""EXECUTE"" 'executeToken' | ""EXEC"" 'executeToken') IdentifierName 'name' ( ""("" 'leftParen' ExpressionList "")"" 'rightParen' )? {{}}
	;
DeleteQuery
	: (""DELETE"" 'deleteToken' | ""DEL"" 'deleteToken') ""FROM"" 'fromToken'? Table 'table' (WhereExpression | ""ALL"" 'allToken')? {{}}
	;
SelectQuery
	: (""SELECT"" 'selectToken' | ""SEL"" 'selectToken') (""DISTINCT"" 'distinctToken' | ""DISTINCTROW"" 'distinctToken')? (""TOP"" 'topToken' <number> 'top')? ExpressionList IntoExpression 'into'? (FromTables? WhereExpression? GroupByExpression  'group'? HavingExpression 'having'? PartitionByExpression 'partition'? QualifyExpression 'qualify'? OrderByExpression 'orderBy'?)? (""FOR"" 'forToken' ""CURSOR"" 'cursorToken')?  {{}}
	| (""SELECT"" 'selectToken' | ""SEL"" 'selectToken') (""DISTINCT"" 'distinctToken' | ""DISTINCTROW"" 'distinctToken')? (""TOP"" 'topToken' <number> 'top')? ExpressionList IntoExpression 'into'? (FromTables? GroupByExpression  'group'? HavingExpression 'having'? PartitionByExpression 'partition'? QualifyExpression 'qualify'?)? OrderByExpression 'orderBy' WhereExpression (""FOR"" 'forToken' ""CURSOR"" 'cursorToken')?  {{}}
	| SelectQuery 'left' ""UNION"" 'unionToken' ""ALL"" 'allToken'? UnionSelectQuery {{UnionQuery}}
	| ""WITH"" 'withToken' ""RECURSIVE"" 'recursiveToken'? WithTables Statement 'statement' {{WithQuery}}
	;
WithTables
	: WithTable 'withTable'
	| WithTables "","" 'comma' WithTable 'withTable'
	;
WithTable
	: IdentifierName 'name' (""("" 'leftParen' ExpressionList "")"" 'rightParen')? ""AS"" 'asToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{WithTableDefinition}}
	;
HavingExpression
	: ""HAVING"" 'havingToken' Expression 'condition' {{Having}}
	;
UnionSelectQuery
	: ""("" 'leftParen' SelectQuery 'right' "")"" 'rightParen' OrderByExpression 'orderBy'
	| SelectQuery 'right'
	;
QualifyExpression
	: ""QUALIFY"" 'qualifyToken' Expression 'condition' {{}}
	;
PartitionByExpression
	: ""PARTITION"" 'partitionToken' ""BY"" 'byToken' ExpressionList {{}}
	;
IntoExpression
	: ""INTO"" 'intoToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' {{}}
	;
FromTables
	: ""FROM"" 'fromToken' TableList
	;
TableList
	: Table 'table'
	| TableList "","" 'comma' Table 'table'
	;
 Table
	: (<identifier> 'name' ""."" 'period')* <identifier> 'name' (""AS"" 'asToken'? <identifier> 'alias')? {{Table}}
	| ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' (""AS"" 'asToken'? <identifier> 'alias')? {{SelectTable}}
	| Table 'left' ((""LEFT"" 'direction' | ""RIGHT"" 'direction') ""OUTER"" 'type'? | ""INNER"" 'type' | ""CROSS"" 'type')? ""JOIN"" 'joinToken' Table 'right' (""ON"" 'onToken' Expression 'on')? {{JoinTable}}
	| ""("" 'leftParen' Table 'left' ((""LEFT"" 'direction' | ""RIGHT"" 'direction') ""OUTER"" 'type'? | ""INNER"" 'type' | ""CROSS"" 'type')? ""JOIN"" 'joinToken' Table 'right' (""ON"" 'onToken' Expression 'on')? "")"" 'rightParen' {{JoinTable}}
	;
TableName
	: (<identifier> 'name' ""."" 'period')* <identifier> 'name' {{Table}}
	;
WhereExpression
	: ""WHERE"" 'whereToken' Expression 'where'
	;
GroupByExpression
	: ""GROUP"" 'groupToken' ""BY"" 'byToken' ExpressionList {{GroupBy}}
	;
OrderByExpression
	: ""ORDER"" 'orderToken' ""BY"" 'byToken' ExpressionList {{}}
	;
ExpressionList
	: NamedExpression 'value'
	| ExpressionList "","" 'comma'+ NamedExpression 'value'
	;
NamedExpression
	: Expression 
	| Expression 'expression' ""AS"" 'asToken'? <identifier> 'alias' {{AliasedExpression}}
	;
Expression
	: Identifier
	| <variable> 'name' {{VariableExpression}}
	| <string> 'value' {{LiteralExpression}}
	| <number> 'value' {{LiteralExpression}}
	| ""NULL"" 'nullToken' {{NullExpression}}
	| (<identifier> 'name' ""."" 'period')* ""*"" 'star' {{StarExpression}}
	| CaseExpression
	| FunctionExpression
	| Expression 'left' (""+"" 'operator' | ""-"" 'operator' | ""*"" 'operator' | ""/"" 'operator' | ""MOD"" 'operator' | ""||"" 'operator' | ""**"" 'operator') Expression 'right' {{BinaryExpression}}
	| Expression 'left' (""AND"" 'operator' | ""OR"" 'operator' | ""="" 'operator' | ""<>"" 'operator' | ""NE"" 'operator' |  ""<"" 'operator' | ""<="" 'operator' | "">"" 'operator' | "">="" 'operator') Expression 'right' {{BinaryExpression}}
	| Expression 'value' ""NOT"" 'notToken'? ""LIKE"" 'likeToken' Expression 'like' (""ESCAPE"" 'escapeToken' Expression 'escape')? {{LikeExpression}}
	| ""SUBSTRING"" 'substringToken' ""("" 'leftParen' Expression 'value' ""FROM"" 'fromToken' Expression 'from' (""FOR"" 'forToken' Expression 'for')? "")"" 'rightParen' {{SubstringExpression}}
	| Expression 'value' ""IS"" 'isToken' ""NOT"" 'notToken'? ""NULL"" 'nullToken' {{IsNullExpression}}
	| ""("" 'leftParen' Expression "")"" 'rightParen' {{Expression}}
	| Expression 'testValue' ""NOT"" 'notToken'? ""IN"" 'inToken' (Expression 'value' | ""("" 'leftParen' Expression 'value' "","" 'comma' ExpressionList "")"" 'rightParen') {{InValueExpression}}
	| Expression 'value' ""NOT"" 'notToken'? ""IN"" 'inToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{InQueryExpression}}
	| ""("" 'leftParen' Expression 'value' "","" 'comma' ExpressionList "")"" 'rightParen' ""NOT"" 'notToken'? ""IN"" 'inToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{InQueryExpression}}
	| Expression 'value' ""("" 'leftParen' ""FORMAT"" 'formatToken' <string> 'format' "")"" 'rightParen' {{ConversionExpression}}
	| Expression 'value' ""("" 'leftParen' Type 'type' ("","" 'comma' ""FORMAT"" 'formatToken' <string> 'format' )? "")"" 'rightParen' {{ConversionExpression}}
	| ""CAST"" 'castToken' ""("" 'leftParen' Expression 'value' ""AS"" 'asToken' Type 'type'? (""FORMAT"" 'formatToken' <string> 'format')? "")"" 'rightParen' {{CastExpression}}
	| (""-"" 'operator' | ""+"" 'operator') Expression 'value' {{UnaryExpression}}
	| Expression 'value' (""NOT"" 'notToken')? ""BETWEEN"" 'betweenToken' Expression 'first' ""AND"" 'andToken' Expression 'last' {{BetweenExpression}}
	| ""TRIM"" 'trimToken' ""("" 'leftParen' ((""BOTH"" 'positionToken' | ""TRAILING"" 'positionToken' | ""LEADING"" 'positionToken') ""FROM"" 'fromToken')? Expression 'value' "")"" 'rightParen' {{TrimExpression}}
	| ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{QueryExpression}}
	| ""NOT"" 'operator' Expression 'value' {{UnaryExpression}}
	| ""EXTRACT"" 'extractToken' ""("" 'leftParen'  <identifier> 'name' ""FROM"" 'fromToken' Expression 'value' "")"" 'rightParen' {{ExtractExpression}}
	#| ""RANK"" 'rankToken' ""("" 'leftParen' "")"" 'rightParen'
	| Expression 'value' ""OVER"" 'overToken' ""("" 'leftParen' PartitionByExpression 'partition'? OrderByExpression 'orderBy'? "")"" 'rightParen' {{OverExpression}}
	| ""INTERVAL"" 'intervalToken' <string> 'interval' <identifier> 'name' {{IntervalExpression}}
	| Expression 'value' ""("" 'leftParen' ""CASESPECIFIC"" 'caseSpecificToken' "")"" 'rightParen' {{CaseSpecificExpression}}
	| Expression 'value' ""("" 'leftParen' ""TITLE"" 'titleToken' <string> 'title' "")"" 'rightParen' {{TitleExpression}}
	| ""COUNT"" 'countToken' ""("" 'leftParen' (""DISTINCT"" 'countType' | ""ALL"" 'countType')? Expression 'value' "")"" 'rightParen' {{CountExpression}}
	| (""TIMESTAMP"" 'typeToken' | ""DATE"" 'typeToken' | ""TIME"" 'typeToken') (<string> 'value')? {{TimestampExpression}}
	| (""NOT"" 'notToken')? ""EXISTS"" 'existsToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{ExistsExpression}}
	| ""TRANSLATE"" 'translateToken' ""("" 'leftParen' Expression 'value' ""USING"" 'usingToken' <identifier> 'operation' (""WITH"" 'withToken' ""ERROR"" 'errorToken')? "")"" 'rightParen' {{TranslateExpression}}
	;
CaseExpression
	: ""CASE"" 'caseToken' Expression 'expression'? WhenExpressions ElseExpression 'else'? ""END"" 'endToken' {{}}
	;
ElseExpression
	: ""ELSE"" 'elseToken' Expression 'value' {{}}
	;
WhenExpressions
	: WhenExpression 'when'
	| WhenExpressions WhenExpression 'when'
	;
WhenExpression
	: ""WHEN"" 'whenToken' Expression 'condition' ""THEN"" 'thenToken' Expression 'value' {{}}
	;
FunctionExpression
	: <identifier> 'function' ""("" 'leftParen' ExpressionList? "")"" 'rightParen' {{}}
	;
Identifier
	: (<identifier> 'name' ""."" 'period')* <identifier> 'name' {{IdentifierExpression}}
	;
IdentifierName
	: (<identifier> 'name' ""."" 'period')* <identifier> 'name' {{}}
	;"
]

{ #category : #generated }
TeradataParser class >> reduceTable [
^#(
	#(134 0 #reduceActionFor_____semicolon__1: 1280001 false ) 
	#(159 1 #reduceActionForTransactionStatement1: 5434369 false ) 
	#(185 0 #reduceActionFor__identifier___name_______period___1: 7886849 false ) 
	#(159 1 #reduceActionForTransactionStatement2: 5434370 false ) 
	#(133 1 #reduceActionForFile2: 1260546 false ) 
	#(135 1 #reduceActionForStatements1: 1331201 false ) 
	#(136 1 #liftFirstValue: 1441810 false ) 
	#(136 1 #liftFirstValue: 1441809 false ) 
	#(136 1 #liftFirstValue: 1441808 false ) 
	#(136 1 #liftFirstValue: 1441807 false ) 
	#(136 1 #liftFirstValue: 1441806 false ) 
	#(136 1 #liftFirstValue: 1441805 false ) 
	#(136 1 #liftFirstValue: 1441804 false ) 
	#(136 1 #liftFirstValue: 1441803 false ) 
	#(136 1 #liftFirstValue: 1441802 false ) 
	#(136 1 #liftFirstValue: 1441801 false ) 
	#(136 1 #liftFirstValue: 1441800 false ) 
	#(136 1 #liftFirstValue: 1441799 false ) 
	#(136 1 #liftFirstValue: 1441798 false ) 
	#(136 1 #liftFirstValue: 1441797 false ) 
	#(136 1 #liftFirstValue: 1441796 false ) 
	#(136 1 #liftFirstValue: 1441795 false ) 
	#(136 1 #liftFirstValue: 1441794 false ) 
	#(136 1 #liftFirstValue: 1441793 false ) 
	#(160 2 #reduceActionForDatabaseStatement1: 5559297 false ) 
	#(162 2 #reduceActionForDeleteQuery7: 5800967 false ) 
	#(162 2 #reduceActionForDeleteQuery7: 5800961 false ) 
	#(155 2 #reduceActionForLoadingStatement2: 4710402 false ) 
	#(161 2 #reduceActionForExecuteStatement3: 5643267 false ) 
	#(161 2 #reduceActionForExecuteStatement3: 5643265 false ) 
	#(158 2 #reduceActionForHelpSessionStatement1: 5356545 false ) 
	#(196 1 #reduceActionForExpression72: 9086024 false ) 
	#(196 1 #reduceActionForExpression5: 9085957 false ) 
	#(196 1 #reduceActionForExpression72: 9086026 false ) 
	#(196 1 #reduceActionForExpression72: 9086022 false ) 
	#(196 1 #reduceActionForExpression2: 9085954 false ) 
	#(196 1 #reduceActionForExpression3: 9085955 false ) 
	#(196 1 #reduceActionForExpression3: 9085956 false ) 
	#(164 0 #nil 6124545 false ) 
	#(193 1 #reduceActionForStatements1: 8860673 false ) 
	#(195 1 #liftFirstValue: 8963073 false ) 
	#(196 1 #liftFirstValue: 9085959 false ) 
	#(196 1 #liftFirstValue: 9085960 false ) 
	#(196 1 #liftFirstValue: 9085953 false ) 
	#(174 1 #reduceActionForStatements1: 7004161 false ) 
	#(134 2 #reduceActionFor_____semicolon__2: 1280002 false ) 
	#(133 2 #reduceActionForFile1: 1260545 false ) 
	#(156 3 #reduceActionForCheckWorkloadStatement2: 4990978 false ) 
	#(143 0 #reduceActionForMacroArgs1: 2910209 false ) 
	#(203 2 #reduceActionForIdentifierName1: 13710337 false ) 
	#(185 2 #reduceActionFor__identifier___name_______period___2: 7886850 false ) 
	#(162 3 #reduceActionForDeleteQuery10: 5800970 false ) 
	#(162 3 #reduceActionForDeleteQuery9: 5800969 false ) 
	#(186 0 #nil 8171521 false ) 
	#(162 3 #reduceActionForDeleteQuery8: 5800968 false ) 
	#(183 2 #reduceActionForTable1: 7877633 false ) 
	#(162 3 #reduceActionForDeleteQuery10: 5800964 false ) 
	#(162 3 #reduceActionForDeleteQuery9: 5800963 false ) 
	#(162 3 #reduceActionForDeleteQuery8: 5800962 false ) 
	#(149 3 #reduceActionForDropTableQuery1: 3621889 false ) 
	#(189 2 #reduceActionForTable1: 8542209 false ) 
	#(196 2 #reduceActionForExpression50: 9086002 false ) 
	#(196 2 #reduceActionForExpression50: 9086001 false ) 
	#(199 1 #reduceActionForWhenExpressions1: 13308929 false ) 
	#(196 2 #reduceActionForExpression73: 9086025 false ) 
	#(196 2 #reduceActionForExpression50: 9086010 false ) 
	#(196 2 #reduceActionForExpression73: 9086027 false ) 
	#(196 2 #reduceActionForExpression73: 9086023 false ) 
	#(196 2 #reduceActionForExpression6: 9085958 false ) 
	#(202 2 #reduceActionForIdentifier1: 13609985 false ) 
	#(194 1 #reduceActionForWhenExpressions1: 8922113 false ) 
	#(167 0 #nil 6235137 false ) 
	#(166 0 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: 6148097 false ) 
	#(168 0 #nil 6270977 false ) 
	#(173 0 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify____1: 6572033 false ) 
	#(164 1 #liftFirstValue: 6124546 false ) 
	#(195 2 #reduceActionForNamedExpression2: 8963074 false ) 
	#(154 3 #reduceActionForUsingStatement1: 4624385 false ) 
	#(163 3 #reduceActionForSelectQuery27: 5946395 false ) 
	#(177 1 #reduceActionForUnionSelectQuery2: 7360514 false ) 
	#(163 3 #reduceActionForSelectQuery25: 5946393 false ) 
	#(156 4 #reduceActionForCheckWorkloadStatement1: 4990977 false ) 
	#(148 4 #reduceActionForCheckpointStatement1: 3467265 false ) 
	#(184 2 #reduceActionFor__identifier___name_______period__1: 7886849 false ) 
	#(183 3 #reduceActionForTable4: 7877636 false ) 
	#(162 4 #reduceActionForDeleteQuery12: 5800972 false ) 
	#(162 4 #reduceActionForDeleteQuery11: 5800971 false ) 
	#(188 0 #reduceActionFor__ON___onToken__Expression__on___1: 8258561 false ) 
	#(186 1 #liftFirstValue: 8171522 false ) 
	#(190 2 #reduceActionFor__identifier___name_______period__1: 8626177 false ) 
	#(183 3 #reduceActionForTable2: 7877634 false ) 
	#(162 4 #reduceActionForDeleteQuery12: 5800966 false ) 
	#(162 4 #reduceActionForDeleteQuery11: 5800965 false ) 
	#(153 4 #reduceActionForInsertQuery11: 4221963 false ) 
	#(153 4 #reduceActionForInsertQuery11: 4221961 false ) 
	#(141 4 #reduceActionForLockTableStatement5: 2542597 false ) 
	#(141 4 #reduceActionForLockTableStatement5: 2542593 false ) 
	#(196 3 #reduceActionForExpression57: 9086009 false ) 
	#(196 3 #reduceActionForExpression33: 9085985 false ) 
	#(197 3 #reduceActionForCaseExpression1: 13114369 false ) 
	#(199 2 #reduceActionFor_____semicolon__2: 13308930 false ) 
	#(196 3 #reduceActionForExpression64: 9086016 false ) 
	#(201 3 #reduceActionForFunctionExpression1: 13504513 false ) 
	#(166 1 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6148098 false ) 
	#(171 0 #reduceActionFor__ON___onToken__Expression__on___1: 6332417 false ) 
	#(172 1 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___1: 6572033 false ) 
	#(173 1 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6572034 false ) 
	#(168 1 #liftFirstValue: 6270978 false ) 
	#(167 1 #liftFirstValue: 6235138 false ) 
	#(194 2 #reduceActionFor_____semicolon__2: 8922114 false ) 
	#(193 3 #reduceActionForExpressionList2: 8860674 false ) 
	#(147 1 #liftFirstValue: 3253259 false ) 
	#(147 1 #liftFirstValue: 3253255 false ) 
	#(147 1 #liftFirstValue: 3253249 false ) 
	#(147 1 #liftFirstValue: 3253251 false ) 
	#(147 1 #liftFirstValue: 3253252 false ) 
	#(147 1 #liftFirstValue: 3253260 false ) 
	#(147 1 #liftFirstValue: 3253261 false ) 
	#(147 1 #liftFirstValue: 3253263 false ) 
	#(147 1 #liftFirstValue: 3253257 false ) 
	#(147 1 #liftFirstValue: 3253258 false ) 
	#(147 1 #liftFirstValue: 3253265 false ) 
	#(147 1 #liftFirstValue: 3253262 false ) 
	#(147 1 #liftFirstValue: 3253264 false ) 
	#(147 1 #liftFirstValue: 3253256 false ) 
	#(147 1 #liftFirstValue: 3253253 false ) 
	#(147 1 #liftFirstValue: 3253254 false ) 
	#(147 1 #liftFirstValue: 3253250 false ) 
	#(146 1 #reduceActionForType1: 3129345 false ) 
	#(196 3 #reduceActionForExpression11: 9085963 false ) 
	#(196 3 #reduceActionForExpression11: 9085967 false ) 
	#(196 3 #reduceActionForExpression11: 9085961 false ) 
	#(196 3 #reduceActionForExpression11: 9085962 false ) 
	#(196 3 #reduceActionForExpression11: 9085964 false ) 
	#(196 3 #reduceActionForExpression11: 9085973 false ) 
	#(196 3 #reduceActionForExpression11: 9085974 false ) 
	#(196 3 #reduceActionForExpression11: 9085971 false ) 
	#(196 3 #reduceActionForExpression11: 9085970 false ) 
	#(196 3 #reduceActionForExpression11: 9085975 false ) 
	#(196 3 #reduceActionForExpression11: 9085976 false ) 
	#(196 3 #reduceActionForExpression11: 9085968 false ) 
	#(195 3 #reduceActionForNamedExpression3: 8963075 false ) 
	#(196 3 #reduceActionForExpression34: 9085986 false ) 
	#(196 3 #reduceActionForExpression31: 9085983 false ) 
	#(196 3 #reduceActionForExpression25: 9085977 false ) 
	#(196 3 #reduceActionForExpression11: 9085965 false ) 
	#(196 3 #reduceActionForExpression11: 9085972 false ) 
	#(196 3 #reduceActionForExpression11: 9085969 false ) 
	#(196 3 #reduceActionForExpression11: 9085966 false ) 
	#(182 1 #reduceActionForStatements1: 7805953 false ) 
	#(150 4 #reduceActionForUpdateQuery1: 3707905 false ) 
	#(151 1 #reduceActionForStatements1: 4025345 false ) 
	#(163 4 #reduceActionForSelectQuery28: 5946396 false ) 
	#(174 3 #reduceActionForWithTables2: 7004162 false ) 
	#(135 4 #reduceActionForStatements2: 1331202 false ) 
	#(163 4 #reduceActionForSelectQuery26: 5946394 false ) 
	#(148 5 #reduceActionForCheckpointStatement2: 3467266 false ) 
	#(144 1 #reduceActionForStatements1: 2977793 false ) 
	#(183 4 #reduceActionForTable5: 7877637 false ) 
	#(188 1 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 8258562 false ) 
	#(183 4 #reduceActionForTable7: 7877639 false ) 
	#(183 4 #reduceActionForTable3: 7877635 false ) 
	#(161 5 #reduceActionForExecuteStatement4: 5643268 false ) 
	#(161 5 #reduceActionForExecuteStatement4: 5643266 false ) 
	#(141 5 #reduceActionForLockTableStatement7: 2542599 false ) 
	#(141 5 #reduceActionForLockTableStatement6: 2542598 false ) 
	#(141 5 #reduceActionForLockTableStatement7: 2542595 false ) 
	#(141 5 #reduceActionForLockTableStatement6: 2542594 false ) 
	#(197 4 #reduceActionForCaseExpression3: 13114371 false ) 
	#(198 2 #reduceActionForElseExpression1: 13243393 false ) 
	#(197 4 #reduceActionForCaseExpression2: 13114370 false ) 
	#(196 4 #reduceActionForExpression67: 9086019 false ) 
	#(196 4 #reduceActionForExpression76: 9086028 false ) 
	#(196 4 #reduceActionForExpression53: 9086005 false ) 
	#(201 4 #reduceActionForFunctionExpression2: 13504514 false ) 
	#(181 2 #reduceActionForFromTables1: 7758849 false ) 
	#(176 2 #reduceActionForHavingExpression1: 7278593 false ) 
	#(178 2 #reduceActionForQualifyExpression1: 7490561 false ) 
	#(171 1 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6332418 false ) 
	#(163 5 #reduceActionForSelectQuery7: 5946375 false ) 
	#(169 0 #nil 6300673 false ) 
	#(172 2 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___3: 6572035 false ) 
	#(172 2 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___2: 6572034 false ) 
	#(172 2 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___9: 6572041 false ) 
	#(172 2 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___5: 6572037 false ) 
	#(196 4 #reduceActionForExpression65: 9086017 false ) 
	#(196 4 #reduceActionForExpression43: 9085995 false ) 
	#(196 4 #reduceActionForExpression32: 9085984 false ) 
	#(196 4 #reduceActionForExpression36: 9085988 false ) 
	#(196 4 #reduceActionForExpression27: 9085979 false ) 
	#(196 4 #reduceActionForExpression60: 9086012 false ) 
	#(163 5 #reduceActionForSelectQuery7: 5946369 false ) 
	#(150 5 #reduceActionForUpdateQuery4: 3707908 false ) 
	#(143 3 #reduceActionForMacroArgs2: 2910210 false ) 
	#(145 2 #reduceActionForParameter1: 3073025 false ) 
	#(183 5 #reduceActionForTable6: 7877638 false ) 
	#(183 5 #reduceActionForTable11: 7877643 false ) 
	#(183 5 #reduceActionForTable11: 7877642 false ) 
	#(187 2 #reduceActionFor__identifier___name_______period__1: 8258561 false ) 
	#(153 6 #reduceActionForInsertQuery5: 4221957 false ) 
	#(153 6 #reduceActionForInsertQuery5: 4221953 false ) 
	#(141 6 #reduceActionForLockTableStatement8: 2542600 false ) 
	#(141 6 #reduceActionForLockTableStatement8: 2542596 false ) 
	#(140 6 #reduceActionForRollbackStatement1: 2403329 false ) 
	#(200 4 #reduceActionForWhenExpression1: 13395969 false ) 
	#(197 5 #reduceActionForCaseExpression4: 13114372 false ) 
	#(196 5 #reduceActionForExpression45: 9085997 false ) 
	#(196 5 #reduceActionForExpression69: 9086021 false ) 
	#(196 5 #reduceActionForExpression69: 9086020 false ) 
	#(163 6 #reduceActionForSelectQuery9: 5946377 false ) 
	#(163 6 #reduceActionForSelectQuery9: 5946379 false ) 
	#(196 5 #reduceActionForExpression77: 9086029 false ) 
	#(180 4 #reduceActionForIntoExpression1: 7663617 false ) 
	#(191 3 #reduceActionForGroupByExpression1: 8689665 false ) 
	#(179 3 #reduceActionForPartitionByExpression1: 7569409 false ) 
	#(170 2 #reduceActionFor__identifier___name_______period__1: 6332417 false ) 
	#(165 3 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: 6148097 false ) 
	#(169 1 #liftFirstValue: 6300674 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___4: 6572036 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___11: 6572043 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___10: 6572042 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___13: 6572045 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___7: 6572039 false ) 
	#(172 3 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___6: 6572038 false ) 
	#(196 5 #reduceActionForExpression42: 9085994 false ) 
	#(196 5 #reduceActionForExpression66: 9086018 false ) 
	#(196 5 #reduceActionForExpression51: 9086003 false ) 
	#(196 5 #reduceActionForExpression38: 9085990 false ) 
	#(196 5 #reduceActionForExpression26: 9085978 false ) 
	#(196 5 #reduceActionForExpression62: 9086014 false ) 
	#(196 5 #reduceActionForExpression61: 9086013 false ) 
	#(163 6 #reduceActionForSelectQuery9: 5946371 false ) 
	#(163 6 #reduceActionForSelectQuery9: 5946373 false ) 
	#(157 6 #reduceActionForSetStatement1: 5191681 false ) 
	#(182 3 #reduceActionForWithTables2: 7805954 false ) 
	#(150 6 #reduceActionForUpdateQuery7: 3707911 false ) 
	#(151 3 #reduceActionForWithTables2: 4025346 false ) 
	#(150 6 #reduceActionForUpdateQuery3: 3707907 false ) 
	#(150 6 #reduceActionForUpdateQuery3: 3707906 false ) 
	#(152 3 #reduceActionForSetExpression1: 4145153 false ) 
	#(175 5 #reduceActionForWithTable1: 7093249 false ) 
	#(177 4 #reduceActionForUnionSelectQuery1: 7360513 false ) 
	#(155 7 #reduceActionForLoadingStatement1: 4710401 false ) 
	#(144 3 #reduceActionForWithTables2: 2977794 false ) 
	#(183 6 #reduceActionForTable12: 7877644 false ) 
	#(183 6 #reduceActionForTable8: 7877640 false ) 
	#(183 6 #reduceActionForTable8: 7877641 false ) 
	#(153 7 #reduceActionForInsertQuery12: 4221964 false ) 
	#(153 7 #reduceActionForInsertQuery7: 4221959 false ) 
	#(153 7 #reduceActionForInsertQuery12: 4221962 false ) 
	#(153 7 #reduceActionForInsertQuery7: 4221955 false ) 
	#(137 7 #reduceActionForMergeQuery1: 1813505 false ) 
	#(138 1 #reduceActionForWhenExpressions1: 1969153 false ) 
	#(196 6 #reduceActionForExpression47: 9085999 false ) 
	#(196 6 #reduceActionForExpression59: 9086011 false ) 
	#(196 6 #reduceActionForExpression29: 9085981 false ) 
	#(163 7 #reduceActionForSelectQuery8: 5946376 false ) 
	#(196 6 #reduceActionForExpression78: 9086030 false ) 
	#(196 6 #reduceActionForExpression54: 9086006 false ) 
	#(196 6 #reduceActionForExpression54: 9086008 false ) 
	#(196 6 #reduceActionForExpression54: 9086007 false ) 
	#(192 3 #reduceActionForOrderByExpression1: 8778753 false ) 
	#(163 7 #reduceActionForSelectQuery19: 5946387 false ) 
	#(165 4 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: 6148098 false ) 
	#(165 4 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: 6148105 false ) 
	#(172 4 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___12: 6572044 false ) 
	#(172 4 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___15: 6572047 false ) 
	#(172 4 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___14: 6572046 false ) 
	#(165 4 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: 6148101 false ) 
	#(165 4 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: 6148099 false ) 
	#(172 4 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___8: 6572040 false ) 
	#(146 4 #reduceActionForType2: 3129346 false ) 
	#(196 6 #reduceActionForExpression52: 9086004 false ) 
	#(196 6 #reduceActionForExpression39: 9085991 false ) 
	#(196 6 #reduceActionForExpression28: 9085980 false ) 
	#(196 6 #reduceActionForExpression63: 9086015 false ) 
	#(163 7 #reduceActionForSelectQuery8: 5946370 false ) 
	#(163 7 #reduceActionForSelectQuery19: 5946381 false ) 
	#(157 7 #reduceActionForSetStatement2: 5191682 false ) 
	#(150 7 #reduceActionForUpdateQuery8: 3707912 false ) 
	#(150 7 #reduceActionForUpdateQuery6: 3707910 false ) 
	#(150 7 #reduceActionForUpdateQuery6: 3707909 false ) 
	#(183 7 #reduceActionForTable16: 7877648 false ) 
	#(183 7 #reduceActionForTable16: 7877647 false ) 
	#(137 8 #reduceActionForMergeQuery2: 1813506 false ) 
	#(138 2 #reduceActionFor_____semicolon__2: 1969154 false ) 
	#(196 7 #reduceActionForExpression46: 9085998 false ) 
	#(163 8 #reduceActionForSelectQuery10: 5946378 false ) 
	#(163 8 #reduceActionForSelectQuery21: 5946389 false ) 
	#(163 8 #reduceActionForSelectQuery10: 5946380 false ) 
	#(163 8 #reduceActionForSelectQuery21: 5946391 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: 6148106 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___13: 6148109 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: 6148107 false ) 
	#(172 5 #reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___16: 6572048 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: 6148102 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: 6148103 false ) 
	#(165 5 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: 6148100 false ) 
	#(196 7 #reduceActionForExpression44: 9085996 false ) 
	#(196 7 #reduceActionForExpression35: 9085987 false ) 
	#(163 8 #reduceActionForSelectQuery10: 5946372 false ) 
	#(163 8 #reduceActionForSelectQuery21: 5946383 false ) 
	#(163 8 #reduceActionForSelectQuery10: 5946374 false ) 
	#(163 8 #reduceActionForSelectQuery21: 5946385 false ) 
	#(142 9 #reduceActionForCreateMacroStatement1: 2721793 false ) 
	#(183 8 #reduceActionForTable13: 7877645 false ) 
	#(183 8 #reduceActionForTable13: 7877646 false ) 
	#(153 9 #reduceActionForInsertQuery6: 4221958 false ) 
	#(153 9 #reduceActionForInsertQuery6: 4221954 false ) 
	#(196 8 #reduceActionForExpression48: 9086000 false ) 
	#(196 8 #reduceActionForExpression30: 9085982 false ) 
	#(163 9 #reduceActionForSelectQuery20: 5946388 false ) 
	#(196 8 #reduceActionForExpression79: 9086031 false ) 
	#(165 6 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___14: 6148110 false ) 
	#(165 6 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___15: 6148111 false ) 
	#(165 6 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: 6148108 false ) 
	#(165 6 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: 6148104 false ) 
	#(146 6 #reduceActionForType3: 3129347 false ) 
	#(196 8 #reduceActionForExpression37: 9085989 false ) 
	#(163 9 #reduceActionForSelectQuery20: 5946382 false ) 
	#(175 8 #reduceActionForWithTable2: 7093250 false ) 
	#(153 10 #reduceActionForInsertQuery8: 4221960 false ) 
	#(153 10 #reduceActionForInsertQuery8: 4221956 false ) 
	#(196 9 #reduceActionForExpression40: 9085992 false ) 
	#(163 10 #reduceActionForSelectQuery22: 5946390 false ) 
	#(163 10 #reduceActionForSelectQuery22: 5946392 false ) 
	#(165 7 #reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___16: 6148112 false ) 
	#(163 10 #reduceActionForSelectQuery22: 5946384 false ) 
	#(163 10 #reduceActionForSelectQuery22: 5946386 false ) 
	#(196 10 #reduceActionForExpression41: 9085993 false ) 
	#(139 6 #reduceActionForWhenMergeCondition1: 2010113 false ) 
	#(139 8 #reduceActionForWhenMergeCondition2: 2010114 false ) 
	#(139 12 #reduceActionForWhenMergeCondition3: 2010115 false )
	).
]

{ #category : #'generated-accessing' }
TeradataParser class >> scannerClass [
	^TeradataScanner
]

{ #category : #generated }
TeradataParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
TeradataParser class >> symbolNames [
	^ #('"("' '")"' '"*"' '"**"' '"+"' '","' '"-"' '"."' '"/"' '";"' '"<"' '"<="' '"<>"' '"="' '">"' '">="' '"ALL"' '"AND"' '"AS"' '"BEGIN"' '"BETWEEN"' '"BIGINT"' '"BOTH"' '"BT"' '"BY"' '"BYTEINT"' '"CASE"' '"CASESPECIFIC"' '"CAST"' '"CHAR"' '"CHECK"' '"CHECKPOINT"' '"CLOB"' '"COUNT"' '"CREATE"' '"CROSS"' '"CURSOR"' '"DATABASE"' '"DATE"' '"DEC"' '"DECIMAL"' '"DEL"' '"DELETE"' '"DISTINCT"' '"DISTINCTROW"' '"DROP"' '"ELSE"' '"END"' '"ERROR"' '"ERRORFILES"' '"ESCAPE"' '"ET"' '"EXEC"' '"EXECUTE"' '"EXISTS"' '"EXTRACT"' '"FLOAT"' '"FOR"' '"FORMAT"' '"FROM"' '"GROUP"' '"HAVING"' '"HELP"' '"IN"' '"INNER"' '"INS"' '"INSERT"' '"INT"' '"INTEGER"' '"INTERVAL"' '"INTO"' '"IS"' '"JOIN"' '"LEADING"' '"LEFT"' '"LIKE"' '"LOADING"' '"LOCK"' '"LOCKING"' '"MACRO"' '"MATCHED"' '"MERGE"' '"MOD"' '"NE"' '"NOT"' '"NULL"' '"NUMBER"' '"NUMERIC"' '"ON"' '"OR"' '"ORDER"' '"OUTER"' '"OVER"' '"PARTITION"' '"QUALIFY"' '"REAL"' '"RECURSIVE"' '"RIGHT"' '"ROLLBACK"' '"SEL"' '"SELECT"' '"SESSION"' '"SET"' '"SMALLINT"' '"SUBSTRING"' '"TABLE"' '"THEN"' '"TIME"' '"TIMESTAMP"' '"TITLE"' '"TOP"' '"TRAILING"' '"TRANSLATE"' '"TRIM"' '"UNION"' '"UPDATE"' '"USING"' '"VALUES"' '"VARCHAR"' '"WHEN"' '"WHERE"' '"WITH"' '"WORK"' '"WORKLOAD"' '"||"' '<identifier>' '<variable>' '<string>' '<number>' '<whitespace>' '<comment>' 'B e g i n' 'File' '";" ''semicolon''*' 'Statements' 'Statement' 'MergeQuery' 'WhenMergeCondition ''whenMerge''+' 'WhenMergeCondition' 'RollbackStatement' 'LockTableStatement' 'CreateMacroStatement' 'MacroArgs' 'ParameterList' 'Parameter' 'Type' 'TypeName' 'CheckpointStatement' 'DropTableQuery' 'UpdateQuery' 'SetExpressionList' 'SetExpression' 'InsertQuery' 'UsingStatement' 'LoadingStatement' 'CheckWorkloadStatement' 'SetStatement' 'HelpSessionStatement' 'TransactionStatement' 'DatabaseStatement' 'ExecuteStatement' 'DeleteQuery' 'SelectQuery' 'IntoExpression ''into''?' '(FromTables? WhereExpression? GroupByExpression  ''group''? HavingExpression ''having''? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)' '(FromTables? WhereExpression? GroupByExpression  ''group''? HavingExpression ''having''? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)?' 'PartitionByExpression ''partition''?' 'QualifyExpression ''qualify''?' 'OrderByExpression ''orderBy''?' '("FOR" ''forToken'' "CURSOR" ''cursorToken'')' '("FOR" ''forToken'' "CURSOR" ''cursorToken'')?' '(FromTables? GroupByExpression  ''group''? HavingExpression ''having''? PartitionByExpression ''partition''? QualifyExpression ''qualify''?)' '(FromTables? GroupByExpression  ''group''? HavingExpression ''having''? PartitionByExpression ''partition''? QualifyExpression ''qualify''?)?' 'WithTables' 'WithTable' 'HavingExpression' 'UnionSelectQuery' 'QualifyExpression' 'PartitionByExpression' 'IntoExpression' 'FromTables' 'TableList' 'Table' '(<identifier> ''name'' "." ''period'')' '(<identifier> ''name'' "." ''period'')*' '"OUTER" ''type''?' '("ON" ''onToken'' Expression ''on'')' '("ON" ''onToken'' Expression ''on'')?' 'TableName' 'WhereExpression' 'GroupByExpression' 'OrderByExpression' 'ExpressionList' '"," ''comma''+' 'NamedExpression' 'Expression' 'CaseExpression' 'ElseExpression' 'WhenExpressions' 'WhenExpression' 'FunctionExpression' 'Identifier' 'IdentifierName' 'E O F' 'error')
]

{ #category : #generated }
TeradataParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #TeradataFileNode #TeradataFileNode #OrderedCollection #OrderedCollection #TeradataProgramNode #TeradataMergeQueryNode #OrderedCollection #TeradataWhenMergeConditionNode #TeradataRollbackStatementNode #TeradataLockTableStatementNode #TeradataCreateMacroStatementNode #OrderedCollection #OrderedCollection #TeradataParameterNode #TeradataTypeNode #SmaCCToken #TeradataCheckpointStatementNode #TeradataDropTableQueryNode #TeradataUpdateQueryNode #OrderedCollection #TeradataSetExpressionNode #TeradataInsertQueryNode #TeradataUsingStatementNode #TeradataProgramNode #TeradataCheckWorkloadStatementNode #TeradataSetStatementNode #TeradataHelpSessionStatementNode #TeradataProgramNode #TeradataDatabaseStatementNode #TeradataExecuteStatementNode #TeradataDeleteQueryNode #TeradataProgramNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataPartitionByExpressionNode #TeradataQualifyExpressionNode #TeradataOrderByExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #TeradataWithTableDefinitionNode #TeradataHavingNode #OrderedCollection #TeradataQualifyExpressionNode #TeradataPartitionByExpressionNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataProgramNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #TeradataTableNode #OrderedCollection #TeradataGroupByNode #TeradataOrderByExpressionNode #OrderedCollection #OrderedCollection #TeradataExpressionNode #TeradataExpressionNode #TeradataCaseExpressionNode #TeradataElseExpressionNode #OrderedCollection #TeradataWhenExpressionNode #TeradataFunctionExpressionNode #TeradataIdentifierExpressionNode #TeradataIdentifierNameNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
TeradataParser class >> transitionTable [
^#(
#[1 0 6 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 0 113 0 133 0 117 0 134 0 121 0 135 0 125 0 136 0 125 0 137 0 125 0 140 0 125 0 141 0 125 0 142 0 125 0 148 0 125 0 149 0 125 0 150 0 125 0 153 0 125 0 154 0 125 0 155 0 125 0 156 0 125 0 157 0 125 0 158 0 125 0 159 0 125 0 160 0 125 0 161 0 125 0 162 0 197 0 163 0 6 0 204] 
#[0 0 201 0 77] 
#[0 0 10 0 2 0 10 0 115 0 204] 
#[0 0 205 0 124] 
#[0 0 209 0 77] 
#[0 0 213 0 80] 
#[1 0 14 0 126 0 217 0 185 0 221 0 203] 
#[1 0 225 0 1 0 229 0 60 0 14 0 126 0 233 0 183 0 237 0 185] 
#[1 0 225 0 1 0 241 0 60 0 14 0 126 0 245 0 183 0 237 0 185] 
#[0 0 249 0 106] 
#[0 0 253 0 77] 
#[0 0 18 0 2 0 10 0 115 0 204] 
#[1 0 14 0 126 0 217 0 185 1 1 0 203] 
#[1 0 14 0 126 0 217 0 185 1 5 0 203] 
#[0 1 9 0 102] 
#[1 1 13 0 71 0 14 0 126 1 17 0 185 1 21 0 189] 
#[1 1 25 0 71 0 14 0 126 1 17 0 185 1 29 0 189] 
#[1 1 33 0 106 0 14 0 126 1 17 0 185 1 37 0 189] 
#[1 1 41 0 106 0 14 0 126 1 17 0 185 1 45 0 189] 
#[1 0 225 0 1 1 49 0 71 0 14 0 126 1 53 0 183 0 237 0 185] 
#[0 1 57 0 123] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 89 0 44 1 93 0 45 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 129 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 1 161 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 185 0 44 1 189 0 45 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 193 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 1 197 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 14 0 126 0 217 0 185 1 201 0 203] 
#[1 0 14 0 126 1 17 0 185 1 205 0 189] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 1 209 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 213 0 97 0 14 0 126 1 217 0 174 1 221 0 175 0 217 0 185 1 225 0 203] 
#[0 0 0 0 204] 
#[1 1 229 0 10 0 22 0 204] 
#[1 0 6 0 10 1 233 0 134 0 6 0 204] 
#[0 0 26 0 2 0 10 0 204] 
#[0 0 30 0 2 0 10 0 115 0 204] 
#[0 0 34 0 2 0 10 0 115 0 204] 
#[0 0 38 0 2 0 10 0 115 0 204] 
#[0 0 42 0 2 0 10 0 115 0 204] 
#[0 0 46 0 2 0 10 0 115 0 204] 
#[0 0 50 0 2 0 10 0 115 0 204] 
#[0 0 54 0 2 0 10 0 115 0 204] 
#[0 0 58 0 2 0 10 0 115 0 204] 
#[0 0 62 0 2 0 10 0 115 0 204] 
#[0 0 66 0 2 0 10 0 115 0 204] 
#[0 0 70 0 2 0 10 0 115 0 204] 
#[0 0 74 0 2 0 10 0 115 0 204] 
#[0 0 78 0 2 0 10 0 115 0 204] 
#[0 0 82 0 2 0 10 0 115 0 204] 
#[0 0 86 0 2 0 10 0 115 0 204] 
#[0 0 90 0 2 0 10 0 115 0 204] 
#[0 0 94 0 2 0 10 0 115 0 204] 
#[1 0 98 0 2 0 98 0 10 1 237 0 115 0 98 0 204] 
#[1 0 14 0 126 1 17 0 185 1 241 0 189] 
#[1 1 245 0 48 1 249 0 58] 
#[0 1 253 0 70] 
#[1 0 14 0 126 0 217 0 185 2 1 0 203] 
#[1 2 5 0 126 2 9 0 184] 
#[0 0 102 0 2 0 10 0 115 0 204] 
#[1 0 225 0 1 0 89 0 100 0 93 0 101 0 109 0 122 0 14 0 126 2 13 0 163 2 17 0 183 0 237 0 185] 
#[1 0 225 0 1 0 14 0 126 2 21 0 183 0 237 0 185] 
#[1 0 106 0 2 0 106 0 10 2 25 0 17 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 0 106 0 115 2 49 0 121 2 53 0 190 0 106 0 204] 
#[1 2 57 0 126 2 9 0 184] 
#[1 0 225 0 1 0 14 0 126 2 61 0 183 0 237 0 185] 
#[1 0 110 0 2 0 110 0 10 2 65 0 17 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 0 110 0 115 2 49 0 121 2 69 0 190 0 110 0 204] 
#[1 0 14 0 126 1 17 0 185 2 73 0 189] 
#[0 0 114 0 2 0 10 0 115 0 204] 
#[1 2 77 0 1 0 118 0 2 0 118 0 10 0 118 0 115 0 118 0 204] 
#[1 2 81 0 1 0 122 0 2 0 122 0 10 0 122 0 115 0 122 0 204] 
#[0 0 126 0 2 0 10 0 115 0 204] 
#[1 0 14 0 126 1 17 0 185 2 85 0 189] 
#[1 2 89 0 126 2 9 0 184] 
#[1 2 93 0 1 2 97 0 118] 
#[1 0 14 0 126 1 17 0 185 2 101 0 189] 
#[1 2 105 0 1 2 109 0 118] 
#[1 0 14 0 126 1 17 0 185 2 113 0 189] 
#[0 2 117 0 58] 
#[1 0 14 0 126 1 17 0 185 2 121 0 189] 
#[0 2 125 0 58] 
#[1 0 225 0 1 0 14 0 126 2 129 0 183 0 237 0 185] 
#[1 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 2 133 0 117] 
#[0 2 137 0 128] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 0 89 0 100 0 93 0 101 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 109 0 122 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 2 141 0 163 1 157 0 185 2 145 0 196 2 145 0 197 2 145 0 201 2 145 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 149 0 196 2 149 0 197 2 149 0 201 2 149 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 153 0 196 2 153 0 197 2 153 0 201 2 153 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 2 157 0 120 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 161 0 196 2 161 0 197 2 165 0 199 2 169 0 200 2 161 0 201 2 161 0 202] 
#[0 2 173 0 1] 
#[0 2 177 0 1] 
#[1 0 130 0 1 0 130 0 2 0 130 0 3 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 20 0 130 0 21 0 130 0 24 0 130 0 31 0 130 0 32 0 130 0 35 0 130 0 36 0 130 0 38 0 130 0 42 0 130 0 43 0 130 0 46 0 130 0 47 0 130 0 48 0 130 0 51 0 130 0 52 0 130 0 53 0 130 0 54 0 130 0 58 0 130 0 60 0 130 0 61 0 130 0 62 0 130 0 63 0 130 0 64 0 130 0 65 0 130 0 66 0 130 0 67 0 130 0 71 0 130 0 72 0 130 0 73 0 130 0 75 0 130 0 76 0 130 0 78 0 130 0 79 0 130 0 82 0 130 0 83 0 130 0 84 0 130 0 85 0 130 0 89 0 130 0 90 0 130 0 91 0 130 0 93 0 130 0 94 0 130 0 95 0 130 0 98 0 130 0 99 0 130 0 100 0 130 0 101 0 130 0 103 0 130 0 107 0 130 0 115 0 130 0 116 0 130 0 117 0 130 0 120 0 130 0 121 0 130 0 122 0 130 0 125 0 130 0 126 2 181 0 128 0 130 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 2 185 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 189 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 2 193 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 197 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 2 201 0 1] 
#[0 2 205 0 1] 
#[0 2 209 0 128] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 2 213 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 2 217 0 196 2 217 0 197 2 217 0 201 2 217 0 202] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 2 221 0 1] 
#[1 0 138 0 1 0 138 0 2 0 138 0 3 0 138 0 4 0 138 0 5 0 138 0 6 0 138 0 7 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 17 0 138 0 18 0 138 0 19 0 138 0 20 0 138 0 21 0 138 0 24 0 138 0 31 0 138 0 32 0 138 0 35 0 138 0 36 0 138 0 38 0 138 0 42 0 138 0 43 0 138 0 46 0 138 0 47 0 138 0 48 0 138 0 51 0 138 0 52 0 138 0 53 0 138 0 54 0 138 0 58 0 138 0 60 0 138 0 61 0 138 0 62 0 138 0 63 0 138 0 64 0 138 0 65 0 138 0 66 0 138 0 67 0 138 0 71 0 138 0 72 0 138 0 73 0 138 0 75 0 138 0 76 0 138 0 78 0 138 0 79 0 138 0 82 0 138 0 83 0 138 0 84 0 138 0 85 0 138 0 89 0 138 0 90 0 138 0 91 0 138 0 93 0 138 0 94 0 138 0 95 0 138 0 98 0 138 0 99 0 138 0 100 0 138 0 101 0 138 0 103 0 138 0 107 0 138 0 115 0 138 0 116 0 138 0 117 0 138 0 120 0 138 0 121 0 138 0 122 0 138 0 125 0 138 0 126 2 225 0 128 0 138 0 204] 
#[1 0 142 0 1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 142 0 19 0 142 0 20 0 142 0 21 0 142 0 24 0 142 0 31 0 142 0 32 0 142 0 35 0 142 0 36 0 142 0 38 0 142 0 42 0 142 0 43 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 51 0 142 0 52 0 142 0 53 0 142 0 54 0 142 0 58 0 142 0 60 0 142 0 61 0 142 0 62 0 142 0 63 0 142 0 64 0 142 0 65 0 142 0 66 0 142 0 67 0 142 0 71 0 142 0 72 0 142 0 73 0 142 0 75 0 142 0 76 0 142 0 78 0 142 0 79 0 142 0 82 0 142 0 83 0 142 0 84 0 142 0 85 0 142 0 89 0 142 0 90 0 142 0 91 0 142 0 93 0 142 0 94 0 142 0 95 0 142 0 98 0 142 0 99 0 142 0 100 0 142 0 101 0 142 0 103 0 142 0 107 0 142 0 115 0 142 0 116 0 142 0 117 0 142 0 120 0 142 0 121 0 142 0 122 0 142 0 125 0 142 0 126 2 229 0 128 0 142 0 204] 
#[0 2 233 0 129] 
#[0 2 237 0 1] 
#[0 2 241 0 1] 
#[0 2 245 0 1] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 2 249 0 3 2 253 0 126 2 9 0 184] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 3 9 0 164 3 9 0 180 3 17 0 194 0 158 0 204] 
#[0 0 162 0 2 0 6 0 10 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 66 0 67 0 71 0 78 0 79 0 82 0 91 0 94 0 95 0 99 0 100 0 101 0 103 0 115 0 116 0 117 0 121 0 122 0 204] 
#[1 3 21 0 1 0 166 0 2 3 25 0 3 3 29 0 4 3 33 0 5 0 166 0 6 3 37 0 7 3 41 0 9 0 166 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 73 0 19 0 166 0 20 3 77 0 21 0 166 0 24 0 166 0 31 0 166 0 32 0 166 0 35 0 166 0 38 0 166 0 42 0 166 0 43 0 166 0 46 0 166 0 48 0 166 0 52 0 166 0 53 0 166 0 54 0 166 0 58 0 166 0 60 0 166 0 61 0 166 0 62 0 166 0 63 3 81 0 64 0 166 0 66 0 166 0 67 0 166 0 71 3 85 0 72 3 89 0 76 0 166 0 78 0 166 0 79 0 166 0 82 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 0 166 0 91 3 109 0 93 0 166 0 94 0 166 0 95 0 166 0 99 0 166 0 100 0 166 0 101 0 166 0 103 0 166 0 115 0 166 0 116 0 166 0 117 0 166 0 121 0 166 0 122 3 113 0 125 3 117 0 126 0 166 0 204] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 0 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 3 121 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 3 125 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 3 129 0 111 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 3 133 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 3 137 0 129] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 3 141 0 164 3 141 0 180 3 17 0 194 0 158 0 204] 
#[0 3 145 0 14] 
#[1 3 149 0 60 3 153 0 103] 
#[1 3 1 0 6 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 3 157 0 136 3 157 0 137 3 157 0 140 3 157 0 141 3 157 0 142 3 157 0 148 3 157 0 149 3 157 0 150 3 157 0 153 3 157 0 154 3 157 0 155 3 157 0 156 3 157 0 157 3 157 0 158 3 157 0 159 3 157 0 160 3 157 0 161 3 157 0 162 0 197 0 163 3 17 0 194] 
#[1 0 14 0 126 3 161 0 174 1 221 0 175 0 217 0 185 1 225 0 203] 
#[1 3 165 0 6 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 3 169 0 136 3 169 0 137 3 169 0 140 3 169 0 141 3 169 0 142 3 169 0 148 3 169 0 149 3 169 0 150 3 169 0 153 3 169 0 154 3 169 0 155 3 169 0 156 3 169 0 157 3 169 0 158 3 169 0 159 3 169 0 160 3 169 0 161 3 169 0 162 0 197 0 163] 
#[0 0 182 0 6 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 63 0 66 0 67 0 78 0 79 0 82 0 99 0 100 0 101 0 103 0 116 0 117 0 122] 
#[1 3 173 0 1 3 177 0 19] 
#[0 0 186 0 10 0 204] 
#[1 3 181 0 10 0 190 0 204] 
#[1 3 185 0 1 3 189 0 17 0 89 0 100 0 93 0 101 0 109 0 122 3 193 0 163 3 197 0 177] 
#[0 3 201 0 50] 
#[0 0 194 0 2 0 10 0 115 0 204] 
#[1 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 3 205 0 136 3 205 0 137 3 205 0 140 3 205 0 141 3 205 0 142 3 205 0 148 3 205 0 149 3 205 0 150 3 205 0 153 3 205 0 154 3 205 0 155 3 205 0 156 3 205 0 157 3 205 0 158 3 205 0 159 3 205 0 160 3 205 0 161 3 205 0 162 0 197 0 163] 
#[0 3 209 0 129] 
#[1 3 213 0 1 0 198 0 19 3 217 0 143] 
#[1 0 202 0 1 0 202 0 2 3 221 0 8 0 202 0 10 0 202 0 14 0 202 0 19 0 202 0 22 0 202 0 26 0 202 0 30 0 202 0 33 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 57 0 202 0 68 0 202 0 69 0 202 0 87 0 202 0 88 0 202 0 96 0 202 0 104 0 202 0 108 0 202 0 109 0 202 0 115 0 202 0 119 0 202 0 204] 
#[0 0 206 0 3 0 126] 
#[1 3 225 0 2 1 237 0 115] 
#[1 3 229 0 36 3 233 0 65 3 237 0 73 3 241 0 75 3 245 0 98] 
#[1 0 210 0 2 0 210 0 10 3 249 0 17 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 0 210 0 115 2 49 0 121 3 253 0 190 0 210 0 204] 
#[0 0 214 0 2 0 10 0 115 0 204] 
#[0 4 1 0 73] 
#[0 4 5 0 73] 
#[1 0 225 0 1 0 14 0 126 4 9 0 183 0 237 0 185] 
#[1 0 218 0 73 4 17 0 92 4 17 0 186] 
#[1 0 218 0 73 4 21 0 92 4 21 0 186] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 25 0 196 4 25 0 197 4 25 0 201 4 25 0 202] 
#[0 0 222 0 2 0 10 0 115 0 204] 
#[1 0 226 0 2 0 226 0 6 3 221 0 8 0 226 0 10 0 226 0 17 4 29 0 19 0 226 0 36 0 226 0 58 0 226 0 61 0 226 0 62 0 226 0 65 0 226 0 73 0 226 0 75 0 226 0 89 0 226 0 91 0 226 0 94 0 226 0 95 0 226 0 98 0 226 0 103 0 226 0 115 0 226 0 117 0 226 0 121 4 33 0 126 0 226 0 204] 
#[1 0 230 0 2 0 230 0 10 4 37 0 17 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 0 230 0 115 2 49 0 121 4 41 0 190 0 230 0 204] 
#[0 0 234 0 2 0 10 0 115 0 204] 
#[0 0 238 0 2 0 10 0 115 0 204] 
#[0 0 242 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 45 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 49 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 4 53 0 1 0 89 0 100 0 93 0 101 4 57 0 118 0 109 0 122 4 61 0 163] 
#[1 0 246 0 1 0 246 0 2 3 221 0 8 0 246 0 10 0 246 0 50 0 246 0 58 0 246 0 60 0 246 0 100 0 246 0 101 0 246 0 103 0 246 0 115 0 246 0 118 0 246 0 122 0 246 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 65 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 4 69 0 1] 
#[1 4 73 0 1 0 89 0 100 0 93 0 101 4 77 0 118 0 109 0 122 4 81 0 163] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 85 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 4 89 0 1] 
#[0 4 93 0 58] 
#[0 4 97 0 126] 
#[0 4 101 0 58] 
#[0 4 105 0 126] 
#[1 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 2 45 0 98 4 109 0 117] 
#[1 0 225 0 1 0 14 0 126 4 113 0 183 0 237 0 185] 
#[0 4 117 0 60] 
#[1 4 121 0 2 1 237 0 115] 
#[1 3 21 0 1 4 125 0 2 3 25 0 3 3 29 0 4 3 33 0 5 4 129 0 6 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 0 11 0 1 0 250 0 2 3 25 0 3 3 29 0 4 0 250 0 5 0 250 0 6 0 250 0 7 3 41 0 9 0 250 0 10 0 250 0 11 0 250 0 12 0 250 0 13 0 250 0 14 0 250 0 15 0 250 0 16 0 250 0 17 0 250 0 18 0 250 0 19 0 250 0 20 0 250 0 21 0 250 0 24 0 250 0 31 0 250 0 32 0 250 0 35 0 250 0 36 0 250 0 38 0 250 0 42 0 250 0 43 0 250 0 46 0 250 0 47 0 250 0 48 0 250 0 51 0 250 0 52 0 250 0 53 0 250 0 54 0 250 0 58 0 250 0 60 0 250 0 61 0 250 0 62 0 250 0 63 0 250 0 64 0 250 0 65 0 250 0 66 0 250 0 67 0 250 0 71 0 15 0 72 0 250 0 73 0 250 0 75 0 250 0 76 0 250 0 78 0 250 0 79 0 250 0 82 3 93 0 83 0 250 0 84 0 250 0 85 0 250 0 89 0 250 0 90 0 250 0 91 0 19 0 93 0 250 0 94 0 250 0 95 0 250 0 98 0 250 0 99 0 250 0 100 0 250 0 101 0 250 0 103 0 250 0 107 0 250 0 115 0 250 0 116 0 250 0 117 0 250 0 120 0 250 0 121 0 250 0 122 0 250 0 125 0 250 0 126 0 250 0 204] 
#[1 0 23 0 1 0 254 0 2 3 25 0 3 3 29 0 4 0 254 0 5 0 254 0 6 0 254 0 7 3 41 0 9 0 254 0 10 0 254 0 11 0 254 0 12 0 254 0 13 0 254 0 14 0 254 0 15 0 254 0 16 0 254 0 17 0 254 0 18 0 254 0 19 0 254 0 20 0 254 0 21 0 254 0 24 0 254 0 31 0 254 0 32 0 254 0 35 0 254 0 36 0 254 0 38 0 254 0 42 0 254 0 43 0 254 0 46 0 254 0 47 0 254 0 48 0 254 0 51 0 254 0 52 0 254 0 53 0 254 0 54 0 254 0 58 0 254 0 60 0 254 0 61 0 254 0 62 0 254 0 63 0 254 0 64 0 254 0 65 0 254 0 66 0 254 0 67 0 254 0 71 0 27 0 72 0 254 0 73 0 254 0 75 0 254 0 76 0 254 0 78 0 254 0 79 0 254 0 82 3 93 0 83 0 254 0 84 0 254 0 85 0 254 0 89 0 254 0 90 0 254 0 91 0 31 0 93 0 254 0 94 0 254 0 95 0 254 0 98 0 254 0 99 0 254 0 100 0 254 0 101 0 254 0 103 0 254 0 107 0 254 0 115 0 254 0 116 0 254 0 117 0 254 0 120 0 254 0 121 0 254 0 122 0 254 0 125 0 254 0 126 0 254 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 133 0 196 4 133 0 197 4 133 0 201 4 133 0 202] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 2 157 0 120 3 113 0 125 4 137 0 199 2 169 0 200] 
#[1 4 141 0 47 4 145 0 48 2 157 0 120 4 149 0 198 4 153 0 200] 
#[0 1 2 0 47 0 48 0 120] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 157 0 196 4 157 0 197 4 157 0 201 4 157 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 4 161 0 17 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 4 165 0 44 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 169 0 196 4 169 0 197 4 169 0 201 4 169 0 202] 
#[0 1 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 173 0 129] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 4 177 0 164 4 177 0 180 3 17 0 194 0 158 0 204] 
#[0 4 181 0 129] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 4 185 0 164 4 185 0 180 3 17 0 194 0 158 0 204] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 4 189 0 163] 
#[0 4 193 0 126] 
#[0 4 197 0 126] 
#[0 4 201 0 1] 
#[1 0 35 0 1 1 10 0 2 3 25 0 3 3 29 0 4 3 33 0 5 1 10 0 6 3 37 0 7 3 41 0 9 1 10 0 10 1 10 0 11 1 10 0 12 1 10 0 13 1 10 0 14 1 10 0 15 1 10 0 16 1 10 0 17 1 10 0 18 1 10 0 19 1 10 0 20 1 10 0 21 1 10 0 24 1 10 0 31 1 10 0 32 1 10 0 35 1 10 0 36 1 10 0 38 1 10 0 42 1 10 0 43 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 58 1 10 0 60 1 10 0 61 1 10 0 62 1 10 0 63 1 10 0 65 1 10 0 66 1 10 0 67 1 10 0 71 0 39 0 72 1 10 0 73 1 10 0 75 1 10 0 78 1 10 0 79 1 10 0 82 3 93 0 83 1 10 0 84 1 10 0 89 1 10 0 90 1 10 0 91 0 43 0 93 1 10 0 94 1 10 0 95 1 10 0 98 1 10 0 99 1 10 0 100 1 10 0 101 1 10 0 103 1 10 0 107 1 10 0 115 1 10 0 116 1 10 0 117 1 10 0 120 1 10 0 121 1 10 0 122 1 10 0 125 1 10 0 126 1 10 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 205 0 196 4 205 0 197 4 205 0 201 4 205 0 202] 
#[0 1 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 1 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 209 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 213 0 196 4 213 0 197 4 213 0 201 4 213 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 4 217 0 23 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 4 221 0 74 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 4 225 0 112 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 229 0 196 4 229 0 197 4 229 0 201 4 229 0 202] 
#[1 1 61 0 1 4 233 0 2 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 4 237 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 26 0 1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 5 1 26 0 6 1 26 0 7 3 221 0 8 1 26 0 9 1 26 0 10 1 26 0 11 1 26 0 12 1 26 0 13 1 26 0 14 1 26 0 15 1 26 0 16 1 26 0 17 1 26 0 18 1 26 0 19 1 26 0 20 1 26 0 21 1 26 0 24 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 38 1 26 0 42 1 26 0 43 1 26 0 46 1 26 0 47 1 26 0 48 1 26 0 51 1 26 0 52 1 26 0 53 1 26 0 54 1 26 0 58 1 26 0 60 1 26 0 61 1 26 0 62 1 26 0 63 1 26 0 64 1 26 0 65 1 26 0 66 1 26 0 67 1 26 0 71 1 26 0 72 1 26 0 73 1 26 0 75 1 26 0 76 1 26 0 78 1 26 0 79 1 26 0 82 1 26 0 83 1 26 0 84 1 26 0 85 1 26 0 89 1 26 0 90 1 26 0 91 1 26 0 93 1 26 0 94 1 26 0 95 1 26 0 98 1 26 0 99 1 26 0 100 1 26 0 101 1 26 0 103 1 26 0 107 1 26 0 115 1 26 0 116 1 26 0 117 1 26 0 120 1 26 0 121 1 26 0 122 1 26 0 125 1 26 0 126 1 26 0 204] 
#[0 1 30 0 1 0 3 0 5 0 6 0 7 0 27 0 29 0 34 0 39 0 55 0 56 0 70 0 85 0 86 0 105 0 108 0 109 0 113 0 114 0 126 0 127 0 128 0 129] 
#[0 4 241 0 1] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 5 13 0 166 5 17 0 167 5 21 0 168 5 25 0 172 5 29 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 1 50 0 2 0 10 0 58 0 60 0 61 0 62 0 91 0 94 0 95 0 115 0 121 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 5 57 0 6 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 61 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 5 149 0 22 5 149 0 26 5 73 0 28 5 149 0 30 5 149 0 33 5 149 0 39 5 149 0 40 5 149 0 41 5 149 0 57 5 101 0 59 5 149 0 68 5 149 0 69 5 149 0 87 5 149 0 88 5 149 0 96 5 149 0 104 5 149 0 108 5 149 0 109 5 137 0 110 5 149 0 119 5 145 0 146 5 149 0 147] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 153 0 196 5 153 0 197 5 153 0 201 5 153 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 157 0 196 5 157 0 197 5 157 0 201 5 157 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 161 0 196 5 161 0 197 5 161 0 201 5 161 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 165 0 196 5 165 0 197 5 165 0 201 5 165 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 169 0 196 5 169 0 197 5 169 0 201 5 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 173 0 196 5 173 0 197 5 173 0 201 5 173 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 177 0 196 5 177 0 197 5 177 0 201 5 177 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 181 0 196 5 181 0 197 5 181 0 201 5 181 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 185 0 196 5 185 0 197 5 185 0 201 5 185 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 189 0 196 5 189 0 197 5 189 0 201 5 189 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 193 0 196 5 193 0 197 5 193 0 201 5 193 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 197 0 196 5 197 0 197 5 197 0 201 5 197 0 202] 
#[0 5 201 0 126] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 205 0 196 5 205 0 197 5 205 0 201 5 205 0 202] 
#[1 5 209 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 213 0 196 5 213 0 197 5 213 0 201 5 213 0 202] 
#[1 5 217 0 85 5 221 0 86] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 225 0 196 5 225 0 197 5 225 0 201 5 225 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 229 0 196 5 229 0 197 5 229 0 201 5 229 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 233 0 196 5 233 0 197 5 233 0 201 5 233 0 202] 
#[1 5 237 0 21 5 241 0 64 5 245 0 76] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 5 249 0 196 5 249 0 197 5 249 0 201 5 249 0 202] 
#[0 5 253 0 1] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 1 0 196 6 1 0 197 6 1 0 201 6 1 0 202] 
#[0 1 54 0 2 0 6 0 10 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 66 0 67 0 71 0 78 0 79 0 82 0 91 0 94 0 95 0 99 0 100 0 101 0 103 0 115 0 116 0 117 0 121 0 122 0 204] 
#[0 6 5 0 129] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 6 9 0 164 6 9 0 180 3 17 0 194 0 158 0 204] 
#[0 6 13 0 129] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 6 17 0 164 6 17 0 180 3 17 0 194 0 158 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 21 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 6 25 0 166 5 17 0 167 5 21 0 168 5 25 0 172 6 29 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 33 0 196 6 33 0 197 6 33 0 201 6 33 0 202] 
#[1 0 225 0 1 0 14 0 126 6 37 0 182 6 41 0 183 0 237 0 185] 
#[1 0 14 0 126 6 45 0 151 6 49 0 152 6 53 0 185 6 57 0 202] 
#[0 1 58 0 2 0 10 0 115 0 204] 
#[1 3 165 0 6 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 6 61 0 136 6 61 0 137 6 61 0 140 6 61 0 141 6 61 0 142 6 61 0 148 6 61 0 149 6 61 0 150 6 61 0 153 6 61 0 154 6 61 0 155 6 61 0 156 6 61 0 157 6 61 0 158 6 61 0 159 6 61 0 160 6 61 0 161 6 61 0 162 0 197 0 163] 
#[1 0 14 0 126 6 65 0 175 0 217 0 185 1 225 0 203] 
#[0 1 62 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 69 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 6 73 0 1] 
#[1 0 186 0 2 0 186 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 6 77 0 136 6 77 0 137 6 77 0 140 6 77 0 141 6 77 0 142 6 77 0 148 6 77 0 149 6 77 0 150 6 77 0 153 6 77 0 154 6 77 0 155 6 77 0 156 6 77 0 157 6 77 0 158 6 77 0 159 6 77 0 160 6 77 0 161 6 77 0 162 0 197 0 163 0 186 0 204] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 6 81 0 163] 
#[1 3 185 0 1 0 89 0 100 0 93 0 101 0 109 0 122 3 193 0 163 6 85 0 177] 
#[1 1 66 0 2 1 66 0 10 1 237 0 115 1 66 0 204] 
#[0 1 70 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 89 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 1 74 0 2 0 10 0 115 0 204] 
#[1 1 78 0 2 1 78 0 10 6 93 0 48 1 78 0 115 1 78 0 204] 
#[1 0 14 0 126 6 97 0 144 6 101 0 145 0 217 0 185 6 105 0 203] 
#[0 6 109 0 19] 
#[0 1 82 0 3 0 126] 
#[1 1 86 0 2 1 86 0 6 1 86 0 10 1 86 0 17 6 113 0 19 1 86 0 36 1 86 0 58 1 86 0 61 1 86 0 62 1 86 0 65 1 86 0 73 1 86 0 75 1 86 0 89 1 86 0 91 1 86 0 94 1 86 0 95 1 86 0 98 1 86 0 103 1 86 0 115 1 86 0 117 1 86 0 121 6 117 0 126 1 86 0 204] 
#[0 6 121 0 73] 
#[0 6 125 0 73] 
#[1 0 225 0 1 0 14 0 126 6 129 0 183 0 237 0 185] 
#[1 0 218 0 73 6 133 0 92 6 133 0 186] 
#[1 0 218 0 73 6 137 0 92 6 137 0 186] 
#[0 1 90 0 2 0 10 0 115 0 204] 
#[0 1 94 0 2 0 10 0 115 0 204] 
#[1 0 225 0 1 0 14 0 126 6 141 0 183 0 237 0 185] 
#[1 0 225 0 1 0 14 0 126 6 145 0 183 0 237 0 185] 
#[1 1 98 0 2 1 98 0 6 1 98 0 10 1 98 0 17 0 59 0 36 1 98 0 58 1 98 0 61 1 98 0 62 0 63 0 65 0 67 0 73 0 71 0 75 0 75 0 89 1 98 0 91 1 98 0 94 1 98 0 95 0 79 0 98 1 98 0 103 1 98 0 115 1 98 0 117 1 98 0 121 6 153 0 187 6 157 0 188 1 98 0 204] 
#[0 1 102 0 73] 
#[0 6 161 0 73] 
#[0 6 165 0 73] 
#[1 3 21 0 1 1 106 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 1 106 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 1 106 0 47 1 106 0 58 1 106 0 61 1 106 0 62 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 1 106 0 91 3 109 0 93 1 106 0 94 1 106 0 95 1 106 0 115 3 113 0 125 1 106 0 204] 
#[0 6 169 0 126] 
#[0 1 110 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 1 114 0 2 0 10 0 115 0 204] 
#[0 1 118 0 2 0 10 0 115 0 204] 
#[1 6 173 0 2 3 1 0 6 3 17 0 194] 
#[1 6 177 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 181 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 6 185 0 1] 
#[1 1 122 0 2 1 122 0 10 1 237 0 115 1 122 0 204] 
#[1 6 189 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 193 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 197 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 6 201 0 1] 
#[1 1 126 0 2 1 126 0 10 1 237 0 115 1 126 0 204] 
#[1 6 205 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 209 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 6 213 0 126] 
#[1 1 130 0 2 1 130 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 1 130 0 115 0 101 0 116 0 105 0 117 0 109 0 122 6 217 0 136 6 217 0 137 6 217 0 140 6 217 0 141 6 217 0 142 6 217 0 148 6 217 0 149 6 217 0 150 6 217 0 153 6 217 0 154 6 217 0 155 6 217 0 156 6 217 0 157 6 217 0 158 6 217 0 159 6 217 0 160 6 217 0 161 6 217 0 162 0 197 0 163 1 130 0 204] 
#[0 6 221 0 126] 
#[1 1 134 0 2 1 134 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 1 134 0 115 0 101 0 116 0 105 0 117 0 109 0 122 6 225 0 136 6 225 0 137 6 225 0 140 6 225 0 141 6 225 0 142 6 225 0 148 6 225 0 149 6 225 0 150 6 225 0 153 6 225 0 154 6 225 0 155 6 225 0 156 6 225 0 157 6 225 0 158 6 225 0 159 6 225 0 160 6 225 0 161 6 225 0 162 0 197 0 163 1 134 0 204] 
#[1 0 225 0 1 0 14 0 126 6 229 0 183 0 237 0 185] 
#[1 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 6 233 0 89 2 45 0 98] 
#[1 0 225 0 1 0 14 0 126 6 237 0 182 6 41 0 183 0 237 0 185] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 6 241 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 6 245 0 107 3 113 0 125] 
#[1 4 141 0 47 6 249 0 48 2 157 0 120 6 253 0 198 4 153 0 200] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 1 0 196 7 1 0 197 7 1 0 201 7 1 0 202] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 7 5 0 48] 
#[0 1 150 0 47 0 48 0 120] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 7 9 0 19 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 13 0 196 7 13 0 197 7 13 0 201 7 13 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 17 0 196 7 17 0 197 7 17 0 201 7 17 0 202] 
#[1 3 21 0 1 7 21 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 25 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 7 29 0 166 5 17 0 167 5 21 0 168 5 25 0 172 7 33 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 37 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 7 41 0 166 5 17 0 167 5 21 0 168 5 25 0 172 7 45 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[1 7 49 0 2 1 237 0 115] 
#[0 7 53 0 60] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 7 57 0 163] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 7 61 0 60 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 7 65 0 164 7 65 0 180 3 17 0 194 0 158 0 204] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 7 69 0 117 3 113 0 125] 
#[0 7 73 0 60] 
#[0 7 77 0 60] 
#[0 7 81 0 60] 
#[1 3 21 0 1 7 85 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 7 89 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 93 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 225 0 1 0 14 0 126 7 97 0 182 6 41 0 183 0 237 0 185] 
#[0 7 101 0 25] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 105 0 196 7 105 0 197 7 105 0 201 7 105 0 202] 
#[0 7 109 0 25] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 7 113 0 196 7 113 0 197 7 113 0 201 7 113 0 202] 
#[0 1 162 0 2 0 10 0 58 0 115 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 7 125 0 171 1 166 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 7 129 0 168 7 129 0 178 1 42 0 204] 
#[0 1 170 0 91] 
#[0 1 174 0 91] 
#[1 7 133 0 91 7 137 0 192] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 7 141 0 167 7 145 0 168 7 145 0 178 7 149 0 179 1 34 0 204] 
#[0 1 178 0 2 0 10 0 58 0 91 0 115 0 204] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 7 153 0 168 7 153 0 178 1 182 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 249 0 61 4 253 0 62 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 2 49 0 121 7 157 0 167 7 161 0 168 7 165 0 176 7 161 0 178 7 169 0 179 7 173 0 190 7 177 0 191 1 34 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 249 0 61 4 253 0 62 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 7 181 0 167 7 185 0 176 7 181 0 179 7 193 0 191 1 34 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 253 0 62 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 7 197 0 167 7 201 0 168 7 205 0 176 7 201 0 178 7 209 0 179 1 34 0 204] 
#[0 1 186 0 1 0 3 0 5 0 6 0 7 0 27 0 29 0 34 0 39 0 55 0 56 0 70 0 85 0 86 0 105 0 108 0 109 0 113 0 114 0 126 0 127 0 128 0 129] 
#[0 1 190 0 2 0 6 0 10 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 66 0 67 0 71 0 78 0 79 0 82 0 91 0 94 0 95 0 99 0 100 0 101 0 103 0 115 0 116 0 117 0 121 0 122 0 204] 
#[0 1 194 0 1 0 2 0 6 0 59] 
#[0 1 198 0 1 0 2 0 6 0 59] 
#[0 7 213 0 2] 
#[0 1 202 0 1 0 2 0 6 0 59] 
#[0 1 206 0 1 0 2 0 6 0 59] 
#[0 1 210 0 1 0 2 0 6 0 59] 
#[0 1 214 0 1 0 2 0 6 0 59] 
#[0 1 218 0 1 0 2 0 6 0 59] 
#[0 1 222 0 1 0 2 0 6 0 59] 
#[0 7 217 0 128] 
#[0 1 226 0 1 0 2 0 6 0 59] 
#[0 1 230 0 1 0 2 0 6 0 59] 
#[0 1 234 0 1 0 2 0 6 0 59] 
#[0 1 238 0 1 0 2 0 6 0 59] 
#[0 1 242 0 1 0 2 0 6 0 59] 
#[0 1 246 0 1 0 2 0 6 0 59] 
#[0 1 250 0 1 0 2 0 6 0 59] 
#[0 1 254 0 1 0 2 0 6 0 59] 
#[0 7 221 0 128] 
#[0 2 2 0 1 0 2 0 6 0 59] 
#[1 7 225 0 2 7 229 0 6] 
#[1 7 233 0 1 2 6 0 2 2 6 0 6 2 6 0 59] 
#[1 0 95 0 1 2 10 0 2 2 10 0 3 3 29 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 9 2 10 0 10 2 10 0 11 2 10 0 12 2 10 0 13 2 10 0 14 2 10 0 15 2 10 0 16 2 10 0 17 2 10 0 18 2 10 0 19 2 10 0 20 2 10 0 21 2 10 0 24 2 10 0 31 2 10 0 32 2 10 0 35 2 10 0 36 2 10 0 38 2 10 0 42 2 10 0 43 2 10 0 46 2 10 0 47 2 10 0 48 2 10 0 51 2 10 0 52 2 10 0 53 2 10 0 54 2 10 0 58 2 10 0 60 2 10 0 61 2 10 0 62 2 10 0 63 2 10 0 64 2 10 0 65 2 10 0 66 2 10 0 67 2 10 0 71 0 99 0 72 2 10 0 73 2 10 0 75 2 10 0 76 2 10 0 78 2 10 0 79 2 10 0 82 2 10 0 83 2 10 0 84 2 10 0 85 2 10 0 89 2 10 0 90 2 10 0 91 0 103 0 93 2 10 0 94 2 10 0 95 2 10 0 98 2 10 0 99 2 10 0 100 2 10 0 101 2 10 0 103 2 10 0 107 2 10 0 115 2 10 0 116 2 10 0 117 2 10 0 120 2 10 0 121 2 10 0 122 2 10 0 125 2 10 0 126 2 10 0 204] 
#[1 0 107 0 1 2 14 0 2 2 14 0 3 3 29 0 4 2 14 0 5 2 14 0 6 2 14 0 7 2 14 0 9 2 14 0 10 2 14 0 11 2 14 0 12 2 14 0 13 2 14 0 14 2 14 0 15 2 14 0 16 2 14 0 17 2 14 0 18 2 14 0 19 2 14 0 20 2 14 0 21 2 14 0 24 2 14 0 31 2 14 0 32 2 14 0 35 2 14 0 36 2 14 0 38 2 14 0 42 2 14 0 43 2 14 0 46 2 14 0 47 2 14 0 48 2 14 0 51 2 14 0 52 2 14 0 53 2 14 0 54 2 14 0 58 2 14 0 60 2 14 0 61 2 14 0 62 2 14 0 63 2 14 0 64 2 14 0 65 2 14 0 66 2 14 0 67 2 14 0 71 0 111 0 72 2 14 0 73 2 14 0 75 2 14 0 76 2 14 0 78 2 14 0 79 2 14 0 82 2 14 0 83 2 14 0 84 2 14 0 85 2 14 0 89 2 14 0 90 2 14 0 91 0 115 0 93 2 14 0 94 2 14 0 95 2 14 0 98 2 14 0 99 2 14 0 100 2 14 0 101 2 14 0 103 2 14 0 107 2 14 0 115 2 14 0 116 2 14 0 117 2 14 0 120 2 14 0 121 2 14 0 122 2 14 0 125 2 14 0 126 2 14 0 204] 
#[1 0 119 0 1 2 18 0 2 3 25 0 3 3 29 0 4 2 18 0 5 2 18 0 6 2 18 0 7 3 41 0 9 2 18 0 10 2 18 0 11 2 18 0 12 2 18 0 13 2 18 0 14 2 18 0 15 2 18 0 16 2 18 0 17 2 18 0 18 2 18 0 19 2 18 0 20 2 18 0 21 2 18 0 24 2 18 0 31 2 18 0 32 2 18 0 35 2 18 0 36 2 18 0 38 2 18 0 42 2 18 0 43 2 18 0 46 2 18 0 47 2 18 0 48 2 18 0 51 2 18 0 52 2 18 0 53 2 18 0 54 2 18 0 58 2 18 0 60 2 18 0 61 2 18 0 62 2 18 0 63 2 18 0 64 2 18 0 65 2 18 0 66 2 18 0 67 2 18 0 71 0 123 0 72 2 18 0 73 2 18 0 75 2 18 0 76 2 18 0 78 2 18 0 79 2 18 0 82 3 93 0 83 2 18 0 84 2 18 0 85 2 18 0 89 2 18 0 90 2 18 0 91 0 127 0 93 2 18 0 94 2 18 0 95 2 18 0 98 2 18 0 99 2 18 0 100 2 18 0 101 2 18 0 103 2 18 0 107 2 18 0 115 2 18 0 116 2 18 0 117 2 18 0 120 2 18 0 121 2 18 0 122 2 18 0 125 2 18 0 126 2 18 0 204] 
#[1 0 131 0 1 2 22 0 2 3 25 0 3 3 29 0 4 2 22 0 5 2 22 0 6 2 22 0 7 3 41 0 9 2 22 0 10 2 22 0 11 2 22 0 12 2 22 0 13 2 22 0 14 2 22 0 15 2 22 0 16 2 22 0 17 2 22 0 18 2 22 0 19 2 22 0 20 2 22 0 21 2 22 0 24 2 22 0 31 2 22 0 32 2 22 0 35 2 22 0 36 2 22 0 38 2 22 0 42 2 22 0 43 2 22 0 46 2 22 0 47 2 22 0 48 2 22 0 51 2 22 0 52 2 22 0 53 2 22 0 54 2 22 0 58 2 22 0 60 2 22 0 61 2 22 0 62 2 22 0 63 2 22 0 64 2 22 0 65 2 22 0 66 2 22 0 67 2 22 0 71 0 135 0 72 2 22 0 73 2 22 0 75 2 22 0 76 2 22 0 78 2 22 0 79 2 22 0 82 3 93 0 83 2 22 0 84 2 22 0 85 2 22 0 89 2 22 0 90 2 22 0 91 0 139 0 93 2 22 0 94 2 22 0 95 2 22 0 98 2 22 0 99 2 22 0 100 2 22 0 101 2 22 0 103 2 22 0 107 2 22 0 115 2 22 0 116 2 22 0 117 2 22 0 120 2 22 0 121 2 22 0 122 2 22 0 125 2 22 0 126 2 22 0 204] 
#[1 0 143 0 1 2 26 0 2 2 26 0 3 3 29 0 4 2 26 0 5 2 26 0 6 2 26 0 7 2 26 0 9 2 26 0 10 2 26 0 11 2 26 0 12 2 26 0 13 2 26 0 14 2 26 0 15 2 26 0 16 2 26 0 17 2 26 0 18 2 26 0 19 2 26 0 20 2 26 0 21 2 26 0 24 2 26 0 31 2 26 0 32 2 26 0 35 2 26 0 36 2 26 0 38 2 26 0 42 2 26 0 43 2 26 0 46 2 26 0 47 2 26 0 48 2 26 0 51 2 26 0 52 2 26 0 53 2 26 0 54 2 26 0 58 2 26 0 60 2 26 0 61 2 26 0 62 2 26 0 63 2 26 0 64 2 26 0 65 2 26 0 66 2 26 0 67 2 26 0 71 0 147 0 72 2 26 0 73 2 26 0 75 2 26 0 76 2 26 0 78 2 26 0 79 2 26 0 82 2 26 0 83 2 26 0 84 2 26 0 85 2 26 0 89 2 26 0 90 2 26 0 91 0 151 0 93 2 26 0 94 2 26 0 95 2 26 0 98 2 26 0 99 2 26 0 100 2 26 0 101 2 26 0 103 2 26 0 107 2 26 0 115 2 26 0 116 2 26 0 117 2 26 0 120 2 26 0 121 2 26 0 122 2 26 0 125 2 26 0 126 2 26 0 204] 
#[1 0 155 0 1 2 30 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 30 0 6 3 37 0 7 3 41 0 9 2 30 0 10 2 30 0 17 2 30 0 18 2 30 0 19 2 30 0 20 2 30 0 24 2 30 0 31 2 30 0 32 2 30 0 35 2 30 0 36 2 30 0 38 2 30 0 42 2 30 0 43 2 30 0 46 2 30 0 47 2 30 0 48 2 30 0 51 2 30 0 52 2 30 0 53 2 30 0 54 2 30 0 58 2 30 0 60 2 30 0 61 2 30 0 62 2 30 0 63 3 81 0 64 2 30 0 65 2 30 0 66 2 30 0 67 2 30 0 71 0 159 0 72 2 30 0 73 2 30 0 75 3 89 0 76 2 30 0 78 2 30 0 79 2 30 0 82 3 93 0 83 3 101 0 85 2 30 0 89 2 30 0 90 2 30 0 91 0 163 0 93 2 30 0 94 2 30 0 95 2 30 0 98 2 30 0 99 2 30 0 100 2 30 0 101 2 30 0 103 2 30 0 107 2 30 0 115 2 30 0 116 2 30 0 117 2 30 0 120 2 30 0 121 2 30 0 122 3 113 0 125 2 30 0 126 2 30 0 204] 
#[1 0 167 0 1 2 34 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 34 0 6 3 37 0 7 3 41 0 9 2 34 0 10 2 34 0 17 2 34 0 18 2 34 0 19 2 34 0 20 2 34 0 24 2 34 0 31 2 34 0 32 2 34 0 35 2 34 0 36 2 34 0 38 2 34 0 42 2 34 0 43 2 34 0 46 2 34 0 47 2 34 0 48 2 34 0 51 2 34 0 52 2 34 0 53 2 34 0 54 2 34 0 58 2 34 0 60 2 34 0 61 2 34 0 62 2 34 0 63 3 81 0 64 2 34 0 65 2 34 0 66 2 34 0 67 2 34 0 71 0 171 0 72 2 34 0 73 2 34 0 75 3 89 0 76 2 34 0 78 2 34 0 79 2 34 0 82 3 93 0 83 3 101 0 85 2 34 0 89 2 34 0 90 2 34 0 91 0 175 0 93 2 34 0 94 2 34 0 95 2 34 0 98 2 34 0 99 2 34 0 100 2 34 0 101 2 34 0 103 2 34 0 107 2 34 0 115 2 34 0 116 2 34 0 117 2 34 0 120 2 34 0 121 2 34 0 122 3 113 0 125 2 34 0 126 2 34 0 204] 
#[1 0 179 0 1 2 38 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 38 0 6 3 37 0 7 3 41 0 9 2 38 0 10 2 38 0 17 2 38 0 18 2 38 0 19 2 38 0 20 2 38 0 24 2 38 0 31 2 38 0 32 2 38 0 35 2 38 0 36 2 38 0 38 2 38 0 42 2 38 0 43 2 38 0 46 2 38 0 47 2 38 0 48 2 38 0 51 2 38 0 52 2 38 0 53 2 38 0 54 2 38 0 58 2 38 0 60 2 38 0 61 2 38 0 62 2 38 0 63 3 81 0 64 2 38 0 65 2 38 0 66 2 38 0 67 2 38 0 71 0 183 0 72 2 38 0 73 2 38 0 75 3 89 0 76 2 38 0 78 2 38 0 79 2 38 0 82 3 93 0 83 3 101 0 85 2 38 0 89 2 38 0 90 2 38 0 91 0 187 0 93 2 38 0 94 2 38 0 95 2 38 0 98 2 38 0 99 2 38 0 100 2 38 0 101 2 38 0 103 2 38 0 107 2 38 0 115 2 38 0 116 2 38 0 117 2 38 0 120 2 38 0 121 2 38 0 122 3 113 0 125 2 38 0 126 2 38 0 204] 
#[1 0 191 0 1 2 42 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 42 0 6 3 37 0 7 3 41 0 9 2 42 0 10 2 42 0 17 2 42 0 18 2 42 0 19 2 42 0 20 2 42 0 24 2 42 0 31 2 42 0 32 2 42 0 35 2 42 0 36 2 42 0 38 2 42 0 42 2 42 0 43 2 42 0 46 2 42 0 47 2 42 0 48 2 42 0 51 2 42 0 52 2 42 0 53 2 42 0 54 2 42 0 58 2 42 0 60 2 42 0 61 2 42 0 62 2 42 0 63 3 81 0 64 2 42 0 65 2 42 0 66 2 42 0 67 2 42 0 71 0 195 0 72 2 42 0 73 2 42 0 75 3 89 0 76 2 42 0 78 2 42 0 79 2 42 0 82 3 93 0 83 3 101 0 85 2 42 0 89 2 42 0 90 2 42 0 91 0 199 0 93 2 42 0 94 2 42 0 95 2 42 0 98 2 42 0 99 2 42 0 100 2 42 0 101 2 42 0 103 2 42 0 107 2 42 0 115 2 42 0 116 2 42 0 117 2 42 0 120 2 42 0 121 2 42 0 122 3 113 0 125 2 42 0 126 2 42 0 204] 
#[1 0 203 0 1 2 46 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 46 0 6 3 37 0 7 3 41 0 9 2 46 0 10 2 46 0 17 2 46 0 18 2 46 0 19 2 46 0 20 2 46 0 24 2 46 0 31 2 46 0 32 2 46 0 35 2 46 0 36 2 46 0 38 2 46 0 42 2 46 0 43 2 46 0 46 2 46 0 47 2 46 0 48 2 46 0 51 2 46 0 52 2 46 0 53 2 46 0 54 2 46 0 58 2 46 0 60 2 46 0 61 2 46 0 62 2 46 0 63 3 81 0 64 2 46 0 65 2 46 0 66 2 46 0 67 2 46 0 71 0 207 0 72 2 46 0 73 2 46 0 75 3 89 0 76 2 46 0 78 2 46 0 79 2 46 0 82 3 93 0 83 3 101 0 85 2 46 0 89 2 46 0 90 2 46 0 91 0 211 0 93 2 46 0 94 2 46 0 95 2 46 0 98 2 46 0 99 2 46 0 100 2 46 0 101 2 46 0 103 2 46 0 107 2 46 0 115 2 46 0 116 2 46 0 117 2 46 0 120 2 46 0 121 2 46 0 122 3 113 0 125 2 46 0 126 2 46 0 204] 
#[1 0 215 0 1 2 50 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 50 0 6 3 37 0 7 3 41 0 9 2 50 0 10 2 50 0 17 2 50 0 18 2 50 0 19 2 50 0 20 2 50 0 24 2 50 0 31 2 50 0 32 2 50 0 35 2 50 0 36 2 50 0 38 2 50 0 42 2 50 0 43 2 50 0 46 2 50 0 47 2 50 0 48 2 50 0 51 2 50 0 52 2 50 0 53 2 50 0 54 2 50 0 58 2 50 0 60 2 50 0 61 2 50 0 62 2 50 0 63 3 81 0 64 2 50 0 65 2 50 0 66 2 50 0 67 2 50 0 71 0 219 0 72 2 50 0 73 2 50 0 75 3 89 0 76 2 50 0 78 2 50 0 79 2 50 0 82 3 93 0 83 3 101 0 85 2 50 0 89 2 50 0 90 2 50 0 91 0 223 0 93 2 50 0 94 2 50 0 95 2 50 0 98 2 50 0 99 2 50 0 100 2 50 0 101 2 50 0 103 2 50 0 107 2 50 0 115 2 50 0 116 2 50 0 117 2 50 0 120 2 50 0 121 2 50 0 122 3 113 0 125 2 50 0 126 2 50 0 204] 
#[1 0 227 0 1 2 54 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 54 0 6 3 37 0 7 3 41 0 9 2 54 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 2 54 0 17 2 54 0 18 2 54 0 19 2 54 0 20 3 77 0 21 2 54 0 24 2 54 0 31 2 54 0 32 2 54 0 35 2 54 0 36 2 54 0 38 2 54 0 42 2 54 0 43 2 54 0 46 2 54 0 47 2 54 0 48 2 54 0 51 2 54 0 52 2 54 0 53 2 54 0 54 2 54 0 58 2 54 0 60 2 54 0 61 2 54 0 62 2 54 0 63 3 81 0 64 2 54 0 65 2 54 0 66 2 54 0 67 2 54 0 71 0 231 0 72 2 54 0 73 2 54 0 75 3 89 0 76 2 54 0 78 2 54 0 79 2 54 0 82 3 93 0 83 3 97 0 84 3 101 0 85 2 54 0 89 2 54 0 90 2 54 0 91 0 235 0 93 2 54 0 94 2 54 0 95 2 54 0 98 2 54 0 99 2 54 0 100 2 54 0 101 2 54 0 103 2 54 0 107 2 54 0 115 2 54 0 116 2 54 0 117 2 54 0 120 2 54 0 121 2 54 0 122 3 113 0 125 2 54 0 126 2 54 0 204] 
#[0 2 58 0 2 0 6 0 10 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 66 0 67 0 71 0 78 0 79 0 82 0 91 0 94 0 95 0 99 0 100 0 101 0 103 0 115 0 116 0 117 0 121 0 122 0 204] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 7 237 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 0 89 0 100 0 93 0 101 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 109 0 122 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 7 241 0 163 1 157 0 185 7 245 0 196 7 245 0 197 7 245 0 201 7 245 0 202] 
#[1 0 239 0 1 2 62 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 62 0 6 3 37 0 7 3 41 0 9 2 62 0 10 2 62 0 11 2 62 0 12 2 62 0 13 2 62 0 14 2 62 0 15 2 62 0 16 2 62 0 17 2 62 0 18 2 62 0 19 2 62 0 20 2 62 0 21 2 62 0 24 2 62 0 31 2 62 0 32 2 62 0 35 2 62 0 36 2 62 0 38 2 62 0 42 2 62 0 43 2 62 0 46 2 62 0 47 2 62 0 48 2 62 0 51 2 62 0 52 2 62 0 53 2 62 0 54 2 62 0 58 2 62 0 60 2 62 0 61 2 62 0 62 2 62 0 63 2 62 0 65 2 62 0 66 2 62 0 67 2 62 0 71 0 243 0 72 2 62 0 73 2 62 0 75 2 62 0 78 2 62 0 79 2 62 0 82 3 93 0 83 2 62 0 84 2 62 0 89 2 62 0 90 2 62 0 91 0 247 0 93 2 62 0 94 2 62 0 95 2 62 0 98 2 62 0 99 2 62 0 100 2 62 0 101 2 62 0 103 2 62 0 107 2 62 0 115 2 62 0 116 2 62 0 117 2 62 0 120 2 62 0 121 2 62 0 122 2 62 0 125 2 62 0 126 2 62 0 204] 
#[0 7 249 0 86] 
#[0 2 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 0 251 0 1 2 70 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 70 0 6 3 37 0 7 3 41 0 9 2 70 0 10 2 70 0 11 2 70 0 12 2 70 0 13 2 70 0 14 2 70 0 15 2 70 0 16 2 70 0 17 2 70 0 18 2 70 0 19 2 70 0 20 2 70 0 21 2 70 0 24 2 70 0 31 2 70 0 32 2 70 0 35 2 70 0 36 2 70 0 38 2 70 0 42 2 70 0 43 2 70 0 46 2 70 0 47 2 70 0 48 0 255 0 51 2 70 0 52 2 70 0 53 2 70 0 54 2 70 0 58 2 70 0 60 2 70 0 61 2 70 0 62 2 70 0 63 2 70 0 65 2 70 0 66 2 70 0 67 2 70 0 71 1 3 0 72 2 70 0 73 2 70 0 75 2 70 0 78 2 70 0 79 2 70 0 82 3 93 0 83 2 70 0 84 2 70 0 89 2 70 0 90 2 70 0 91 1 7 0 93 2 70 0 94 2 70 0 95 2 70 0 98 2 70 0 99 2 70 0 100 2 70 0 101 2 70 0 103 2 70 0 107 2 70 0 115 2 70 0 116 2 70 0 117 2 70 0 120 2 70 0 121 2 70 0 122 2 70 0 125 2 70 0 126 2 70 0 204] 
#[1 1 11 0 1 2 74 0 2 2 74 0 3 3 29 0 4 2 74 0 5 2 74 0 6 2 74 0 7 2 74 0 9 2 74 0 10 2 74 0 11 2 74 0 12 2 74 0 13 2 74 0 14 2 74 0 15 2 74 0 16 2 74 0 17 2 74 0 18 2 74 0 19 2 74 0 20 2 74 0 21 2 74 0 24 2 74 0 31 2 74 0 32 2 74 0 35 2 74 0 36 2 74 0 38 2 74 0 42 2 74 0 43 2 74 0 46 2 74 0 47 2 74 0 48 2 74 0 51 2 74 0 52 2 74 0 53 2 74 0 54 2 74 0 58 2 74 0 60 2 74 0 61 2 74 0 62 2 74 0 63 2 74 0 64 2 74 0 65 2 74 0 66 2 74 0 67 2 74 0 71 1 15 0 72 2 74 0 73 2 74 0 75 2 74 0 76 2 74 0 78 2 74 0 79 2 74 0 82 2 74 0 83 2 74 0 84 2 74 0 85 2 74 0 89 2 74 0 90 2 74 0 91 1 19 0 93 2 74 0 94 2 74 0 95 2 74 0 98 2 74 0 99 2 74 0 100 2 74 0 101 2 74 0 103 2 74 0 107 2 74 0 115 2 74 0 116 2 74 0 117 2 74 0 120 2 74 0 121 2 74 0 122 2 74 0 125 2 74 0 126 2 74 0 204] 
#[1 1 23 0 1 2 78 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 78 0 6 3 37 0 7 3 41 0 9 2 78 0 10 2 78 0 17 2 78 0 18 2 78 0 19 2 78 0 20 2 78 0 24 2 78 0 31 2 78 0 32 2 78 0 35 2 78 0 36 2 78 0 38 2 78 0 42 2 78 0 43 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 51 2 78 0 52 2 78 0 53 2 78 0 54 2 78 0 58 2 78 0 60 2 78 0 61 2 78 0 62 2 78 0 63 3 81 0 64 2 78 0 65 2 78 0 66 2 78 0 67 2 78 0 71 1 27 0 72 2 78 0 73 2 78 0 75 3 89 0 76 2 78 0 78 2 78 0 79 2 78 0 82 3 93 0 83 3 101 0 85 2 78 0 89 2 78 0 90 2 78 0 91 1 31 0 93 2 78 0 94 2 78 0 95 2 78 0 98 2 78 0 99 2 78 0 100 2 78 0 101 2 78 0 103 2 78 0 107 2 78 0 115 2 78 0 116 2 78 0 117 2 78 0 120 2 78 0 121 2 78 0 122 3 113 0 125 2 78 0 126 2 78 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 1 0 196 8 1 0 197 8 1 0 201 8 1 0 202] 
#[1 8 5 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 9 0 196 8 9 0 197 8 9 0 201 8 9 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 13 0 196 8 13 0 197 8 13 0 201 8 13 0 202] 
#[1 1 35 0 1 2 82 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 82 0 6 3 37 0 7 3 41 0 9 2 82 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 2 82 0 17 3 69 0 18 2 82 0 19 2 82 0 20 3 77 0 21 2 82 0 24 2 82 0 31 2 82 0 32 2 82 0 35 2 82 0 36 2 82 0 38 2 82 0 42 2 82 0 43 2 82 0 46 2 82 0 47 2 82 0 48 2 82 0 51 2 82 0 52 2 82 0 53 2 82 0 54 2 82 0 58 2 82 0 60 2 82 0 61 2 82 0 62 2 82 0 63 3 81 0 64 2 82 0 65 2 82 0 66 2 82 0 67 2 82 0 71 1 39 0 72 2 82 0 73 2 82 0 75 3 89 0 76 2 82 0 78 2 82 0 79 2 82 0 82 3 93 0 83 3 97 0 84 3 101 0 85 2 82 0 89 2 82 0 90 2 82 0 91 1 43 0 93 2 82 0 94 2 82 0 95 2 82 0 98 2 82 0 99 2 82 0 100 2 82 0 101 2 82 0 103 2 82 0 107 2 82 0 115 2 82 0 116 2 82 0 117 2 82 0 120 2 82 0 121 2 82 0 122 3 113 0 125 2 82 0 126 2 82 0 204] 
#[1 8 17 0 2 7 133 0 91 5 1 0 94 8 21 0 179 8 25 0 192] 
#[1 1 47 0 1 2 86 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 86 0 6 3 37 0 7 3 41 0 9 2 86 0 10 2 86 0 11 2 86 0 12 2 86 0 13 2 86 0 14 2 86 0 15 2 86 0 16 2 86 0 17 2 86 0 18 2 86 0 19 2 86 0 20 2 86 0 21 2 86 0 24 2 86 0 31 2 86 0 32 2 86 0 35 2 86 0 36 2 86 0 38 2 86 0 42 2 86 0 43 2 86 0 46 2 86 0 47 2 86 0 48 2 86 0 51 2 86 0 52 2 86 0 53 2 86 0 54 2 86 0 58 2 86 0 60 2 86 0 61 2 86 0 62 2 86 0 63 3 81 0 64 2 86 0 65 2 86 0 66 2 86 0 67 2 86 0 71 1 51 0 72 2 86 0 73 2 86 0 75 3 89 0 76 2 86 0 78 2 86 0 79 2 86 0 82 3 93 0 83 2 86 0 84 3 101 0 85 2 86 0 89 2 86 0 90 2 86 0 91 1 55 0 93 2 86 0 94 2 86 0 95 2 86 0 98 2 86 0 99 2 86 0 100 2 86 0 101 2 86 0 103 2 86 0 107 2 86 0 115 2 86 0 116 2 86 0 117 2 86 0 120 2 86 0 121 2 86 0 122 2 86 0 125 2 86 0 126 2 86 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 29 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 8 33 0 166 5 17 0 167 5 21 0 168 5 25 0 172 8 37 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 41 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 8 45 0 166 5 17 0 167 5 21 0 168 5 25 0 172 8 49 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 8 53 0 164 8 53 0 180 3 17 0 194 0 158 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 8 57 0 171 1 166 0 204] 
#[1 7 133 0 91 8 61 0 192] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 8 65 0 58 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 8 69 0 116 3 113 0 125] 
#[1 8 73 0 6 8 77 0 103] 
#[1 2 90 0 2 2 90 0 6 2 90 0 10 2 29 0 36 2 90 0 58 2 90 0 61 2 90 0 62 2 33 0 65 2 37 0 73 2 41 0 75 2 90 0 91 2 90 0 94 2 90 0 95 2 45 0 98 2 90 0 103 2 90 0 115 2 90 0 121 2 90 0 204] 
#[1 2 94 0 2 8 81 0 6 2 94 0 10 8 85 0 47 2 94 0 115 2 49 0 121 8 89 0 190 2 94 0 204] 
#[0 2 98 0 2 0 6 0 10 0 47 0 115 0 120 0 121 0 204] 
#[1 2 253 0 126 2 9 0 184] 
#[0 8 93 0 14] 
#[0 2 102 0 2 0 10 0 115 0 204] 
#[0 2 106 0 6 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 63 0 66 0 67 0 78 0 79 0 82 0 99 0 100 0 101 0 103 0 116 0 117 0 122] 
#[1 8 97 0 2 3 1 0 6 3 17 0 194] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 8 101 0 163] 
#[0 2 110 0 2 0 10 0 204] 
#[1 8 105 0 2 1 237 0 115] 
#[0 2 114 0 2 0 10 0 115 0 204] 
#[1 3 1 0 6 8 109 0 122 3 17 0 194] 
#[0 2 118 0 2 0 10 0 115 0 204] 
#[1 8 113 0 2 8 117 0 6] 
#[0 2 122 0 2 0 6] 
#[1 5 149 0 22 5 149 0 26 5 149 0 30 5 149 0 33 5 149 0 39 5 149 0 40 5 149 0 41 5 149 0 57 5 149 0 68 5 149 0 69 5 149 0 87 5 149 0 88 5 149 0 96 5 149 0 104 5 149 0 108 5 149 0 109 5 149 0 119 8 121 0 146 5 149 0 147] 
#[0 8 125 0 1] 
#[0 8 129 0 126] 
#[0 2 126 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 0 225 0 1 0 14 0 126 8 133 0 183 0 237 0 185] 
#[1 0 225 0 1 0 14 0 126 8 137 0 183 0 237 0 185] 
#[1 1 98 0 2 0 59 0 36 0 63 0 65 0 67 0 73 0 71 0 75 6 149 0 89 0 79 0 98 6 153 0 187 8 141 0 188] 
#[0 8 145 0 73] 
#[0 8 149 0 73] 
#[1 1 98 0 2 1 98 0 6 1 98 0 10 1 98 0 17 0 59 0 36 1 98 0 58 1 98 0 61 1 98 0 62 0 63 0 65 0 67 0 73 0 71 0 75 0 75 0 89 1 98 0 91 1 98 0 94 1 98 0 95 0 79 0 98 1 98 0 103 1 98 0 115 1 98 0 117 1 98 0 121 6 153 0 187 8 153 0 188 1 98 0 204] 
#[1 1 98 0 2 1 98 0 6 1 98 0 10 1 98 0 17 0 59 0 36 1 98 0 58 1 98 0 61 1 98 0 62 0 63 0 65 0 67 0 73 0 71 0 75 0 75 0 89 1 98 0 91 1 98 0 94 1 98 0 95 0 79 0 98 1 98 0 103 1 98 0 115 1 98 0 117 1 98 0 121 6 153 0 187 8 157 0 188 1 98 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 161 0 196 8 161 0 197 8 161 0 201 8 161 0 202] 
#[0 2 130 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 2 134 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 0 225 0 1 0 14 0 126 8 165 0 183 0 237 0 185] 
#[1 0 225 0 1 0 14 0 126 8 169 0 183 0 237 0 185] 
#[0 2 138 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 2 142 0 2 0 10 0 115 0 204] 
#[0 2 146 0 2 0 10 0 115 0 204] 
#[1 8 173 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 177 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 8 181 0 118] 
#[1 8 185 0 2 3 1 0 6 3 17 0 194] 
#[1 8 189 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 193 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 8 197 0 118] 
#[1 8 201 0 2 3 1 0 6 3 17 0 194] 
#[1 2 150 0 2 2 150 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 2 150 0 115 0 101 0 116 0 105 0 117 0 109 0 122 8 205 0 136 8 205 0 137 8 205 0 140 8 205 0 141 8 205 0 142 8 205 0 148 8 205 0 149 8 205 0 150 8 205 0 153 8 205 0 154 8 205 0 155 8 205 0 156 8 205 0 157 8 205 0 158 8 205 0 159 8 205 0 160 8 205 0 161 8 205 0 162 0 197 0 163 2 150 0 204] 
#[0 2 154 0 2 0 10 0 115 0 204] 
#[1 2 158 0 2 2 158 0 10 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 2 158 0 115 0 101 0 116 0 105 0 117 0 109 0 122 8 209 0 136 8 209 0 137 8 209 0 140 8 209 0 141 8 209 0 142 8 209 0 148 8 209 0 149 8 209 0 150 8 209 0 153 8 209 0 154 8 209 0 155 8 209 0 156 8 209 0 157 8 209 0 158 8 209 0 159 8 209 0 160 8 209 0 161 8 209 0 162 0 197 0 163 2 158 0 204] 
#[0 2 162 0 2 0 10 0 115 0 204] 
#[1 2 29 0 36 2 33 0 65 2 37 0 73 2 41 0 75 8 213 0 89 2 45 0 98] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 217 0 196 8 217 0 197 8 217 0 201 8 217 0 202] 
#[1 8 73 0 6 2 49 0 121 8 221 0 190] 
#[1 8 225 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 8 229 0 196 8 229 0 197 8 229 0 201 8 229 0 202] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 8 233 0 48] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 2 170 0 48 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 8 237 0 2 5 149 0 22 5 149 0 26 5 149 0 30 5 149 0 33 5 149 0 39 5 149 0 40 5 149 0 41 5 149 0 57 8 241 0 59 5 149 0 68 5 149 0 69 5 149 0 87 5 149 0 88 5 149 0 96 5 149 0 104 5 149 0 108 5 149 0 109 5 149 0 119 8 245 0 146 5 149 0 147] 
#[1 3 21 0 1 8 249 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 3 21 0 1 8 253 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 9 1 0 164 9 1 0 180 3 17 0 194 0 158 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 9 5 0 171 1 166 0 204] 
#[1 7 133 0 91 9 9 0 192] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 9 13 0 164 9 13 0 180 3 17 0 194 0 158 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 9 17 0 171 1 166 0 204] 
#[1 7 133 0 91 9 21 0 192] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 25 0 196 9 25 0 197 9 25 0 201 9 25 0 202] 
#[1 9 29 0 2 1 237 0 115] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 33 0 196 9 33 0 197 9 33 0 201 9 33 0 202] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 9 37 0 166 5 17 0 167 5 21 0 168 5 25 0 172 9 41 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 9 45 0 126] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 49 0 196 9 49 0 197 9 49 0 201 9 49 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 53 0 196 9 53 0 197 9 53 0 201 9 53 0 202] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 57 0 196 9 57 0 197 9 57 0 201 9 57 0 202] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 9 61 0 2 3 1 0 6 3 17 0 194] 
#[1 2 194 0 2 8 73 0 6 2 194 0 10 2 194 0 58 2 194 0 61 2 194 0 62 2 194 0 91 2 194 0 94 2 194 0 95 2 194 0 115 2 194 0 121 2 194 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 65 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 3 21 0 1 2 198 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 2 198 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 2 198 0 58 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 2 198 0 91 3 109 0 93 2 198 0 94 2 198 0 95 2 198 0 115 3 113 0 125 2 198 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 69 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 3 21 0 1 2 202 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 2 202 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 2 202 0 58 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 2 202 0 91 3 109 0 93 2 202 0 115 3 113 0 125 2 202 0 204] 
#[0 9 73 0 37] 
#[0 2 206 0 2 0 10 0 115 0 204] 
#[0 2 210 0 2 0 10 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 9 77 0 169 9 77 0 192 2 214 0 204] 
#[0 9 85 0 25] 
#[1 2 49 0 121 9 89 0 190] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 9 93 0 168 9 93 0 178 1 42 0 204] 
#[0 2 218 0 91] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 9 97 0 168 9 97 0 178 1 182 0 204] 
#[0 2 222 0 91] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 9 101 0 168 9 101 0 178 1 42 0 204] 
#[0 2 226 0 91] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 9 105 0 167 9 109 0 168 9 109 0 178 9 113 0 179 1 34 0 204] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 9 117 0 168 9 117 0 178 1 182 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 249 0 61 4 253 0 62 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 9 121 0 167 9 125 0 176 9 121 0 179 9 129 0 191 1 34 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 253 0 62 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 9 133 0 167 9 137 0 168 9 141 0 176 9 137 0 178 9 145 0 179 1 34 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 9 149 0 168 9 149 0 178 1 42 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 9 153 0 167 9 153 0 179 1 34 0 204] 
#[0 1 182 0 2 0 10 0 58 0 91 0 95 0 115 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 253 0 62 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 9 157 0 167 9 161 0 176 9 157 0 179 1 34 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 9 165 0 168 9 165 0 178 1 42 0 204] 
#[0 2 230 0 91] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 9 169 0 167 9 173 0 168 9 173 0 178 9 177 0 179 1 34 0 204] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 9 181 0 168 9 181 0 178 1 182 0 204] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 9 185 0 2] 
#[0 9 189 0 2] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 9 193 0 59] 
#[0 9 197 0 129] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 201 0 196 9 201 0 197 9 201 0 201 9 201 0 202] 
#[1 9 205 0 2 1 237 0 115] 
#[1 3 21 0 1 4 125 0 2 3 25 0 3 3 29 0 4 3 33 0 5 9 209 0 6 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 9 213 0 196 9 213 0 197 9 213 0 201 9 213 0 202] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 9 217 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 0 89 0 100 0 93 0 101 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 109 0 122 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 9 221 0 163 1 157 0 185 9 225 0 196 9 225 0 197 9 225 0 201 9 225 0 202] 
#[1 1 59 0 1 2 246 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 246 0 6 3 37 0 7 3 41 0 9 2 246 0 10 2 246 0 11 2 246 0 12 2 246 0 13 2 246 0 14 2 246 0 15 2 246 0 16 2 246 0 17 2 246 0 18 2 246 0 19 2 246 0 20 2 246 0 21 2 246 0 24 2 246 0 31 2 246 0 32 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 42 2 246 0 43 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 51 2 246 0 52 2 246 0 53 2 246 0 54 2 246 0 58 2 246 0 60 2 246 0 61 2 246 0 62 2 246 0 63 2 246 0 65 2 246 0 66 2 246 0 67 2 246 0 71 1 63 0 72 2 246 0 73 2 246 0 75 2 246 0 78 2 246 0 79 2 246 0 82 3 93 0 83 2 246 0 84 2 246 0 89 2 246 0 90 2 246 0 91 1 67 0 93 2 246 0 94 2 246 0 95 2 246 0 98 2 246 0 99 2 246 0 100 2 246 0 101 2 246 0 103 2 246 0 107 2 246 0 115 2 246 0 116 2 246 0 117 2 246 0 120 2 246 0 121 2 246 0 122 2 246 0 125 2 246 0 126 2 246 0 204] 
#[1 1 71 0 1 2 250 0 2 3 25 0 3 3 29 0 4 3 33 0 5 2 250 0 6 3 37 0 7 3 41 0 9 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 18 2 250 0 19 2 250 0 20 2 250 0 21 2 250 0 24 2 250 0 31 2 250 0 32 2 250 0 35 2 250 0 36 2 250 0 38 2 250 0 42 2 250 0 43 2 250 0 46 2 250 0 47 2 250 0 48 1 75 0 51 2 250 0 52 2 250 0 53 2 250 0 54 2 250 0 58 2 250 0 60 2 250 0 61 2 250 0 62 2 250 0 63 2 250 0 65 2 250 0 66 2 250 0 67 2 250 0 71 1 79 0 72 2 250 0 73 2 250 0 75 2 250 0 78 2 250 0 79 2 250 0 82 3 93 0 83 2 250 0 84 2 250 0 89 2 250 0 90 2 250 0 91 1 83 0 93 2 250 0 94 2 250 0 95 2 250 0 98 2 250 0 99 2 250 0 100 2 250 0 101 2 250 0 103 2 250 0 107 2 250 0 115 2 250 0 116 2 250 0 117 2 250 0 120 2 250 0 121 2 250 0 122 2 250 0 125 2 250 0 126 2 250 0 204] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 9 233 0 2 7 133 0 91 9 237 0 192] 
#[0 9 241 0 2] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 9 245 0 164 9 245 0 180 3 17 0 194 0 158 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 9 249 0 171 1 166 0 204] 
#[1 7 133 0 91 9 253 0 192] 
#[1 0 158 0 2 3 1 0 6 0 158 0 10 0 158 0 58 0 158 0 60 0 158 0 61 0 158 0 62 3 5 0 71 0 158 0 91 0 158 0 94 0 158 0 95 0 158 0 115 0 158 0 121 10 1 0 164 10 1 0 180 3 17 0 194 0 158 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 10 5 0 171 1 166 0 204] 
#[1 7 133 0 91 10 9 0 192] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 10 13 0 166 5 17 0 167 5 21 0 168 5 25 0 172 10 17 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 3 2 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 10 21 0 190] 
#[0 10 25 0 102] 
#[0 10 29 0 58] 
#[1 0 225 0 1 0 14 0 126 10 33 0 183 0 237 0 185] 
#[1 0 14 0 126 10 37 0 151 6 49 0 152 6 53 0 185 6 57 0 202] 
#[1 0 14 0 126 10 41 0 152 6 53 0 185 6 57 0 202] 
#[1 0 65 0 66 0 69 0 67 0 101 0 116 10 45 0 150 10 49 0 153] 
#[1 3 6 0 2 3 6 0 10 10 53 0 47 3 6 0 115 3 6 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 10 57 0 196 10 57 0 197 10 57 0 201 10 57 0 202] 
#[0 10 61 0 19] 
#[1 10 65 0 2 1 237 0 115] 
#[1 7 133 0 91 10 69 0 192] 
#[0 10 73 0 70] 
#[0 3 10 0 19] 
#[1 0 14 0 126 10 77 0 145 0 217 0 185 6 105 0 203] 
#[0 3 14 0 2 0 6] 
#[1 0 9 0 20 0 13 0 24 0 17 0 31 0 21 0 32 0 25 0 35 0 29 0 38 0 33 0 42 0 37 0 43 0 41 0 46 0 45 0 48 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 63 0 65 0 66 0 69 0 67 0 73 0 78 0 77 0 79 0 81 0 82 0 85 0 99 0 89 0 100 0 93 0 101 0 97 0 103 0 101 0 116 0 105 0 117 0 109 0 122 10 81 0 135 0 125 0 136 0 125 0 137 0 125 0 140 0 125 0 141 0 125 0 142 0 125 0 148 0 125 0 149 0 125 0 150 0 125 0 153 0 125 0 154 0 125 0 155 0 125 0 156 0 125 0 157 0 125 0 158 0 125 0 159 0 125 0 160 0 125 0 161 0 125 0 162 0 197 0 163] 
#[0 3 18 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 1 98 0 2 0 59 0 36 0 63 0 65 0 67 0 73 0 71 0 75 6 149 0 89 0 79 0 98 6 153 0 187 10 85 0 188] 
#[1 1 98 0 2 0 59 0 36 0 63 0 65 0 67 0 73 0 71 0 75 6 149 0 89 0 79 0 98 6 153 0 187 10 89 0 188] 
#[1 10 93 0 2 2 134 0 36 2 134 0 65 2 134 0 73 2 134 0 75 2 134 0 98] 
#[1 0 225 0 1 0 14 0 126 10 97 0 183 0 237 0 185] 
#[1 0 225 0 1 0 14 0 126 10 101 0 183 0 237 0 185] 
#[0 3 22 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 3 26 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 3 21 0 1 3 30 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 30 0 6 3 37 0 7 3 41 0 9 3 30 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 30 0 17 3 69 0 18 3 77 0 21 3 30 0 36 3 30 0 58 3 30 0 61 3 30 0 62 3 81 0 64 3 30 0 65 3 85 0 72 3 30 0 73 3 30 0 75 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 30 0 89 3 105 0 90 3 30 0 91 3 109 0 93 3 30 0 94 3 30 0 95 3 30 0 98 3 30 0 103 3 30 0 115 3 30 0 117 3 30 0 121 3 113 0 125 3 30 0 204] 
#[1 1 98 0 2 1 98 0 6 1 98 0 10 1 98 0 17 0 59 0 36 1 98 0 58 1 98 0 61 1 98 0 62 0 63 0 65 0 67 0 73 0 71 0 75 0 75 0 89 1 98 0 91 1 98 0 94 1 98 0 95 0 79 0 98 1 98 0 103 1 98 0 115 1 98 0 117 1 98 0 121 6 153 0 187 10 105 0 188 1 98 0 204] 
#[1 1 98 0 2 1 98 0 6 1 98 0 10 1 98 0 17 0 59 0 36 1 98 0 58 1 98 0 61 1 98 0 62 0 63 0 65 0 67 0 73 0 71 0 75 0 75 0 89 1 98 0 91 1 98 0 94 1 98 0 95 0 79 0 98 1 98 0 103 1 98 0 115 1 98 0 117 1 98 0 121 6 153 0 187 10 109 0 188 1 98 0 204] 
#[1 0 89 0 100 0 93 0 101 10 113 0 118 0 109 0 122 10 117 0 163] 
#[1 10 121 0 2 3 1 0 6 3 17 0 194] 
#[0 10 125 0 1] 
#[0 3 34 0 2 0 10 0 115 0 204] 
#[1 0 89 0 100 0 93 0 101 10 129 0 118 0 109 0 122 10 133 0 163] 
#[1 10 137 0 2 3 1 0 6 3 17 0 194] 
#[0 10 141 0 1] 
#[0 3 38 0 2 0 10 0 115 0 204] 
#[0 3 42 0 2 0 10 0 115 0 204] 
#[0 3 46 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 10 145 0 196 10 145 0 197 10 145 0 201 10 145 0 202] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 10 149 0 120 3 113 0 125 10 153 0 138 10 157 0 139] 
#[0 3 50 0 2 0 10 0 115 0 204] 
#[1 10 161 0 64 10 165 0 85] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 54 0 47 3 54 0 48 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 54 0 120 3 113 0 125] 
#[0 3 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 3 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 10 169 0 128] 
#[1 10 173 0 2 10 177 0 59] 
#[0 3 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 10 181 0 166 5 17 0 167 5 21 0 168 5 25 0 172 10 185 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 3 74 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 10 189 0 190] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 10 193 0 166 5 17 0 167 5 21 0 168 5 25 0 172 10 197 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 3 78 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 10 201 0 190] 
#[1 3 21 0 1 10 205 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 1 87 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 3 21 0 1 10 209 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 10 213 0 58 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 10 217 0 171 1 166 0 204] 
#[1 7 133 0 91 10 221 0 192] 
#[1 10 225 0 2 10 229 0 122] 
#[1 3 21 0 1 10 233 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 3 21 0 1 10 237 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 3 21 0 1 10 241 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[0 3 86 0 2 0 10 0 58 0 60 0 61 0 62 0 91 0 94 0 95 0 115 0 121 0 204] 
#[1 3 90 0 2 3 1 0 6 3 90 0 10 3 90 0 58 3 90 0 62 3 90 0 91 3 90 0 94 3 90 0 95 3 90 0 115 3 17 0 194 3 90 0 204] 
#[1 3 94 0 2 3 1 0 6 3 94 0 10 3 94 0 58 3 94 0 91 3 94 0 95 3 94 0 115 3 17 0 194 3 94 0 204] 
#[0 3 98 0 2 0 10 0 115 0 204] 
#[0 3 102 0 2 0 10 0 58 0 115 0 204] 
#[0 3 106 0 2 0 10 0 58 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 10 245 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 10 249 0 171 1 166 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 10 253 0 169 10 253 0 192 2 214 0 204] 
#[0 3 110 0 91] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 11 1 0 169 11 1 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 5 0 168 11 5 0 178 1 42 0 204] 
#[0 3 114 0 91] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 11 9 0 168 11 9 0 178 1 182 0 204] 
#[0 3 118 0 91] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 13 0 168 11 13 0 178 1 42 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 11 17 0 167 11 17 0 179 1 34 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 4 253 0 62 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 11 21 0 167 11 25 0 176 11 21 0 179 1 34 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 29 0 168 11 29 0 178 1 42 0 204] 
#[0 3 122 0 91] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 0 83 0 91 5 1 0 94 0 55 0 95 1 34 0 115 11 33 0 167 11 37 0 168 11 37 0 178 11 41 0 179 1 34 0 204] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 11 45 0 168 11 45 0 178 1 182 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 11 49 0 169 11 49 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 53 0 168 11 53 0 178 1 42 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 57 0 168 11 57 0 178 1 42 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 11 61 0 167 11 61 0 179 1 34 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 11 65 0 169 11 65 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 11 69 0 168 11 69 0 178 1 42 0 204] 
#[0 3 126 0 91] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 11 73 0 168 11 73 0 178 1 182 0 204] 
#[0 3 130 0 91] 
#[0 3 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 3 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 11 77 0 128] 
#[1 11 81 0 2 11 85 0 6] 
#[1 1 91 0 1 3 142 0 2 1 95 0 3 1 99 0 4 1 103 0 5 3 142 0 6 1 107 0 7 1 111 0 9 3 142 0 10 1 115 0 11 1 119 0 12 1 123 0 13 1 127 0 14 1 131 0 15 1 135 0 16 3 142 0 17 1 139 0 18 3 142 0 19 3 142 0 20 1 143 0 21 3 142 0 24 3 142 0 31 3 142 0 32 3 142 0 35 3 142 0 36 3 142 0 38 3 142 0 42 3 142 0 43 3 142 0 46 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 53 3 142 0 54 3 142 0 58 3 142 0 60 3 142 0 61 3 142 0 62 3 142 0 63 1 147 0 64 3 142 0 65 3 142 0 66 3 142 0 67 3 142 0 71 1 151 0 72 3 142 0 73 3 142 0 75 1 155 0 76 3 142 0 78 3 142 0 79 3 142 0 82 1 159 0 83 1 163 0 84 1 167 0 85 3 142 0 89 1 171 0 90 3 142 0 91 1 175 0 93 3 142 0 94 3 142 0 95 3 142 0 98 3 142 0 99 3 142 0 100 3 142 0 101 3 142 0 103 3 142 0 107 3 142 0 115 3 142 0 116 3 142 0 117 3 142 0 120 3 142 0 121 3 142 0 122 1 179 0 125 3 142 0 126 3 142 0 204] 
#[0 1 183 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 11 89 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 1 187 0 1 3 150 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 150 0 6 3 37 0 7 3 41 0 9 3 150 0 10 3 150 0 11 3 150 0 12 3 150 0 13 3 150 0 14 3 150 0 15 3 150 0 16 3 150 0 17 3 150 0 18 3 150 0 19 3 150 0 20 3 150 0 21 3 150 0 24 3 150 0 31 3 150 0 32 3 150 0 35 3 150 0 36 3 150 0 38 3 150 0 42 3 150 0 43 3 150 0 46 3 150 0 47 3 150 0 48 3 150 0 51 3 150 0 52 3 150 0 53 3 150 0 54 3 150 0 58 3 150 0 60 3 150 0 61 3 150 0 62 3 150 0 63 3 150 0 65 3 150 0 66 3 150 0 67 3 150 0 71 1 191 0 72 3 150 0 73 3 150 0 75 3 150 0 78 3 150 0 79 3 150 0 82 3 93 0 83 3 150 0 84 3 150 0 89 3 150 0 90 3 150 0 91 1 195 0 93 3 150 0 94 3 150 0 95 3 150 0 98 3 150 0 99 3 150 0 100 3 150 0 101 3 150 0 103 3 150 0 107 3 150 0 115 3 150 0 116 3 150 0 117 3 150 0 120 3 150 0 121 3 150 0 122 3 150 0 125 3 150 0 126 3 150 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 11 93 0 196 11 93 0 197 11 93 0 201 11 93 0 202] 
#[1 11 97 0 2 1 237 0 115] 
#[1 3 21 0 1 4 125 0 2 3 25 0 3 3 29 0 4 3 33 0 5 11 101 0 6 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 11 105 0 196 11 105 0 197 11 105 0 201 11 105 0 202] 
#[0 3 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 11 109 0 2] 
#[0 3 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 11 113 0 166 5 17 0 167 5 21 0 168 5 25 0 172 11 117 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 3 162 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 11 121 0 190] 
#[1 0 47 0 2 0 47 0 10 0 47 0 58 4 245 0 60 4 249 0 61 4 253 0 62 0 51 0 91 5 1 0 94 0 55 0 95 0 47 0 115 2 49 0 121 5 9 0 165 11 125 0 166 5 17 0 167 5 21 0 168 5 25 0 172 11 129 0 173 5 33 0 176 5 21 0 178 5 41 0 179 5 45 0 181 5 49 0 190 5 53 0 191 0 47 0 204] 
#[0 3 166 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 11 133 0 190] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 11 137 0 171 1 166 0 204] 
#[1 7 133 0 91 11 141 0 192] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 11 145 0 171 1 166 0 204] 
#[0 3 170 0 2 0 10 0 115 0 204] 
#[0 11 149 0 102] 
#[1 3 174 0 2 3 174 0 6 3 174 0 10 2 29 0 36 3 174 0 58 3 174 0 61 3 174 0 62 2 33 0 65 2 37 0 73 2 41 0 75 3 174 0 91 3 174 0 94 3 174 0 95 2 45 0 98 3 174 0 103 3 174 0 115 3 174 0 121 3 174 0 204] 
#[1 3 178 0 2 8 81 0 6 3 178 0 10 3 178 0 115 2 49 0 121 11 153 0 190 3 178 0 204] 
#[0 3 182 0 2 0 6 0 10 0 47 0 115 0 120 0 121 0 204] 
#[0 3 186 0 2 0 10 0 115 0 204] 
#[0 3 190 0 2 0 10 0 115 0 204] 
#[1 0 65 0 66 0 69 0 67 0 101 0 116 11 157 0 150 11 161 0 153] 
#[1 3 21 0 1 3 194 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 194 0 6 3 37 0 7 3 41 0 9 3 194 0 10 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 194 0 47 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 194 0 115 3 194 0 120 3 194 0 121 3 113 0 125 3 194 0 204] 
#[0 11 165 0 1] 
#[0 3 198 0 6 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 63 0 66 0 67 0 78 0 79 0 82 0 99 0 100 0 101 0 103 0 116 0 117 0 122] 
#[0 3 202 0 2 0 10 0 115 0 204] 
#[0 3 206 0 2 0 10 0 115 0 204] 
#[0 3 210 0 2 0 6] 
#[1 0 6 0 2 0 6 0 10 11 169 0 134] 
#[1 11 173 0 2 3 22 0 36 3 22 0 65 3 22 0 73 3 22 0 75 3 22 0 98] 
#[1 11 177 0 2 3 26 0 36 3 26 0 65 3 26 0 73 3 26 0 75 3 26 0 98] 
#[0 3 214 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 1 98 0 2 0 59 0 36 0 63 0 65 0 67 0 73 0 71 0 75 6 149 0 89 0 79 0 98 6 153 0 187 11 181 0 188] 
#[1 1 98 0 2 0 59 0 36 0 63 0 65 0 67 0 73 0 71 0 75 6 149 0 89 0 79 0 98 6 153 0 187 11 185 0 188] 
#[0 3 218 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 3 222 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 11 189 0 1] 
#[1 3 226 0 2 3 226 0 10 1 237 0 115 3 226 0 204] 
#[0 3 230 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 11 193 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[0 11 197 0 1] 
#[1 3 234 0 2 3 234 0 10 1 237 0 115 3 234 0 204] 
#[0 3 238 0 2 0 10 0 115 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 11 201 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 3 21 0 1 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 10 149 0 120 3 113 0 125 11 205 0 138 10 157 0 139] 
#[1 11 209 0 81 11 213 0 85] 
#[1 3 242 0 2 3 242 0 10 3 242 0 115 10 149 0 120 11 217 0 139 3 242 0 204] 
#[0 3 246 0 2 0 10 0 115 0 120 0 204] 
#[0 11 221 0 1] 
#[0 11 225 0 64] 
#[0 11 229 0 2] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 11 233 0 128] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 11 237 0 171 1 166 0 204] 
#[1 7 133 0 91 11 241 0 192] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 11 245 0 171 1 166 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 11 249 0 171 1 166 0 204] 
#[1 7 133 0 91 11 253 0 192] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 1 0 171 1 166 0 204] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 12 5 0 196 12 5 0 197 12 5 0 201 12 5 0 202] 
#[0 4 6 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 9 0 190] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 12 13 0 49] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 4 26 0 2 3 1 0 6 4 26 0 10 4 26 0 58 4 26 0 115 4 26 0 121 3 17 0 194 4 26 0 204] 
#[0 4 30 0 2 0 10 0 115 0 204] 
#[0 4 34 0 2 0 10 0 58 0 115 0 204] 
#[0 4 38 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 17 0 169 12 17 0 192 2 214 0 204] 
#[0 4 42 0 91] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 21 0 169 12 21 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 12 25 0 168 12 25 0 178 1 42 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 12 29 0 168 12 29 0 178 1 42 0 204] 
#[1 1 34 0 2 1 34 0 10 1 34 0 58 1 34 0 91 5 1 0 94 1 34 0 95 1 34 0 115 12 33 0 167 12 33 0 179 1 34 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 37 0 169 12 37 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 12 41 0 168 12 41 0 178 1 42 0 204] 
#[0 4 46 0 91] 
#[1 1 182 0 2 1 182 0 10 1 182 0 58 0 87 0 91 0 91 0 95 1 182 0 115 12 45 0 168 12 45 0 178 1 182 0 204] 
#[0 4 50 0 91] 
#[0 4 54 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 49 0 169 12 49 0 192 2 214 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 53 0 169 12 53 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 12 57 0 168 12 57 0 178 1 42 0 204] 
#[0 4 58 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 61 0 169 12 61 0 192 2 214 0 204] 
#[0 4 62 0 91] 
#[0 12 65 0 2] 
#[0 4 66 0 2 0 6 0 59] 
#[0 12 69 0 129] 
#[1 12 73 0 2 3 1 0 6 3 17 0 194] 
#[1 1 199 0 1 4 70 0 2 1 203 0 3 1 207 0 4 1 211 0 5 4 70 0 6 1 215 0 7 1 219 0 9 4 70 0 10 1 223 0 11 1 227 0 12 1 231 0 13 1 235 0 14 1 239 0 15 1 243 0 16 4 70 0 17 1 247 0 18 4 70 0 19 4 70 0 20 1 251 0 21 4 70 0 24 4 70 0 31 4 70 0 32 4 70 0 35 4 70 0 36 4 70 0 38 4 70 0 42 4 70 0 43 4 70 0 46 4 70 0 47 4 70 0 48 4 70 0 51 4 70 0 52 4 70 0 53 4 70 0 54 4 70 0 58 4 70 0 60 4 70 0 61 4 70 0 62 4 70 0 63 1 255 0 64 4 70 0 65 4 70 0 66 4 70 0 67 4 70 0 71 2 3 0 72 4 70 0 73 4 70 0 75 2 7 0 76 4 70 0 78 4 70 0 79 4 70 0 82 2 11 0 83 2 15 0 84 2 19 0 85 4 70 0 89 2 23 0 90 4 70 0 91 2 27 0 93 4 70 0 94 4 70 0 95 4 70 0 98 4 70 0 99 4 70 0 100 4 70 0 101 4 70 0 103 4 70 0 107 4 70 0 115 4 70 0 116 4 70 0 117 4 70 0 120 4 70 0 121 4 70 0 122 2 31 0 125 4 70 0 126 4 70 0 204] 
#[0 2 35 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 12 77 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 2 39 0 1 4 78 0 2 3 25 0 3 3 29 0 4 3 33 0 5 4 78 0 6 3 37 0 7 3 41 0 9 4 78 0 10 4 78 0 11 4 78 0 12 4 78 0 13 4 78 0 14 4 78 0 15 4 78 0 16 4 78 0 17 4 78 0 18 4 78 0 19 4 78 0 20 4 78 0 21 4 78 0 24 4 78 0 31 4 78 0 32 4 78 0 35 4 78 0 36 4 78 0 38 4 78 0 42 4 78 0 43 4 78 0 46 4 78 0 47 4 78 0 48 4 78 0 51 4 78 0 52 4 78 0 53 4 78 0 54 4 78 0 58 4 78 0 60 4 78 0 61 4 78 0 62 4 78 0 63 4 78 0 65 4 78 0 66 4 78 0 67 4 78 0 71 2 43 0 72 4 78 0 73 4 78 0 75 4 78 0 78 4 78 0 79 4 78 0 82 3 93 0 83 4 78 0 84 4 78 0 89 4 78 0 90 4 78 0 91 2 47 0 93 4 78 0 94 4 78 0 95 4 78 0 98 4 78 0 99 4 78 0 100 4 78 0 101 4 78 0 103 4 78 0 107 4 78 0 115 4 78 0 116 4 78 0 117 4 78 0 120 4 78 0 121 4 78 0 122 4 78 0 125 4 78 0 126 4 78 0 204] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 81 0 171 1 166 0 204] 
#[1 7 133 0 91 12 85 0 192] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 89 0 171 1 166 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 93 0 171 1 166 0 204] 
#[1 7 133 0 91 12 97 0 192] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 101 0 171 1 166 0 204] 
#[0 4 86 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 105 0 190] 
#[0 4 90 0 2 0 10 0 115 0 204] 
#[0 4 94 0 2 0 10 0 115 0 204] 
#[0 4 98 0 2 0 10 0 115 0 204] 
#[0 4 102 0 2 0 10 0 115 0 204] 
#[0 4 106 0 2 0 10 0 115 0 204] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 12 109 0 163] 
#[1 12 113 0 2 3 181 0 10] 
#[0 4 110 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 4 114 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 12 117 0 2 3 218 0 36 3 218 0 65 3 218 0 73 3 218 0 75 3 218 0 98] 
#[1 12 121 0 2 3 222 0 36 3 222 0 65 3 222 0 73 3 222 0 75 3 222 0 98] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 12 125 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 12 129 0 2 3 1 0 6 3 17 0 194] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 12 133 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 12 137 0 2 3 1 0 6 3 17 0 194] 
#[1 4 118 0 2 4 118 0 10 4 118 0 115 10 149 0 120 11 217 0 139 4 118 0 204] 
#[0 12 141 0 107] 
#[0 12 145 0 81] 
#[0 4 122 0 2 0 10 0 115 0 120 0 204] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 12 149 0 163] 
#[0 12 153 0 1] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 12 157 0 2] 
#[0 4 130 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 161 0 190] 
#[0 4 134 0 2 0 10 0 115 0 204] 
#[0 4 138 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 165 0 190] 
#[0 4 142 0 2 0 10 0 115 0 204] 
#[1 3 21 0 1 12 169 0 2 3 25 0 3 3 29 0 4 3 33 0 5 3 37 0 7 3 41 0 9 3 45 0 11 3 49 0 12 3 53 0 13 3 57 0 14 3 61 0 15 3 65 0 16 3 69 0 18 3 77 0 21 3 81 0 64 3 85 0 72 3 89 0 76 3 93 0 83 3 97 0 84 3 101 0 85 3 105 0 90 3 109 0 93 3 113 0 125] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 173 0 171 1 166 0 204] 
#[0 12 177 0 2] 
#[0 4 146 0 2 0 10 0 58 0 115 0 204] 
#[0 4 150 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 181 0 169 12 181 0 192 2 214 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 185 0 169 12 185 0 192 2 214 0 204] 
#[1 1 42 0 2 1 42 0 10 1 42 0 58 1 42 0 91 5 5 0 95 1 42 0 115 12 189 0 168 12 189 0 178 1 42 0 204] 
#[0 4 154 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 193 0 169 12 193 0 192 2 214 0 204] 
#[0 4 158 0 91] 
#[0 4 162 0 2 0 10 0 58 0 115 0 204] 
#[0 4 166 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 12 197 0 169 12 197 0 192 2 214 0 204] 
#[0 4 170 0 2 0 10 0 58 0 115 0 204] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 12 201 0 2] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 12 205 0 2 3 1 0 6 3 17 0 194] 
#[0 4 182 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 209 0 190] 
#[0 4 186 0 2 0 10 0 115 0 204] 
#[0 4 190 0 2 0 10 0 115 0 204] 
#[1 2 49 0 121 12 213 0 190] 
#[0 4 194 0 2 0 10 0 115 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 217 0 171 1 166 0 204] 
#[1 12 221 0 2 1 237 0 115] 
#[0 4 198 0 2 0 10 0 115 0 204] 
#[0 4 202 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[0 4 206 0 2 0 6 0 10 0 17 0 36 0 58 0 61 0 62 0 65 0 73 0 75 0 89 0 91 0 94 0 95 0 98 0 103 0 115 0 117 0 121 0 204] 
#[1 12 225 0 2 3 1 0 6 3 17 0 194] 
#[0 4 210 0 2 0 10 0 115 0 204] 
#[1 12 229 0 2 3 1 0 6 3 17 0 194] 
#[0 4 214 0 2 0 10 0 115 0 204] 
#[0 12 233 0 116] 
#[0 12 237 0 107] 
#[1 12 241 0 2 1 237 0 115] 
#[1 0 89 0 100 0 93 0 101 0 109 0 122 12 245 0 163] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 249 0 171 1 166 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 12 253 0 171 1 166 0 204] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 226 0 2 0 10 0 115 0 204] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[0 4 234 0 2 0 10 0 58 0 115 0 204] 
#[0 4 238 0 2 0 10 0 58 0 115 0 204] 
#[1 2 214 0 2 2 214 0 10 2 214 0 58 7 133 0 91 2 214 0 115 13 1 0 169 13 1 0 192 2 214 0 204] 
#[0 4 242 0 2 0 10 0 58 0 115 0 204] 
#[0 4 246 0 2 0 10 0 58 0 115 0 204] 
#[0 4 250 0 2 0 6 0 59] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 13 5 0 171 1 166 0 204] 
#[1 1 166 0 2 1 166 0 10 7 117 0 58 1 166 0 115 7 121 0 170 13 9 0 171 1 166 0 204] 
#[0 5 2 0 2 0 10 0 115 0 204] 
#[0 5 6 0 6 0 20 0 24 0 31 0 32 0 35 0 38 0 42 0 43 0 46 0 48 0 52 0 53 0 54 0 63 0 66 0 67 0 78 0 79 0 82 0 99 0 100 0 101 0 103 0 116 0 117 0 122] 
#[0 5 10 0 2 0 10 0 115 0 204] 
#[0 5 14 0 2 0 10 0 115 0 204] 
#[0 13 13 0 103] 
#[0 13 17 0 67] 
#[0 5 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 13 21 0 2 1 237 0 115] 
#[0 5 22 0 2 0 10 0 115 0 204] 
#[0 5 26 0 2 0 10 0 115 0 204] 
#[0 5 30 0 2 0 10 0 58 0 115 0 204] 
#[0 5 34 0 2 0 10 0 115 0 204] 
#[0 5 38 0 2 0 10 0 115 0 204] 
#[1 0 14 0 126 13 25 0 151 6 49 0 152 6 53 0 185 6 57 0 202] 
#[0 13 29 0 1] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 24 0 31 0 32 0 35 0 36 0 38 0 42 0 43 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 71 0 72 0 73 0 75 0 76 0 78 0 79 0 82 0 83 0 84 0 85 0 89 0 90 0 91 0 93 0 94 0 95 0 98 0 99 0 100 0 101 0 103 0 107 0 115 0 116 0 117 0 120 0 121 0 122 0 125 0 126 0 204] 
#[1 5 46 0 2 8 81 0 6 5 46 0 10 5 46 0 115 5 46 0 120 5 46 0 204] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 13 33 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 13 37 0 2 3 1 0 6 3 17 0 194] 
#[1 5 50 0 2 5 50 0 10 5 50 0 115 13 41 0 118 5 50 0 120 5 50 0 204] 
#[0 13 45 0 1] 
#[1 1 61 0 1 0 14 0 3 1 65 0 5 1 69 0 7 1 73 0 27 1 77 0 29 1 81 0 34 1 85 0 39 1 97 0 55 1 101 0 56 1 105 0 70 1 109 0 85 1 113 0 86 1 117 0 105 1 121 0 108 1 125 0 109 1 133 0 113 1 137 0 114 0 7 0 126 1 145 0 127 1 149 0 128 1 153 0 129 1 157 0 185 13 49 0 193 1 165 0 195 1 169 0 196 1 169 0 197 1 169 0 201 1 169 0 202] 
#[1 13 53 0 2 3 1 0 6 3 17 0 194] 
#[0 5 54 0 2 0 10 0 115 0 120 0 204]
	).
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCaseExpression1: nodes [
	| result |
	result := TeradataCaseExpressionNode new.
	result caseToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result whens.
	result endToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCaseExpression2: nodes [
	| result |
	result := TeradataCaseExpressionNode new.
	result caseToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result whens.
	result else: (nodes at: 3).
	result endToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCaseExpression3: nodes [
	| result |
	result := TeradataCaseExpressionNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result whens.
	result endToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCaseExpression4: nodes [
	| result |
	result := TeradataCaseExpressionNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result whens.
	result else: (nodes at: 4).
	result endToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCheckWorkloadStatement1: nodes [
	| result |
	result := TeradataCheckWorkloadStatementNode new.
	result checkToken: (nodes at: 1).
	result workloadToken: (nodes at: 2).
	result forToken: (nodes at: 3).
	result statement: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCheckWorkloadStatement2: nodes [
	| result |
	result := TeradataCheckWorkloadStatementNode new.
	result checkToken: (nodes at: 1).
	result workloadToken: (nodes at: 2).
	result endToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCheckpointStatement1: nodes [
	| result |
	result := TeradataCheckpointStatementNode new.
	result checkpointToken: (nodes at: 1).
	result loadingToken: (nodes at: 2).
	result intervalToken: (nodes at: 3).
	result interal: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCheckpointStatement2: nodes [
	| result |
	result := TeradataCheckpointStatementNode new.
	result checkpointToken: (nodes at: 1).
	result loadingToken: (nodes at: 2).
	result intervalToken: (nodes at: 3).
	result interal: (nodes at: 4).
	result endToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForCreateMacroStatement1: nodes [
	| result |
	result := TeradataCreateMacroStatementNode new.
	result createToken: (nodes at: 1).
	result macroToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addToken: ((nodes at: 4) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result addToken: ((nodes at: 4) at: 4) to: result rightParens.
	result asToken: (nodes at: 5).
	result addToken: (nodes at: 6) to: result leftParens.
	result addNodes: ((nodes at: 7) at: 1) to: result statements.
	result addTokens: ((nodes at: 7) at: 2) to: result semicolons.
	result addTokens: (nodes at: 8) to: result semicolons.
	result addToken: (nodes at: 9) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDatabaseStatement1: nodes [
	| result |
	result := TeradataDatabaseStatementNode new.
	result databaseToken: (nodes at: 1).
	result database: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery10: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result table: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery11: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result table: (nodes at: 3).
	result whereToken: ((nodes at: 4) at: 1).
	result where: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery12: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result table: (nodes at: 3).
	result allToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery7: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result table: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery8: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result table: (nodes at: 2).
	result whereToken: ((nodes at: 3) at: 1).
	result where: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDeleteQuery9: nodes [
	| result |
	result := TeradataDeleteQueryNode new.
	result _deleteToken: (nodes at: 1).
	result table: (nodes at: 2).
	result allToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForDropTableQuery1: nodes [
	| result |
	result := TeradataDropTableQueryNode new.
	result dropToken: (nodes at: 1).
	result tableToken: (nodes at: 2).
	result table: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForElseExpression1: nodes [
	| result |
	result := TeradataElseExpressionNode new.
	result elseToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExecuteStatement3: nodes [
	| result |
	result := TeradataExecuteStatementNode new.
	result executeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExecuteStatement4: nodes [
	| result |
	result := TeradataExecuteStatementNode new.
	result executeToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression11: nodes [
	| result |
	result := TeradataBinaryExpressionNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression25: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result likeToken: (nodes at: 2).
	result like: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression26: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result likeToken: (nodes at: 2).
	result like: (nodes at: 3).
	result escapeToken: (nodes at: 4).
	result escape: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression27: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result notToken: (nodes at: 2).
	result likeToken: (nodes at: 3).
	result like: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression28: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result notToken: (nodes at: 2).
	result likeToken: (nodes at: 3).
	result like: (nodes at: 4).
	result escapeToken: (nodes at: 5).
	result escape: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression29: nodes [
	| result |
	result := TeradataSubstringExpressionNode new.
	result substringToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result fromToken: (nodes at: 4).
	result from: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression2: nodes [
	| result |
	result := TeradataVariableExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression30: nodes [
	| result |
	result := TeradataSubstringExpressionNode new.
	result substringToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result fromToken: (nodes at: 4).
	result from: (nodes at: 5).
	result forToken: (nodes at: 6).
	result for: (nodes at: 7).
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression31: nodes [
	| result |
	result := TeradataIsNullExpressionNode new.
	result value: (nodes at: 1).
	result _isToken: (nodes at: 2).
	result nullToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression32: nodes [
	| result |
	result := TeradataIsNullExpressionNode new.
	result value: (nodes at: 1).
	result _isToken: (nodes at: 2).
	result notToken: (nodes at: 3).
	result nullToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression33: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression34: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result inToken: (nodes at: 2).
	result addNode: (nodes at: 3) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression35: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result inToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result addNode: (nodes at: 4) to: result values.
	result addToken: (nodes at: 5) to: result commas.
	result addNodes: ((nodes at: 6) at: 1) to: result values.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression36: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result notToken: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression37: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result notToken: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNode: (nodes at: 5) to: result values.
	result addToken: (nodes at: 6) to: result commas.
	result addNodes: ((nodes at: 7) at: 1) to: result values.
	result addTokens: ((nodes at: 7) at: 2) to: result commas.
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression38: nodes [
	| result |
	result := TeradataInQueryExpressionNode new.
	result addNode: (nodes at: 1) to: result values.
	result inToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result query: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression39: nodes [
	| result |
	result := TeradataInQueryExpressionNode new.
	result addNode: (nodes at: 1) to: result values.
	result notToken: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result query: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression3: nodes [
	| result |
	result := TeradataLiteralExpressionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression40: nodes [
	| result |
	result := TeradataInQueryExpressionNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result addNode: (nodes at: 2) to: result values.
	result addToken: (nodes at: 3) to: result commas.
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result rightParens.
	result inToken: (nodes at: 6).
	result addToken: (nodes at: 7) to: result leftParens.
	result query: (nodes at: 8).
	result addToken: (nodes at: 9) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression41: nodes [
	| result |
	result := TeradataInQueryExpressionNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result addNode: (nodes at: 2) to: result values.
	result addToken: (nodes at: 3) to: result commas.
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result rightParens.
	result notToken: (nodes at: 6).
	result inToken: (nodes at: 7).
	result addToken: (nodes at: 8) to: result leftParens.
	result query: (nodes at: 9).
	result addToken: (nodes at: 10) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression42: nodes [
	| result |
	result := TeradataConversionExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result formatToken: (nodes at: 3).
	result format: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression43: nodes [
	| result |
	result := TeradataConversionExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression44: nodes [
	| result |
	result := TeradataConversionExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result comma: (nodes at: 4).
	result formatToken: (nodes at: 5).
	result format: (nodes at: 6).
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression45: nodes [
	| result |
	result := TeradataCastExpressionNode new.
	result castToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result asToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression46: nodes [
	| result |
	result := TeradataCastExpressionNode new.
	result castToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result asToken: (nodes at: 4).
	result formatToken: (nodes at: 5).
	result format: (nodes at: 6).
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression47: nodes [
	| result |
	result := TeradataCastExpressionNode new.
	result castToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result asToken: (nodes at: 4).
	result type: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression48: nodes [
	| result |
	result := TeradataCastExpressionNode new.
	result castToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result asToken: (nodes at: 4).
	result type: (nodes at: 5).
	result formatToken: (nodes at: 6).
	result format: (nodes at: 7).
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression50: nodes [
	| result |
	result := TeradataUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression51: nodes [
	| result |
	result := TeradataBetweenExpressionNode new.
	result value: (nodes at: 1).
	result betweenToken: (nodes at: 2).
	result first: (nodes at: 3).
	result andToken: (nodes at: 4).
	result last: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression52: nodes [
	| result |
	result := TeradataBetweenExpressionNode new.
	result value: (nodes at: 1).
	result notToken: (nodes at: 2).
	result betweenToken: (nodes at: 3).
	result first: (nodes at: 4).
	result andToken: (nodes at: 5).
	result last: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression53: nodes [
	| result |
	result := TeradataTrimExpressionNode new.
	result trimToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression54: nodes [
	| result |
	result := TeradataTrimExpressionNode new.
	result trimToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result positionToken: (nodes at: 3).
	result fromToken: (nodes at: 4).
	result value: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression57: nodes [
	| result |
	result := TeradataQueryExpressionNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result query: (nodes at: 2).
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression59: nodes [
	| result |
	result := TeradataExtractExpressionNode new.
	result extractToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result name: (nodes at: 3).
	result fromToken: (nodes at: 4).
	result value: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression5: nodes [
	| result |
	result := TeradataNullExpressionNode new.
	result nullToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression60: nodes [
	| result |
	result := TeradataOverExpressionNode new.
	result value: (nodes at: 1).
	result overToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression61: nodes [
	| result |
	result := TeradataOverExpressionNode new.
	result value: (nodes at: 1).
	result overToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result orderBy: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression62: nodes [
	| result |
	result := TeradataOverExpressionNode new.
	result value: (nodes at: 1).
	result overToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result partition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression63: nodes [
	| result |
	result := TeradataOverExpressionNode new.
	result value: (nodes at: 1).
	result overToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result partition: (nodes at: 4).
	result orderBy: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression64: nodes [
	| result |
	result := TeradataIntervalExpressionNode new.
	result intervalToken: (nodes at: 1).
	result interval: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression65: nodes [
	| result |
	result := TeradataCaseSpecificExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result caseSpecificToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression66: nodes [
	| result |
	result := TeradataTitleExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result titleToken: (nodes at: 3).
	result title: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression67: nodes [
	| result |
	result := TeradataCountExpressionNode new.
	result countToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression69: nodes [
	| result |
	result := TeradataCountExpressionNode new.
	result countToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result countType: (nodes at: 3).
	result value: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression6: nodes [
	| result |
	result := TeradataStarExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result star: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression72: nodes [
	| result |
	result := TeradataTimestampExpressionNode new.
	result typeToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression73: nodes [
	| result |
	result := TeradataTimestampExpressionNode new.
	result typeToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression76: nodes [
	| result |
	result := TeradataExistsExpressionNode new.
	result existsToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result query: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression77: nodes [
	| result |
	result := TeradataExistsExpressionNode new.
	result notToken: (nodes at: 1).
	result existsToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result query: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression78: nodes [
	| result |
	result := TeradataTranslateExpressionNode new.
	result translateToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result usingToken: (nodes at: 4).
	result operation: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression79: nodes [
	| result |
	result := TeradataTranslateExpressionNode new.
	result translateToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result usingToken: (nodes at: 4).
	result operation: (nodes at: 5).
	result withToken: (nodes at: 6).
	result errorToken: (nodes at: 7).
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpressionList2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForFile1: nodes [
	| result |
	result := TeradataFileNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result statements.
	result addTokens: ((nodes at: 1) at: 2) to: result semicolons.
	result addTokens: (nodes at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForFile2: nodes [
	| result |
	result := TeradataFileNode new.
	result addTokens: (nodes at: 1) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForFromTables1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForFunctionExpression1: nodes [
	| result |
	result := TeradataFunctionExpressionNode new.
	result function: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForFunctionExpression2: nodes [
	| result |
	result := TeradataFunctionExpressionNode new.
	result function: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForGroupByExpression1: nodes [
	| result |
	result := TeradataGroupByNode new.
	result groupToken: (nodes at: 1).
	result byToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForHavingExpression1: nodes [
	| result |
	result := TeradataHavingNode new.
	result havingToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForHelpSessionStatement1: nodes [
	| result |
	result := TeradataHelpSessionStatementNode new.
	result helpToken: (nodes at: 1).
	result sessionToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForIdentifier1: nodes [
	| result |
	result := TeradataIdentifierExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result addToken: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForIdentifierName1: nodes [
	| result |
	result := TeradataIdentifierNameNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result addToken: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery11: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result table: (nodes at: 3).
	result query: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery12: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result table: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	result query: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery5: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result table: (nodes at: 2).
	result valuesToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery6: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result table: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result rightParens.
	result valuesToken: (nodes at: 6).
	result addToken: (nodes at: 7) to: result leftParens.
	result addNodes: ((nodes at: 8) at: 1) to: result values.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result addToken: (nodes at: 9) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery7: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result table: (nodes at: 3).
	result valuesToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result leftParens.
	result addNodes: ((nodes at: 6) at: 1) to: result values.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery8: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result table: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	result valuesToken: (nodes at: 7).
	result addToken: (nodes at: 8) to: result leftParens.
	result addNodes: ((nodes at: 9) at: 1) to: result values.
	result addTokens: ((nodes at: 9) at: 2) to: result commas.
	result addToken: (nodes at: 10) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForIntoExpression1: nodes [
	| result |
	result := TeradataIntoExpressionNode new.
	result intoToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLoadingStatement1: nodes [
	| result |
	result := TeradataBeginLoadingStatementNode new.
	result beginToken: (nodes at: 1).
	result loadingToken: (nodes at: 2).
	result table: (nodes at: 3).
	result errorfilesToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result withToken: (nodes at: 6).
	result intervalToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLoadingStatement2: nodes [
	| result |
	result := TeradataEndLoadingStatementNode new.
	result endToken: (nodes at: 1).
	result loadingToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLockTableStatement5: nodes [
	| result |
	result := TeradataLockTableStatementNode new.
	result lockToken: (nodes at: 1).
	result table: (nodes at: 2).
	result forToken: (nodes at: 3).
	result lock: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLockTableStatement6: nodes [
	| result |
	result := TeradataLockTableStatementNode new.
	result lockToken: (nodes at: 1).
	result table: (nodes at: 2).
	result forToken: (nodes at: 3).
	result lock: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLockTableStatement7: nodes [
	| result |
	result := TeradataLockTableStatementNode new.
	result lockToken: (nodes at: 1).
	result tableToken: (nodes at: 2).
	result table: (nodes at: 3).
	result forToken: (nodes at: 4).
	result lock: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForLockTableStatement8: nodes [
	| result |
	result := TeradataLockTableStatementNode new.
	result lockToken: (nodes at: 1).
	result tableToken: (nodes at: 2).
	result table: (nodes at: 3).
	result forToken: (nodes at: 4).
	result lock: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForMacroArgs1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForMacroArgs2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForMergeQuery1: nodes [
	| result |
	result := TeradataMergeQueryNode new.
	result mergeToken: (nodes at: 1).
	result mergeTable: (nodes at: 2).
	result usingToken: (nodes at: 3).
	result usingTable: (nodes at: 4).
	result onToken: (nodes at: 5).
	result condition: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result whenMerges.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForMergeQuery2: nodes [
	| result |
	result := TeradataMergeQueryNode new.
	result mergeToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result mergeTable: (nodes at: 3).
	result usingToken: (nodes at: 4).
	result usingTable: (nodes at: 5).
	result onToken: (nodes at: 6).
	result condition: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result whenMerges.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForNamedExpression2: nodes [
	| result |
	result := TeradataAliasedExpressionNode new.
	result expression: (nodes at: 1).
	result alias: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForNamedExpression3: nodes [
	| result |
	result := TeradataAliasedExpressionNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 2).
	result alias: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForOrderByExpression1: nodes [
	| result |
	result := TeradataOrderByExpressionNode new.
	result orderToken: (nodes at: 1).
	result byToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForParameter1: nodes [
	| result |
	result := TeradataParameterNode new.
	result name: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForPartitionByExpression1: nodes [
	| result |
	result := TeradataPartitionByExpressionNode new.
	result partitionToken: (nodes at: 1).
	result byToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForQualifyExpression1: nodes [
	| result |
	result := TeradataQualifyExpressionNode new.
	result qualifyToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForRollbackStatement1: nodes [
	| result |
	result := TeradataRollbackStatementNode new.
	result rollbackToken: (nodes at: 1).
	result workToken: (nodes at: 2).
	result work: (nodes at: 3).
	result fromToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result tables.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result whereToken: ((nodes at: 6) at: 1).
	result where: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery10: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result distinctToken: (nodes at: 2).
	result topToken: (nodes at: 3).
	result top: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result into: (nodes at: 6).
	result partition: ((nodes at: 7) at: 1).
	result qualify: ((nodes at: 7) at: 2).
	result orderBy: ((nodes at: 7) at: 3).
	result having: ((nodes at: 7) at: 4).
	result group: ((nodes at: 7) at: 5).
	result whereToken: ((nodes at: 7) at: 6).
	result where: ((nodes at: 7) at: 7).
	result fromToken: ((nodes at: 7) at: 8).
	result addNodes: ((nodes at: 7) at: 9) to: result tables.
	result addTokens: ((nodes at: 7) at: 10) to: result commas.
	result forToken: ((nodes at: 8) at: 1).
	result cursorToken: ((nodes at: 8) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery19: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result into: (nodes at: 3).
	result qualify: ((nodes at: 4) at: 1).
	result partition: ((nodes at: 4) at: 2).
	result having: ((nodes at: 4) at: 3).
	result group: ((nodes at: 4) at: 4).
	result fromToken: ((nodes at: 4) at: 5).
	result addNodes: ((nodes at: 4) at: 6) to: result tables.
	result addTokens: ((nodes at: 4) at: 7) to: result commas.
	result orderBy: (nodes at: 5).
	result whereToken: ((nodes at: 6) at: 1).
	result where: ((nodes at: 6) at: 2).
	result forToken: ((nodes at: 7) at: 1).
	result cursorToken: ((nodes at: 7) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery20: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result topToken: (nodes at: 2).
	result top: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result into: (nodes at: 5).
	result qualify: ((nodes at: 6) at: 1).
	result partition: ((nodes at: 6) at: 2).
	result having: ((nodes at: 6) at: 3).
	result group: ((nodes at: 6) at: 4).
	result fromToken: ((nodes at: 6) at: 5).
	result addNodes: ((nodes at: 6) at: 6) to: result tables.
	result addTokens: ((nodes at: 6) at: 7) to: result commas.
	result orderBy: (nodes at: 7).
	result whereToken: ((nodes at: 8) at: 1).
	result where: ((nodes at: 8) at: 2).
	result forToken: ((nodes at: 9) at: 1).
	result cursorToken: ((nodes at: 9) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery21: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result distinctToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result into: (nodes at: 4).
	result qualify: ((nodes at: 5) at: 1).
	result partition: ((nodes at: 5) at: 2).
	result having: ((nodes at: 5) at: 3).
	result group: ((nodes at: 5) at: 4).
	result fromToken: ((nodes at: 5) at: 5).
	result addNodes: ((nodes at: 5) at: 6) to: result tables.
	result addTokens: ((nodes at: 5) at: 7) to: result commas.
	result orderBy: (nodes at: 6).
	result whereToken: ((nodes at: 7) at: 1).
	result where: ((nodes at: 7) at: 2).
	result forToken: ((nodes at: 8) at: 1).
	result cursorToken: ((nodes at: 8) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery22: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result distinctToken: (nodes at: 2).
	result topToken: (nodes at: 3).
	result top: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result into: (nodes at: 6).
	result qualify: ((nodes at: 7) at: 1).
	result partition: ((nodes at: 7) at: 2).
	result having: ((nodes at: 7) at: 3).
	result group: ((nodes at: 7) at: 4).
	result fromToken: ((nodes at: 7) at: 5).
	result addNodes: ((nodes at: 7) at: 6) to: result tables.
	result addTokens: ((nodes at: 7) at: 7) to: result commas.
	result orderBy: (nodes at: 8).
	result whereToken: ((nodes at: 9) at: 1).
	result where: ((nodes at: 9) at: 2).
	result forToken: ((nodes at: 10) at: 1).
	result cursorToken: ((nodes at: 10) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery25: nodes [
	| result |
	result := TeradataUnionQueryNode new.
	result left: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result right: ((nodes at: 3) at: 2).
	result rightParen: ((nodes at: 3) at: 3).
	result orderBy: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery26: nodes [
	| result |
	result := TeradataUnionQueryNode new.
	result left: (nodes at: 1).
	result unionToken: (nodes at: 2).
	result allToken: (nodes at: 3).
	result leftParen: ((nodes at: 4) at: 1).
	result right: ((nodes at: 4) at: 2).
	result rightParen: ((nodes at: 4) at: 3).
	result orderBy: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery27: nodes [
	| result |
	result := TeradataWithQueryNode new.
	result withToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result withTables.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery28: nodes [
	| result |
	result := TeradataWithQueryNode new.
	result withToken: (nodes at: 1).
	result recursiveToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result withTables.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result statement: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery7: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result into: (nodes at: 3).
	result partition: ((nodes at: 4) at: 1).
	result qualify: ((nodes at: 4) at: 2).
	result orderBy: ((nodes at: 4) at: 3).
	result having: ((nodes at: 4) at: 4).
	result group: ((nodes at: 4) at: 5).
	result whereToken: ((nodes at: 4) at: 6).
	result where: ((nodes at: 4) at: 7).
	result fromToken: ((nodes at: 4) at: 8).
	result addNodes: ((nodes at: 4) at: 9) to: result tables.
	result addTokens: ((nodes at: 4) at: 10) to: result commas.
	result forToken: ((nodes at: 5) at: 1).
	result cursorToken: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery8: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result topToken: (nodes at: 2).
	result top: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result into: (nodes at: 5).
	result partition: ((nodes at: 6) at: 1).
	result qualify: ((nodes at: 6) at: 2).
	result orderBy: ((nodes at: 6) at: 3).
	result having: ((nodes at: 6) at: 4).
	result group: ((nodes at: 6) at: 5).
	result whereToken: ((nodes at: 6) at: 6).
	result where: ((nodes at: 6) at: 7).
	result fromToken: ((nodes at: 6) at: 8).
	result addNodes: ((nodes at: 6) at: 9) to: result tables.
	result addTokens: ((nodes at: 6) at: 10) to: result commas.
	result forToken: ((nodes at: 7) at: 1).
	result cursorToken: ((nodes at: 7) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery9: nodes [
	| result |
	result := TeradataSelectQueryNode new.
	result selectToken: (nodes at: 1).
	result distinctToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result into: (nodes at: 4).
	result partition: ((nodes at: 5) at: 1).
	result qualify: ((nodes at: 5) at: 2).
	result orderBy: ((nodes at: 5) at: 3).
	result having: ((nodes at: 5) at: 4).
	result group: ((nodes at: 5) at: 5).
	result whereToken: ((nodes at: 5) at: 6).
	result where: ((nodes at: 5) at: 7).
	result fromToken: ((nodes at: 5) at: 8).
	result addNodes: ((nodes at: 5) at: 9) to: result tables.
	result addTokens: ((nodes at: 5) at: 10) to: result commas.
	result forToken: ((nodes at: 6) at: 1).
	result cursorToken: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSetExpression1: nodes [
	| result |
	result := TeradataSetExpressionNode new.
	result name: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSetStatement1: nodes [
	| result |
	result := TeradataSetStatementNode new.
	result setToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equals: (nodes at: 3).
	result value: (nodes at: 4).
	result forToken: (nodes at: 5).
	result sessionToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSetStatement2: nodes [
	| result |
	result := TeradataSetStatementNode new.
	result setToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equals: (nodes at: 3).
	result value: (nodes at: 4).
	result updateToken: (nodes at: 5).
	result forToken: (nodes at: 6).
	result sessionToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForStatements1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForStatements2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable11: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result left: (nodes at: 1).
	result type: (nodes at: 2).
	result joinToken: (nodes at: 3).
	result right: (nodes at: 4).
	result onToken: ((nodes at: 5) at: 1).
	result on: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable12: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result leftParen: (nodes at: 1).
	result left: (nodes at: 2).
	result joinToken: (nodes at: 3).
	result right: (nodes at: 4).
	result onToken: ((nodes at: 5) at: 1).
	result on: ((nodes at: 5) at: 2).
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable13: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result leftParen: (nodes at: 1).
	result left: (nodes at: 2).
	result direction: (nodes at: 3).
	result type: (nodes at: 4).
	result joinToken: (nodes at: 5).
	result right: (nodes at: 6).
	result onToken: ((nodes at: 7) at: 1).
	result on: ((nodes at: 7) at: 2).
	result rightParen: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable16: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result leftParen: (nodes at: 1).
	result left: (nodes at: 2).
	result type: (nodes at: 3).
	result joinToken: (nodes at: 4).
	result right: (nodes at: 5).
	result onToken: ((nodes at: 6) at: 1).
	result on: ((nodes at: 6) at: 2).
	result rightParen: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable1: nodes [
	| result |
	result := TeradataTableNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result addToken: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable2: nodes [
	| result |
	result := TeradataTableNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result addToken: (nodes at: 2) to: result names.
	result alias: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable3: nodes [
	| result |
	result := TeradataTableNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periods.
	result addToken: (nodes at: 2) to: result names.
	result asToken: (nodes at: 3).
	result alias: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable4: nodes [
	| result |
	result := TeradataSelectTableNode new.
	result leftParen: (nodes at: 1).
	result query: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable5: nodes [
	| result |
	result := TeradataSelectTableNode new.
	result leftParen: (nodes at: 1).
	result query: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result alias: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable6: nodes [
	| result |
	result := TeradataSelectTableNode new.
	result leftParen: (nodes at: 1).
	result query: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result asToken: (nodes at: 4).
	result alias: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable7: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result left: (nodes at: 1).
	result joinToken: (nodes at: 2).
	result right: (nodes at: 3).
	result onToken: ((nodes at: 4) at: 1).
	result on: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable8: nodes [
	| result |
	result := TeradataJoinTableNode new.
	result left: (nodes at: 1).
	result direction: (nodes at: 2).
	result type: (nodes at: 3).
	result joinToken: (nodes at: 4).
	result right: (nodes at: 5).
	result onToken: ((nodes at: 6) at: 1).
	result on: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTransactionStatement1: nodes [
	| result |
	result := TeradataBeginTransactionStatementNode new.
	result beginToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTransactionStatement2: nodes [
	| result |
	result := TeradataEndTransactionStatementNode new.
	result endToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForType1: nodes [
	| result |
	result := TeradataTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForType2: nodes [
	| result |
	result := TeradataTypeNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result precision: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForType3: nodes [
	| result |
	result := TeradataTypeNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result precision: (nodes at: 3).
	result comma: (nodes at: 4).
	result scale: (nodes at: 5).
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUnionSelectQuery1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUnionSelectQuery2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery1: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result setToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery3: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result setToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result elseToken: (nodes at: 5).
	result else: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery4: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result setToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result whereToken: ((nodes at: 5) at: 1).
	result where: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery6: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result setToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result whereToken: ((nodes at: 5) at: 1).
	result where: ((nodes at: 5) at: 2).
	result elseToken: (nodes at: 6).
	result else: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery7: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result fromToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result setToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUpdateQuery8: nodes [
	| result |
	result := TeradataUpdateQueryNode new.
	result updateToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result tables.
	result fromToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result setToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result whereToken: ((nodes at: 7) at: 1).
	result where: ((nodes at: 7) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForUsingStatement1: nodes [
	| result |
	result := TeradataUsingStatementNode new.
	result usingToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWhenExpression1: nodes [
	| result |
	result := TeradataWhenExpressionNode new.
	result whenToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result thenToken: (nodes at: 3).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWhenExpressions1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWhenMergeCondition1: nodes [
	| result |
	result := TeradataWhenMergeConditionNode new.
	result whenToken: (nodes at: 1).
	result matchedToken: (nodes at: 2).
	result thenToken: (nodes at: 3).
	result updateToken: (nodes at: 4).
	result setToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result setExpressions.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWhenMergeCondition2: nodes [
	| result |
	result := TeradataWhenMergeConditionNode new.
	result whenToken: (nodes at: 1).
	result notToken: (nodes at: 2).
	result matchedToken: (nodes at: 3).
	result thenToken: (nodes at: 4).
	result insertToken: (nodes at: 5).
	result addToken: (nodes at: 6) to: result leftParens.
	result addNodes: ((nodes at: 7) at: 1) to: result values.
	result addTokens: ((nodes at: 7) at: 2) to: result commas.
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWhenMergeCondition3: nodes [
	| result |
	result := TeradataWhenMergeConditionNode new.
	result whenToken: (nodes at: 1).
	result notToken: (nodes at: 2).
	result matchedToken: (nodes at: 3).
	result thenToken: (nodes at: 4).
	result insertToken: (nodes at: 5).
	result addToken: (nodes at: 6) to: result leftParens.
	result addNodes: ((nodes at: 7) at: 1) to: result values.
	result addTokens: ((nodes at: 7) at: 2) to: result commas.
	result addToken: (nodes at: 8) to: result rightParens.
	result valuesToken: (nodes at: 9).
	result addToken: (nodes at: 10) to: result leftParens.
	result addNodes: ((nodes at: 11) at: 1) to: result values.
	result addTokens: ((nodes at: 11) at: 2) to: result commas.
	result addToken: (nodes at: 12) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWithTable1: nodes [
	| result |
	result := TeradataWithTableDefinitionNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result query: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWithTable2: nodes [
	| result |
	result := TeradataWithTableDefinitionNode new.
	result name: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result rightParens.
	result asToken: (nodes at: 5).
	result addToken: (nodes at: 6) to: result leftParens.
	result query: (nodes at: 7).
	result addToken: (nodes at: 8) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWithTables2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___10: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 2 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___11: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___12: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 3 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___13: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___14: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 4 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___15: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 4 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___16: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 4 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 1 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___1: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___2: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___3: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___4: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___5: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___6: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___7: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___8: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___9: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify____1: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 5 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 5 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___13: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 6 put: ((nodes at: 2) at: 1).
	result at: 7 put: ((nodes at: 2) at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___14: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 6 put: ((nodes at: 2) at: 1).
	result at: 7 put: ((nodes at: 2) at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___15: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 6 put: ((nodes at: 2) at: 1).
	result at: 7 put: ((nodes at: 2) at: 2).
	result at: 5 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___16: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 6 put: ((nodes at: 2) at: 1).
	result at: 7 put: ((nodes at: 2) at: 2).
	result at: 5 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 1 put: (nodes at: 5).
	result at: 2 put: (nodes at: 6).
	result at: 3 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	result at: 7 put: ((nodes at: 1) at: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	result at: 7 put: ((nodes at: 1) at: 2).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	result at: 7 put: ((nodes at: 1) at: 2).
	result at: 5 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	result at: 7 put: ((nodes at: 1) at: 2).
	result at: 5 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression__GroupByExpression___group___HavingExpression__having___PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor__ON___onToken__Expression__on___1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_____semicolon__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_____semicolon__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor__identifier___name_______period__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor__identifier___name_______period___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor__identifier___name_______period___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #testing }
TeradataParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
TeradataParser >> useAllTokenIds [
	^ false
]
