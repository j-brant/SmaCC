Class {
	#name : #TeradataParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataParser class >> ambiguousTransitions [
^#(
#[ 0 130 2 49] 
#[ 0 222 2 53] 
#[ 0 222 2 109] 
#[ 0 222 2 129] 
#[ 0 230 2 53] 
#[ 0 230 2 109] 
#[ 0 230 2 129] 
#[ 0 238 0 242] 
#[ 1 130 2 53] 
#[ 1 130 2 109] 
#[ 1 130 2 129] 
#[ 1 134 2 53] 
#[ 1 134 2 109] 
#[ 1 134 2 129] 
#[ 1 138 2 53] 
#[ 1 138 2 109] 
#[ 1 138 2 129] 
#[ 1 142 2 53] 
#[ 1 142 2 109] 
#[ 1 142 2 129] 
#[ 1 146 2 53] 
#[ 1 146 2 109] 
#[ 1 146 2 129] 
#[ 1 150 2 53] 
#[ 1 150 2 109] 
#[ 1 150 2 129] 
#[ 1 154 2 53] 
#[ 1 154 2 109] 
#[ 1 154 2 129] 
#[ 1 158 2 53] 
#[ 1 158 2 109] 
#[ 1 158 2 129] 
#[ 1 162 2 53] 
#[ 1 162 2 109] 
#[ 1 162 2 129] 
#[ 1 166 2 53] 
#[ 1 166 2 109] 
#[ 1 166 2 129] 
#[ 1 170 2 53] 
#[ 1 170 2 109] 
#[ 1 170 2 129] 
#[ 1 174 2 53] 
#[ 1 174 2 109] 
#[ 1 174 2 129] 
#[ 1 182 2 53] 
#[ 1 182 5 161] 
#[ 1 182 2 109] 
#[ 1 182 2 129] 
#[ 1 186 2 53] 
#[ 1 186 2 109] 
#[ 1 186 2 129] 
#[ 1 190 2 53] 
#[ 1 190 2 109] 
#[ 1 190 2 129] 
#[ 1 194 2 53] 
#[ 1 194 2 109] 
#[ 1 194 2 129] 
#[ 1 213 2 14] 
#[ 1 217 2 14] 
#[ 1 221 2 14] 
#[ 2 14 6 145] 
#[ 1 225 2 14] 
#[ 2 46 2 53] 
#[ 2 46 2 109] 
#[ 2 46 2 129] 
#[ 2 50 2 53] 
#[ 2 50 6 245] 
#[ 2 50 2 109] 
#[ 2 50 2 129] 
#[ 1 170 2 53 2 150] 
#[ 1 170 2 57 2 150] 
#[ 1 170 2 61 2 150] 
#[ 1 170 2 65 2 150] 
#[ 1 170 2 69 2 150] 
#[ 1 170 2 73 2 150] 
#[ 1 170 2 77 2 150] 
#[ 1 170 2 81 2 150] 
#[ 1 170 2 85 2 150] 
#[ 1 170 2 89 2 150] 
#[ 1 170 2 93 2 150] 
#[ 1 170 2 97 2 150] 
#[ 1 170 2 101 2 150] 
#[ 1 170 2 105 2 150] 
#[ 1 170 2 109 2 150] 
#[ 1 170 2 113 2 150] 
#[ 1 170 2 117 2 150] 
#[ 1 170 2 121 2 150] 
#[ 1 170 2 125 2 150] 
#[ 1 170 2 129 2 150] 
#[ 1 170 2 133 2 150] 
#[ 1 42 2 154] 
#[ 2 53 2 158] 
#[ 2 109 2 158] 
#[ 2 129 2 158] 
#[ 1 42 3 38] 
#[ 2 53 3 42] 
#[ 2 109 3 42] 
#[ 2 129 3 42]
	).
]

{ #category : #'generated-accessing' }
TeradataParser class >> cacheId [
	^'2020-07-08T18:09:51.910286-05:00'
]

{ #category : #generated }
TeradataParser class >> definitionComment [
"%glr;
%ignorecase;
%left ""UNION"";
%left ""OR"";
%left ""AND"";
%nonassoc ""="" ""<>"" ""<"" ""<="" "">"" "">="" ""BETWEEN"";
%left ""||"";
%nonassoc ""LIKE"" ""IN"" ""NOT"";
%left ""+"" ""-"";
%left ""*"" ""/"" ""MOD"";

%prefix Teradata;
%suffix Node;
%root Program;
%hierarchy Expression (
    AliasedExpression
    BetweenExpression
    BinaryExpression
    CaseExpression
    CastExpression
    ExtractExpression
    FormatExpression
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
    TrimExpression
    TypeExpression
    UnaryExpression
    VariableExpression
);

<identifier>
	: [a-z_\$][a-z0-9_\$]* (\. [a-z_\$][a-z0-9_\$]*)*
	| (\"" [^\""\r\n]* \"")+
	;
<variable>
	: \: <identifier>
	;
<string>
	: (\' [^\']* \')+
	| \' [0-9A-F]* \' \s* XC[VF]?
	;
<number>
	: [0-9]+ (\. [0-9]*)?
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
	| WithRecursiveQuery
	| MergeQuery
	;
MergeQuery
	: ""MERGE"" 'mergeToken' ""INTO"" 'intoToken'? Table 'table' ""USING"" 'usingToken' Table 'table' ""ON"" 'onToken' Expression 'condition' WhenMergeCondition 'whenMerge'+ {{}}
	;
WhenMergeCondition
	: ""WHEN"" 'whenToken' ""MATCHED"" 'matchedToken' ""THEN"" 'thenToken' ""UPDATE"" 'updateToken' ""SET"" 'setToken' SetExpressionList {{}}
	| ""WHEN"" 'whenToken' ""NOT"" 'notToken' ""MATCHED"" 'matchedToken' ""THEN"" 'thenToken' ""INSERT"" 'insertToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' (""VALUES"" 'valuesToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen')? {{}}
	;
WithRecursiveQuery
	: ""WITH"" 'withToken' ""RECURSIVE"" 'recursiveToken' <identifier> 'name' ""("" 'leftParen' ExpressionList "")"" 'rightParen' ""AS"" 'asToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' Statement 'statement' {{RecursiveQuery}}
	;
RollbackStatement
	: ""ROLLBACK"" 'rollbackToken' ""WORK"" 'workToken' <string> 'work' ""FROM"" 'fromToken' TableList WhereExpression {{}}
	;
LockTableStatement
	: (""LOCKING"" 'lockToken' | ""LOCK"" 'lockToken') ""TABLE"" 'tableToken'? <identifier> 'table' ""FOR"" 'forToken' <identifier> 'lock' Statement 'statement'? {{}}
	;
CreateMacroStatement
	: ""CREATE"" 'createToken' ""MACRO"" 'macroToken' <identifier> 'name' MacroArgs ""AS"" 'asToken' ""("" 'leftParen' Statements "";"" 'semicolon'* "")"" 'rightParen' {{}}
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
	: <identifier> 'name' Type 'type' {{}}
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
	| ""INTEGER""
	| ""BIGINT""
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
	: ""DROP"" 'dropToken' ""TABLE"" 'tableToken' <identifier> 'tableName' {{}}
	;
UpdateQuery
	: ""UPDATE"" 'updateToken' <identifier> 'tableName' ""SET"" 'setToken' SetExpressionList WhereExpression? (""ELSE"" 'elseToken' (InsertQuery 'else' | UpdateQuery 'else'))? {{}}
	| ""UPDATE"" 'updateToken' <identifier> 'tableName' ""FROM"" 'fromToken' TableList ""SET"" 'setToken' SetExpressionList WhereExpression? {{}}
	;
SetExpressionList
	: SetExpression 'setExpression'
	| SetExpressionList "","" 'comma' SetExpression 'setExpression'
	;
SetExpression
	: <identifier> 'name' ""="" 'equals' Expression 'value' {{}}
	;
InsertQuery
	: ""INSERT"" 'insertToken' ""INTO"" 'intoToken'? <identifier> 'tableName' (""("" 'leftParen' ExpressionList "")"" 'rightParen')? ""VALUES"" 'valuesToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' {{}}
	| ""INSERT"" 'insertToken' ""INTO"" 'intoToken' <identifier> 'tableName' ""("" 'leftParen' ExpressionList "")"" 'rightParen' SelectQuery 'query' {{}}
	;
UsingStatement
	: ""USING"" 'usingToken' ExpressionList Statement 'statement' {{}}
	;
LoadingStatement
	: ""BEGIN"" 'beginToken' ""LOADING"" 'loadingToken' <identifier> 'table' ""ERRORFILES"" 'errorfilesToken' ExpressionList ""WITH"" 'withToken' ""INTERVAL"" 'intervalToken' {{BeginLoadingStatement}}
	| ""END"" 'endToken' ""LOADING"" 'loadingToken' {{EndLoadingStatement}}
	;
CheckWorkloadStatement
	: ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""FOR"" 'forToken' ""BEGIN"" 'beginToken' ""LOADING"" 'loadingToken' <identifier> 'database' <identifier> 'table' ExpressionList ""WITH"" 'withToken' ""INTERVAL"" 'intervalToken' {{}}
	| ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""END"" 'endToken'  {{}}
	;
SetStatement
	: ""SET"" 'setToken' <identifier> 'name' ""="" 'equals' Expression 'value' ""UPDATE"" 'updateToken' ""FOR"" 'forToken' ""SESSION"" 'sessionToken' {{}}
	;
HelpSessionStatement
	: ""HELP"" 'helpToken' ""SESSION"" 'sessionToken' {{}}
	;
TransactionStatement
	: ""BT"" 'beginToken' {{BeginTransactionStatement}}
	| ""ET"" 'endToken' {{EndTransactionStatement}}
	;
DatabaseStatement
	: ""DATABASE"" 'databaseToken' <identifier> 'database' {{}}
	;
ExecuteStatement
	: ""EXECUTE"" 'executeToken' Expression 'expression' {{}}
	;
DeleteQuery
	: (""DELETE"" 'deleteToken' | ""DEL"" 'deleteToken') ""FROM"" 'fromToken'? Table 'table' (WhereExpression | ""ALL"" 'allToken')? {{}}
	;
SelectQuery
	: (""SELECT"" 'selectToken' | ""SEL"" 'selectToken') (""DISTINCT"" 'distinctToken' | ""DISTINCTROW"" 'distinctToken')? (""TOP"" 'topToken' <number> 'top')? ExpressionList IntoExpression 'into'? (FromTables? WhereExpression? (GroupByExpression  'group' HavingExpression 'having'?)? PartitionByExpression 'partition'? QualifyExpression 'qualify'? OrderByExpression 'orderBy'?)?  {{}}
	| SelectQuery 'left' ""UNION"" 'unionToken' ""ALL"" 'allToken'? UnionSelectQuery {{UnionQuery}}
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
	: <identifier> 'name' (""AS"" 'asToken'? <identifier> 'alias')? {{Table}}
	| ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' (""AS"" 'asToken'? <identifier> 'alias')? {{SelectTable}}
	| Table 'left' ((""LEFT"" 'direction' | ""RIGHT"" 'direction') ""OUTER"" 'type'? | ""INNER"" 'type' | ""CROSS"" 'type') ""JOIN"" 'joinToken' Table 'right' (""ON"" 'onToken' Expression 'on')? {{JoinTable}}
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
	: <identifier> 'name' {{IdentifierExpression}}
	| <variable> 'name' {{VariableExpression}}
	| <string> 'value' {{LiteralExpression}}
	| <number> 'value' {{LiteralExpression}}
	| ""NULL"" 'nullToken' {{NullExpression}}
	| ""*"" 'star' {{StarExpression}}
	| CaseExpression
	| FunctionExpression
	| Expression 'left' (""+"" 'operator' | ""-"" 'operator' | ""*"" 'operator' | ""/"" 'operator' | ""MOD"" 'operator' | ""||"" 'operator') Expression 'right' {{BinaryExpression}}
	| Expression 'left' (""AND"" 'operator' | ""OR"" 'operator' | ""="" 'operator' | ""<>"" 'operator' | ""<"" 'operator' | ""<="" 'operator' | "">"" 'operator' | "">="" 'operator') Expression 'right' {{BinaryExpression}}
	| Expression 'value' ""NOT"" 'notToken'? ""LIKE"" 'likeToken' Expression 'like' (""ESCAPE"" 'escapeToken' Expression 'escape')? {{LikeExpression}}
	| ""SUBSTRING"" 'substringToken' ""("" 'leftParen' Expression 'value' ""FROM"" 'fromToken' Expression 'from' ""FOR"" 'forToken' Expression 'for' "")"" 'rightParen' {{SubstringExpression}}
	| Expression 'value' ""IS"" 'isToken' ""NOT"" 'notToken'? ""NULL"" 'nullToken' {{IsNullExpression}}
	| ""("" 'leftParen' Expression "")"" 'rightParen' {{Expression}}
	| Expression 'testValue' ""NOT"" 'notToken'? ""IN"" 'inToken' (Expression 'value' | ""("" 'leftParen' Expression 'value' "","" 'comma' ExpressionList "")"" 'rightParen') {{InValueExpression}}
	| Expression 'value' ""NOT"" 'notToken'? ""IN"" 'inToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{InQueryExpression}}
	| ""("" 'leftParen' Expression 'value' "","" 'comma' ExpressionList "")"" 'rightParen' ""NOT"" 'notToken'? ""IN"" 'inToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{InQueryExpression}}
	| Expression 'value' ""("" 'leftParen' ""FORMAT"" 'formatToken' <string> 'format' "")"" 'rightParen' {{FormatExpression}}
	| Expression 'value' ""("" 'leftParen' Type 'type' "")"" 'rightParen' {{TypeExpression}}
	| ""CAST"" 'castToken' ""("" 'leftParen' Expression 'value' ""AS"" 'asToken' Type 'type' (""FORMAT"" 'formatToken' <string> 'format')? "")"" 'rightParen' {{CastExpression}}
	| ""-"" 'operator' Expression 'value' {{UnaryExpression}}
	| Expression 'value' ""BETWEEN"" 'betweenToken' Expression 'first' ""AND"" 'andToken' Expression 'last' {{BetweenExpression}}
	| ""TRIM"" 'trimToken' ""("" 'leftParen' ((""BOTH"" 'positionToken' | ""TRAILING"" 'positionToken' | ""LEADING"" 'positionToken') ""FROM"" 'fromToken')? Expression 'value' "")"" 'rightParen' {{TrimExpression}}
	| ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' {{QueryExpression}}
	| ""NOT"" 'operator' Expression 'value' {{UnaryExpression}}
	| ""EXTRACT"" 'extractToken' ""("" 'leftParen'  <identifier> 'name' ""FROM"" 'fromToken' Expression 'value' "")"" 'rightParen' {{ExtractExpression}}
	#| ""RANK"" 'rankToken' ""("" 'leftParen' "")"" 'rightParen'
	| Expression 'value' ""OVER"" 'overToken' ""("" 'leftParen' PartitionByExpression 'partition'? OrderByExpression 'orderBy'? "")"" 'rightParen' {{OverExpression}}
	| ""INTERVAL"" 'intervalToken' <string> 'interval' <identifier> 'name' {{IntervalExpression}}
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
	;"
]

{ #category : #generated }
TeradataParser class >> reduceTable [
^#(
	#(120 0 #reduceActionFor_____semicolon__1: 1130497 false ) 
	#(146 1 #reduceActionForTransactionStatement1: 5652481 false ) 
	#(146 1 #reduceActionForTransactionStatement2: 5652482 false ) 
	#(119 1 #reduceActionForFile2: 1111042 false ) 
	#(121 1 #reduceActionForStatements1: 1181697 false ) 
	#(122 1 #liftFirstValue: 1292307 false ) 
	#(122 1 #liftFirstValue: 1292306 false ) 
	#(122 1 #liftFirstValue: 1292305 false ) 
	#(122 1 #liftFirstValue: 1292304 false ) 
	#(122 1 #liftFirstValue: 1292303 false ) 
	#(122 1 #liftFirstValue: 1292302 false ) 
	#(122 1 #liftFirstValue: 1292301 false ) 
	#(122 1 #liftFirstValue: 1292300 false ) 
	#(122 1 #liftFirstValue: 1292299 false ) 
	#(122 1 #liftFirstValue: 1292298 false ) 
	#(122 1 #liftFirstValue: 1292297 false ) 
	#(122 1 #liftFirstValue: 1292296 false ) 
	#(122 1 #liftFirstValue: 1292295 false ) 
	#(122 1 #liftFirstValue: 1292294 false ) 
	#(122 1 #liftFirstValue: 1292293 false ) 
	#(122 1 #liftFirstValue: 1292292 false ) 
	#(122 1 #liftFirstValue: 1292291 false ) 
	#(122 1 #liftFirstValue: 1292290 false ) 
	#(122 1 #liftFirstValue: 1292289 false ) 
	#(147 2 #reduceActionForDatabaseStatement1: 5777409 false ) 
	#(164 1 #reduceActionForTable1: 7175169 false ) 
	#(149 2 #reduceActionForDeleteQuery7: 5938183 false ) 
	#(149 2 #reduceActionForDeleteQuery7: 5938177 false ) 
	#(142 2 #reduceActionForLoadingStatement2: 4796418 false ) 
	#(173 1 #reduceActionForExpression6: 8030214 false ) 
	#(173 1 #reduceActionForExpression5: 8030213 false ) 
	#(173 1 #reduceActionForExpression1: 8030209 false ) 
	#(173 1 #reduceActionForExpression2: 8030210 false ) 
	#(173 1 #reduceActionForExpression3: 8030211 false ) 
	#(173 1 #reduceActionForExpression3: 8030212 false ) 
	#(148 2 #reduceActionForExecuteStatement1: 5859329 false ) 
	#(173 1 #liftFirstValue: 8030215 false ) 
	#(173 1 #liftFirstValue: 8030216 false ) 
	#(145 2 #reduceActionForHelpSessionStatement1: 5574657 false ) 
	#(151 0 #nil 6261761 false ) 
	#(170 1 #reduceActionForStatements1: 7804929 false ) 
	#(172 1 #liftFirstValue: 7907329 false ) 
	#(120 2 #reduceActionFor_____semicolon__2: 1130498 false ) 
	#(119 2 #reduceActionForFile1: 1111041 false ) 
	#(143 3 #reduceActionForCheckWorkloadStatement2: 5080066 false ) 
	#(130 0 #reduceActionForMacroArgs1: 3031041 false ) 
	#(149 3 #reduceActionForDeleteQuery10: 5938186 false ) 
	#(164 2 #reduceActionForTable2: 7175170 false ) 
	#(149 3 #reduceActionForDeleteQuery9: 5938185 false ) 
	#(149 3 #reduceActionForDeleteQuery8: 5938184 false ) 
	#(149 3 #reduceActionForDeleteQuery10: 5938180 false ) 
	#(149 3 #reduceActionForDeleteQuery9: 5938179 false ) 
	#(149 3 #reduceActionForDeleteQuery8: 5938178 false ) 
	#(136 3 #reduceActionForDropTableQuery1: 3722241 false ) 
	#(173 2 #reduceActionForExpression43: 8030251 false ) 
	#(176 1 #reduceActionForWhenExpressions1: 11277313 false ) 
	#(173 2 #reduceActionForExpression43: 8030258 false ) 
	#(171 1 #reduceActionForWhenExpressions1: 7866369 false ) 
	#(154 0 #nil 6374401 false ) 
	#(153 0 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: 6285313 false ) 
	#(151 1 #liftFirstValue: 6261762 false ) 
	#(172 2 #reduceActionForNamedExpression2: 7907330 false ) 
	#(141 3 #reduceActionForUsingStatement1: 4710401 false ) 
	#(158 1 #reduceActionForUnionSelectQuery2: 6658050 false ) 
	#(150 3 #reduceActionForSelectQuery13: 6083597 false ) 
	#(135 4 #reduceActionForCheckpointStatement1: 3567617 false ) 
	#(164 3 #reduceActionForTable4: 7175172 false ) 
	#(149 4 #reduceActionForDeleteQuery12: 5938188 false ) 
	#(149 4 #reduceActionForDeleteQuery11: 5938187 false ) 
	#(164 3 #reduceActionForTable3: 7175171 false ) 
	#(167 2 #reduceActionForWhereExpression1: 7570433 false ) 
	#(149 4 #reduceActionForDeleteQuery12: 5938182 false ) 
	#(149 4 #reduceActionForDeleteQuery11: 5938181 false ) 
	#(173 3 #reduceActionForExpression49: 8030257 false ) 
	#(173 3 #reduceActionForExpression30: 8030238 false ) 
	#(174 3 #reduceActionForCaseExpression1: 11082753 false ) 
	#(176 2 #reduceActionFor_____semicolon__2: 11277314 false ) 
	#(173 3 #reduceActionForExpression56: 8030264 false ) 
	#(178 3 #reduceActionForFunctionExpression1: 11472897 false ) 
	#(134 1 #liftFirstValue: 3372042 false ) 
	#(134 1 #liftFirstValue: 3372039 false ) 
	#(134 1 #liftFirstValue: 3372033 false ) 
	#(134 1 #liftFirstValue: 3372035 false ) 
	#(134 1 #liftFirstValue: 3372036 false ) 
	#(134 1 #liftFirstValue: 3372043 false ) 
	#(134 1 #liftFirstValue: 3372045 false ) 
	#(134 1 #liftFirstValue: 3372041 false ) 
	#(134 1 #liftFirstValue: 3372047 false ) 
	#(134 1 #liftFirstValue: 3372044 false ) 
	#(134 1 #liftFirstValue: 3372046 false ) 
	#(134 1 #liftFirstValue: 3372040 false ) 
	#(134 1 #liftFirstValue: 3372037 false ) 
	#(134 1 #liftFirstValue: 3372038 false ) 
	#(134 1 #liftFirstValue: 3372034 false ) 
	#(133 1 #reduceActionForType1: 3248129 false ) 
	#(173 3 #reduceActionForExpression11: 8030219 false ) 
	#(173 3 #reduceActionForExpression11: 8030217 false ) 
	#(173 3 #reduceActionForExpression11: 8030218 false ) 
	#(173 3 #reduceActionForExpression11: 8030220 false ) 
	#(173 3 #reduceActionForExpression11: 8030227 false ) 
	#(173 3 #reduceActionForExpression11: 8030228 false ) 
	#(173 3 #reduceActionForExpression11: 8030226 false ) 
	#(173 3 #reduceActionForExpression11: 8030225 false ) 
	#(173 3 #reduceActionForExpression11: 8030229 false ) 
	#(173 3 #reduceActionForExpression11: 8030230 false ) 
	#(173 3 #reduceActionForExpression11: 8030223 false ) 
	#(173 3 #reduceActionForExpression31: 8030239 false ) 
	#(173 3 #reduceActionForExpression28: 8030236 false ) 
	#(173 3 #reduceActionForExpression23: 8030231 false ) 
	#(173 3 #reduceActionForExpression11: 8030221 false ) 
	#(173 3 #reduceActionForExpression11: 8030224 false ) 
	#(173 3 #reduceActionForExpression11: 8030222 false ) 
	#(128 4 #reduceActionForLockTableStatement5: 2662405 false ) 
	#(128 4 #reduceActionForLockTableStatement5: 2662401 false ) 
	#(153 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6285314 false ) 
	#(150 4 #reduceActionForSelectQuery7: 6083591 false ) 
	#(155 0 #nil 6410241 false ) 
	#(154 1 #liftFirstValue: 6374402 false ) 
	#(171 2 #reduceActionFor_____semicolon__2: 7866370 false ) 
	#(170 3 #reduceActionForExpressionList2: 7804930 false ) 
	#(172 3 #reduceActionForNamedExpression3: 7907331 false ) 
	#(150 4 #reduceActionForSelectQuery7: 6083585 false ) 
	#(163 1 #reduceActionForStatements1: 7103489 false ) 
	#(137 4 #reduceActionForUpdateQuery1: 3815425 false ) 
	#(138 1 #reduceActionForStatements1: 4147201 false ) 
	#(121 4 #reduceActionForStatements2: 1181698 false ) 
	#(150 4 #reduceActionForSelectQuery14: 6083598 false ) 
	#(135 5 #reduceActionForCheckpointStatement2: 3567618 false ) 
	#(131 1 #reduceActionForStatements1: 3098625 false ) 
	#(164 4 #reduceActionForTable5: 7175173 false ) 
	#(166 0 #reduceActionFor__ON___onToken__Expression__on___1: 7518209 false ) 
	#(174 4 #reduceActionForCaseExpression3: 11082755 false ) 
	#(175 2 #reduceActionForElseExpression1: 11211777 false ) 
	#(174 4 #reduceActionForCaseExpression2: 11082754 false ) 
	#(173 4 #reduceActionForExpression45: 8030253 false ) 
	#(178 4 #reduceActionForFunctionExpression2: 11472898 false ) 
	#(173 4 #reduceActionForExpression40: 8030248 false ) 
	#(173 4 #reduceActionForExpression29: 8030237 false ) 
	#(173 4 #reduceActionForExpression33: 8030241 false ) 
	#(173 4 #reduceActionForExpression25: 8030233 false ) 
	#(173 4 #reduceActionForExpression52: 8030260 false ) 
	#(128 5 #reduceActionForLockTableStatement7: 2662407 false ) 
	#(128 5 #reduceActionForLockTableStatement6: 2662406 false ) 
	#(128 5 #reduceActionForLockTableStatement7: 2662403 false ) 
	#(128 5 #reduceActionForLockTableStatement6: 2662402 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6083593 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6083595 false ) 
	#(162 2 #reduceActionForFromTables1: 7056385 false ) 
	#(156 0 #nil 6439937 false ) 
	#(155 1 #liftFirstValue: 6410242 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6083587 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6083589 false ) 
	#(137 5 #reduceActionForUpdateQuery4: 3815428 false ) 
	#(132 2 #reduceActionForParameter1: 3193857 false ) 
	#(130 3 #reduceActionForMacroArgs2: 3031042 false ) 
	#(164 5 #reduceActionForTable6: 7175174 false ) 
	#(166 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 7518210 false ) 
	#(164 5 #reduceActionForTable12: 7175180 false ) 
	#(164 5 #reduceActionForTable12: 7175179 false ) 
	#(164 5 #reduceActionForTable7: 7175175 false ) 
	#(164 5 #reduceActionForTable7: 7175177 false ) 
	#(177 4 #reduceActionForWhenExpression1: 11364353 false ) 
	#(174 5 #reduceActionForCaseExpression4: 11082756 false ) 
	#(173 5 #reduceActionForExpression39: 8030247 false ) 
	#(173 5 #reduceActionForExpression44: 8030252 false ) 
	#(173 5 #reduceActionForExpression35: 8030243 false ) 
	#(173 5 #reduceActionForExpression24: 8030232 false ) 
	#(173 5 #reduceActionForExpression54: 8030262 false ) 
	#(173 5 #reduceActionForExpression53: 8030261 false ) 
	#(140 6 #reduceActionForInsertQuery1: 4345857 false ) 
	#(128 6 #reduceActionForLockTableStatement8: 2662408 false ) 
	#(128 6 #reduceActionForLockTableStatement8: 2662404 false ) 
	#(127 6 #reduceActionForRollbackStatement1: 2523137 false ) 
	#(150 6 #reduceActionForSelectQuery8: 6083592 false ) 
	#(161 4 #reduceActionForIntoExpression1: 6961153 false ) 
	#(168 3 #reduceActionForGroupByExpression1: 7633921 false ) 
	#(160 3 #reduceActionForPartitionByExpression1: 6866945 false ) 
	#(159 2 #reduceActionForQualifyExpression1: 6788097 false ) 
	#(152 3 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: 6285313 false ) 
	#(156 1 #liftFirstValue: 6439938 false ) 
	#(157 2 #reduceActionForHavingExpression1: 6576129 false ) 
	#(150 6 #reduceActionForSelectQuery8: 6083586 false ) 
	#(163 3 #reduceActionForTableList2: 7103490 false ) 
	#(137 6 #reduceActionForUpdateQuery7: 3815431 false ) 
	#(139 3 #reduceActionForSetExpression1: 4267009 false ) 
	#(138 3 #reduceActionForTableList2: 4147202 false ) 
	#(137 6 #reduceActionForUpdateQuery3: 3815427 false ) 
	#(137 6 #reduceActionForUpdateQuery3: 3815426 false ) 
	#(158 4 #reduceActionForUnionSelectQuery1: 6658049 false ) 
	#(142 7 #reduceActionForLoadingStatement1: 4796417 false ) 
	#(131 3 #reduceActionForTableList2: 3098626 false ) 
	#(165 2 #reduceActionForWhereExpression1: 7518209 false ) 
	#(164 6 #reduceActionForTable8: 7175176 false ) 
	#(164 6 #reduceActionForTable8: 7175178 false ) 
	#(173 6 #reduceActionForExpression41: 8030249 false ) 
	#(173 6 #reduceActionForExpression51: 8030259 false ) 
	#(173 6 #reduceActionForExpression46: 8030254 false ) 
	#(173 6 #reduceActionForExpression46: 8030256 false ) 
	#(173 6 #reduceActionForExpression46: 8030255 false ) 
	#(133 4 #reduceActionForType2: 3248130 false ) 
	#(173 6 #reduceActionForExpression36: 8030244 false ) 
	#(173 6 #reduceActionForExpression26: 8030234 false ) 
	#(169 3 #reduceActionForOrderByExpression1: 7723009 false ) 
	#(173 6 #reduceActionForExpression55: 8030263 false ) 
	#(140 7 #reduceActionForInsertQuery5: 4345861 false ) 
	#(140 7 #reduceActionForInsertQuery3: 4345859 false ) 
	#(123 7 #reduceActionForMergeQuery1: 1687553 false ) 
	#(124 1 #reduceActionForWhenExpressions1: 1832961 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6083594 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6083596 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: 6285319 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: 6285316 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: 6285314 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6083588 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6083590 false ) 
	#(144 7 #reduceActionForSetStatement1: 5412865 false ) 
	#(137 7 #reduceActionForUpdateQuery8: 3815432 false ) 
	#(137 7 #reduceActionForUpdateQuery6: 3815430 false ) 
	#(137 7 #reduceActionForUpdateQuery6: 3815429 false ) 
	#(173 7 #reduceActionForExpression32: 8030240 false ) 
	#(123 8 #reduceActionForMergeQuery2: 1687554 false ) 
	#(124 2 #reduceActionFor_____semicolon__2: 1832962 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: 6285322 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: 6285320 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: 6285317 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: 6285315 false ) 
	#(129 9 #reduceActionForCreateMacroStatement1: 2844673 false ) 
	#(173 8 #reduceActionForExpression42: 8030250 false ) 
	#(173 8 #reduceActionForExpression27: 8030235 false ) 
	#(133 6 #reduceActionForType3: 3248131 false ) 
	#(173 8 #reduceActionForExpression34: 8030242 false ) 
	#(140 9 #reduceActionForInsertQuery2: 4345858 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: 6285323 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: 6285321 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: 6285318 false ) 
	#(143 10 #reduceActionForCheckWorkloadStatement1: 5080065 false ) 
	#(173 9 #reduceActionForExpression37: 8030245 false ) 
	#(140 10 #reduceActionForInsertQuery4: 4345860 false ) 
	#(152 7 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: 6285324 false ) 
	#(173 10 #reduceActionForExpression38: 8030246 false ) 
	#(126 11 #reduceActionForWithRecursiveQuery1: 2267137 false ) 
	#(125 6 #reduceActionForWhenMergeCondition1: 1873921 false ) 
	#(125 8 #reduceActionForWhenMergeCondition2: 1873922 false ) 
	#(125 12 #reduceActionForWhenMergeCondition3: 1873923 false )
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
	^ #('"("' '")"' '"*"' '"+"' '","' '"-"' '"/"' '";"' '"<"' '"<="' '"<>"' '"="' '">"' '">="' '"ALL"' '"AND"' '"AS"' '"BEGIN"' '"BETWEEN"' '"BIGINT"' '"BOTH"' '"BT"' '"BY"' '"BYTEINT"' '"CASE"' '"CAST"' '"CHAR"' '"CHECK"' '"CHECKPOINT"' '"CLOB"' '"CREATE"' '"CROSS"' '"DATABASE"' '"DATE"' '"DECIMAL"' '"DEL"' '"DELETE"' '"DISTINCT"' '"DISTINCTROW"' '"DROP"' '"ELSE"' '"END"' '"ERRORFILES"' '"ESCAPE"' '"ET"' '"EXECUTE"' '"EXTRACT"' '"FLOAT"' '"FOR"' '"FORMAT"' '"FROM"' '"GROUP"' '"HAVING"' '"HELP"' '"IN"' '"INNER"' '"INSERT"' '"INTEGER"' '"INTERVAL"' '"INTO"' '"IS"' '"JOIN"' '"LEADING"' '"LEFT"' '"LIKE"' '"LOADING"' '"LOCK"' '"LOCKING"' '"MACRO"' '"MATCHED"' '"MERGE"' '"MOD"' '"NOT"' '"NULL"' '"NUMBER"' '"NUMERIC"' '"ON"' '"OR"' '"ORDER"' '"OUTER"' '"OVER"' '"PARTITION"' '"QUALIFY"' '"REAL"' '"RECURSIVE"' '"RIGHT"' '"ROLLBACK"' '"SEL"' '"SELECT"' '"SESSION"' '"SET"' '"SMALLINT"' '"SUBSTRING"' '"TABLE"' '"THEN"' '"TIME"' '"TIMESTAMP"' '"TOP"' '"TRAILING"' '"TRIM"' '"UNION"' '"UPDATE"' '"USING"' '"VALUES"' '"VARCHAR"' '"WHEN"' '"WHERE"' '"WITH"' '"WORK"' '"WORKLOAD"' '"||"' '<identifier>' '<variable>' '<string>' '<number>' '<whitespace>' '<comment>' 'B e g i n' 'File' '";" ''semicolon''*' 'Statements' 'Statement' 'MergeQuery' 'WhenMergeCondition ''whenMerge''+' 'WhenMergeCondition' 'WithRecursiveQuery' 'RollbackStatement' 'LockTableStatement' 'CreateMacroStatement' 'MacroArgs' 'ParameterList' 'Parameter' 'Type' 'TypeName' 'CheckpointStatement' 'DropTableQuery' 'UpdateQuery' 'SetExpressionList' 'SetExpression' 'InsertQuery' 'UsingStatement' 'LoadingStatement' 'CheckWorkloadStatement' 'SetStatement' 'HelpSessionStatement' 'TransactionStatement' 'DatabaseStatement' 'ExecuteStatement' 'DeleteQuery' 'SelectQuery' 'IntoExpression ''into''?' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)?' 'PartitionByExpression ''partition''?' 'QualifyExpression ''qualify''?' 'OrderByExpression ''orderBy''?' 'HavingExpression' 'UnionSelectQuery' 'QualifyExpression' 'PartitionByExpression' 'IntoExpression' 'FromTables' 'TableList' 'Table' '("ON" ''onToken'' Expression ''on'')' '("ON" ''onToken'' Expression ''on'')?' 'WhereExpression' 'GroupByExpression' 'OrderByExpression' 'ExpressionList' '"," ''comma''+' 'NamedExpression' 'Expression' 'CaseExpression' 'ElseExpression' 'WhenExpressions' 'WhenExpression' 'FunctionExpression' 'E O F' 'error')
]

{ #category : #generated }
TeradataParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #TeradataFileNode #TeradataFileNode #OrderedCollection #OrderedCollection #TeradataProgramNode #TeradataMergeQueryNode #OrderedCollection #TeradataWhenMergeConditionNode #TeradataRecursiveQueryNode #TeradataRollbackStatementNode #TeradataLockTableStatementNode #TeradataCreateMacroStatementNode #OrderedCollection #OrderedCollection #TeradataParameterNode #TeradataTypeNode #SmaCCToken #TeradataCheckpointStatementNode #TeradataDropTableQueryNode #TeradataUpdateQueryNode #OrderedCollection #TeradataSetExpressionNode #TeradataInsertQueryNode #TeradataUsingStatementNode #TeradataProgramNode #TeradataCheckWorkloadStatementNode #TeradataSetStatementNode #TeradataHelpSessionStatementNode #TeradataProgramNode #TeradataDatabaseStatementNode #TeradataExecuteStatementNode #TeradataDeleteQueryNode #TeradataProgramNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataPartitionByExpressionNode #TeradataQualifyExpressionNode #TeradataOrderByExpressionNode #TeradataHavingNode #OrderedCollection #TeradataQualifyExpressionNode #TeradataPartitionByExpressionNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #TeradataGroupByNode #TeradataOrderByExpressionNode #OrderedCollection #OrderedCollection #TeradataExpressionNode #TeradataExpressionNode #TeradataCaseExpressionNode #TeradataElseExpressionNode #OrderedCollection #TeradataWhenExpressionNode #TeradataFunctionExpressionNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
TeradataParser class >> transitionTable [
^#(
#[1 0 6 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 0 105 0 119 0 109 0 120 0 113 0 121 0 117 0 122 0 117 0 123 0 117 0 126 0 117 0 127 0 117 0 128 0 117 0 129 0 117 0 135 0 117 0 136 0 117 0 137 0 117 0 140 0 117 0 141 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 193 0 150 0 6 0 179] 
#[0 0 197 0 66] 
#[0 0 10 0 2 0 8 0 179] 
#[0 0 201 0 110] 
#[0 0 205 0 66] 
#[0 0 209 0 69] 
#[0 0 213 0 112] 
#[1 0 217 0 1 0 221 0 51 0 225 0 112 0 229 0 164] 
#[1 0 217 0 1 0 233 0 51 0 225 0 112 0 237 0 164] 
#[0 0 241 0 94] 
#[0 0 245 0 66] 
#[0 0 14 0 2 0 8 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 53 0 173 1 53 0 174 1 53 0 178] 
#[0 1 65 0 90] 
#[1 1 69 0 60 1 73 0 112] 
#[1 1 77 0 94 1 81 0 112] 
#[1 1 85 0 94 1 89 0 112] 
#[1 0 217 0 1 1 93 0 60 0 225 0 112 1 97 0 164] 
#[0 1 101 0 109] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 105 0 38 1 109 0 39 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 113 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 117 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 129 0 38 1 133 0 39 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 137 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 141 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 1 145 0 112] 
#[0 1 149 0 112] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 153 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 1 157 0 85] 
#[0 0 0 0 179] 
#[1 1 161 0 8 0 18 0 179] 
#[1 0 6 0 8 1 165 0 120 0 6 0 179] 
#[0 0 22 0 2 0 8 0 179] 
#[0 0 26 0 2 0 8 0 179] 
#[0 0 30 0 2 0 8 0 179] 
#[0 0 34 0 2 0 8 0 179] 
#[0 0 38 0 2 0 8 0 179] 
#[0 0 42 0 2 0 8 0 179] 
#[0 0 46 0 2 0 8 0 179] 
#[0 0 50 0 2 0 8 0 179] 
#[0 0 54 0 2 0 8 0 179] 
#[0 0 58 0 2 0 8 0 179] 
#[0 0 62 0 2 0 8 0 179] 
#[0 0 66 0 2 0 8 0 179] 
#[0 0 70 0 2 0 8 0 179] 
#[0 0 74 0 2 0 8 0 179] 
#[0 0 78 0 2 0 8 0 179] 
#[0 0 82 0 2 0 8 0 179] 
#[0 0 86 0 2 0 8 0 179] 
#[0 0 90 0 2 0 8 0 179] 
#[0 0 94 0 2 0 8 0 179] 
#[1 0 98 0 2 0 98 0 8 1 169 0 101 0 98 0 179] 
#[0 1 173 0 112] 
#[1 1 177 0 42 1 181 0 49] 
#[0 1 185 0 59] 
#[0 1 189 0 112] 
#[0 0 102 0 2 0 8 0 179] 
#[1 0 81 0 88 0 85 0 89 1 193 0 150] 
#[1 0 217 0 1 0 225 0 112 1 197 0 164] 
#[1 0 106 0 2 0 106 0 5 0 106 0 8 0 106 0 15 1 201 0 17 0 106 0 32 0 106 0 52 0 106 0 56 0 106 0 64 0 106 0 77 0 106 0 79 0 106 0 82 0 106 0 83 0 106 0 86 0 106 0 91 0 106 0 101 0 106 0 103 0 106 0 107 1 205 0 112 0 106 0 179] 
#[1 0 110 0 2 0 110 0 8 1 209 0 15 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 1 229 0 107 1 233 0 167 0 110 0 179] 
#[1 0 217 0 1 0 225 0 112 1 237 0 164] 
#[1 0 114 0 2 0 114 0 8 1 241 0 15 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 1 229 0 107 1 245 0 167 0 114 0 179] 
#[0 1 249 0 112] 
#[0 0 118 0 2 0 8 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 253 0 150 2 1 0 173 2 1 0 174 2 1 0 178] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 5 0 173 2 5 0 174 2 5 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 2 9 0 106 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 13 0 173 2 13 0 174 2 17 0 176 2 21 0 177 2 13 0 178] 
#[0 2 25 0 1] 
#[0 2 29 0 1] 
#[0 2 33 0 114] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 37 0 173 2 37 0 174 2 37 0 178] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 2 41 0 1] 
#[0 2 45 0 1] 
#[1 0 7 0 1 0 130 0 2 0 130 0 3 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 22 0 130 0 28 0 130 0 29 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 36 0 130 0 37 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 49 0 130 0 51 0 130 0 52 0 130 0 53 0 130 0 54 0 130 0 55 0 130 0 56 0 130 0 57 0 130 0 60 0 130 0 61 0 130 0 64 0 130 0 65 0 130 0 67 0 130 0 68 0 130 0 71 0 130 0 72 0 130 0 73 0 130 0 77 0 130 0 78 0 130 0 79 0 130 0 81 0 130 0 82 0 130 0 83 0 130 0 86 0 130 0 87 0 130 0 88 0 130 0 89 0 130 0 91 0 130 0 95 0 130 0 101 0 130 0 102 0 130 0 103 0 130 0 106 0 130 0 107 0 130 0 108 0 130 0 111 0 130 0 112 0 130 0 179] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 2 53 0 1 0 146 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 0 146 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111 0 146 0 179] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 0 158 0 2 0 8 0 179] 
#[0 2 137 0 112] 
#[1 2 141 0 1 2 145 0 104] 
#[0 2 149 0 112] 
#[0 2 153 0 49] 
#[0 2 157 0 112] 
#[0 2 161 0 49] 
#[1 0 217 0 1 0 225 0 112 2 165 0 164] 
#[1 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 2 169 0 103] 
#[0 2 173 0 114] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 177 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 181 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 185 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 189 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 2 193 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 2 205 0 151 2 205 0 161 2 213 0 171 0 162 0 179] 
#[0 0 166 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 179] 
#[1 2 53 0 1 0 170 0 2 2 57 0 3 2 61 0 4 0 170 0 5 2 65 0 6 2 69 0 7 0 170 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 217 0 17 0 170 0 18 2 101 0 19 0 170 0 22 0 170 0 28 0 170 0 29 0 170 0 31 0 170 0 33 0 170 0 36 0 170 0 37 0 170 0 40 0 170 0 42 0 170 0 45 0 170 0 46 0 170 0 51 0 170 0 52 0 170 0 53 0 170 0 54 2 105 0 55 0 170 0 57 0 170 0 60 2 109 0 61 2 113 0 65 0 170 0 67 0 170 0 68 0 170 0 71 2 117 0 72 2 121 0 73 2 125 0 78 0 170 0 79 2 129 0 81 0 170 0 82 0 170 0 83 0 170 0 87 0 170 0 88 0 170 0 89 0 170 0 91 0 170 0 101 0 170 0 102 0 170 0 103 0 170 0 107 0 170 0 108 2 133 0 111 2 221 0 112 0 170 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 225 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 229 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 233 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 237 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 2 241 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 2 245 0 151 2 245 0 161 2 213 0 171 0 162 0 179] 
#[0 2 249 0 12] 
#[1 2 253 0 51 3 1 0 91] 
#[1 2 197 0 5 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 3 5 0 122 3 5 0 123 3 5 0 126 3 5 0 127 3 5 0 128 3 5 0 129 3 5 0 135 3 5 0 136 3 5 0 137 3 5 0 140 3 5 0 141 3 5 0 142 3 5 0 143 3 5 0 144 3 5 0 145 3 5 0 146 3 5 0 147 3 5 0 148 3 5 0 149 0 193 0 150 2 213 0 171] 
#[0 3 9 0 112] 
#[0 0 174 0 8 0 179] 
#[1 3 13 0 8 0 178 0 179] 
#[1 3 17 0 1 3 21 0 15 0 81 0 88 0 85 0 89 3 25 0 150 3 29 0 158] 
#[0 3 33 0 43] 
#[0 0 182 0 2 0 8 0 179] 
#[0 3 37 0 18] 
#[0 3 41 0 115] 
#[1 3 45 0 1 0 186 0 17 3 49 0 130] 
#[1 3 53 0 2 1 169 0 101] 
#[1 0 190 0 2 0 190 0 8 3 57 0 15 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 1 229 0 107 3 61 0 167 0 190 0 179] 
#[0 3 65 0 112] 
#[0 0 194 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 0 198 0 2 0 8 0 179] 
#[0 3 69 0 62] 
#[0 3 73 0 62] 
#[1 3 77 0 62 3 81 0 80] 
#[1 3 85 0 62 3 89 0 80] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 93 0 173 3 93 0 174 3 93 0 178] 
#[0 0 202 0 2 0 8 0 179] 
#[1 0 206 0 2 0 206 0 8 3 97 0 15 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 1 229 0 107 3 101 0 167 0 206 0 179] 
#[0 0 210 0 2 0 8 0 179] 
#[0 0 214 0 2 0 8 0 179] 
#[0 0 218 0 2 0 8 0 179] 
#[1 3 105 0 2 1 169 0 101] 
#[1 2 53 0 1 3 109 0 2 2 57 0 3 2 61 0 4 3 113 0 5 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 0 11 0 1 0 222 0 2 2 57 0 3 0 222 0 4 0 222 0 5 0 222 0 6 2 69 0 7 0 222 0 8 0 222 0 9 0 222 0 10 0 222 0 11 0 222 0 12 0 222 0 13 0 222 0 14 0 222 0 15 0 222 0 16 0 222 0 17 0 222 0 18 0 222 0 19 0 222 0 22 0 222 0 28 0 222 0 29 0 222 0 31 0 222 0 32 0 222 0 33 0 222 0 36 0 222 0 37 0 222 0 40 0 222 0 41 0 222 0 42 0 222 0 44 0 222 0 45 0 222 0 46 0 222 0 49 0 222 0 51 0 222 0 52 0 222 0 53 0 222 0 54 0 222 0 55 0 222 0 56 0 222 0 57 0 222 0 60 0 15 0 61 0 222 0 64 0 222 0 65 0 222 0 67 0 222 0 68 0 222 0 71 2 117 0 72 0 222 0 73 0 222 0 77 0 222 0 78 0 222 0 79 0 19 0 81 0 222 0 82 0 222 0 83 0 222 0 86 0 222 0 87 0 222 0 88 0 222 0 89 0 222 0 91 0 222 0 95 0 222 0 101 0 222 0 102 0 222 0 103 0 222 0 106 0 222 0 107 0 222 0 108 0 222 0 111 0 222 0 112 0 222 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 117 0 173 3 117 0 174 3 117 0 178] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 9 0 106 2 133 0 111 3 121 0 176 2 21 0 177] 
#[1 3 125 0 41 3 129 0 42 2 9 0 106 3 133 0 175 3 137 0 177] 
#[0 0 226 0 41 0 42 0 106] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 141 0 173 3 141 0 174 3 141 0 178] 
#[0 3 145 0 112] 
#[0 3 149 0 112] 
#[1 0 23 0 1 0 230 0 2 2 57 0 3 2 61 0 4 0 230 0 5 2 65 0 6 2 69 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 22 0 230 0 28 0 230 0 29 0 230 0 31 0 230 0 32 0 230 0 33 0 230 0 36 0 230 0 37 0 230 0 40 0 230 0 41 0 230 0 42 0 230 0 44 0 230 0 45 0 230 0 46 0 230 0 49 0 230 0 51 0 230 0 52 0 230 0 53 0 230 0 54 0 230 0 56 0 230 0 57 0 230 0 60 0 27 0 61 0 230 0 64 0 230 0 67 0 230 0 68 0 230 0 71 2 117 0 72 0 230 0 77 0 230 0 78 0 230 0 79 0 31 0 81 0 230 0 82 0 230 0 83 0 230 0 86 0 230 0 87 0 230 0 88 0 230 0 89 0 230 0 91 0 230 0 95 0 230 0 101 0 230 0 102 0 230 0 103 0 230 0 106 0 230 0 107 0 230 0 108 0 230 0 111 0 230 0 112 0 230 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 153 0 173 3 153 0 174 3 153 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 3 157 0 21 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 3 161 0 63 1 21 0 73 1 25 0 74 1 29 0 93 3 165 0 99 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 169 0 173 3 169 0 174 3 169 0 178] 
#[1 0 249 0 1 3 173 0 2 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 177 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 3 249 0 20 3 249 0 24 3 249 0 27 3 249 0 30 3 249 0 34 3 249 0 35 3 249 0 48 3 209 0 50 3 249 0 58 3 249 0 75 3 249 0 76 3 249 0 84 3 249 0 92 3 249 0 96 3 249 0 97 3 249 0 105 3 245 0 133 3 249 0 134] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 253 0 173 3 253 0 174 3 253 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 1 0 173 4 1 0 174 4 1 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 5 0 173 4 5 0 174 4 5 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 9 0 173 4 9 0 174 4 9 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 13 0 173 4 13 0 174 4 13 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 17 0 173 4 17 0 174 4 17 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 21 0 173 4 21 0 174 4 21 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 25 0 173 4 25 0 174 4 25 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 29 0 173 4 29 0 174 4 29 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 33 0 173 4 33 0 174 4 33 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 37 0 173 4 37 0 174 4 37 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 41 0 173 4 41 0 174 4 41 0 178] 
#[1 4 45 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 49 0 173 4 49 0 174 4 49 0 178] 
#[1 4 53 0 73 4 57 0 74] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 61 0 173 4 61 0 174 4 61 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 65 0 173 4 65 0 174 4 65 0 178] 
#[1 4 69 0 55 4 73 0 65] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 77 0 173 4 77 0 174 4 77 0 178] 
#[0 4 81 0 1] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 85 0 173 4 85 0 174 4 85 0 178] 
#[1 4 89 0 1 4 93 0 104] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 97 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 4 101 0 1] 
#[0 4 105 0 49] 
#[0 4 109 0 112] 
#[0 4 113 0 49] 
#[0 4 117 0 112] 
#[1 1 213 0 32 1 217 0 56 1 221 0 64 1 225 0 86 4 121 0 103] 
#[1 0 217 0 1 0 225 0 112 4 125 0 164] 
#[0 4 129 0 51] 
#[0 4 133 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 4 137 0 151 4 137 0 161 2 213 0 171 0 162 0 179] 
#[0 4 141 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 4 145 0 151 4 145 0 161 2 213 0 171 0 162 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 149 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 0 234 0 1 0 3 0 5 0 6 0 25 0 26 0 47 0 59 0 73 0 74 0 93 0 100 0 112 0 113 0 114 0 115] 
#[0 4 153 0 1] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 4 173 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[0 0 246 0 2 0 8 0 51 0 52 0 79 0 82 0 83 0 101 0 107 0 179] 
#[1 0 249 0 1 0 253 0 3 4 197 0 5 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 201 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 4 205 0 112] 
#[0 0 250 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 179] 
#[0 4 209 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 4 213 0 151 4 213 0 161 2 213 0 171 0 162 0 179] 
#[0 4 217 0 115] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 4 221 0 151 4 221 0 161 2 213 0 171 0 162 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 225 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 4 229 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 233 0 173 4 233 0 174 4 233 0 178] 
#[1 0 217 0 1 0 225 0 112 4 237 0 163 4 241 0 164] 
#[1 4 245 0 112 4 249 0 138 4 253 0 139] 
#[0 0 254 0 2 0 8 0 179] 
#[0 5 1 0 1] 
#[1 0 174 0 2 0 174 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 5 0 122 5 5 0 123 5 5 0 126 5 5 0 127 5 5 0 128 5 5 0 129 5 5 0 135 5 5 0 136 5 5 0 137 5 5 0 140 5 5 0 141 5 5 0 142 5 5 0 143 5 5 0 144 5 5 0 145 5 5 0 146 5 5 0 147 5 5 0 148 5 5 0 149 0 193 0 150 0 174 0 179] 
#[1 0 81 0 88 0 85 0 89 5 9 0 150] 
#[1 3 17 0 1 0 81 0 88 0 85 0 89 3 25 0 150 5 13 0 158] 
#[1 1 2 0 2 1 2 0 8 1 169 0 101 1 2 0 179] 
#[0 1 6 0 2 0 8 0 101 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 17 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 5 21 0 66] 
#[1 1 10 0 2 1 10 0 8 5 25 0 42 1 10 0 179] 
#[1 5 29 0 112 5 33 0 131 5 37 0 132] 
#[0 5 41 0 17] 
#[1 1 14 0 2 1 14 0 5 1 14 0 8 1 14 0 15 5 45 0 17 1 14 0 32 1 14 0 52 1 14 0 56 1 14 0 64 1 14 0 77 1 14 0 79 1 14 0 82 1 14 0 83 1 14 0 86 1 14 0 91 1 14 0 101 1 14 0 103 1 14 0 107 5 49 0 112 1 14 0 179] 
#[0 1 18 0 2 0 8 0 179] 
#[0 1 22 0 2 0 8 0 179] 
#[0 1 26 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[1 0 217 0 1 0 225 0 112 5 53 0 164] 
#[1 0 217 0 1 0 225 0 112 5 57 0 164] 
#[1 0 217 0 1 0 225 0 112 5 61 0 164] 
#[0 5 65 0 62] 
#[1 0 217 0 1 0 225 0 112 5 69 0 164] 
#[0 5 73 0 62] 
#[1 2 53 0 1 1 30 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 1 30 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 1 30 0 41 1 30 0 52 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 1 30 0 79 2 129 0 81 1 30 0 82 1 30 0 83 1 30 0 101 2 133 0 111 1 30 0 179] 
#[0 1 34 0 2 0 8 0 179] 
#[0 1 38 0 2 0 8 0 179] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 77 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 5 81 0 95 2 133 0 111] 
#[1 3 125 0 41 5 85 0 42 2 9 0 106 5 89 0 175 3 137 0 177] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 93 0 173 5 93 0 174 5 93 0 178] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 5 97 0 42] 
#[0 1 54 0 41 0 42 0 106] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 5 101 0 17 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 5 105 0 51] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 5 109 0 51 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 5 113 0 51] 
#[0 5 117 0 51] 
#[0 5 121 0 51] 
#[1 2 53 0 1 5 125 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 1 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 5 129 0 2 2 197 0 5 2 213 0 171] 
#[0 1 66 0 1 0 2 0 5 0 50] 
#[0 1 70 0 1 0 2 0 5 0 50] 
#[0 1 74 0 1 0 2 0 5 0 50] 
#[0 1 78 0 1 0 2 0 5 0 50] 
#[0 1 82 0 1 0 2 0 5 0 50] 
#[0 1 86 0 1 0 2 0 5 0 50] 
#[0 1 90 0 1 0 2 0 5 0 50] 
#[0 5 133 0 114] 
#[0 1 94 0 1 0 2 0 5 0 50] 
#[0 1 98 0 1 0 2 0 5 0 50] 
#[0 1 102 0 1 0 2 0 5 0 50] 
#[0 1 106 0 1 0 2 0 5 0 50] 
#[0 1 110 0 1 0 2 0 5 0 50] 
#[0 1 114 0 1 0 2 0 5 0 50] 
#[0 1 118 0 1 0 2 0 5 0 50] 
#[0 1 122 0 1 0 2 0 5 0 50] 
#[0 5 137 0 2] 
#[1 5 141 0 1 1 126 0 2 1 126 0 5 1 126 0 50] 
#[1 0 39 0 1 1 130 0 2 1 130 0 3 1 130 0 4 1 130 0 5 1 130 0 6 1 130 0 7 1 130 0 8 1 130 0 9 1 130 0 10 1 130 0 11 1 130 0 12 1 130 0 13 1 130 0 14 1 130 0 15 1 130 0 16 1 130 0 17 1 130 0 18 1 130 0 19 1 130 0 22 1 130 0 28 1 130 0 29 1 130 0 31 1 130 0 32 1 130 0 33 1 130 0 36 1 130 0 37 1 130 0 40 1 130 0 41 1 130 0 42 1 130 0 44 1 130 0 45 1 130 0 46 1 130 0 49 1 130 0 51 1 130 0 52 1 130 0 53 1 130 0 54 1 130 0 55 1 130 0 56 1 130 0 57 1 130 0 60 0 43 0 61 1 130 0 64 1 130 0 65 1 130 0 67 1 130 0 68 1 130 0 71 1 130 0 72 1 130 0 73 1 130 0 77 1 130 0 78 1 130 0 79 0 47 0 81 1 130 0 82 1 130 0 83 1 130 0 86 1 130 0 87 1 130 0 88 1 130 0 89 1 130 0 91 1 130 0 95 1 130 0 101 1 130 0 102 1 130 0 103 1 130 0 106 1 130 0 107 1 130 0 108 1 130 0 111 1 130 0 112 1 130 0 179] 
#[1 0 51 0 1 1 134 0 2 2 57 0 3 1 134 0 4 1 134 0 5 1 134 0 6 2 69 0 7 1 134 0 8 1 134 0 9 1 134 0 10 1 134 0 11 1 134 0 12 1 134 0 13 1 134 0 14 1 134 0 15 1 134 0 16 1 134 0 17 1 134 0 18 1 134 0 19 1 134 0 22 1 134 0 28 1 134 0 29 1 134 0 31 1 134 0 32 1 134 0 33 1 134 0 36 1 134 0 37 1 134 0 40 1 134 0 41 1 134 0 42 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 49 1 134 0 51 1 134 0 52 1 134 0 53 1 134 0 54 1 134 0 55 1 134 0 56 1 134 0 57 1 134 0 60 0 55 0 61 1 134 0 64 1 134 0 65 1 134 0 67 1 134 0 68 1 134 0 71 2 117 0 72 1 134 0 73 1 134 0 77 1 134 0 78 1 134 0 79 0 59 0 81 1 134 0 82 1 134 0 83 1 134 0 86 1 134 0 87 1 134 0 88 1 134 0 89 1 134 0 91 1 134 0 95 1 134 0 101 1 134 0 102 1 134 0 103 1 134 0 106 1 134 0 107 1 134 0 108 1 134 0 111 1 134 0 112 1 134 0 179] 
#[1 0 63 0 1 1 138 0 2 2 57 0 3 1 138 0 4 1 138 0 5 1 138 0 6 2 69 0 7 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 11 1 138 0 12 1 138 0 13 1 138 0 14 1 138 0 15 1 138 0 16 1 138 0 17 1 138 0 18 1 138 0 19 1 138 0 22 1 138 0 28 1 138 0 29 1 138 0 31 1 138 0 32 1 138 0 33 1 138 0 36 1 138 0 37 1 138 0 40 1 138 0 41 1 138 0 42 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 49 1 138 0 51 1 138 0 52 1 138 0 53 1 138 0 54 1 138 0 55 1 138 0 56 1 138 0 57 1 138 0 60 0 67 0 61 1 138 0 64 1 138 0 65 1 138 0 67 1 138 0 68 1 138 0 71 2 117 0 72 1 138 0 73 1 138 0 77 1 138 0 78 1 138 0 79 0 71 0 81 1 138 0 82 1 138 0 83 1 138 0 86 1 138 0 87 1 138 0 88 1 138 0 89 1 138 0 91 1 138 0 95 1 138 0 101 1 138 0 102 1 138 0 103 1 138 0 106 1 138 0 107 1 138 0 108 1 138 0 111 1 138 0 112 1 138 0 179] 
#[1 0 75 0 1 1 142 0 2 1 142 0 3 1 142 0 4 1 142 0 5 1 142 0 6 1 142 0 7 1 142 0 8 1 142 0 9 1 142 0 10 1 142 0 11 1 142 0 12 1 142 0 13 1 142 0 14 1 142 0 15 1 142 0 16 1 142 0 17 1 142 0 18 1 142 0 19 1 142 0 22 1 142 0 28 1 142 0 29 1 142 0 31 1 142 0 32 1 142 0 33 1 142 0 36 1 142 0 37 1 142 0 40 1 142 0 41 1 142 0 42 1 142 0 44 1 142 0 45 1 142 0 46 1 142 0 49 1 142 0 51 1 142 0 52 1 142 0 53 1 142 0 54 1 142 0 55 1 142 0 56 1 142 0 57 1 142 0 60 0 79 0 61 1 142 0 64 1 142 0 65 1 142 0 67 1 142 0 68 1 142 0 71 1 142 0 72 1 142 0 73 1 142 0 77 1 142 0 78 1 142 0 79 0 83 0 81 1 142 0 82 1 142 0 83 1 142 0 86 1 142 0 87 1 142 0 88 1 142 0 89 1 142 0 91 1 142 0 95 1 142 0 101 1 142 0 102 1 142 0 103 1 142 0 106 1 142 0 107 1 142 0 108 1 142 0 111 1 142 0 112 1 142 0 179] 
#[1 0 87 0 1 1 146 0 2 2 57 0 3 2 61 0 4 1 146 0 5 2 65 0 6 2 69 0 7 1 146 0 8 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 18 1 146 0 22 1 146 0 28 1 146 0 29 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 36 1 146 0 37 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 49 1 146 0 51 1 146 0 52 1 146 0 53 1 146 0 54 2 105 0 55 1 146 0 56 1 146 0 57 1 146 0 60 0 91 0 61 1 146 0 64 2 113 0 65 1 146 0 67 1 146 0 68 1 146 0 71 2 117 0 72 2 121 0 73 1 146 0 77 1 146 0 78 1 146 0 79 0 95 0 81 1 146 0 82 1 146 0 83 1 146 0 86 1 146 0 87 1 146 0 88 1 146 0 89 1 146 0 91 1 146 0 95 1 146 0 101 1 146 0 102 1 146 0 103 1 146 0 106 1 146 0 107 1 146 0 108 2 133 0 111 1 146 0 112 1 146 0 179] 
#[1 0 99 0 1 1 150 0 2 2 57 0 3 2 61 0 4 1 150 0 5 2 65 0 6 2 69 0 7 1 150 0 8 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 18 1 150 0 22 1 150 0 28 1 150 0 29 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 36 1 150 0 37 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 49 1 150 0 51 1 150 0 52 1 150 0 53 1 150 0 54 2 105 0 55 1 150 0 56 1 150 0 57 1 150 0 60 0 103 0 61 1 150 0 64 2 113 0 65 1 150 0 67 1 150 0 68 1 150 0 71 2 117 0 72 2 121 0 73 1 150 0 77 1 150 0 78 1 150 0 79 0 107 0 81 1 150 0 82 1 150 0 83 1 150 0 86 1 150 0 87 1 150 0 88 1 150 0 89 1 150 0 91 1 150 0 95 1 150 0 101 1 150 0 102 1 150 0 103 1 150 0 106 1 150 0 107 1 150 0 108 2 133 0 111 1 150 0 112 1 150 0 179] 
#[1 0 111 0 1 1 154 0 2 2 57 0 3 2 61 0 4 1 154 0 5 2 65 0 6 2 69 0 7 1 154 0 8 1 154 0 15 1 154 0 16 1 154 0 17 1 154 0 18 1 154 0 22 1 154 0 28 1 154 0 29 1 154 0 31 1 154 0 32 1 154 0 33 1 154 0 36 1 154 0 37 1 154 0 40 1 154 0 41 1 154 0 42 1 154 0 44 1 154 0 45 1 154 0 46 1 154 0 49 1 154 0 51 1 154 0 52 1 154 0 53 1 154 0 54 2 105 0 55 1 154 0 56 1 154 0 57 1 154 0 60 0 115 0 61 1 154 0 64 2 113 0 65 1 154 0 67 1 154 0 68 1 154 0 71 2 117 0 72 2 121 0 73 1 154 0 77 1 154 0 78 1 154 0 79 0 119 0 81 1 154 0 82 1 154 0 83 1 154 0 86 1 154 0 87 1 154 0 88 1 154 0 89 1 154 0 91 1 154 0 95 1 154 0 101 1 154 0 102 1 154 0 103 1 154 0 106 1 154 0 107 1 154 0 108 2 133 0 111 1 154 0 112 1 154 0 179] 
#[1 0 123 0 1 1 158 0 2 2 57 0 3 2 61 0 4 1 158 0 5 2 65 0 6 2 69 0 7 1 158 0 8 1 158 0 15 1 158 0 16 1 158 0 17 1 158 0 18 1 158 0 22 1 158 0 28 1 158 0 29 1 158 0 31 1 158 0 32 1 158 0 33 1 158 0 36 1 158 0 37 1 158 0 40 1 158 0 41 1 158 0 42 1 158 0 44 1 158 0 45 1 158 0 46 1 158 0 49 1 158 0 51 1 158 0 52 1 158 0 53 1 158 0 54 2 105 0 55 1 158 0 56 1 158 0 57 1 158 0 60 0 127 0 61 1 158 0 64 2 113 0 65 1 158 0 67 1 158 0 68 1 158 0 71 2 117 0 72 2 121 0 73 1 158 0 77 1 158 0 78 1 158 0 79 0 131 0 81 1 158 0 82 1 158 0 83 1 158 0 86 1 158 0 87 1 158 0 88 1 158 0 89 1 158 0 91 1 158 0 95 1 158 0 101 1 158 0 102 1 158 0 103 1 158 0 106 1 158 0 107 1 158 0 108 2 133 0 111 1 158 0 112 1 158 0 179] 
#[1 0 135 0 1 1 162 0 2 2 57 0 3 2 61 0 4 1 162 0 5 2 65 0 6 2 69 0 7 1 162 0 8 1 162 0 15 1 162 0 16 1 162 0 17 1 162 0 18 1 162 0 22 1 162 0 28 1 162 0 29 1 162 0 31 1 162 0 32 1 162 0 33 1 162 0 36 1 162 0 37 1 162 0 40 1 162 0 41 1 162 0 42 1 162 0 44 1 162 0 45 1 162 0 46 1 162 0 49 1 162 0 51 1 162 0 52 1 162 0 53 1 162 0 54 2 105 0 55 1 162 0 56 1 162 0 57 1 162 0 60 0 139 0 61 1 162 0 64 2 113 0 65 1 162 0 67 1 162 0 68 1 162 0 71 2 117 0 72 2 121 0 73 1 162 0 77 1 162 0 78 1 162 0 79 0 143 0 81 1 162 0 82 1 162 0 83 1 162 0 86 1 162 0 87 1 162 0 88 1 162 0 89 1 162 0 91 1 162 0 95 1 162 0 101 1 162 0 102 1 162 0 103 1 162 0 106 1 162 0 107 1 162 0 108 2 133 0 111 1 162 0 112 1 162 0 179] 
#[1 0 147 0 1 1 166 0 2 2 57 0 3 2 61 0 4 1 166 0 5 2 65 0 6 2 69 0 7 1 166 0 8 1 166 0 15 1 166 0 16 1 166 0 17 1 166 0 18 1 166 0 22 1 166 0 28 1 166 0 29 1 166 0 31 1 166 0 32 1 166 0 33 1 166 0 36 1 166 0 37 1 166 0 40 1 166 0 41 1 166 0 42 1 166 0 44 1 166 0 45 1 166 0 46 1 166 0 49 1 166 0 51 1 166 0 52 1 166 0 53 1 166 0 54 2 105 0 55 1 166 0 56 1 166 0 57 1 166 0 60 0 151 0 61 1 166 0 64 2 113 0 65 1 166 0 67 1 166 0 68 1 166 0 71 2 117 0 72 2 121 0 73 1 166 0 77 1 166 0 78 1 166 0 79 0 155 0 81 1 166 0 82 1 166 0 83 1 166 0 86 1 166 0 87 1 166 0 88 1 166 0 89 1 166 0 91 1 166 0 95 1 166 0 101 1 166 0 102 1 166 0 103 1 166 0 106 1 166 0 107 1 166 0 108 2 133 0 111 1 166 0 112 1 166 0 179] 
#[1 0 159 0 1 1 170 0 2 2 57 0 3 2 61 0 4 1 170 0 5 2 65 0 6 2 69 0 7 1 170 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 1 170 0 15 1 170 0 16 1 170 0 17 1 170 0 18 2 101 0 19 1 170 0 22 1 170 0 28 1 170 0 29 1 170 0 31 1 170 0 32 1 170 0 33 1 170 0 36 1 170 0 37 1 170 0 40 1 170 0 41 1 170 0 42 1 170 0 44 1 170 0 45 1 170 0 46 1 170 0 49 1 170 0 51 1 170 0 52 1 170 0 53 1 170 0 54 2 105 0 55 1 170 0 56 1 170 0 57 1 170 0 60 0 163 0 61 1 170 0 64 2 113 0 65 1 170 0 67 1 170 0 68 1 170 0 71 2 117 0 72 2 121 0 73 1 170 0 77 1 170 0 78 1 170 0 79 0 167 0 81 1 170 0 82 1 170 0 83 1 170 0 86 1 170 0 87 1 170 0 88 1 170 0 89 1 170 0 91 1 170 0 95 1 170 0 101 1 170 0 102 1 170 0 103 1 170 0 106 1 170 0 107 1 170 0 108 2 133 0 111 1 170 0 112 1 170 0 179] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 5 145 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 149 0 150 5 153 0 173 5 153 0 174 5 153 0 178] 
#[1 0 171 0 1 1 174 0 2 2 57 0 3 2 61 0 4 1 174 0 5 2 65 0 6 2 69 0 7 1 174 0 8 1 174 0 9 1 174 0 10 1 174 0 11 1 174 0 12 1 174 0 13 1 174 0 14 1 174 0 15 1 174 0 16 1 174 0 17 1 174 0 18 1 174 0 19 1 174 0 22 1 174 0 28 1 174 0 29 1 174 0 31 1 174 0 32 1 174 0 33 1 174 0 36 1 174 0 37 1 174 0 40 1 174 0 41 1 174 0 42 1 174 0 44 1 174 0 45 1 174 0 46 1 174 0 49 1 174 0 51 1 174 0 52 1 174 0 53 1 174 0 54 1 174 0 56 1 174 0 57 1 174 0 60 0 175 0 61 1 174 0 64 1 174 0 67 1 174 0 68 1 174 0 71 2 117 0 72 1 174 0 77 1 174 0 78 1 174 0 79 0 179 0 81 1 174 0 82 1 174 0 83 1 174 0 86 1 174 0 87 1 174 0 88 1 174 0 89 1 174 0 91 1 174 0 95 1 174 0 101 1 174 0 102 1 174 0 103 1 174 0 106 1 174 0 107 1 174 0 108 1 174 0 111 1 174 0 112 1 174 0 179] 
#[0 5 157 0 74] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 183 0 1 1 182 0 2 2 57 0 3 2 61 0 4 1 182 0 5 2 65 0 6 2 69 0 7 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 11 1 182 0 12 1 182 0 13 1 182 0 14 1 182 0 15 1 182 0 16 1 182 0 17 1 182 0 18 1 182 0 19 1 182 0 22 1 182 0 28 1 182 0 29 1 182 0 31 1 182 0 32 1 182 0 33 1 182 0 36 1 182 0 37 1 182 0 40 1 182 0 41 1 182 0 42 0 187 0 44 1 182 0 45 1 182 0 46 1 182 0 49 1 182 0 51 1 182 0 52 1 182 0 53 1 182 0 54 1 182 0 56 1 182 0 57 1 182 0 60 0 191 0 61 1 182 0 64 1 182 0 67 1 182 0 68 1 182 0 71 2 117 0 72 1 182 0 77 1 182 0 78 1 182 0 79 0 195 0 81 1 182 0 82 1 182 0 83 1 182 0 86 1 182 0 87 1 182 0 88 1 182 0 89 1 182 0 91 1 182 0 95 1 182 0 101 1 182 0 102 1 182 0 103 1 182 0 106 1 182 0 107 1 182 0 108 1 182 0 111 1 182 0 112 1 182 0 179] 
#[1 0 199 0 1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 5 1 186 0 6 1 186 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 22 1 186 0 28 1 186 0 29 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 36 1 186 0 37 1 186 0 40 1 186 0 41 1 186 0 42 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 49 1 186 0 51 1 186 0 52 1 186 0 53 1 186 0 54 1 186 0 55 1 186 0 56 1 186 0 57 1 186 0 60 0 203 0 61 1 186 0 64 1 186 0 65 1 186 0 67 1 186 0 68 1 186 0 71 1 186 0 72 1 186 0 73 1 186 0 77 1 186 0 78 1 186 0 79 0 207 0 81 1 186 0 82 1 186 0 83 1 186 0 86 1 186 0 87 1 186 0 88 1 186 0 89 1 186 0 91 1 186 0 95 1 186 0 101 1 186 0 102 1 186 0 103 1 186 0 106 1 186 0 107 1 186 0 108 1 186 0 111 1 186 0 112 1 186 0 179] 
#[1 5 165 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 169 0 173 5 169 0 174 5 169 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 173 0 173 5 173 0 174 5 173 0 178] 
#[1 0 211 0 1 1 190 0 2 2 57 0 3 2 61 0 4 1 190 0 5 2 65 0 6 2 69 0 7 1 190 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 1 190 0 15 2 97 0 16 1 190 0 17 1 190 0 18 2 101 0 19 1 190 0 22 1 190 0 28 1 190 0 29 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 36 1 190 0 37 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 44 1 190 0 45 1 190 0 46 1 190 0 49 1 190 0 51 1 190 0 52 1 190 0 53 1 190 0 54 2 105 0 55 1 190 0 56 1 190 0 57 1 190 0 60 0 215 0 61 1 190 0 64 2 113 0 65 1 190 0 67 1 190 0 68 1 190 0 71 2 117 0 72 2 121 0 73 1 190 0 77 1 190 0 78 1 190 0 79 0 219 0 81 1 190 0 82 1 190 0 83 1 190 0 86 1 190 0 87 1 190 0 88 1 190 0 89 1 190 0 91 1 190 0 95 1 190 0 101 1 190 0 102 1 190 0 103 1 190 0 106 1 190 0 107 1 190 0 108 2 133 0 111 1 190 0 112 1 190 0 179] 
#[1 5 177 0 2 5 181 0 79 4 165 0 82 5 185 0 160 5 189 0 169] 
#[1 0 223 0 1 1 194 0 2 2 57 0 3 2 61 0 4 1 194 0 5 2 65 0 6 2 69 0 7 1 194 0 8 1 194 0 9 1 194 0 10 1 194 0 11 1 194 0 12 1 194 0 13 1 194 0 14 1 194 0 15 1 194 0 16 1 194 0 17 1 194 0 18 1 194 0 19 1 194 0 22 1 194 0 28 1 194 0 29 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 36 1 194 0 37 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 49 1 194 0 51 1 194 0 52 1 194 0 53 1 194 0 54 2 105 0 55 1 194 0 56 1 194 0 57 1 194 0 60 0 227 0 61 1 194 0 64 2 113 0 65 1 194 0 67 1 194 0 68 1 194 0 71 2 117 0 72 2 121 0 73 1 194 0 77 1 194 0 78 1 194 0 79 0 231 0 81 1 194 0 82 1 194 0 83 1 194 0 86 1 194 0 87 1 194 0 88 1 194 0 89 1 194 0 91 1 194 0 95 1 194 0 101 1 194 0 102 1 194 0 103 1 194 0 106 1 194 0 107 1 194 0 108 1 194 0 111 1 194 0 112 1 194 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 193 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 5 197 0 1] 
#[1 5 201 0 2 2 197 0 5 2 213 0 171] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 205 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 5 209 0 112] 
#[1 1 198 0 2 1 198 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 213 0 122 5 213 0 123 5 213 0 126 5 213 0 127 5 213 0 128 5 213 0 129 5 213 0 135 5 213 0 136 5 213 0 137 5 213 0 140 5 213 0 141 5 213 0 142 5 213 0 143 5 213 0 144 5 213 0 145 5 213 0 146 5 213 0 147 5 213 0 148 5 213 0 149 0 193 0 150 1 198 0 179] 
#[0 5 217 0 112] 
#[1 1 202 0 2 1 202 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 221 0 122 5 221 0 123 5 221 0 126 5 221 0 127 5 221 0 128 5 221 0 129 5 221 0 135 5 221 0 136 5 221 0 137 5 221 0 140 5 221 0 141 5 221 0 142 5 221 0 143 5 221 0 144 5 221 0 145 5 221 0 146 5 221 0 147 5 221 0 148 5 221 0 149 0 193 0 150 1 202 0 179] 
#[1 0 217 0 1 0 225 0 112 5 225 0 164] 
#[1 1 213 0 32 1 217 0 56 1 221 0 64 5 229 0 77 1 225 0 86] 
#[1 0 217 0 1 0 225 0 112 5 233 0 163 4 241 0 164] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 237 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 5 241 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 245 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 5 249 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 5 253 0 151 5 253 0 161 2 213 0 171 0 162 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 1 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 217 0 1 0 225 0 112 6 5 0 163 4 241 0 164] 
#[0 6 9 0 23] 
#[0 6 13 0 23] 
#[0 1 206 0 2 0 8 0 101 0 179] 
#[0 1 210 0 2 0 8 0 101 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 6 21 0 155 6 21 0 159 1 214 0 179] 
#[0 1 218 0 2 0 8 0 79 0 83 0 101 0 179] 
#[1 0 238 0 2 0 238 0 8 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 1 229 0 107 6 29 0 154 6 29 0 160 6 33 0 167 6 37 0 168 0 238 0 179] 
#[1 0 238 0 2 0 238 0 8 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 6 41 0 154 6 41 0 160 6 45 0 168 0 238 0 179] 
#[1 0 238 0 2 0 238 0 8 6 49 0 53 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 6 53 0 154 6 57 0 157 6 53 0 160 0 238 0 179] 
#[0 1 222 0 1 0 3 0 5 0 6 0 25 0 26 0 47 0 59 0 73 0 74 0 93 0 100 0 112 0 113 0 114 0 115] 
#[0 1 226 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 179] 
#[0 1 230 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 61 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 6 65 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 69 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 6 73 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 6 77 0 151 6 77 0 161 2 213 0 171 0 162 0 179] 
#[0 1 234 0 2 0 8 0 101 0 179] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 6 81 0 102 2 133 0 111] 
#[1 6 85 0 5 6 89 0 91] 
#[1 1 238 0 2 1 238 0 5 1 238 0 8 1 213 0 32 1 238 0 52 1 217 0 56 1 221 0 64 1 238 0 79 1 238 0 82 1 238 0 83 1 225 0 86 1 238 0 91 1 238 0 101 1 238 0 107 1 238 0 179] 
#[0 6 93 0 12] 
#[1 1 242 0 2 6 97 0 5 1 242 0 8 6 101 0 41 1 229 0 107 6 105 0 167 1 242 0 179] 
#[0 1 246 0 2 0 5 0 8 0 41 0 106 0 107 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 109 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 1 250 0 2 0 8 0 179] 
#[1 6 113 0 2 1 169 0 101] 
#[0 1 254 0 2 0 8 0 101 0 179] 
#[1 2 197 0 5 6 117 0 108 2 213 0 171] 
#[0 6 121 0 112] 
#[0 2 2 0 2 0 8 0 179] 
#[1 3 249 0 20 3 249 0 24 3 249 0 27 3 249 0 30 3 249 0 34 3 249 0 35 3 249 0 48 3 249 0 58 3 249 0 75 3 249 0 76 3 249 0 84 3 249 0 92 3 249 0 96 3 249 0 97 3 249 0 105 6 125 0 133 3 249 0 134] 
#[1 6 129 0 2 6 133 0 5] 
#[0 2 6 0 2 0 5] 
#[0 6 137 0 1] 
#[0 6 141 0 112] 
#[0 2 10 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 6 153 0 166 2 14 0 179] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 6 157 0 166 2 14 0 179] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 6 161 0 166 2 14 0 179] 
#[1 0 217 0 1 0 225 0 112 6 165 0 164] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 6 169 0 166 2 14 0 179] 
#[1 0 217 0 1 0 225 0 112 6 173 0 164] 
#[1 6 177 0 2 2 197 0 5 2 213 0 171] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 181 0 173 6 181 0 174 6 181 0 178] 
#[0 2 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 6 185 0 42] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 22 0 42 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 2 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 3 249 0 20 3 249 0 24 3 249 0 27 3 249 0 30 3 249 0 34 3 249 0 35 3 249 0 48 3 249 0 58 3 249 0 75 3 249 0 76 3 249 0 84 3 249 0 92 3 249 0 96 3 249 0 97 3 249 0 105 6 189 0 133 3 249 0 134] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 193 0 173 6 193 0 174 6 193 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 197 0 173 6 197 0 174 6 197 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 201 0 173 6 201 0 174 6 201 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 205 0 173 6 205 0 174 6 205 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 209 0 173 6 209 0 174 6 209 0 178] 
#[0 2 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 2 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 6 213 0 2] 
#[0 2 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 6 217 0 115] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 221 0 173 6 221 0 174 6 221 0 178] 
#[1 6 225 0 2 1 169 0 101] 
#[1 2 53 0 1 3 109 0 2 2 57 0 3 2 61 0 4 6 229 0 5 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 2 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 233 0 173 6 233 0 174 6 233 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 237 0 150 6 241 0 173 6 241 0 174 6 241 0 178] 
#[1 0 255 0 1 2 46 0 2 2 57 0 3 2 61 0 4 2 46 0 5 2 65 0 6 2 69 0 7 2 46 0 8 2 46 0 9 2 46 0 10 2 46 0 11 2 46 0 12 2 46 0 13 2 46 0 14 2 46 0 15 2 46 0 16 2 46 0 17 2 46 0 18 2 46 0 19 2 46 0 22 2 46 0 28 2 46 0 29 2 46 0 31 2 46 0 32 2 46 0 33 2 46 0 36 2 46 0 37 2 46 0 40 2 46 0 41 2 46 0 42 2 46 0 44 2 46 0 45 2 46 0 46 2 46 0 49 2 46 0 51 2 46 0 52 2 46 0 53 2 46 0 54 2 46 0 56 2 46 0 57 2 46 0 60 1 3 0 61 2 46 0 64 2 46 0 67 2 46 0 68 2 46 0 71 2 117 0 72 2 46 0 77 2 46 0 78 2 46 0 79 1 7 0 81 2 46 0 82 2 46 0 83 2 46 0 86 2 46 0 87 2 46 0 88 2 46 0 89 2 46 0 91 2 46 0 95 2 46 0 101 2 46 0 102 2 46 0 103 2 46 0 106 2 46 0 107 2 46 0 108 2 46 0 111 2 46 0 112 2 46 0 179] 
#[1 1 11 0 1 2 50 0 2 2 57 0 3 2 61 0 4 2 50 0 5 2 65 0 6 2 69 0 7 2 50 0 8 2 50 0 9 2 50 0 10 2 50 0 11 2 50 0 12 2 50 0 13 2 50 0 14 2 50 0 15 2 50 0 16 2 50 0 17 2 50 0 18 2 50 0 19 2 50 0 22 2 50 0 28 2 50 0 29 2 50 0 31 2 50 0 32 2 50 0 33 2 50 0 36 2 50 0 37 2 50 0 40 2 50 0 41 2 50 0 42 1 15 0 44 2 50 0 45 2 50 0 46 2 50 0 49 2 50 0 51 2 50 0 52 2 50 0 53 2 50 0 54 2 50 0 56 2 50 0 57 2 50 0 60 1 19 0 61 2 50 0 64 2 50 0 67 2 50 0 68 2 50 0 71 2 117 0 72 2 50 0 77 2 50 0 78 2 50 0 79 1 23 0 81 2 50 0 82 2 50 0 83 2 50 0 86 2 50 0 87 2 50 0 88 2 50 0 89 2 50 0 91 2 50 0 95 2 50 0 101 2 50 0 102 2 50 0 103 2 50 0 106 2 50 0 107 2 50 0 108 2 50 0 111 2 50 0 112 2 50 0 179] 
#[0 2 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 6 249 0 23] 
#[1 6 253 0 2 5 181 0 79 7 1 0 169] 
#[0 7 5 0 2] 
#[1 7 9 0 2 2 197 0 5 2 213 0 171] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 13 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 7 17 0 104] 
#[1 7 21 0 2 2 197 0 5 2 213 0 171] 
#[1 2 58 0 2 2 58 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 25 0 122 7 25 0 123 7 25 0 126 7 25 0 127 7 25 0 128 7 25 0 129 7 25 0 135 7 25 0 136 7 25 0 137 7 25 0 140 7 25 0 141 7 25 0 142 7 25 0 143 7 25 0 144 7 25 0 145 7 25 0 146 7 25 0 147 7 25 0 148 7 25 0 149 0 193 0 150 2 58 0 179] 
#[0 2 62 0 2 0 8 0 179] 
#[1 2 66 0 2 2 66 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 29 0 122 7 29 0 123 7 29 0 126 7 29 0 127 7 29 0 128 7 29 0 129 7 29 0 135 7 29 0 136 7 29 0 137 7 29 0 140 7 29 0 141 7 29 0 142 7 29 0 143 7 29 0 144 7 29 0 145 7 29 0 146 7 29 0 147 7 29 0 148 7 29 0 149 0 193 0 150 2 66 0 179] 
#[0 2 70 0 2 0 8 0 179] 
#[1 1 213 0 32 1 217 0 56 1 221 0 64 7 33 0 77 1 225 0 86] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 37 0 173 7 37 0 174 7 37 0 178] 
#[1 6 85 0 5 1 229 0 107 7 41 0 167] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 7 45 0 151 7 45 0 161 2 213 0 171 0 162 0 179] 
#[0 2 74 0 2 0 8 0 101 0 179] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 7 49 0 151 7 49 0 161 2 213 0 171 0 162 0 179] 
#[0 2 78 0 2 0 8 0 101 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 7 53 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 7 57 0 2 2 197 0 5 2 213 0 171] 
#[1 2 82 0 2 6 85 0 5 2 82 0 8 2 82 0 52 2 82 0 79 2 82 0 82 2 82 0 83 2 82 0 101 2 82 0 107 2 82 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 61 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 65 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 69 0 173 7 69 0 174 7 69 0 178] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 7 73 0 156 7 73 0 169 2 86 0 179] 
#[0 2 90 0 2 0 8 0 79 0 101 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 7 81 0 155 7 81 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 7 85 0 154 7 85 0 160 7 89 0 168 0 238 0 179] 
#[1 0 238 0 2 0 238 0 8 6 49 0 53 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 7 93 0 154 7 97 0 157 7 93 0 160 0 238 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 7 101 0 155 7 101 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 6 49 0 53 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 7 105 0 154 7 109 0 157 7 105 0 160 0 238 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 113 0 173 7 113 0 174 7 113 0 178] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 7 117 0 155 7 117 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 7 121 0 154 7 121 0 160 0 238 0 179] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 7 125 0 151 7 125 0 161 2 213 0 171 0 162 0 179] 
#[0 2 94 0 2 0 8 0 101 0 179] 
#[1 0 162 0 2 2 197 0 5 0 162 0 8 0 162 0 51 0 162 0 52 2 201 0 60 0 162 0 79 0 162 0 82 0 162 0 83 0 162 0 101 0 162 0 107 7 129 0 151 7 129 0 161 2 213 0 171 0 162 0 179] 
#[0 2 98 0 2 0 8 0 101 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 7 133 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[0 7 137 0 49] 
#[1 0 217 0 1 0 225 0 112 7 141 0 164] 
#[1 4 245 0 112 7 145 0 138 4 253 0 139] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 149 0 173 7 149 0 174 7 149 0 178] 
#[1 4 245 0 112 7 153 0 139] 
#[1 0 61 0 57 0 93 0 102 7 157 0 137 7 161 0 140] 
#[1 2 102 0 2 2 102 0 8 7 165 0 41 2 102 0 179] 
#[1 7 169 0 2 2 197 0 5 2 213 0 171] 
#[1 5 181 0 79 7 173 0 169] 
#[0 7 177 0 59] 
#[0 7 181 0 112] 
#[0 2 106 0 2 0 5] 
#[0 2 110 0 17] 
#[1 5 29 0 112 7 185 0 132] 
#[1 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 189 0 121 0 117 0 122 0 117 0 123 0 117 0 126 0 117 0 127 0 117 0 128 0 117 0 129 0 117 0 135 0 117 0 136 0 117 0 137 0 117 0 140 0 117 0 141 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 193 0 150] 
#[0 2 114 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 193 0 173 7 193 0 174 7 193 0 178] 
#[0 2 118 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 2 122 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 2 126 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 2 130 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 7 197 0 166 2 14 0 179] 
#[0 2 134 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[1 2 14 0 2 2 14 0 5 2 14 0 8 2 14 0 15 0 235 0 32 2 14 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 14 0 79 2 14 0 82 2 14 0 83 0 251 0 86 2 14 0 91 2 14 0 101 2 14 0 103 2 14 0 107 6 149 0 165 7 201 0 166 2 14 0 179] 
#[1 7 205 0 55 7 209 0 73] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 138 0 41 2 138 0 42 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 138 0 106 2 133 0 111] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 7 213 0 2 7 217 0 50] 
#[1 2 53 0 1 7 221 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 7 225 0 49 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 2 53 0 1 7 229 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 2 53 0 1 7 233 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 2 53 0 1 7 237 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 7 241 0 2 7 245 0 5] 
#[1 1 27 0 1 2 150 0 2 1 31 0 3 1 35 0 4 2 150 0 5 1 39 0 6 1 43 0 7 2 150 0 8 1 47 0 9 1 51 0 10 1 55 0 11 1 59 0 12 1 63 0 13 1 67 0 14 2 150 0 15 1 71 0 16 2 150 0 17 2 150 0 18 1 75 0 19 2 150 0 22 2 150 0 28 2 150 0 29 2 150 0 31 2 150 0 32 2 150 0 33 2 150 0 36 2 150 0 37 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 44 2 150 0 45 2 150 0 46 2 150 0 49 2 150 0 51 2 150 0 52 2 150 0 53 2 150 0 54 1 79 0 55 2 150 0 56 2 150 0 57 2 150 0 60 1 83 0 61 2 150 0 64 1 87 0 65 2 150 0 67 2 150 0 68 2 150 0 71 1 91 0 72 1 95 0 73 2 150 0 77 1 99 0 78 2 150 0 79 1 103 0 81 2 150 0 82 2 150 0 83 2 150 0 86 2 150 0 87 2 150 0 88 2 150 0 89 2 150 0 91 2 150 0 95 2 150 0 101 2 150 0 102 2 150 0 103 2 150 0 106 2 150 0 107 2 150 0 108 1 107 0 111 2 150 0 112 2 150 0 179] 
#[0 1 111 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 249 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 1 115 0 1 2 158 0 2 2 57 0 3 2 61 0 4 2 158 0 5 2 65 0 6 2 69 0 7 2 158 0 8 2 158 0 9 2 158 0 10 2 158 0 11 2 158 0 12 2 158 0 13 2 158 0 14 2 158 0 15 2 158 0 16 2 158 0 17 2 158 0 18 2 158 0 19 2 158 0 22 2 158 0 28 2 158 0 29 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 36 2 158 0 37 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 44 2 158 0 45 2 158 0 46 2 158 0 49 2 158 0 51 2 158 0 52 2 158 0 53 2 158 0 54 2 158 0 56 2 158 0 57 2 158 0 60 1 119 0 61 2 158 0 64 2 158 0 67 2 158 0 68 2 158 0 71 2 117 0 72 2 158 0 77 2 158 0 78 2 158 0 79 1 123 0 81 2 158 0 82 2 158 0 83 2 158 0 86 2 158 0 87 2 158 0 88 2 158 0 89 2 158 0 91 2 158 0 95 2 158 0 101 2 158 0 102 2 158 0 103 2 158 0 106 2 158 0 107 2 158 0 108 2 158 0 111 2 158 0 112 2 158 0 179] 
#[1 7 253 0 2 1 169 0 101] 
#[1 2 53 0 1 3 109 0 2 2 57 0 3 2 61 0 4 8 1 0 5 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 5 0 173 8 5 0 174 8 5 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 9 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 8 13 0 2] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 81 0 88 0 85 0 89 8 17 0 104 8 21 0 150] 
#[1 8 25 0 2 2 197 0 5 2 213 0 171] 
#[0 8 29 0 1] 
#[0 2 170 0 2 0 8 0 179] 
#[0 2 174 0 2 0 8 0 179] 
#[0 2 178 0 2 0 8 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 33 0 173 8 33 0 174 8 33 0 178] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 8 37 0 106 2 133 0 111 8 41 0 124 8 45 0 125] 
#[0 2 182 0 2 0 8 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 8 49 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 8 53 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[0 2 186 0 2 0 8 0 101 0 179] 
#[0 2 190 0 2 0 8 0 51 0 52 0 79 0 82 0 83 0 101 0 107 0 179] 
#[1 2 194 0 2 2 197 0 5 2 194 0 8 2 194 0 53 2 194 0 79 2 194 0 82 2 194 0 83 2 194 0 101 2 213 0 171 2 194 0 179] 
#[1 2 198 0 2 2 197 0 5 2 198 0 8 2 198 0 79 2 198 0 83 2 198 0 101 2 213 0 171 2 198 0 179] 
#[1 2 53 0 1 2 202 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 202 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 202 0 79 2 129 0 81 2 202 0 101 2 133 0 111 2 202 0 179] 
#[0 2 206 0 2 0 8 0 101 0 179] 
#[0 2 210 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 57 0 156 8 57 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 61 0 155 8 61 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 6 49 0 53 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 8 65 0 154 8 69 0 157 8 65 0 160 0 238 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 73 0 155 8 73 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 8 77 0 154 8 77 0 160 0 238 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 81 0 156 8 81 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 85 0 155 8 85 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 8 89 0 154 8 89 0 160 0 238 0 179] 
#[1 2 53 0 1 2 214 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 214 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 214 0 79 2 129 0 81 2 214 0 82 2 214 0 83 2 214 0 101 2 133 0 111 2 214 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 93 0 156 8 93 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 97 0 155 8 97 0 159 1 214 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 8 101 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[1 0 35 0 2 0 35 0 8 4 157 0 51 4 161 0 52 0 238 0 79 4 165 0 82 0 238 0 83 0 35 0 101 1 229 0 107 4 169 0 152 8 105 0 153 4 177 0 154 4 177 0 160 4 185 0 162 4 189 0 167 4 193 0 168 0 35 0 179] 
#[0 2 218 0 2 0 8 0 101 0 179] 
#[0 8 109 0 90] 
#[1 2 222 0 2 2 222 0 5 2 222 0 8 1 213 0 32 2 222 0 52 1 217 0 56 1 221 0 64 2 222 0 79 2 222 0 82 2 222 0 83 1 225 0 86 2 222 0 91 2 222 0 101 2 222 0 107 2 222 0 179] 
#[1 2 226 0 2 6 97 0 5 2 226 0 8 1 229 0 107 8 113 0 167 2 226 0 179] 
#[1 2 53 0 1 2 230 0 2 2 57 0 3 2 61 0 4 2 230 0 5 2 65 0 6 2 69 0 7 2 230 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 230 0 41 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 230 0 106 2 230 0 107 2 133 0 111 2 230 0 179] 
#[0 2 234 0 2 0 5 0 8 0 41 0 106 0 107 0 179] 
#[0 2 238 0 2 0 8 0 179] 
#[0 2 242 0 2 0 8 0 179] 
#[1 0 61 0 57 0 93 0 102 8 117 0 137 8 121 0 140] 
#[0 8 125 0 17] 
#[0 2 246 0 2 0 8 0 101 0 179] 
#[0 2 250 0 2 0 8 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 129 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[0 2 254 0 2 0 5] 
#[1 0 6 0 2 0 6 0 8 8 133 0 120] 
#[1 2 53 0 1 3 2 0 2 2 57 0 3 2 61 0 4 3 2 0 5 2 65 0 6 2 69 0 7 3 2 0 8 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 3 2 0 15 2 97 0 16 2 101 0 19 3 2 0 32 3 2 0 52 2 105 0 55 3 2 0 56 2 109 0 61 3 2 0 64 2 113 0 65 2 117 0 72 2 121 0 73 3 2 0 77 2 125 0 78 3 2 0 79 2 129 0 81 3 2 0 82 3 2 0 83 3 2 0 86 3 2 0 91 3 2 0 101 3 2 0 103 3 2 0 107 2 133 0 111 3 2 0 179] 
#[0 3 6 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 3 10 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 179] 
#[0 8 137 0 1] 
#[0 8 141 0 55] 
#[0 3 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 8 145 0 114] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 149 0 173 8 149 0 174 8 149 0 178] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 3 34 0 2 0 5 0 50] 
#[0 8 153 0 115] 
#[1 8 157 0 2 2 197 0 5 2 213 0 171] 
#[0 1 127 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 161 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 1 131 0 1 3 42 0 2 2 57 0 3 2 61 0 4 3 42 0 5 2 65 0 6 2 69 0 7 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 11 3 42 0 12 3 42 0 13 3 42 0 14 3 42 0 15 3 42 0 16 3 42 0 17 3 42 0 18 3 42 0 19 3 42 0 22 3 42 0 28 3 42 0 29 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 36 3 42 0 37 3 42 0 40 3 42 0 41 3 42 0 42 3 42 0 44 3 42 0 45 3 42 0 46 3 42 0 49 3 42 0 51 3 42 0 52 3 42 0 53 3 42 0 54 3 42 0 56 3 42 0 57 3 42 0 60 1 135 0 61 3 42 0 64 3 42 0 67 3 42 0 68 3 42 0 71 2 117 0 72 3 42 0 77 3 42 0 78 3 42 0 79 1 139 0 81 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 95 3 42 0 101 3 42 0 102 3 42 0 103 3 42 0 106 3 42 0 107 3 42 0 108 3 42 0 111 3 42 0 112 3 42 0 179] 
#[1 3 46 0 2 2 197 0 5 3 46 0 8 3 46 0 101 2 213 0 171 3 46 0 179] 
#[0 3 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 8 165 0 1] 
#[1 3 54 0 2 3 54 0 8 1 169 0 101 3 54 0 179] 
#[0 3 58 0 2 0 8 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 169 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 2 53 0 1 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 8 37 0 106 2 133 0 111 8 173 0 124 8 45 0 125] 
#[1 8 177 0 70 8 181 0 73] 
#[1 3 62 0 2 3 62 0 8 8 37 0 106 8 185 0 125 3 62 0 179] 
#[0 3 66 0 2 0 8 0 106 0 179] 
#[0 3 70 0 2 0 8 0 101 0 179] 
#[0 3 74 0 2 0 8 0 101 0 179] 
#[0 3 78 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 189 0 156 8 189 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 193 0 155 8 193 0 159 1 214 0 179] 
#[1 0 238 0 2 0 238 0 8 0 238 0 79 4 165 0 82 0 238 0 83 0 238 0 101 8 197 0 154 8 197 0 160 0 238 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 201 0 156 8 201 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 205 0 155 8 205 0 159 1 214 0 179] 
#[0 3 82 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 209 0 156 8 209 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 8 213 0 155 8 213 0 159 1 214 0 179] 
#[0 3 86 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 8 217 0 156 8 217 0 169 2 86 0 179] 
#[0 3 90 0 2 0 8 0 101 0 179] 
#[0 3 94 0 2 0 8 0 101 0 179] 
#[0 3 98 0 2 0 8 0 179] 
#[0 3 102 0 2 0 8 0 179] 
#[0 3 106 0 2 0 8 0 179] 
#[0 3 110 0 2 0 8 0 179] 
#[0 8 221 0 1] 
#[1 2 197 0 5 8 225 0 108 2 213 0 171] 
#[1 8 229 0 2 3 13 0 8] 
#[1 0 81 0 88 0 85 0 89 8 233 0 150] 
#[0 8 237 0 1] 
#[0 8 241 0 2] 
#[1 2 53 0 1 8 245 0 2 2 57 0 3 2 61 0 4 2 65 0 6 2 69 0 7 2 73 0 9 2 77 0 10 2 81 0 11 2 85 0 12 2 89 0 13 2 93 0 14 2 97 0 16 2 101 0 19 2 105 0 55 2 109 0 61 2 113 0 65 2 117 0 72 2 121 0 73 2 125 0 78 2 129 0 81 2 133 0 111] 
#[0 8 249 0 2] 
#[0 3 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 8 253 0 2 2 197 0 5 2 213 0 171] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 1 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 9 5 0 2 2 197 0 5 2 213 0 171] 
#[1 3 118 0 2 3 118 0 8 8 37 0 106 8 185 0 125 3 118 0 179] 
#[0 9 9 0 95] 
#[0 9 13 0 70] 
#[0 3 122 0 2 0 8 0 106 0 179] 
#[0 3 126 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 9 17 0 156 9 17 0 169 2 86 0 179] 
#[1 1 214 0 2 1 214 0 8 1 214 0 79 6 17 0 83 1 214 0 101 9 21 0 155 9 21 0 159 1 214 0 179] 
#[0 3 130 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 9 25 0 156 9 25 0 169 2 86 0 179] 
#[0 3 134 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 9 29 0 156 9 29 0 169 2 86 0 179] 
#[0 3 138 0 2 0 8 0 101 0 179] 
#[1 0 81 0 88 0 85 0 89 9 33 0 150] 
#[0 9 37 0 59] 
#[0 3 142 0 2 0 8 0 179] 
#[1 9 41 0 2 1 169 0 101] 
#[1 0 81 0 88 0 85 0 89 9 45 0 150] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[0 3 154 0 2 0 5 0 50] 
#[0 3 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 9 49 0 2 2 197 0 5 2 213 0 171] 
#[0 3 162 0 2 0 8 0 179] 
#[0 9 53 0 102] 
#[0 9 57 0 95] 
#[0 3 166 0 2 0 8 0 101 0 179] 
#[1 2 86 0 2 2 86 0 8 5 181 0 79 2 86 0 101 9 61 0 156 9 61 0 169 2 86 0 179] 
#[0 3 170 0 2 0 8 0 101 0 179] 
#[0 3 174 0 2 0 8 0 101 0 179] 
#[1 9 65 0 2 1 169 0 101] 
#[0 3 178 0 2 0 8 0 179] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 9 69 0 2 1 169 0 101] 
#[0 3 186 0 2 0 8 0 179] 
#[0 9 73 0 91] 
#[0 9 77 0 57] 
#[0 3 190 0 2 0 8 0 101 0 179] 
#[1 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 9 81 0 122 9 81 0 123 9 81 0 126 9 81 0 127 9 81 0 128 9 81 0 129 9 81 0 135 9 81 0 136 9 81 0 137 9 81 0 140 9 81 0 141 9 81 0 142 9 81 0 143 9 81 0 144 9 81 0 145 9 81 0 146 9 81 0 147 9 81 0 148 9 81 0 149 0 193 0 150] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 179] 
#[1 4 245 0 112 9 85 0 138 4 253 0 139] 
#[0 9 89 0 1] 
#[0 3 198 0 2 0 8 0 179] 
#[1 3 202 0 2 6 97 0 5 3 202 0 8 3 202 0 106 3 202 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 93 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 9 97 0 2 2 197 0 5 2 213 0 171] 
#[1 3 206 0 2 3 206 0 8 9 101 0 104 3 206 0 106 3 206 0 179] 
#[0 9 105 0 1] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 109 0 170 1 121 0 172 1 125 0 173 1 125 0 174 1 125 0 178] 
#[1 9 113 0 2 2 197 0 5 2 213 0 171] 
#[0 3 210 0 2 0 8 0 106 0 179]
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
	result beginToken: (nodes at: 4).
	result loadingToken: (nodes at: 5).
	result database: (nodes at: 6).
	result table: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result values.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result withToken: (nodes at: 9).
	result intervalToken: (nodes at: 10).
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
	result tableName: (nodes at: 3).
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
TeradataParser >> reduceActionForExecuteStatement1: nodes [
	| result |
	result := TeradataExecuteStatementNode new.
	result executeToken: (nodes at: 1).
	result expression: (nodes at: 2).
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
TeradataParser >> reduceActionForExpression1: nodes [
	| result |
	result := TeradataIdentifierExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression23: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result likeToken: (nodes at: 2).
	result like: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression24: nodes [
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
TeradataParser >> reduceActionForExpression25: nodes [
	| result |
	result := TeradataLikeExpressionNode new.
	result value: (nodes at: 1).
	result notToken: (nodes at: 2).
	result likeToken: (nodes at: 3).
	result like: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression26: nodes [
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
TeradataParser >> reduceActionForExpression27: nodes [
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
TeradataParser >> reduceActionForExpression28: nodes [
	| result |
	result := TeradataIsNullExpressionNode new.
	result value: (nodes at: 1).
	result _isToken: (nodes at: 2).
	result nullToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression29: nodes [
	| result |
	result := TeradataIsNullExpressionNode new.
	result value: (nodes at: 1).
	result _isToken: (nodes at: 2).
	result notToken: (nodes at: 3).
	result nullToken: (nodes at: 4).
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
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression31: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result inToken: (nodes at: 2).
	result addNode: (nodes at: 3) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression32: nodes [
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
TeradataParser >> reduceActionForExpression33: nodes [
	| result |
	result := TeradataInValueExpressionNode new.
	result testValue: (nodes at: 1).
	result notToken: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression34: nodes [
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
TeradataParser >> reduceActionForExpression35: nodes [
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
TeradataParser >> reduceActionForExpression36: nodes [
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
TeradataParser >> reduceActionForExpression37: nodes [
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
TeradataParser >> reduceActionForExpression38: nodes [
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
TeradataParser >> reduceActionForExpression39: nodes [
	| result |
	result := TeradataFormatExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result formatToken: (nodes at: 3).
	result format: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
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
	result := TeradataTypeExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression41: nodes [
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
TeradataParser >> reduceActionForExpression42: nodes [
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
TeradataParser >> reduceActionForExpression43: nodes [
	| result |
	result := TeradataUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression44: nodes [
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
TeradataParser >> reduceActionForExpression45: nodes [
	| result |
	result := TeradataTrimExpressionNode new.
	result trimToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression46: nodes [
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
TeradataParser >> reduceActionForExpression49: nodes [
	| result |
	result := TeradataQueryExpressionNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result query: (nodes at: 2).
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression51: nodes [
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
TeradataParser >> reduceActionForExpression52: nodes [
	| result |
	result := TeradataOverExpressionNode new.
	result value: (nodes at: 1).
	result overToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForExpression53: nodes [
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
TeradataParser >> reduceActionForExpression54: nodes [
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
TeradataParser >> reduceActionForExpression55: nodes [
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
TeradataParser >> reduceActionForExpression56: nodes [
	| result |
	result := TeradataIntervalExpressionNode new.
	result intervalToken: (nodes at: 1).
	result interval: (nodes at: 2).
	result name: (nodes at: 3).
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
TeradataParser >> reduceActionForExpression6: nodes [
	| result |
	result := TeradataStarExpressionNode new.
	result star: (nodes at: 1).
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
TeradataParser >> reduceActionForInsertQuery1: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result tableName: (nodes at: 2).
	result valuesToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery2: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result tableName: (nodes at: 2).
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
TeradataParser >> reduceActionForInsertQuery3: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result tableName: (nodes at: 3).
	result valuesToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result leftParens.
	result addNodes: ((nodes at: 6) at: 1) to: result values.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForInsertQuery4: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result tableName: (nodes at: 3).
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
TeradataParser >> reduceActionForInsertQuery5: nodes [
	| result |
	result := TeradataInsertQueryNode new.
	result insertToken: (nodes at: 1).
	result intoToken: (nodes at: 2).
	result tableName: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	result query: (nodes at: 7).
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
	result addNode: (nodes at: 2) to: result tables.
	result usingToken: (nodes at: 3).
	result addNode: (nodes at: 4) to: result tables.
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
	result addNode: (nodes at: 3) to: result tables.
	result usingToken: (nodes at: 4).
	result addNode: (nodes at: 5) to: result tables.
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
	result group: ((nodes at: 7) at: 4).
	result having: ((nodes at: 7) at: 5).
	result whereToken: ((nodes at: 7) at: 6).
	result where: ((nodes at: 7) at: 7).
	result fromToken: ((nodes at: 7) at: 8).
	result addNodes: ((nodes at: 7) at: 9) to: result tables.
	result addTokens: ((nodes at: 7) at: 10) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForSelectQuery13: nodes [
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
TeradataParser >> reduceActionForSelectQuery14: nodes [
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
	result group: ((nodes at: 4) at: 4).
	result having: ((nodes at: 4) at: 5).
	result whereToken: ((nodes at: 4) at: 6).
	result where: ((nodes at: 4) at: 7).
	result fromToken: ((nodes at: 4) at: 8).
	result addNodes: ((nodes at: 4) at: 9) to: result tables.
	result addTokens: ((nodes at: 4) at: 10) to: result commas.
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
	result group: ((nodes at: 6) at: 4).
	result having: ((nodes at: 6) at: 5).
	result whereToken: ((nodes at: 6) at: 6).
	result where: ((nodes at: 6) at: 7).
	result fromToken: ((nodes at: 6) at: 8).
	result addNodes: ((nodes at: 6) at: 9) to: result tables.
	result addTokens: ((nodes at: 6) at: 10) to: result commas.
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
	result group: ((nodes at: 5) at: 4).
	result having: ((nodes at: 5) at: 5).
	result whereToken: ((nodes at: 5) at: 6).
	result where: ((nodes at: 5) at: 7).
	result fromToken: ((nodes at: 5) at: 8).
	result addNodes: ((nodes at: 5) at: 9) to: result tables.
	result addTokens: ((nodes at: 5) at: 10) to: result commas.
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
TeradataParser >> reduceActionForTable12: nodes [
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
TeradataParser >> reduceActionForTable1: nodes [
	| result |
	result := TeradataTableNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable2: nodes [
	| result |
	result := TeradataTableNode new.
	result name: (nodes at: 1).
	result alias: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForTable3: nodes [
	| result |
	result := TeradataTableNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result alias: (nodes at: 3).
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
	result direction: (nodes at: 2).
	result joinToken: (nodes at: 3).
	result right: (nodes at: 4).
	result onToken: ((nodes at: 5) at: 1).
	result on: ((nodes at: 5) at: 2).
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
TeradataParser >> reduceActionForTableList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
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
	result tableName: (nodes at: 2).
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
	result tableName: (nodes at: 2).
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
	result tableName: (nodes at: 2).
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
	result tableName: (nodes at: 2).
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
	result tableName: (nodes at: 2).
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
	result tableName: (nodes at: 2).
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
TeradataParser >> reduceActionForWhereExpression1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionForWithRecursiveQuery1: nodes [
	| result |
	result := TeradataRecursiveQueryNode new.
	result withToken: (nodes at: 1).
	result recursiveToken: (nodes at: 2).
	result name: (nodes at: 3).
	result addToken: (nodes at: 4) to: result leftParens.
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addToken: (nodes at: 6) to: result rightParens.
	result asToken: (nodes at: 7).
	result addToken: (nodes at: 8) to: result leftParens.
	result query: (nodes at: 9).
	result addToken: (nodes at: 10) to: result rightParens.
	result statement: (nodes at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: nodes [
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
	result at: 5 put: (nodes at: 4).
	result at: 1 put: (nodes at: 5).
	result at: 2 put: (nodes at: 6).
	result at: 3 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	result at: 7 put: ((nodes at: 1) at: 2).
	result at: 4 put: (nodes at: 2).
	result at: 5 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: nodes [
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
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 10).
	result at: 4 put: (nodes at: 2).
	result at: 5 put: (nodes at: 3).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	result at: 3 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: nodes [
	| result |
	result := Array new: 10.
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
TeradataParser >> reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: nodes [
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

{ #category : #testing }
TeradataParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
TeradataParser >> useAllTokenIds [
	^ false
]
