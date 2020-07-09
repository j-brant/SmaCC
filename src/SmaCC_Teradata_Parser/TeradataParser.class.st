Class {
	#name : #TeradataParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataParser class >> ambiguousTransitions [
^#(
#[ 0 130 2 53] 
#[ 0 226 2 57] 
#[ 0 226 2 113] 
#[ 0 226 2 133] 
#[ 0 234 2 57] 
#[ 0 234 2 113] 
#[ 0 234 2 133] 
#[ 0 242 0 246] 
#[ 1 134 2 57] 
#[ 1 134 2 113] 
#[ 1 134 2 133] 
#[ 1 138 2 57] 
#[ 1 138 2 113] 
#[ 1 138 2 133] 
#[ 1 142 2 57] 
#[ 1 142 2 113] 
#[ 1 142 2 133] 
#[ 1 146 2 57] 
#[ 1 146 2 113] 
#[ 1 146 2 133] 
#[ 1 150 2 57] 
#[ 1 150 2 113] 
#[ 1 150 2 133] 
#[ 1 154 2 57] 
#[ 1 154 2 113] 
#[ 1 154 2 133] 
#[ 1 158 2 57] 
#[ 1 158 2 113] 
#[ 1 158 2 133] 
#[ 1 162 2 57] 
#[ 1 162 2 113] 
#[ 1 162 2 133] 
#[ 1 166 2 57] 
#[ 1 166 2 113] 
#[ 1 166 2 133] 
#[ 1 170 2 57] 
#[ 1 170 2 113] 
#[ 1 170 2 133] 
#[ 1 174 2 57] 
#[ 1 174 2 113] 
#[ 1 174 2 133] 
#[ 1 178 2 57] 
#[ 1 178 2 113] 
#[ 1 178 2 133] 
#[ 1 186 2 57] 
#[ 1 186 5 165] 
#[ 1 186 2 113] 
#[ 1 186 2 133] 
#[ 1 190 2 57] 
#[ 1 190 2 113] 
#[ 1 190 2 133] 
#[ 1 194 2 57] 
#[ 1 194 2 113] 
#[ 1 194 2 133] 
#[ 1 198 2 57] 
#[ 1 198 2 113] 
#[ 1 198 2 133] 
#[ 1 217 2 18] 
#[ 1 221 2 18] 
#[ 1 225 2 18] 
#[ 2 18 6 149] 
#[ 1 229 2 18] 
#[ 2 50 2 57] 
#[ 2 50 2 113] 
#[ 2 50 2 133] 
#[ 2 54 2 57] 
#[ 2 54 6 249] 
#[ 2 54 2 113] 
#[ 2 54 2 133] 
#[ 1 174 2 57 2 154] 
#[ 1 174 2 61 2 154] 
#[ 1 174 2 65 2 154] 
#[ 1 174 2 69 2 154] 
#[ 1 174 2 73 2 154] 
#[ 1 174 2 77 2 154] 
#[ 1 174 2 81 2 154] 
#[ 1 174 2 85 2 154] 
#[ 1 174 2 89 2 154] 
#[ 1 174 2 93 2 154] 
#[ 1 174 2 97 2 154] 
#[ 1 174 2 101 2 154] 
#[ 1 174 2 105 2 154] 
#[ 1 174 2 109 2 154] 
#[ 1 174 2 113 2 154] 
#[ 1 174 2 117 2 154] 
#[ 1 174 2 121 2 154] 
#[ 1 174 2 125 2 154] 
#[ 1 174 2 129 2 154] 
#[ 1 174 2 133 2 154] 
#[ 1 174 2 137 2 154] 
#[ 1 46 2 158] 
#[ 2 57 2 162] 
#[ 2 113 2 162] 
#[ 2 133 2 162] 
#[ 1 46 3 42] 
#[ 2 57 3 46] 
#[ 2 113 3 46] 
#[ 2 133 3 46]
	).
]

{ #category : #'generated-accessing' }
TeradataParser class >> cacheId [
	^'2020-07-09T07:53:49.16913-05:00'
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
	: ""MERGE"" 'mergeToken' ""INTO"" 'intoToken'? Table 'mergeTable' ""USING"" 'usingToken' Table 'usingTable' ""ON"" 'onToken' Expression 'condition' WhenMergeCondition 'whenMerge'+ {{}}
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
	: (""LOCKING"" 'lockToken' | ""LOCK"" 'lockToken') ""TABLE"" 'tableToken'? TableName 'table' ""FOR"" 'forToken' <identifier> 'lock' Statement 'statement'? {{}}
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
	: <identifier> 'name' ""="" 'equals' Expression 'value' {{}}
	;
InsertQuery
	: ""INSERT"" 'insertToken' ""INTO"" 'intoToken'? TableName 'table' (""("" 'leftParen' ExpressionList "")"" 'rightParen')? ""VALUES"" 'valuesToken' ""("" 'leftParen' ExpressionList "")"" 'rightParen' {{}}
	| ""INSERT"" 'insertToken' ""INTO"" 'intoToken' TableName 'table' ""("" 'leftParen' ExpressionList "")"" 'rightParen' SelectQuery 'query' {{}}
	;
UsingStatement
	: ""USING"" 'usingToken' ExpressionList Statement 'statement' {{}}
	;
LoadingStatement
	: ""BEGIN"" 'beginToken' ""LOADING"" 'loadingToken' TableName 'table' ""ERRORFILES"" 'errorfilesToken' ExpressionList ""WITH"" 'withToken' ""INTERVAL"" 'intervalToken' {{BeginLoadingStatement}}
	| ""END"" 'endToken' ""LOADING"" 'loadingToken' {{EndLoadingStatement}}
	;
CheckWorkloadStatement
	: ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""FOR"" 'forToken' ""BEGIN"" 'beginToken' ""LOADING"" 'loadingToken' <identifier> 'database' TableName 'table' ExpressionList ""WITH"" 'withToken' ""INTERVAL"" 'intervalToken' {{}}
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
TableName
	: <identifier> 'name' {{Table}}
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
	#(146 1 #reduceActionForTransactionStatement1: 5617665 false ) 
	#(146 1 #reduceActionForTransactionStatement2: 5617666 false ) 
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
	#(147 2 #reduceActionForDatabaseStatement1: 5742593 false ) 
	#(164 1 #reduceActionForTable1: 7140353 false ) 
	#(149 2 #reduceActionForDeleteQuery7: 5903367 false ) 
	#(149 2 #reduceActionForDeleteQuery7: 5903361 false ) 
	#(142 2 #reduceActionForLoadingStatement2: 4767746 false ) 
	#(174 1 #reduceActionForExpression6: 8042502 false ) 
	#(174 1 #reduceActionForExpression5: 8042501 false ) 
	#(174 1 #reduceActionForExpression1: 8042497 false ) 
	#(174 1 #reduceActionForExpression2: 8042498 false ) 
	#(174 1 #reduceActionForExpression3: 8042499 false ) 
	#(174 1 #reduceActionForExpression3: 8042500 false ) 
	#(148 2 #reduceActionForExecuteStatement1: 5824513 false ) 
	#(174 1 #liftFirstValue: 8042503 false ) 
	#(174 1 #liftFirstValue: 8042504 false ) 
	#(145 2 #reduceActionForHelpSessionStatement1: 5539841 false ) 
	#(167 1 #reduceActionForTable1: 7535617 false ) 
	#(151 0 #nil 6226945 false ) 
	#(171 1 #reduceActionForStatements1: 7817217 false ) 
	#(173 1 #liftFirstValue: 7919617 false ) 
	#(120 2 #reduceActionFor_____semicolon__2: 1130498 false ) 
	#(119 2 #reduceActionForFile1: 1111041 false ) 
	#(143 3 #reduceActionForCheckWorkloadStatement2: 5048322 false ) 
	#(130 0 #reduceActionForMacroArgs1: 3038209 false ) 
	#(149 3 #reduceActionForDeleteQuery10: 5903370 false ) 
	#(164 2 #reduceActionForTable2: 7140354 false ) 
	#(149 3 #reduceActionForDeleteQuery9: 5903369 false ) 
	#(149 3 #reduceActionForDeleteQuery8: 5903368 false ) 
	#(149 3 #reduceActionForDeleteQuery10: 5903364 false ) 
	#(149 3 #reduceActionForDeleteQuery9: 5903363 false ) 
	#(149 3 #reduceActionForDeleteQuery8: 5903362 false ) 
	#(136 3 #reduceActionForDropTableQuery1: 3729409 false ) 
	#(174 2 #reduceActionForExpression43: 8042539 false ) 
	#(177 1 #reduceActionForWhenExpressions1: 11289601 false ) 
	#(174 2 #reduceActionForExpression43: 8042546 false ) 
	#(172 1 #reduceActionForWhenExpressions1: 7878657 false ) 
	#(153 0 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: 6250497 false ) 
	#(154 0 #nil 6339585 false ) 
	#(151 1 #liftFirstValue: 6226946 false ) 
	#(173 2 #reduceActionForNamedExpression2: 7919618 false ) 
	#(141 3 #reduceActionForUsingStatement1: 4681729 false ) 
	#(158 1 #reduceActionForUnionSelectQuery2: 6623234 false ) 
	#(150 3 #reduceActionForSelectQuery13: 6048781 false ) 
	#(135 4 #reduceActionForCheckpointStatement1: 3574785 false ) 
	#(164 3 #reduceActionForTable4: 7140356 false ) 
	#(149 4 #reduceActionForDeleteQuery12: 5903372 false ) 
	#(149 4 #reduceActionForDeleteQuery11: 5903371 false ) 
	#(164 3 #reduceActionForTable3: 7140355 false ) 
	#(168 2 #reduceActionForWhereExpression1: 7582721 false ) 
	#(149 4 #reduceActionForDeleteQuery12: 5903366 false ) 
	#(149 4 #reduceActionForDeleteQuery11: 5903365 false ) 
	#(174 3 #reduceActionForExpression49: 8042545 false ) 
	#(174 3 #reduceActionForExpression30: 8042526 false ) 
	#(175 3 #reduceActionForCaseExpression1: 11095041 false ) 
	#(177 2 #reduceActionFor_____semicolon__2: 11289602 false ) 
	#(174 3 #reduceActionForExpression56: 8042552 false ) 
	#(179 3 #reduceActionForFunctionExpression1: 11485185 false ) 
	#(134 1 #liftFirstValue: 3379210 false ) 
	#(134 1 #liftFirstValue: 3379207 false ) 
	#(134 1 #liftFirstValue: 3379201 false ) 
	#(134 1 #liftFirstValue: 3379203 false ) 
	#(134 1 #liftFirstValue: 3379204 false ) 
	#(134 1 #liftFirstValue: 3379211 false ) 
	#(134 1 #liftFirstValue: 3379213 false ) 
	#(134 1 #liftFirstValue: 3379209 false ) 
	#(134 1 #liftFirstValue: 3379215 false ) 
	#(134 1 #liftFirstValue: 3379212 false ) 
	#(134 1 #liftFirstValue: 3379214 false ) 
	#(134 1 #liftFirstValue: 3379208 false ) 
	#(134 1 #liftFirstValue: 3379205 false ) 
	#(134 1 #liftFirstValue: 3379206 false ) 
	#(134 1 #liftFirstValue: 3379202 false ) 
	#(133 1 #reduceActionForType1: 3255297 false ) 
	#(174 3 #reduceActionForExpression11: 8042507 false ) 
	#(174 3 #reduceActionForExpression11: 8042505 false ) 
	#(174 3 #reduceActionForExpression11: 8042506 false ) 
	#(174 3 #reduceActionForExpression11: 8042508 false ) 
	#(174 3 #reduceActionForExpression11: 8042515 false ) 
	#(174 3 #reduceActionForExpression11: 8042516 false ) 
	#(174 3 #reduceActionForExpression11: 8042514 false ) 
	#(174 3 #reduceActionForExpression11: 8042513 false ) 
	#(174 3 #reduceActionForExpression11: 8042517 false ) 
	#(174 3 #reduceActionForExpression11: 8042518 false ) 
	#(174 3 #reduceActionForExpression11: 8042511 false ) 
	#(174 3 #reduceActionForExpression31: 8042527 false ) 
	#(174 3 #reduceActionForExpression28: 8042524 false ) 
	#(174 3 #reduceActionForExpression23: 8042519 false ) 
	#(174 3 #reduceActionForExpression11: 8042509 false ) 
	#(174 3 #reduceActionForExpression11: 8042512 false ) 
	#(174 3 #reduceActionForExpression11: 8042510 false ) 
	#(128 4 #reduceActionForLockTableStatement5: 2672645 false ) 
	#(128 4 #reduceActionForLockTableStatement5: 2672641 false ) 
	#(153 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6250498 false ) 
	#(150 4 #reduceActionForSelectQuery7: 6048775 false ) 
	#(155 0 #nil 6375425 false ) 
	#(154 1 #liftFirstValue: 6339586 false ) 
	#(172 2 #reduceActionFor_____semicolon__2: 7878658 false ) 
	#(171 3 #reduceActionForExpressionList2: 7817218 false ) 
	#(173 3 #reduceActionForNamedExpression3: 7919619 false ) 
	#(150 4 #reduceActionForSelectQuery7: 6048769 false ) 
	#(163 1 #reduceActionForStatements1: 7068673 false ) 
	#(137 4 #reduceActionForUpdateQuery1: 3815425 false ) 
	#(138 1 #reduceActionForStatements1: 4132865 false ) 
	#(121 4 #reduceActionForStatements2: 1181698 false ) 
	#(150 4 #reduceActionForSelectQuery14: 6048782 false ) 
	#(135 5 #reduceActionForCheckpointStatement2: 3574786 false ) 
	#(131 1 #reduceActionForStatements1: 3105793 false ) 
	#(164 4 #reduceActionForTable5: 7140357 false ) 
	#(166 0 #reduceActionFor__ON___onToken__Expression__on___1: 7483393 false ) 
	#(175 4 #reduceActionForCaseExpression3: 11095043 false ) 
	#(176 2 #reduceActionForElseExpression1: 11224065 false ) 
	#(175 4 #reduceActionForCaseExpression2: 11095042 false ) 
	#(174 4 #reduceActionForExpression45: 8042541 false ) 
	#(179 4 #reduceActionForFunctionExpression2: 11485186 false ) 
	#(174 4 #reduceActionForExpression40: 8042536 false ) 
	#(174 4 #reduceActionForExpression29: 8042525 false ) 
	#(174 4 #reduceActionForExpression33: 8042529 false ) 
	#(174 4 #reduceActionForExpression25: 8042521 false ) 
	#(174 4 #reduceActionForExpression52: 8042548 false ) 
	#(128 5 #reduceActionForLockTableStatement7: 2672647 false ) 
	#(128 5 #reduceActionForLockTableStatement6: 2672646 false ) 
	#(128 5 #reduceActionForLockTableStatement7: 2672643 false ) 
	#(128 5 #reduceActionForLockTableStatement6: 2672642 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6048777 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6048779 false ) 
	#(162 2 #reduceActionForFromTables1: 7021569 false ) 
	#(156 0 #nil 6405121 false ) 
	#(155 1 #liftFirstValue: 6375426 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6048771 false ) 
	#(150 5 #reduceActionForSelectQuery9: 6048773 false ) 
	#(137 5 #reduceActionForUpdateQuery4: 3815428 false ) 
	#(132 2 #reduceActionForParameter1: 3201025 false ) 
	#(130 3 #reduceActionForMacroArgs2: 3038210 false ) 
	#(164 5 #reduceActionForTable6: 7140358 false ) 
	#(166 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 7483394 false ) 
	#(164 5 #reduceActionForTable12: 7140364 false ) 
	#(164 5 #reduceActionForTable12: 7140363 false ) 
	#(164 5 #reduceActionForTable7: 7140359 false ) 
	#(164 5 #reduceActionForTable7: 7140361 false ) 
	#(178 4 #reduceActionForWhenExpression1: 11376641 false ) 
	#(175 5 #reduceActionForCaseExpression4: 11095044 false ) 
	#(174 5 #reduceActionForExpression39: 8042535 false ) 
	#(174 5 #reduceActionForExpression44: 8042540 false ) 
	#(174 5 #reduceActionForExpression35: 8042531 false ) 
	#(174 5 #reduceActionForExpression24: 8042520 false ) 
	#(174 5 #reduceActionForExpression54: 8042550 false ) 
	#(174 5 #reduceActionForExpression53: 8042549 false ) 
	#(140 6 #reduceActionForInsertQuery1: 4331521 false ) 
	#(128 6 #reduceActionForLockTableStatement8: 2672648 false ) 
	#(128 6 #reduceActionForLockTableStatement8: 2672644 false ) 
	#(127 6 #reduceActionForRollbackStatement1: 2533377 false ) 
	#(150 6 #reduceActionForSelectQuery8: 6048776 false ) 
	#(161 4 #reduceActionForIntoExpression1: 6926337 false ) 
	#(169 3 #reduceActionForGroupByExpression1: 7646209 false ) 
	#(160 3 #reduceActionForPartitionByExpression1: 6832129 false ) 
	#(159 2 #reduceActionForQualifyExpression1: 6753281 false ) 
	#(152 3 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: 6250497 false ) 
	#(156 1 #liftFirstValue: 6405122 false ) 
	#(157 2 #reduceActionForHavingExpression1: 6541313 false ) 
	#(150 6 #reduceActionForSelectQuery8: 6048770 false ) 
	#(163 3 #reduceActionForTableList2: 7068674 false ) 
	#(137 6 #reduceActionForUpdateQuery7: 3815431 false ) 
	#(139 3 #reduceActionForSetExpression1: 4252673 false ) 
	#(138 3 #reduceActionForTableList2: 4132866 false ) 
	#(137 6 #reduceActionForUpdateQuery3: 3815427 false ) 
	#(137 6 #reduceActionForUpdateQuery3: 3815426 false ) 
	#(158 4 #reduceActionForUnionSelectQuery1: 6623233 false ) 
	#(142 7 #reduceActionForLoadingStatement1: 4767745 false ) 
	#(131 3 #reduceActionForTableList2: 3105794 false ) 
	#(165 2 #reduceActionForWhereExpression1: 7483393 false ) 
	#(164 6 #reduceActionForTable8: 7140360 false ) 
	#(164 6 #reduceActionForTable8: 7140362 false ) 
	#(174 6 #reduceActionForExpression41: 8042537 false ) 
	#(174 6 #reduceActionForExpression51: 8042547 false ) 
	#(174 6 #reduceActionForExpression46: 8042542 false ) 
	#(174 6 #reduceActionForExpression46: 8042544 false ) 
	#(174 6 #reduceActionForExpression46: 8042543 false ) 
	#(133 4 #reduceActionForType2: 3255298 false ) 
	#(174 6 #reduceActionForExpression36: 8042532 false ) 
	#(174 6 #reduceActionForExpression26: 8042522 false ) 
	#(170 3 #reduceActionForOrderByExpression1: 7735297 false ) 
	#(174 6 #reduceActionForExpression55: 8042551 false ) 
	#(140 7 #reduceActionForInsertQuery5: 4331525 false ) 
	#(140 7 #reduceActionForInsertQuery3: 4331523 false ) 
	#(123 7 #reduceActionForMergeQuery1: 1687553 false ) 
	#(124 1 #reduceActionForWhenExpressions1: 1843201 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6048778 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6048780 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: 6250503 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: 6250500 false ) 
	#(152 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: 6250498 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6048772 false ) 
	#(150 7 #reduceActionForSelectQuery10: 6048774 false ) 
	#(144 7 #reduceActionForSetStatement1: 5378049 false ) 
	#(137 7 #reduceActionForUpdateQuery8: 3815432 false ) 
	#(137 7 #reduceActionForUpdateQuery6: 3815430 false ) 
	#(137 7 #reduceActionForUpdateQuery6: 3815429 false ) 
	#(174 7 #reduceActionForExpression32: 8042528 false ) 
	#(123 8 #reduceActionForMergeQuery2: 1687554 false ) 
	#(124 2 #reduceActionFor_____semicolon__2: 1843202 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: 6250506 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: 6250504 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: 6250501 false ) 
	#(152 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: 6250499 false ) 
	#(129 9 #reduceActionForCreateMacroStatement1: 2851841 false ) 
	#(174 8 #reduceActionForExpression42: 8042538 false ) 
	#(174 8 #reduceActionForExpression27: 8042523 false ) 
	#(133 6 #reduceActionForType3: 3255299 false ) 
	#(174 8 #reduceActionForExpression34: 8042530 false ) 
	#(140 9 #reduceActionForInsertQuery2: 4331522 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: 6250507 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: 6250505 false ) 
	#(152 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: 6250502 false ) 
	#(143 10 #reduceActionForCheckWorkloadStatement1: 5048321 false ) 
	#(174 9 #reduceActionForExpression37: 8042533 false ) 
	#(140 10 #reduceActionForInsertQuery4: 4331524 false ) 
	#(152 7 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: 6250508 false ) 
	#(174 10 #reduceActionForExpression38: 8042534 false ) 
	#(126 11 #reduceActionForWithRecursiveQuery1: 2277377 false ) 
	#(125 6 #reduceActionForWhenMergeCondition1: 1884161 false ) 
	#(125 8 #reduceActionForWhenMergeCondition2: 1884162 false ) 
	#(125 12 #reduceActionForWhenMergeCondition3: 1884163 false )
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
	^ #('"("' '")"' '"*"' '"+"' '","' '"-"' '"/"' '";"' '"<"' '"<="' '"<>"' '"="' '">"' '">="' '"ALL"' '"AND"' '"AS"' '"BEGIN"' '"BETWEEN"' '"BIGINT"' '"BOTH"' '"BT"' '"BY"' '"BYTEINT"' '"CASE"' '"CAST"' '"CHAR"' '"CHECK"' '"CHECKPOINT"' '"CLOB"' '"CREATE"' '"CROSS"' '"DATABASE"' '"DATE"' '"DECIMAL"' '"DEL"' '"DELETE"' '"DISTINCT"' '"DISTINCTROW"' '"DROP"' '"ELSE"' '"END"' '"ERRORFILES"' '"ESCAPE"' '"ET"' '"EXECUTE"' '"EXTRACT"' '"FLOAT"' '"FOR"' '"FORMAT"' '"FROM"' '"GROUP"' '"HAVING"' '"HELP"' '"IN"' '"INNER"' '"INSERT"' '"INTEGER"' '"INTERVAL"' '"INTO"' '"IS"' '"JOIN"' '"LEADING"' '"LEFT"' '"LIKE"' '"LOADING"' '"LOCK"' '"LOCKING"' '"MACRO"' '"MATCHED"' '"MERGE"' '"MOD"' '"NOT"' '"NULL"' '"NUMBER"' '"NUMERIC"' '"ON"' '"OR"' '"ORDER"' '"OUTER"' '"OVER"' '"PARTITION"' '"QUALIFY"' '"REAL"' '"RECURSIVE"' '"RIGHT"' '"ROLLBACK"' '"SEL"' '"SELECT"' '"SESSION"' '"SET"' '"SMALLINT"' '"SUBSTRING"' '"TABLE"' '"THEN"' '"TIME"' '"TIMESTAMP"' '"TOP"' '"TRAILING"' '"TRIM"' '"UNION"' '"UPDATE"' '"USING"' '"VALUES"' '"VARCHAR"' '"WHEN"' '"WHERE"' '"WITH"' '"WORK"' '"WORKLOAD"' '"||"' '<identifier>' '<variable>' '<string>' '<number>' '<whitespace>' '<comment>' 'B e g i n' 'File' '";" ''semicolon''*' 'Statements' 'Statement' 'MergeQuery' 'WhenMergeCondition ''whenMerge''+' 'WhenMergeCondition' 'WithRecursiveQuery' 'RollbackStatement' 'LockTableStatement' 'CreateMacroStatement' 'MacroArgs' 'ParameterList' 'Parameter' 'Type' 'TypeName' 'CheckpointStatement' 'DropTableQuery' 'UpdateQuery' 'SetExpressionList' 'SetExpression' 'InsertQuery' 'UsingStatement' 'LoadingStatement' 'CheckWorkloadStatement' 'SetStatement' 'HelpSessionStatement' 'TransactionStatement' 'DatabaseStatement' 'ExecuteStatement' 'DeleteQuery' 'SelectQuery' 'IntoExpression ''into''?' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)?' 'PartitionByExpression ''partition''?' 'QualifyExpression ''qualify''?' 'OrderByExpression ''orderBy''?' 'HavingExpression' 'UnionSelectQuery' 'QualifyExpression' 'PartitionByExpression' 'IntoExpression' 'FromTables' 'TableList' 'Table' '("ON" ''onToken'' Expression ''on'')' '("ON" ''onToken'' Expression ''on'')?' 'TableName' 'WhereExpression' 'GroupByExpression' 'OrderByExpression' 'ExpressionList' '"," ''comma''+' 'NamedExpression' 'Expression' 'CaseExpression' 'ElseExpression' 'WhenExpressions' 'WhenExpression' 'FunctionExpression' 'E O F' 'error')
]

{ #category : #generated }
TeradataParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #TeradataFileNode #TeradataFileNode #OrderedCollection #OrderedCollection #TeradataProgramNode #TeradataMergeQueryNode #OrderedCollection #TeradataWhenMergeConditionNode #TeradataRecursiveQueryNode #TeradataRollbackStatementNode #TeradataLockTableStatementNode #TeradataCreateMacroStatementNode #OrderedCollection #OrderedCollection #TeradataParameterNode #TeradataTypeNode #SmaCCToken #TeradataCheckpointStatementNode #TeradataDropTableQueryNode #TeradataUpdateQueryNode #OrderedCollection #TeradataSetExpressionNode #TeradataInsertQueryNode #TeradataUsingStatementNode #TeradataProgramNode #TeradataCheckWorkloadStatementNode #TeradataSetStatementNode #TeradataHelpSessionStatementNode #TeradataProgramNode #TeradataDatabaseStatementNode #TeradataExecuteStatementNode #TeradataDeleteQueryNode #TeradataProgramNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataPartitionByExpressionNode #TeradataQualifyExpressionNode #TeradataOrderByExpressionNode #TeradataHavingNode #OrderedCollection #TeradataQualifyExpressionNode #TeradataPartitionByExpressionNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataProgramNode #OrderedCollection #OrderedCollection #TeradataTableNode #OrderedCollection #TeradataGroupByNode #TeradataOrderByExpressionNode #OrderedCollection #OrderedCollection #TeradataExpressionNode #TeradataExpressionNode #TeradataCaseExpressionNode #TeradataElseExpressionNode #OrderedCollection #TeradataWhenExpressionNode #TeradataFunctionExpressionNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
TeradataParser class >> transitionTable [
^#(
#[1 0 6 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 0 105 0 119 0 109 0 120 0 113 0 121 0 117 0 122 0 117 0 123 0 117 0 126 0 117 0 127 0 117 0 128 0 117 0 129 0 117 0 135 0 117 0 136 0 117 0 137 0 117 0 140 0 117 0 141 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 193 0 150 0 6 0 180] 
#[0 0 197 0 66] 
#[0 0 10 0 2 0 8 0 180] 
#[0 0 201 0 110] 
#[0 0 205 0 66] 
#[0 0 209 0 69] 
#[0 0 213 0 112] 
#[1 0 217 0 1 0 221 0 51 0 225 0 112 0 229 0 164] 
#[1 0 217 0 1 0 233 0 51 0 225 0 112 0 237 0 164] 
#[0 0 241 0 94] 
#[0 0 245 0 66] 
#[0 0 14 0 2 0 8 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 53 0 174 1 53 0 175 1 53 0 179] 
#[0 1 65 0 90] 
#[1 1 69 0 60 1 73 0 112 1 77 0 167] 
#[1 1 81 0 94 1 73 0 112 1 85 0 167] 
#[1 1 89 0 94 1 73 0 112 1 93 0 167] 
#[1 0 217 0 1 1 97 0 60 0 225 0 112 1 101 0 164] 
#[0 1 105 0 109] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 109 0 38 1 113 0 39 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 117 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 121 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 133 0 38 1 137 0 39 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 141 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 145 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 1 149 0 112] 
#[1 1 73 0 112 1 153 0 167] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 1 157 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 1 161 0 85] 
#[0 0 0 0 180] 
#[1 1 165 0 8 0 18 0 180] 
#[1 0 6 0 8 1 169 0 120 0 6 0 180] 
#[0 0 22 0 2 0 8 0 180] 
#[0 0 26 0 2 0 8 0 180] 
#[0 0 30 0 2 0 8 0 180] 
#[0 0 34 0 2 0 8 0 180] 
#[0 0 38 0 2 0 8 0 180] 
#[0 0 42 0 2 0 8 0 180] 
#[0 0 46 0 2 0 8 0 180] 
#[0 0 50 0 2 0 8 0 180] 
#[0 0 54 0 2 0 8 0 180] 
#[0 0 58 0 2 0 8 0 180] 
#[0 0 62 0 2 0 8 0 180] 
#[0 0 66 0 2 0 8 0 180] 
#[0 0 70 0 2 0 8 0 180] 
#[0 0 74 0 2 0 8 0 180] 
#[0 0 78 0 2 0 8 0 180] 
#[0 0 82 0 2 0 8 0 180] 
#[0 0 86 0 2 0 8 0 180] 
#[0 0 90 0 2 0 8 0 180] 
#[0 0 94 0 2 0 8 0 180] 
#[1 0 98 0 2 0 98 0 8 1 173 0 101 0 98 0 180] 
#[1 1 73 0 112 1 177 0 167] 
#[1 1 181 0 42 1 185 0 49] 
#[0 1 189 0 59] 
#[0 1 193 0 112] 
#[0 0 102 0 2 0 8 0 180] 
#[1 0 81 0 88 0 85 0 89 1 197 0 150] 
#[1 0 217 0 1 0 225 0 112 1 201 0 164] 
#[1 0 106 0 2 0 106 0 5 0 106 0 8 0 106 0 15 1 205 0 17 0 106 0 32 0 106 0 52 0 106 0 56 0 106 0 64 0 106 0 77 0 106 0 79 0 106 0 82 0 106 0 83 0 106 0 86 0 106 0 91 0 106 0 101 0 106 0 103 0 106 0 107 1 209 0 112 0 106 0 180] 
#[1 0 110 0 2 0 110 0 8 1 213 0 15 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 1 233 0 107 1 237 0 168 0 110 0 180] 
#[1 0 217 0 1 0 225 0 112 1 241 0 164] 
#[1 0 114 0 2 0 114 0 8 1 245 0 15 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 1 233 0 107 1 249 0 168 0 114 0 180] 
#[1 1 73 0 112 1 253 0 167] 
#[0 0 118 0 2 0 8 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 1 0 150 2 5 0 174 2 5 0 175 2 5 0 179] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 9 0 174 2 9 0 175 2 9 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 2 13 0 106 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 17 0 174 2 17 0 175 2 21 0 177 2 25 0 178 2 17 0 179] 
#[0 2 29 0 1] 
#[0 2 33 0 1] 
#[0 2 37 0 114] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 41 0 174 2 41 0 175 2 41 0 179] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 2 45 0 1] 
#[0 2 49 0 1] 
#[1 0 7 0 1 0 130 0 2 0 130 0 3 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 22 0 130 0 28 0 130 0 29 0 130 0 31 0 130 0 32 0 130 0 33 0 130 0 36 0 130 0 37 0 130 0 40 0 130 0 41 0 130 0 42 0 130 0 44 0 130 0 45 0 130 0 46 0 130 0 49 0 130 0 51 0 130 0 52 0 130 0 53 0 130 0 54 0 130 0 55 0 130 0 56 0 130 0 57 0 130 0 60 0 130 0 61 0 130 0 64 0 130 0 65 0 130 0 67 0 130 0 68 0 130 0 71 0 130 0 72 0 130 0 73 0 130 0 77 0 130 0 78 0 130 0 79 0 130 0 81 0 130 0 82 0 130 0 83 0 130 0 86 0 130 0 87 0 130 0 88 0 130 0 89 0 130 0 91 0 130 0 95 0 130 0 101 0 130 0 102 0 130 0 103 0 130 0 106 0 130 0 107 0 130 0 108 0 130 0 111 0 130 0 112 0 130 0 180] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 2 57 0 1 0 146 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 0 146 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111 0 146 0 180] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 0 158 0 2 0 8 0 180] 
#[1 1 73 0 112 2 141 0 167] 
#[0 0 162 0 1 0 2 0 3 0 6 0 8 0 25 0 26 0 43 0 47 0 49 0 51 0 59 0 73 0 74 0 91 0 93 0 100 0 104 0 112 0 113 0 114 0 115 0 180] 
#[1 2 145 0 1 2 149 0 104] 
#[1 1 73 0 112 2 153 0 167] 
#[0 2 157 0 49] 
#[1 1 73 0 112 2 161 0 167] 
#[0 2 165 0 49] 
#[1 0 217 0 1 0 225 0 112 2 169 0 164] 
#[1 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 2 173 0 103] 
#[0 2 177 0 114] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 181 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 185 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 189 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 193 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 2 197 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 2 209 0 151 2 209 0 161 2 217 0 172 0 166 0 180] 
#[0 0 170 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 180] 
#[1 2 57 0 1 0 174 0 2 2 61 0 3 2 65 0 4 0 174 0 5 2 69 0 6 2 73 0 7 0 174 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 221 0 17 0 174 0 18 2 105 0 19 0 174 0 22 0 174 0 28 0 174 0 29 0 174 0 31 0 174 0 33 0 174 0 36 0 174 0 37 0 174 0 40 0 174 0 42 0 174 0 45 0 174 0 46 0 174 0 51 0 174 0 52 0 174 0 53 0 174 0 54 2 109 0 55 0 174 0 57 0 174 0 60 2 113 0 61 2 117 0 65 0 174 0 67 0 174 0 68 0 174 0 71 2 121 0 72 2 125 0 73 2 129 0 78 0 174 0 79 2 133 0 81 0 174 0 82 0 174 0 83 0 174 0 87 0 174 0 88 0 174 0 89 0 174 0 91 0 174 0 101 0 174 0 102 0 174 0 103 0 174 0 107 0 174 0 108 2 137 0 111 2 225 0 112 0 174 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 229 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 233 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 2 237 0 98 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 2 241 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 2 245 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 2 249 0 151 2 249 0 161 2 217 0 172 0 166 0 180] 
#[0 2 253 0 12] 
#[1 3 1 0 51 3 5 0 91] 
#[1 2 201 0 5 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 3 9 0 122 3 9 0 123 3 9 0 126 3 9 0 127 3 9 0 128 3 9 0 129 3 9 0 135 3 9 0 136 3 9 0 137 3 9 0 140 3 9 0 141 3 9 0 142 3 9 0 143 3 9 0 144 3 9 0 145 3 9 0 146 3 9 0 147 3 9 0 148 3 9 0 149 0 193 0 150 2 217 0 172] 
#[0 3 13 0 112] 
#[0 0 178 0 8 0 180] 
#[1 3 17 0 8 0 182 0 180] 
#[1 3 21 0 1 3 25 0 15 0 81 0 88 0 85 0 89 3 29 0 150 3 33 0 158] 
#[0 3 37 0 43] 
#[0 0 186 0 2 0 8 0 180] 
#[0 3 41 0 18] 
#[0 3 45 0 115] 
#[1 3 49 0 1 0 190 0 17 3 53 0 130] 
#[1 3 57 0 2 1 173 0 101] 
#[1 0 194 0 2 0 194 0 8 3 61 0 15 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 1 233 0 107 3 65 0 168 0 194 0 180] 
#[0 3 69 0 112] 
#[0 0 198 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 0 202 0 2 0 8 0 180] 
#[0 3 73 0 62] 
#[0 3 77 0 62] 
#[1 3 81 0 62 3 85 0 80] 
#[1 3 89 0 62 3 93 0 80] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 97 0 174 3 97 0 175 3 97 0 179] 
#[0 0 206 0 2 0 8 0 180] 
#[1 0 210 0 2 0 210 0 8 3 101 0 15 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 1 233 0 107 3 105 0 168 0 210 0 180] 
#[0 0 214 0 2 0 8 0 180] 
#[0 0 218 0 2 0 8 0 180] 
#[0 0 222 0 2 0 8 0 180] 
#[1 3 109 0 2 1 173 0 101] 
#[1 2 57 0 1 3 113 0 2 2 61 0 3 2 65 0 4 3 117 0 5 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 0 11 0 1 0 226 0 2 2 61 0 3 0 226 0 4 0 226 0 5 0 226 0 6 2 73 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 15 0 226 0 16 0 226 0 17 0 226 0 18 0 226 0 19 0 226 0 22 0 226 0 28 0 226 0 29 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 36 0 226 0 37 0 226 0 40 0 226 0 41 0 226 0 42 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 49 0 226 0 51 0 226 0 52 0 226 0 53 0 226 0 54 0 226 0 55 0 226 0 56 0 226 0 57 0 226 0 60 0 15 0 61 0 226 0 64 0 226 0 65 0 226 0 67 0 226 0 68 0 226 0 71 2 121 0 72 0 226 0 73 0 226 0 77 0 226 0 78 0 226 0 79 0 19 0 81 0 226 0 82 0 226 0 83 0 226 0 86 0 226 0 87 0 226 0 88 0 226 0 89 0 226 0 91 0 226 0 95 0 226 0 101 0 226 0 102 0 226 0 103 0 226 0 106 0 226 0 107 0 226 0 108 0 226 0 111 0 226 0 112 0 226 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 121 0 174 3 121 0 175 3 121 0 179] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 13 0 106 2 137 0 111 3 125 0 177 2 25 0 178] 
#[1 3 129 0 41 3 133 0 42 2 13 0 106 3 137 0 176 3 141 0 178] 
#[0 0 230 0 41 0 42 0 106] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 145 0 174 3 145 0 175 3 145 0 179] 
#[0 3 149 0 112] 
#[0 3 153 0 112] 
#[1 0 23 0 1 0 234 0 2 2 61 0 3 2 65 0 4 0 234 0 5 2 69 0 6 2 73 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 22 0 234 0 28 0 234 0 29 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 36 0 234 0 37 0 234 0 40 0 234 0 41 0 234 0 42 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 49 0 234 0 51 0 234 0 52 0 234 0 53 0 234 0 54 0 234 0 56 0 234 0 57 0 234 0 60 0 27 0 61 0 234 0 64 0 234 0 67 0 234 0 68 0 234 0 71 2 121 0 72 0 234 0 77 0 234 0 78 0 234 0 79 0 31 0 81 0 234 0 82 0 234 0 83 0 234 0 86 0 234 0 87 0 234 0 88 0 234 0 89 0 234 0 91 0 234 0 95 0 234 0 101 0 234 0 102 0 234 0 103 0 234 0 106 0 234 0 107 0 234 0 108 0 234 0 111 0 234 0 112 0 234 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 157 0 174 3 157 0 175 3 157 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 3 161 0 21 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 3 165 0 63 1 21 0 73 1 25 0 74 1 29 0 93 3 169 0 99 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 173 0 174 3 173 0 175 3 173 0 179] 
#[1 0 249 0 1 3 177 0 2 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 3 181 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 3 253 0 20 3 253 0 24 3 253 0 27 3 253 0 30 3 253 0 34 3 253 0 35 3 253 0 48 3 213 0 50 3 253 0 58 3 253 0 75 3 253 0 76 3 253 0 84 3 253 0 92 3 253 0 96 3 253 0 97 3 253 0 105 3 249 0 133 3 253 0 134] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 1 0 174 4 1 0 175 4 1 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 5 0 174 4 5 0 175 4 5 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 9 0 174 4 9 0 175 4 9 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 13 0 174 4 13 0 175 4 13 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 17 0 174 4 17 0 175 4 17 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 21 0 174 4 21 0 175 4 21 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 25 0 174 4 25 0 175 4 25 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 29 0 174 4 29 0 175 4 29 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 33 0 174 4 33 0 175 4 33 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 37 0 174 4 37 0 175 4 37 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 41 0 174 4 41 0 175 4 41 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 45 0 174 4 45 0 175 4 45 0 179] 
#[1 4 49 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 53 0 174 4 53 0 175 4 53 0 179] 
#[1 4 57 0 73 4 61 0 74] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 65 0 174 4 65 0 175 4 65 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 69 0 174 4 69 0 175 4 69 0 179] 
#[1 4 73 0 55 4 77 0 65] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 81 0 174 4 81 0 175 4 81 0 179] 
#[0 4 85 0 1] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 89 0 174 4 89 0 175 4 89 0 179] 
#[1 4 93 0 1 4 97 0 104] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 101 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 4 105 0 1] 
#[0 4 109 0 49] 
#[0 4 113 0 112] 
#[0 4 117 0 49] 
#[0 4 121 0 112] 
#[1 1 217 0 32 1 221 0 56 1 225 0 64 1 229 0 86 4 125 0 103] 
#[1 0 217 0 1 0 225 0 112 4 129 0 164] 
#[0 4 133 0 51] 
#[0 4 137 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 4 141 0 151 4 141 0 161 2 217 0 172 0 166 0 180] 
#[0 4 145 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 4 149 0 151 4 149 0 161 2 217 0 172 0 166 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 153 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 0 238 0 1 0 3 0 5 0 6 0 25 0 26 0 47 0 59 0 73 0 74 0 93 0 100 0 112 0 113 0 114 0 115] 
#[0 4 157 0 1] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 4 177 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[0 0 250 0 2 0 8 0 51 0 52 0 79 0 82 0 83 0 101 0 107 0 180] 
#[1 0 249 0 1 0 253 0 3 4 201 0 5 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 205 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 4 209 0 112] 
#[0 0 254 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 180] 
#[0 4 213 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 4 217 0 151 4 217 0 161 2 217 0 172 0 166 0 180] 
#[0 4 221 0 115] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 4 225 0 151 4 225 0 161 2 217 0 172 0 166 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 229 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 4 233 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 4 237 0 174 4 237 0 175 4 237 0 179] 
#[1 0 217 0 1 0 225 0 112 4 241 0 163 4 245 0 164] 
#[1 4 249 0 112 4 253 0 138 5 1 0 139] 
#[0 1 2 0 2 0 8 0 180] 
#[0 5 5 0 1] 
#[1 0 178 0 2 0 178 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 9 0 122 5 9 0 123 5 9 0 126 5 9 0 127 5 9 0 128 5 9 0 129 5 9 0 135 5 9 0 136 5 9 0 137 5 9 0 140 5 9 0 141 5 9 0 142 5 9 0 143 5 9 0 144 5 9 0 145 5 9 0 146 5 9 0 147 5 9 0 148 5 9 0 149 0 193 0 150 0 178 0 180] 
#[1 0 81 0 88 0 85 0 89 5 13 0 150] 
#[1 3 21 0 1 0 81 0 88 0 85 0 89 3 29 0 150 5 17 0 158] 
#[1 1 6 0 2 1 6 0 8 1 173 0 101 1 6 0 180] 
#[0 1 10 0 2 0 8 0 101 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 21 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 5 25 0 66] 
#[1 1 14 0 2 1 14 0 8 5 29 0 42 1 14 0 180] 
#[1 5 33 0 112 5 37 0 131 5 41 0 132] 
#[0 5 45 0 17] 
#[1 1 18 0 2 1 18 0 5 1 18 0 8 1 18 0 15 5 49 0 17 1 18 0 32 1 18 0 52 1 18 0 56 1 18 0 64 1 18 0 77 1 18 0 79 1 18 0 82 1 18 0 83 1 18 0 86 1 18 0 91 1 18 0 101 1 18 0 103 1 18 0 107 5 53 0 112 1 18 0 180] 
#[0 1 22 0 2 0 8 0 180] 
#[0 1 26 0 2 0 8 0 180] 
#[0 1 30 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[1 0 217 0 1 0 225 0 112 5 57 0 164] 
#[1 0 217 0 1 0 225 0 112 5 61 0 164] 
#[1 0 217 0 1 0 225 0 112 5 65 0 164] 
#[0 5 69 0 62] 
#[1 0 217 0 1 0 225 0 112 5 73 0 164] 
#[0 5 77 0 62] 
#[1 2 57 0 1 1 34 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 1 34 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 1 34 0 41 1 34 0 52 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 1 34 0 79 2 133 0 81 1 34 0 82 1 34 0 83 1 34 0 101 2 137 0 111 1 34 0 180] 
#[0 1 38 0 2 0 8 0 180] 
#[0 1 42 0 2 0 8 0 180] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 81 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 5 85 0 95 2 137 0 111] 
#[1 3 129 0 41 5 89 0 42 2 13 0 106 5 93 0 176 3 141 0 178] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 97 0 174 5 97 0 175 5 97 0 179] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 5 101 0 42] 
#[0 1 58 0 41 0 42 0 106] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 5 105 0 17 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 5 109 0 51] 
#[0 1 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 5 113 0 51 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 5 117 0 51] 
#[0 5 121 0 51] 
#[0 5 125 0 51] 
#[1 2 57 0 1 5 129 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 5 133 0 2 2 201 0 5 2 217 0 172] 
#[0 1 70 0 1 0 2 0 5 0 50] 
#[0 1 74 0 1 0 2 0 5 0 50] 
#[0 1 78 0 1 0 2 0 5 0 50] 
#[0 1 82 0 1 0 2 0 5 0 50] 
#[0 1 86 0 1 0 2 0 5 0 50] 
#[0 1 90 0 1 0 2 0 5 0 50] 
#[0 1 94 0 1 0 2 0 5 0 50] 
#[0 5 137 0 114] 
#[0 1 98 0 1 0 2 0 5 0 50] 
#[0 1 102 0 1 0 2 0 5 0 50] 
#[0 1 106 0 1 0 2 0 5 0 50] 
#[0 1 110 0 1 0 2 0 5 0 50] 
#[0 1 114 0 1 0 2 0 5 0 50] 
#[0 1 118 0 1 0 2 0 5 0 50] 
#[0 1 122 0 1 0 2 0 5 0 50] 
#[0 1 126 0 1 0 2 0 5 0 50] 
#[0 5 141 0 2] 
#[1 5 145 0 1 1 130 0 2 1 130 0 5 1 130 0 50] 
#[1 0 39 0 1 1 134 0 2 1 134 0 3 1 134 0 4 1 134 0 5 1 134 0 6 1 134 0 7 1 134 0 8 1 134 0 9 1 134 0 10 1 134 0 11 1 134 0 12 1 134 0 13 1 134 0 14 1 134 0 15 1 134 0 16 1 134 0 17 1 134 0 18 1 134 0 19 1 134 0 22 1 134 0 28 1 134 0 29 1 134 0 31 1 134 0 32 1 134 0 33 1 134 0 36 1 134 0 37 1 134 0 40 1 134 0 41 1 134 0 42 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 49 1 134 0 51 1 134 0 52 1 134 0 53 1 134 0 54 1 134 0 55 1 134 0 56 1 134 0 57 1 134 0 60 0 43 0 61 1 134 0 64 1 134 0 65 1 134 0 67 1 134 0 68 1 134 0 71 1 134 0 72 1 134 0 73 1 134 0 77 1 134 0 78 1 134 0 79 0 47 0 81 1 134 0 82 1 134 0 83 1 134 0 86 1 134 0 87 1 134 0 88 1 134 0 89 1 134 0 91 1 134 0 95 1 134 0 101 1 134 0 102 1 134 0 103 1 134 0 106 1 134 0 107 1 134 0 108 1 134 0 111 1 134 0 112 1 134 0 180] 
#[1 0 51 0 1 1 138 0 2 2 61 0 3 1 138 0 4 1 138 0 5 1 138 0 6 2 73 0 7 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 11 1 138 0 12 1 138 0 13 1 138 0 14 1 138 0 15 1 138 0 16 1 138 0 17 1 138 0 18 1 138 0 19 1 138 0 22 1 138 0 28 1 138 0 29 1 138 0 31 1 138 0 32 1 138 0 33 1 138 0 36 1 138 0 37 1 138 0 40 1 138 0 41 1 138 0 42 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 49 1 138 0 51 1 138 0 52 1 138 0 53 1 138 0 54 1 138 0 55 1 138 0 56 1 138 0 57 1 138 0 60 0 55 0 61 1 138 0 64 1 138 0 65 1 138 0 67 1 138 0 68 1 138 0 71 2 121 0 72 1 138 0 73 1 138 0 77 1 138 0 78 1 138 0 79 0 59 0 81 1 138 0 82 1 138 0 83 1 138 0 86 1 138 0 87 1 138 0 88 1 138 0 89 1 138 0 91 1 138 0 95 1 138 0 101 1 138 0 102 1 138 0 103 1 138 0 106 1 138 0 107 1 138 0 108 1 138 0 111 1 138 0 112 1 138 0 180] 
#[1 0 63 0 1 1 142 0 2 2 61 0 3 1 142 0 4 1 142 0 5 1 142 0 6 2 73 0 7 1 142 0 8 1 142 0 9 1 142 0 10 1 142 0 11 1 142 0 12 1 142 0 13 1 142 0 14 1 142 0 15 1 142 0 16 1 142 0 17 1 142 0 18 1 142 0 19 1 142 0 22 1 142 0 28 1 142 0 29 1 142 0 31 1 142 0 32 1 142 0 33 1 142 0 36 1 142 0 37 1 142 0 40 1 142 0 41 1 142 0 42 1 142 0 44 1 142 0 45 1 142 0 46 1 142 0 49 1 142 0 51 1 142 0 52 1 142 0 53 1 142 0 54 1 142 0 55 1 142 0 56 1 142 0 57 1 142 0 60 0 67 0 61 1 142 0 64 1 142 0 65 1 142 0 67 1 142 0 68 1 142 0 71 2 121 0 72 1 142 0 73 1 142 0 77 1 142 0 78 1 142 0 79 0 71 0 81 1 142 0 82 1 142 0 83 1 142 0 86 1 142 0 87 1 142 0 88 1 142 0 89 1 142 0 91 1 142 0 95 1 142 0 101 1 142 0 102 1 142 0 103 1 142 0 106 1 142 0 107 1 142 0 108 1 142 0 111 1 142 0 112 1 142 0 180] 
#[1 0 75 0 1 1 146 0 2 1 146 0 3 1 146 0 4 1 146 0 5 1 146 0 6 1 146 0 7 1 146 0 8 1 146 0 9 1 146 0 10 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 17 1 146 0 18 1 146 0 19 1 146 0 22 1 146 0 28 1 146 0 29 1 146 0 31 1 146 0 32 1 146 0 33 1 146 0 36 1 146 0 37 1 146 0 40 1 146 0 41 1 146 0 42 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 49 1 146 0 51 1 146 0 52 1 146 0 53 1 146 0 54 1 146 0 55 1 146 0 56 1 146 0 57 1 146 0 60 0 79 0 61 1 146 0 64 1 146 0 65 1 146 0 67 1 146 0 68 1 146 0 71 1 146 0 72 1 146 0 73 1 146 0 77 1 146 0 78 1 146 0 79 0 83 0 81 1 146 0 82 1 146 0 83 1 146 0 86 1 146 0 87 1 146 0 88 1 146 0 89 1 146 0 91 1 146 0 95 1 146 0 101 1 146 0 102 1 146 0 103 1 146 0 106 1 146 0 107 1 146 0 108 1 146 0 111 1 146 0 112 1 146 0 180] 
#[1 0 87 0 1 1 150 0 2 2 61 0 3 2 65 0 4 1 150 0 5 2 69 0 6 2 73 0 7 1 150 0 8 1 150 0 15 1 150 0 16 1 150 0 17 1 150 0 18 1 150 0 22 1 150 0 28 1 150 0 29 1 150 0 31 1 150 0 32 1 150 0 33 1 150 0 36 1 150 0 37 1 150 0 40 1 150 0 41 1 150 0 42 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 49 1 150 0 51 1 150 0 52 1 150 0 53 1 150 0 54 2 109 0 55 1 150 0 56 1 150 0 57 1 150 0 60 0 91 0 61 1 150 0 64 2 117 0 65 1 150 0 67 1 150 0 68 1 150 0 71 2 121 0 72 2 125 0 73 1 150 0 77 1 150 0 78 1 150 0 79 0 95 0 81 1 150 0 82 1 150 0 83 1 150 0 86 1 150 0 87 1 150 0 88 1 150 0 89 1 150 0 91 1 150 0 95 1 150 0 101 1 150 0 102 1 150 0 103 1 150 0 106 1 150 0 107 1 150 0 108 2 137 0 111 1 150 0 112 1 150 0 180] 
#[1 0 99 0 1 1 154 0 2 2 61 0 3 2 65 0 4 1 154 0 5 2 69 0 6 2 73 0 7 1 154 0 8 1 154 0 15 1 154 0 16 1 154 0 17 1 154 0 18 1 154 0 22 1 154 0 28 1 154 0 29 1 154 0 31 1 154 0 32 1 154 0 33 1 154 0 36 1 154 0 37 1 154 0 40 1 154 0 41 1 154 0 42 1 154 0 44 1 154 0 45 1 154 0 46 1 154 0 49 1 154 0 51 1 154 0 52 1 154 0 53 1 154 0 54 2 109 0 55 1 154 0 56 1 154 0 57 1 154 0 60 0 103 0 61 1 154 0 64 2 117 0 65 1 154 0 67 1 154 0 68 1 154 0 71 2 121 0 72 2 125 0 73 1 154 0 77 1 154 0 78 1 154 0 79 0 107 0 81 1 154 0 82 1 154 0 83 1 154 0 86 1 154 0 87 1 154 0 88 1 154 0 89 1 154 0 91 1 154 0 95 1 154 0 101 1 154 0 102 1 154 0 103 1 154 0 106 1 154 0 107 1 154 0 108 2 137 0 111 1 154 0 112 1 154 0 180] 
#[1 0 111 0 1 1 158 0 2 2 61 0 3 2 65 0 4 1 158 0 5 2 69 0 6 2 73 0 7 1 158 0 8 1 158 0 15 1 158 0 16 1 158 0 17 1 158 0 18 1 158 0 22 1 158 0 28 1 158 0 29 1 158 0 31 1 158 0 32 1 158 0 33 1 158 0 36 1 158 0 37 1 158 0 40 1 158 0 41 1 158 0 42 1 158 0 44 1 158 0 45 1 158 0 46 1 158 0 49 1 158 0 51 1 158 0 52 1 158 0 53 1 158 0 54 2 109 0 55 1 158 0 56 1 158 0 57 1 158 0 60 0 115 0 61 1 158 0 64 2 117 0 65 1 158 0 67 1 158 0 68 1 158 0 71 2 121 0 72 2 125 0 73 1 158 0 77 1 158 0 78 1 158 0 79 0 119 0 81 1 158 0 82 1 158 0 83 1 158 0 86 1 158 0 87 1 158 0 88 1 158 0 89 1 158 0 91 1 158 0 95 1 158 0 101 1 158 0 102 1 158 0 103 1 158 0 106 1 158 0 107 1 158 0 108 2 137 0 111 1 158 0 112 1 158 0 180] 
#[1 0 123 0 1 1 162 0 2 2 61 0 3 2 65 0 4 1 162 0 5 2 69 0 6 2 73 0 7 1 162 0 8 1 162 0 15 1 162 0 16 1 162 0 17 1 162 0 18 1 162 0 22 1 162 0 28 1 162 0 29 1 162 0 31 1 162 0 32 1 162 0 33 1 162 0 36 1 162 0 37 1 162 0 40 1 162 0 41 1 162 0 42 1 162 0 44 1 162 0 45 1 162 0 46 1 162 0 49 1 162 0 51 1 162 0 52 1 162 0 53 1 162 0 54 2 109 0 55 1 162 0 56 1 162 0 57 1 162 0 60 0 127 0 61 1 162 0 64 2 117 0 65 1 162 0 67 1 162 0 68 1 162 0 71 2 121 0 72 2 125 0 73 1 162 0 77 1 162 0 78 1 162 0 79 0 131 0 81 1 162 0 82 1 162 0 83 1 162 0 86 1 162 0 87 1 162 0 88 1 162 0 89 1 162 0 91 1 162 0 95 1 162 0 101 1 162 0 102 1 162 0 103 1 162 0 106 1 162 0 107 1 162 0 108 2 137 0 111 1 162 0 112 1 162 0 180] 
#[1 0 135 0 1 1 166 0 2 2 61 0 3 2 65 0 4 1 166 0 5 2 69 0 6 2 73 0 7 1 166 0 8 1 166 0 15 1 166 0 16 1 166 0 17 1 166 0 18 1 166 0 22 1 166 0 28 1 166 0 29 1 166 0 31 1 166 0 32 1 166 0 33 1 166 0 36 1 166 0 37 1 166 0 40 1 166 0 41 1 166 0 42 1 166 0 44 1 166 0 45 1 166 0 46 1 166 0 49 1 166 0 51 1 166 0 52 1 166 0 53 1 166 0 54 2 109 0 55 1 166 0 56 1 166 0 57 1 166 0 60 0 139 0 61 1 166 0 64 2 117 0 65 1 166 0 67 1 166 0 68 1 166 0 71 2 121 0 72 2 125 0 73 1 166 0 77 1 166 0 78 1 166 0 79 0 143 0 81 1 166 0 82 1 166 0 83 1 166 0 86 1 166 0 87 1 166 0 88 1 166 0 89 1 166 0 91 1 166 0 95 1 166 0 101 1 166 0 102 1 166 0 103 1 166 0 106 1 166 0 107 1 166 0 108 2 137 0 111 1 166 0 112 1 166 0 180] 
#[1 0 147 0 1 1 170 0 2 2 61 0 3 2 65 0 4 1 170 0 5 2 69 0 6 2 73 0 7 1 170 0 8 1 170 0 15 1 170 0 16 1 170 0 17 1 170 0 18 1 170 0 22 1 170 0 28 1 170 0 29 1 170 0 31 1 170 0 32 1 170 0 33 1 170 0 36 1 170 0 37 1 170 0 40 1 170 0 41 1 170 0 42 1 170 0 44 1 170 0 45 1 170 0 46 1 170 0 49 1 170 0 51 1 170 0 52 1 170 0 53 1 170 0 54 2 109 0 55 1 170 0 56 1 170 0 57 1 170 0 60 0 151 0 61 1 170 0 64 2 117 0 65 1 170 0 67 1 170 0 68 1 170 0 71 2 121 0 72 2 125 0 73 1 170 0 77 1 170 0 78 1 170 0 79 0 155 0 81 1 170 0 82 1 170 0 83 1 170 0 86 1 170 0 87 1 170 0 88 1 170 0 89 1 170 0 91 1 170 0 95 1 170 0 101 1 170 0 102 1 170 0 103 1 170 0 106 1 170 0 107 1 170 0 108 2 137 0 111 1 170 0 112 1 170 0 180] 
#[1 0 159 0 1 1 174 0 2 2 61 0 3 2 65 0 4 1 174 0 5 2 69 0 6 2 73 0 7 1 174 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 1 174 0 15 1 174 0 16 1 174 0 17 1 174 0 18 2 105 0 19 1 174 0 22 1 174 0 28 1 174 0 29 1 174 0 31 1 174 0 32 1 174 0 33 1 174 0 36 1 174 0 37 1 174 0 40 1 174 0 41 1 174 0 42 1 174 0 44 1 174 0 45 1 174 0 46 1 174 0 49 1 174 0 51 1 174 0 52 1 174 0 53 1 174 0 54 2 109 0 55 1 174 0 56 1 174 0 57 1 174 0 60 0 163 0 61 1 174 0 64 2 117 0 65 1 174 0 67 1 174 0 68 1 174 0 71 2 121 0 72 2 125 0 73 1 174 0 77 1 174 0 78 1 174 0 79 0 167 0 81 1 174 0 82 1 174 0 83 1 174 0 86 1 174 0 87 1 174 0 88 1 174 0 89 1 174 0 91 1 174 0 95 1 174 0 101 1 174 0 102 1 174 0 103 1 174 0 106 1 174 0 107 1 174 0 108 2 137 0 111 1 174 0 112 1 174 0 180] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 5 149 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 153 0 150 5 157 0 174 5 157 0 175 5 157 0 179] 
#[1 0 171 0 1 1 178 0 2 2 61 0 3 2 65 0 4 1 178 0 5 2 69 0 6 2 73 0 7 1 178 0 8 1 178 0 9 1 178 0 10 1 178 0 11 1 178 0 12 1 178 0 13 1 178 0 14 1 178 0 15 1 178 0 16 1 178 0 17 1 178 0 18 1 178 0 19 1 178 0 22 1 178 0 28 1 178 0 29 1 178 0 31 1 178 0 32 1 178 0 33 1 178 0 36 1 178 0 37 1 178 0 40 1 178 0 41 1 178 0 42 1 178 0 44 1 178 0 45 1 178 0 46 1 178 0 49 1 178 0 51 1 178 0 52 1 178 0 53 1 178 0 54 1 178 0 56 1 178 0 57 1 178 0 60 0 175 0 61 1 178 0 64 1 178 0 67 1 178 0 68 1 178 0 71 2 121 0 72 1 178 0 77 1 178 0 78 1 178 0 79 0 179 0 81 1 178 0 82 1 178 0 83 1 178 0 86 1 178 0 87 1 178 0 88 1 178 0 89 1 178 0 91 1 178 0 95 1 178 0 101 1 178 0 102 1 178 0 103 1 178 0 106 1 178 0 107 1 178 0 108 1 178 0 111 1 178 0 112 1 178 0 180] 
#[0 5 161 0 74] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 183 0 1 1 186 0 2 2 61 0 3 2 65 0 4 1 186 0 5 2 69 0 6 2 73 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 22 1 186 0 28 1 186 0 29 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 36 1 186 0 37 1 186 0 40 1 186 0 41 1 186 0 42 0 187 0 44 1 186 0 45 1 186 0 46 1 186 0 49 1 186 0 51 1 186 0 52 1 186 0 53 1 186 0 54 1 186 0 56 1 186 0 57 1 186 0 60 0 191 0 61 1 186 0 64 1 186 0 67 1 186 0 68 1 186 0 71 2 121 0 72 1 186 0 77 1 186 0 78 1 186 0 79 0 195 0 81 1 186 0 82 1 186 0 83 1 186 0 86 1 186 0 87 1 186 0 88 1 186 0 89 1 186 0 91 1 186 0 95 1 186 0 101 1 186 0 102 1 186 0 103 1 186 0 106 1 186 0 107 1 186 0 108 1 186 0 111 1 186 0 112 1 186 0 180] 
#[1 0 199 0 1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 5 1 190 0 6 1 190 0 7 1 190 0 8 1 190 0 9 1 190 0 10 1 190 0 11 1 190 0 12 1 190 0 13 1 190 0 14 1 190 0 15 1 190 0 16 1 190 0 17 1 190 0 18 1 190 0 19 1 190 0 22 1 190 0 28 1 190 0 29 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 36 1 190 0 37 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 44 1 190 0 45 1 190 0 46 1 190 0 49 1 190 0 51 1 190 0 52 1 190 0 53 1 190 0 54 1 190 0 55 1 190 0 56 1 190 0 57 1 190 0 60 0 203 0 61 1 190 0 64 1 190 0 65 1 190 0 67 1 190 0 68 1 190 0 71 1 190 0 72 1 190 0 73 1 190 0 77 1 190 0 78 1 190 0 79 0 207 0 81 1 190 0 82 1 190 0 83 1 190 0 86 1 190 0 87 1 190 0 88 1 190 0 89 1 190 0 91 1 190 0 95 1 190 0 101 1 190 0 102 1 190 0 103 1 190 0 106 1 190 0 107 1 190 0 108 1 190 0 111 1 190 0 112 1 190 0 180] 
#[1 5 169 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 173 0 174 5 173 0 175 5 173 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 177 0 174 5 177 0 175 5 177 0 179] 
#[1 0 211 0 1 1 194 0 2 2 61 0 3 2 65 0 4 1 194 0 5 2 69 0 6 2 73 0 7 1 194 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 1 194 0 15 2 101 0 16 1 194 0 17 1 194 0 18 2 105 0 19 1 194 0 22 1 194 0 28 1 194 0 29 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 36 1 194 0 37 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 49 1 194 0 51 1 194 0 52 1 194 0 53 1 194 0 54 2 109 0 55 1 194 0 56 1 194 0 57 1 194 0 60 0 215 0 61 1 194 0 64 2 117 0 65 1 194 0 67 1 194 0 68 1 194 0 71 2 121 0 72 2 125 0 73 1 194 0 77 1 194 0 78 1 194 0 79 0 219 0 81 1 194 0 82 1 194 0 83 1 194 0 86 1 194 0 87 1 194 0 88 1 194 0 89 1 194 0 91 1 194 0 95 1 194 0 101 1 194 0 102 1 194 0 103 1 194 0 106 1 194 0 107 1 194 0 108 2 137 0 111 1 194 0 112 1 194 0 180] 
#[1 5 181 0 2 5 185 0 79 4 169 0 82 5 189 0 160 5 193 0 170] 
#[1 0 223 0 1 1 198 0 2 2 61 0 3 2 65 0 4 1 198 0 5 2 69 0 6 2 73 0 7 1 198 0 8 1 198 0 9 1 198 0 10 1 198 0 11 1 198 0 12 1 198 0 13 1 198 0 14 1 198 0 15 1 198 0 16 1 198 0 17 1 198 0 18 1 198 0 19 1 198 0 22 1 198 0 28 1 198 0 29 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 36 1 198 0 37 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 44 1 198 0 45 1 198 0 46 1 198 0 49 1 198 0 51 1 198 0 52 1 198 0 53 1 198 0 54 2 109 0 55 1 198 0 56 1 198 0 57 1 198 0 60 0 227 0 61 1 198 0 64 2 117 0 65 1 198 0 67 1 198 0 68 1 198 0 71 2 121 0 72 2 125 0 73 1 198 0 77 1 198 0 78 1 198 0 79 0 231 0 81 1 198 0 82 1 198 0 83 1 198 0 86 1 198 0 87 1 198 0 88 1 198 0 89 1 198 0 91 1 198 0 95 1 198 0 101 1 198 0 102 1 198 0 103 1 198 0 106 1 198 0 107 1 198 0 108 1 198 0 111 1 198 0 112 1 198 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 197 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 5 201 0 1] 
#[1 5 205 0 2 2 201 0 5 2 217 0 172] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 209 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 5 213 0 112] 
#[1 1 202 0 2 1 202 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 217 0 122 5 217 0 123 5 217 0 126 5 217 0 127 5 217 0 128 5 217 0 129 5 217 0 135 5 217 0 136 5 217 0 137 5 217 0 140 5 217 0 141 5 217 0 142 5 217 0 143 5 217 0 144 5 217 0 145 5 217 0 146 5 217 0 147 5 217 0 148 5 217 0 149 0 193 0 150 1 202 0 180] 
#[0 5 221 0 112] 
#[1 1 206 0 2 1 206 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 5 225 0 122 5 225 0 123 5 225 0 126 5 225 0 127 5 225 0 128 5 225 0 129 5 225 0 135 5 225 0 136 5 225 0 137 5 225 0 140 5 225 0 141 5 225 0 142 5 225 0 143 5 225 0 144 5 225 0 145 5 225 0 146 5 225 0 147 5 225 0 148 5 225 0 149 0 193 0 150 1 206 0 180] 
#[1 0 217 0 1 0 225 0 112 5 229 0 164] 
#[1 1 217 0 32 1 221 0 56 1 225 0 64 5 233 0 77 1 229 0 86] 
#[1 0 217 0 1 0 225 0 112 5 237 0 163 4 245 0 164] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 241 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 5 245 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 5 249 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 5 253 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 6 1 0 151 6 1 0 161 2 217 0 172 0 166 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 5 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 217 0 1 0 225 0 112 6 9 0 163 4 245 0 164] 
#[0 6 13 0 23] 
#[0 6 17 0 23] 
#[0 1 210 0 2 0 8 0 101 0 180] 
#[0 1 214 0 2 0 8 0 101 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 6 25 0 155 6 25 0 159 1 218 0 180] 
#[0 1 222 0 2 0 8 0 79 0 83 0 101 0 180] 
#[1 0 246 0 2 0 246 0 8 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 1 233 0 107 6 33 0 154 6 33 0 160 6 37 0 168 6 41 0 169 0 246 0 180] 
#[1 0 246 0 2 0 246 0 8 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 6 45 0 154 6 45 0 160 6 49 0 169 0 246 0 180] 
#[1 0 246 0 2 0 246 0 8 6 53 0 53 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 6 57 0 154 6 61 0 157 6 57 0 160 0 246 0 180] 
#[0 1 226 0 1 0 3 0 5 0 6 0 25 0 26 0 47 0 59 0 73 0 74 0 93 0 100 0 112 0 113 0 114 0 115] 
#[0 1 230 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 180] 
#[0 1 234 0 2 0 5 0 8 0 18 0 22 0 28 0 29 0 31 0 33 0 36 0 37 0 40 0 42 0 45 0 46 0 51 0 52 0 53 0 54 0 57 0 60 0 67 0 68 0 71 0 79 0 82 0 83 0 87 0 88 0 89 0 91 0 101 0 102 0 103 0 107 0 108 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 65 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 6 69 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 73 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 6 77 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 6 81 0 151 6 81 0 161 2 217 0 172 0 166 0 180] 
#[0 1 238 0 2 0 8 0 101 0 180] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 6 85 0 102 2 137 0 111] 
#[1 6 89 0 5 6 93 0 91] 
#[1 1 242 0 2 1 242 0 5 1 242 0 8 1 217 0 32 1 242 0 52 1 221 0 56 1 225 0 64 1 242 0 79 1 242 0 82 1 242 0 83 1 229 0 86 1 242 0 91 1 242 0 101 1 242 0 107 1 242 0 180] 
#[0 6 97 0 12] 
#[1 1 246 0 2 6 101 0 5 1 246 0 8 6 105 0 41 1 233 0 107 6 109 0 168 1 246 0 180] 
#[0 1 250 0 2 0 5 0 8 0 41 0 106 0 107 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 113 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 1 254 0 2 0 8 0 180] 
#[1 6 117 0 2 1 173 0 101] 
#[0 2 2 0 2 0 8 0 101 0 180] 
#[1 2 201 0 5 6 121 0 108 2 217 0 172] 
#[0 6 125 0 112] 
#[0 2 6 0 2 0 8 0 180] 
#[1 3 253 0 20 3 253 0 24 3 253 0 27 3 253 0 30 3 253 0 34 3 253 0 35 3 253 0 48 3 253 0 58 3 253 0 75 3 253 0 76 3 253 0 84 3 253 0 92 3 253 0 96 3 253 0 97 3 253 0 105 6 129 0 133 3 253 0 134] 
#[1 6 133 0 2 6 137 0 5] 
#[0 2 10 0 2 0 5] 
#[0 6 141 0 1] 
#[0 6 145 0 112] 
#[0 2 14 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 6 157 0 166 2 18 0 180] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 6 161 0 166 2 18 0 180] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 6 165 0 166 2 18 0 180] 
#[1 0 217 0 1 0 225 0 112 6 169 0 164] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 6 173 0 166 2 18 0 180] 
#[1 0 217 0 1 0 225 0 112 6 177 0 164] 
#[1 6 181 0 2 2 201 0 5 2 217 0 172] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 185 0 174 6 185 0 175 6 185 0 179] 
#[0 2 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 6 189 0 42] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 26 0 42 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 2 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 3 253 0 20 3 253 0 24 3 253 0 27 3 253 0 30 3 253 0 34 3 253 0 35 3 253 0 48 3 253 0 58 3 253 0 75 3 253 0 76 3 253 0 84 3 253 0 92 3 253 0 96 3 253 0 97 3 253 0 105 6 193 0 133 3 253 0 134] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 197 0 174 6 197 0 175 6 197 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 201 0 174 6 201 0 175 6 201 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 205 0 174 6 205 0 175 6 205 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 209 0 174 6 209 0 175 6 209 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 213 0 174 6 213 0 175 6 213 0 179] 
#[0 2 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 2 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 6 217 0 2] 
#[0 2 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 6 221 0 115] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 225 0 174 6 225 0 175 6 225 0 179] 
#[1 6 229 0 2 1 173 0 101] 
#[1 2 57 0 1 3 113 0 2 2 61 0 3 2 65 0 4 6 233 0 5 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 2 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 237 0 174 6 237 0 175 6 237 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 0 81 0 88 0 85 0 89 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 6 241 0 150 6 245 0 174 6 245 0 175 6 245 0 179] 
#[1 0 255 0 1 2 50 0 2 2 61 0 3 2 65 0 4 2 50 0 5 2 69 0 6 2 73 0 7 2 50 0 8 2 50 0 9 2 50 0 10 2 50 0 11 2 50 0 12 2 50 0 13 2 50 0 14 2 50 0 15 2 50 0 16 2 50 0 17 2 50 0 18 2 50 0 19 2 50 0 22 2 50 0 28 2 50 0 29 2 50 0 31 2 50 0 32 2 50 0 33 2 50 0 36 2 50 0 37 2 50 0 40 2 50 0 41 2 50 0 42 2 50 0 44 2 50 0 45 2 50 0 46 2 50 0 49 2 50 0 51 2 50 0 52 2 50 0 53 2 50 0 54 2 50 0 56 2 50 0 57 2 50 0 60 1 3 0 61 2 50 0 64 2 50 0 67 2 50 0 68 2 50 0 71 2 121 0 72 2 50 0 77 2 50 0 78 2 50 0 79 1 7 0 81 2 50 0 82 2 50 0 83 2 50 0 86 2 50 0 87 2 50 0 88 2 50 0 89 2 50 0 91 2 50 0 95 2 50 0 101 2 50 0 102 2 50 0 103 2 50 0 106 2 50 0 107 2 50 0 108 2 50 0 111 2 50 0 112 2 50 0 180] 
#[1 1 11 0 1 2 54 0 2 2 61 0 3 2 65 0 4 2 54 0 5 2 69 0 6 2 73 0 7 2 54 0 8 2 54 0 9 2 54 0 10 2 54 0 11 2 54 0 12 2 54 0 13 2 54 0 14 2 54 0 15 2 54 0 16 2 54 0 17 2 54 0 18 2 54 0 19 2 54 0 22 2 54 0 28 2 54 0 29 2 54 0 31 2 54 0 32 2 54 0 33 2 54 0 36 2 54 0 37 2 54 0 40 2 54 0 41 2 54 0 42 1 15 0 44 2 54 0 45 2 54 0 46 2 54 0 49 2 54 0 51 2 54 0 52 2 54 0 53 2 54 0 54 2 54 0 56 2 54 0 57 2 54 0 60 1 19 0 61 2 54 0 64 2 54 0 67 2 54 0 68 2 54 0 71 2 121 0 72 2 54 0 77 2 54 0 78 2 54 0 79 1 23 0 81 2 54 0 82 2 54 0 83 2 54 0 86 2 54 0 87 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 95 2 54 0 101 2 54 0 102 2 54 0 103 2 54 0 106 2 54 0 107 2 54 0 108 2 54 0 111 2 54 0 112 2 54 0 180] 
#[0 2 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 6 253 0 23] 
#[1 7 1 0 2 5 185 0 79 7 5 0 170] 
#[0 7 9 0 2] 
#[1 7 13 0 2 2 201 0 5 2 217 0 172] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 17 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 7 21 0 104] 
#[1 7 25 0 2 2 201 0 5 2 217 0 172] 
#[1 2 62 0 2 2 62 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 29 0 122 7 29 0 123 7 29 0 126 7 29 0 127 7 29 0 128 7 29 0 129 7 29 0 135 7 29 0 136 7 29 0 137 7 29 0 140 7 29 0 141 7 29 0 142 7 29 0 143 7 29 0 144 7 29 0 145 7 29 0 146 7 29 0 147 7 29 0 148 7 29 0 149 0 193 0 150 2 62 0 180] 
#[0 2 66 0 2 0 8 0 180] 
#[1 2 70 0 2 2 70 0 8 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 33 0 122 7 33 0 123 7 33 0 126 7 33 0 127 7 33 0 128 7 33 0 129 7 33 0 135 7 33 0 136 7 33 0 137 7 33 0 140 7 33 0 141 7 33 0 142 7 33 0 143 7 33 0 144 7 33 0 145 7 33 0 146 7 33 0 147 7 33 0 148 7 33 0 149 0 193 0 150 2 70 0 180] 
#[0 2 74 0 2 0 8 0 180] 
#[1 1 217 0 32 1 221 0 56 1 225 0 64 7 37 0 77 1 229 0 86] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 41 0 174 7 41 0 175 7 41 0 179] 
#[1 6 89 0 5 1 233 0 107 7 45 0 168] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 7 49 0 151 7 49 0 161 2 217 0 172 0 166 0 180] 
#[0 2 78 0 2 0 8 0 101 0 180] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 7 53 0 151 7 53 0 161 2 217 0 172 0 166 0 180] 
#[0 2 82 0 2 0 8 0 101 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 7 57 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 7 61 0 2 2 201 0 5 2 217 0 172] 
#[1 2 86 0 2 6 89 0 5 2 86 0 8 2 86 0 52 2 86 0 79 2 86 0 82 2 86 0 83 2 86 0 101 2 86 0 107 2 86 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 65 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 69 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 73 0 174 7 73 0 175 7 73 0 179] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 7 77 0 156 7 77 0 170 2 90 0 180] 
#[0 2 94 0 2 0 8 0 79 0 101 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 7 85 0 155 7 85 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 7 89 0 154 7 89 0 160 7 93 0 169 0 246 0 180] 
#[1 0 246 0 2 0 246 0 8 6 53 0 53 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 7 97 0 154 7 101 0 157 7 97 0 160 0 246 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 7 105 0 155 7 105 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 6 53 0 53 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 7 109 0 154 7 113 0 157 7 109 0 160 0 246 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 117 0 174 7 117 0 175 7 117 0 179] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 7 121 0 155 7 121 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 7 125 0 154 7 125 0 160 0 246 0 180] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 7 129 0 151 7 129 0 161 2 217 0 172 0 166 0 180] 
#[0 2 98 0 2 0 8 0 101 0 180] 
#[1 0 166 0 2 2 201 0 5 0 166 0 8 0 166 0 51 0 166 0 52 2 205 0 60 0 166 0 79 0 166 0 82 0 166 0 83 0 166 0 101 0 166 0 107 7 133 0 151 7 133 0 161 2 217 0 172 0 166 0 180] 
#[0 2 102 0 2 0 8 0 101 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 7 137 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[0 7 141 0 49] 
#[1 0 217 0 1 0 225 0 112 7 145 0 164] 
#[1 4 249 0 112 7 149 0 138 5 1 0 139] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 153 0 174 7 153 0 175 7 153 0 179] 
#[1 4 249 0 112 7 157 0 139] 
#[1 0 61 0 57 0 93 0 102 7 161 0 137 7 165 0 140] 
#[1 2 106 0 2 2 106 0 8 7 169 0 41 2 106 0 180] 
#[1 7 173 0 2 2 201 0 5 2 217 0 172] 
#[1 5 185 0 79 7 177 0 170] 
#[0 7 181 0 59] 
#[1 1 73 0 112 7 185 0 167] 
#[0 2 110 0 2 0 5] 
#[0 2 114 0 17] 
#[1 5 33 0 112 7 189 0 132] 
#[1 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 7 193 0 121 0 117 0 122 0 117 0 123 0 117 0 126 0 117 0 127 0 117 0 128 0 117 0 129 0 117 0 135 0 117 0 136 0 117 0 137 0 117 0 140 0 117 0 141 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 193 0 150] 
#[0 2 118 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 197 0 174 7 197 0 175 7 197 0 179] 
#[0 2 122 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 2 126 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 2 130 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 2 134 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 7 201 0 166 2 18 0 180] 
#[0 2 138 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[1 2 18 0 2 2 18 0 5 2 18 0 8 2 18 0 15 0 235 0 32 2 18 0 52 0 239 0 56 0 243 0 64 0 247 0 77 2 18 0 79 2 18 0 82 2 18 0 83 0 251 0 86 2 18 0 91 2 18 0 101 2 18 0 103 2 18 0 107 6 153 0 165 7 205 0 166 2 18 0 180] 
#[1 7 209 0 55 7 213 0 73] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 142 0 41 2 142 0 42 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 142 0 106 2 137 0 111] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 7 217 0 2 7 221 0 50] 
#[1 2 57 0 1 7 225 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 7 229 0 49 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 2 57 0 1 7 233 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 2 57 0 1 7 237 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 2 57 0 1 7 241 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 7 245 0 2 7 249 0 5] 
#[1 1 27 0 1 2 154 0 2 1 31 0 3 1 35 0 4 2 154 0 5 1 39 0 6 1 43 0 7 2 154 0 8 1 47 0 9 1 51 0 10 1 55 0 11 1 59 0 12 1 63 0 13 1 67 0 14 2 154 0 15 1 71 0 16 2 154 0 17 2 154 0 18 1 75 0 19 2 154 0 22 2 154 0 28 2 154 0 29 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 36 2 154 0 37 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 44 2 154 0 45 2 154 0 46 2 154 0 49 2 154 0 51 2 154 0 52 2 154 0 53 2 154 0 54 1 79 0 55 2 154 0 56 2 154 0 57 2 154 0 60 1 83 0 61 2 154 0 64 1 87 0 65 2 154 0 67 2 154 0 68 2 154 0 71 1 91 0 72 1 95 0 73 2 154 0 77 1 99 0 78 2 154 0 79 1 103 0 81 2 154 0 82 2 154 0 83 2 154 0 86 2 154 0 87 2 154 0 88 2 154 0 89 2 154 0 91 2 154 0 95 2 154 0 101 2 154 0 102 2 154 0 103 2 154 0 106 2 154 0 107 2 154 0 108 1 107 0 111 2 154 0 112 2 154 0 180] 
#[0 1 111 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 7 253 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 1 115 0 1 2 162 0 2 2 61 0 3 2 65 0 4 2 162 0 5 2 69 0 6 2 73 0 7 2 162 0 8 2 162 0 9 2 162 0 10 2 162 0 11 2 162 0 12 2 162 0 13 2 162 0 14 2 162 0 15 2 162 0 16 2 162 0 17 2 162 0 18 2 162 0 19 2 162 0 22 2 162 0 28 2 162 0 29 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 36 2 162 0 37 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 44 2 162 0 45 2 162 0 46 2 162 0 49 2 162 0 51 2 162 0 52 2 162 0 53 2 162 0 54 2 162 0 56 2 162 0 57 2 162 0 60 1 119 0 61 2 162 0 64 2 162 0 67 2 162 0 68 2 162 0 71 2 121 0 72 2 162 0 77 2 162 0 78 2 162 0 79 1 123 0 81 2 162 0 82 2 162 0 83 2 162 0 86 2 162 0 87 2 162 0 88 2 162 0 89 2 162 0 91 2 162 0 95 2 162 0 101 2 162 0 102 2 162 0 103 2 162 0 106 2 162 0 107 2 162 0 108 2 162 0 111 2 162 0 112 2 162 0 180] 
#[1 8 1 0 2 1 173 0 101] 
#[1 2 57 0 1 3 113 0 2 2 61 0 3 2 65 0 4 8 5 0 5 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 9 0 174 8 9 0 175 8 9 0 179] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 13 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 8 17 0 2] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 81 0 88 0 85 0 89 8 21 0 104 8 25 0 150] 
#[1 8 29 0 2 2 201 0 5 2 217 0 172] 
#[0 8 33 0 1] 
#[0 2 174 0 2 0 8 0 180] 
#[0 2 178 0 2 0 8 0 180] 
#[0 2 182 0 2 0 8 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 37 0 174 8 37 0 175 8 37 0 179] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 8 41 0 106 2 137 0 111 8 45 0 124 8 49 0 125] 
#[0 2 186 0 2 0 8 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 8 53 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 8 57 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[0 2 190 0 2 0 8 0 101 0 180] 
#[0 2 194 0 2 0 8 0 51 0 52 0 79 0 82 0 83 0 101 0 107 0 180] 
#[1 2 198 0 2 2 201 0 5 2 198 0 8 2 198 0 53 2 198 0 79 2 198 0 82 2 198 0 83 2 198 0 101 2 217 0 172 2 198 0 180] 
#[1 2 202 0 2 2 201 0 5 2 202 0 8 2 202 0 79 2 202 0 83 2 202 0 101 2 217 0 172 2 202 0 180] 
#[1 2 57 0 1 2 206 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 206 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 206 0 79 2 133 0 81 2 206 0 101 2 137 0 111 2 206 0 180] 
#[0 2 210 0 2 0 8 0 101 0 180] 
#[0 2 214 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 61 0 156 8 61 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 65 0 155 8 65 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 6 53 0 53 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 8 69 0 154 8 73 0 157 8 69 0 160 0 246 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 77 0 155 8 77 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 8 81 0 154 8 81 0 160 0 246 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 85 0 156 8 85 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 89 0 155 8 89 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 8 93 0 154 8 93 0 160 0 246 0 180] 
#[1 2 57 0 1 2 218 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 218 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 218 0 79 2 133 0 81 2 218 0 82 2 218 0 83 2 218 0 101 2 137 0 111 2 218 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 97 0 156 8 97 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 101 0 155 8 101 0 159 1 218 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 8 105 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[1 0 35 0 2 0 35 0 8 4 161 0 51 4 165 0 52 0 246 0 79 4 169 0 82 0 246 0 83 0 35 0 101 1 233 0 107 4 173 0 152 8 109 0 153 4 181 0 154 4 181 0 160 4 189 0 162 4 193 0 168 4 197 0 169 0 35 0 180] 
#[0 2 222 0 2 0 8 0 101 0 180] 
#[0 8 113 0 90] 
#[1 2 226 0 2 2 226 0 5 2 226 0 8 1 217 0 32 2 226 0 52 1 221 0 56 1 225 0 64 2 226 0 79 2 226 0 82 2 226 0 83 1 229 0 86 2 226 0 91 2 226 0 101 2 226 0 107 2 226 0 180] 
#[1 2 230 0 2 6 101 0 5 2 230 0 8 1 233 0 107 8 117 0 168 2 230 0 180] 
#[1 2 57 0 1 2 234 0 2 2 61 0 3 2 65 0 4 2 234 0 5 2 69 0 6 2 73 0 7 2 234 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 234 0 41 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 234 0 106 2 234 0 107 2 137 0 111 2 234 0 180] 
#[0 2 238 0 2 0 5 0 8 0 41 0 106 0 107 0 180] 
#[0 2 242 0 2 0 8 0 180] 
#[0 2 246 0 2 0 8 0 180] 
#[1 0 61 0 57 0 93 0 102 8 121 0 137 8 125 0 140] 
#[0 8 129 0 17] 
#[0 2 250 0 2 0 8 0 101 0 180] 
#[0 2 254 0 2 0 8 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 133 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[0 3 2 0 2 0 5] 
#[1 0 6 0 2 0 6 0 8 8 137 0 120] 
#[1 2 57 0 1 3 6 0 2 2 61 0 3 2 65 0 4 3 6 0 5 2 69 0 6 2 73 0 7 3 6 0 8 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 3 6 0 15 2 101 0 16 2 105 0 19 3 6 0 32 3 6 0 52 2 109 0 55 3 6 0 56 2 113 0 61 3 6 0 64 2 117 0 65 2 121 0 72 2 125 0 73 3 6 0 77 2 129 0 78 3 6 0 79 2 133 0 81 3 6 0 82 3 6 0 83 3 6 0 86 3 6 0 91 3 6 0 101 3 6 0 103 3 6 0 107 2 137 0 111 3 6 0 180] 
#[0 3 10 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 3 14 0 2 0 5 0 8 0 15 0 32 0 52 0 56 0 64 0 77 0 79 0 82 0 83 0 86 0 91 0 101 0 103 0 107 0 180] 
#[0 8 141 0 1] 
#[0 8 145 0 55] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 8 149 0 114] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 153 0 174 8 153 0 175 8 153 0 179] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 3 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 3 38 0 2 0 5 0 50] 
#[0 8 157 0 115] 
#[1 8 161 0 2 2 201 0 5 2 217 0 172] 
#[0 1 127 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 165 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 1 131 0 1 3 46 0 2 2 61 0 3 2 65 0 4 3 46 0 5 2 69 0 6 2 73 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 19 3 46 0 22 3 46 0 28 3 46 0 29 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 36 3 46 0 37 3 46 0 40 3 46 0 41 3 46 0 42 3 46 0 44 3 46 0 45 3 46 0 46 3 46 0 49 3 46 0 51 3 46 0 52 3 46 0 53 3 46 0 54 3 46 0 56 3 46 0 57 3 46 0 60 1 135 0 61 3 46 0 64 3 46 0 67 3 46 0 68 3 46 0 71 2 121 0 72 3 46 0 77 3 46 0 78 3 46 0 79 1 139 0 81 3 46 0 82 3 46 0 83 3 46 0 86 3 46 0 87 3 46 0 88 3 46 0 89 3 46 0 91 3 46 0 95 3 46 0 101 3 46 0 102 3 46 0 103 3 46 0 106 3 46 0 107 3 46 0 108 3 46 0 111 3 46 0 112 3 46 0 180] 
#[1 3 50 0 2 2 201 0 5 3 50 0 8 3 50 0 101 2 217 0 172 3 50 0 180] 
#[0 3 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 8 169 0 1] 
#[1 3 58 0 2 3 58 0 8 1 173 0 101 3 58 0 180] 
#[0 3 62 0 2 0 8 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 8 173 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 2 57 0 1 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 8 41 0 106 2 137 0 111 8 177 0 124 8 49 0 125] 
#[1 8 181 0 70 8 185 0 73] 
#[1 3 66 0 2 3 66 0 8 8 41 0 106 8 189 0 125 3 66 0 180] 
#[0 3 70 0 2 0 8 0 106 0 180] 
#[0 3 74 0 2 0 8 0 101 0 180] 
#[0 3 78 0 2 0 8 0 101 0 180] 
#[0 3 82 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 193 0 156 8 193 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 197 0 155 8 197 0 159 1 218 0 180] 
#[1 0 246 0 2 0 246 0 8 0 246 0 79 4 169 0 82 0 246 0 83 0 246 0 101 8 201 0 154 8 201 0 160 0 246 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 205 0 156 8 205 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 209 0 155 8 209 0 159 1 218 0 180] 
#[0 3 86 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 213 0 156 8 213 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 8 217 0 155 8 217 0 159 1 218 0 180] 
#[0 3 90 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 8 221 0 156 8 221 0 170 2 90 0 180] 
#[0 3 94 0 2 0 8 0 101 0 180] 
#[0 3 98 0 2 0 8 0 101 0 180] 
#[0 3 102 0 2 0 8 0 180] 
#[0 3 106 0 2 0 8 0 180] 
#[0 3 110 0 2 0 8 0 180] 
#[0 3 114 0 2 0 8 0 180] 
#[0 8 225 0 1] 
#[1 2 201 0 5 8 229 0 108 2 217 0 172] 
#[1 8 233 0 2 3 17 0 8] 
#[1 0 81 0 88 0 85 0 89 8 237 0 150] 
#[0 8 241 0 1] 
#[0 8 245 0 2] 
#[1 2 57 0 1 8 249 0 2 2 61 0 3 2 65 0 4 2 69 0 6 2 73 0 7 2 77 0 9 2 81 0 10 2 85 0 11 2 89 0 12 2 93 0 13 2 97 0 14 2 101 0 16 2 105 0 19 2 109 0 55 2 113 0 61 2 117 0 65 2 121 0 72 2 125 0 73 2 129 0 78 2 133 0 81 2 137 0 111] 
#[0 8 253 0 2] 
#[0 3 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 9 1 0 2 2 201 0 5 2 217 0 172] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 5 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 9 9 0 2 2 201 0 5 2 217 0 172] 
#[1 3 122 0 2 3 122 0 8 8 41 0 106 8 189 0 125 3 122 0 180] 
#[0 9 13 0 95] 
#[0 9 17 0 70] 
#[0 3 126 0 2 0 8 0 106 0 180] 
#[0 3 130 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 9 21 0 156 9 21 0 170 2 90 0 180] 
#[1 1 218 0 2 1 218 0 8 1 218 0 79 6 21 0 83 1 218 0 101 9 25 0 155 9 25 0 159 1 218 0 180] 
#[0 3 134 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 9 29 0 156 9 29 0 170 2 90 0 180] 
#[0 3 138 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 9 33 0 156 9 33 0 170 2 90 0 180] 
#[0 3 142 0 2 0 8 0 101 0 180] 
#[1 0 81 0 88 0 85 0 89 9 37 0 150] 
#[0 9 41 0 59] 
#[0 3 146 0 2 0 8 0 180] 
#[1 9 45 0 2 1 173 0 101] 
#[1 0 81 0 88 0 85 0 89 9 49 0 150] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 3 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[0 3 158 0 2 0 5 0 50] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 9 53 0 2 2 201 0 5 2 217 0 172] 
#[0 3 166 0 2 0 8 0 180] 
#[0 9 57 0 102] 
#[0 9 61 0 95] 
#[0 3 170 0 2 0 8 0 101 0 180] 
#[1 2 90 0 2 2 90 0 8 5 185 0 79 2 90 0 101 9 65 0 156 9 65 0 170 2 90 0 180] 
#[0 3 174 0 2 0 8 0 101 0 180] 
#[0 3 178 0 2 0 8 0 101 0 180] 
#[1 9 69 0 2 1 173 0 101] 
#[0 3 182 0 2 0 8 0 180] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 9 73 0 2 1 173 0 101] 
#[0 3 190 0 2 0 8 0 180] 
#[0 9 77 0 91] 
#[0 9 81 0 57] 
#[0 3 194 0 2 0 8 0 101 0 180] 
#[1 0 9 0 18 0 13 0 22 0 17 0 28 0 21 0 29 0 25 0 31 0 29 0 33 0 33 0 36 0 37 0 37 0 41 0 40 0 45 0 42 0 49 0 45 0 53 0 46 0 57 0 54 0 61 0 57 0 65 0 67 0 69 0 68 0 73 0 71 0 77 0 87 0 81 0 88 0 85 0 89 0 89 0 91 0 93 0 102 0 97 0 103 0 101 0 108 9 85 0 122 9 85 0 123 9 85 0 126 9 85 0 127 9 85 0 128 9 85 0 129 9 85 0 135 9 85 0 136 9 85 0 137 9 85 0 140 9 85 0 141 9 85 0 142 9 85 0 143 9 85 0 144 9 85 0 145 9 85 0 146 9 85 0 147 9 85 0 148 9 85 0 149 0 193 0 150] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 28 0 29 0 31 0 32 0 33 0 36 0 37 0 40 0 41 0 42 0 44 0 45 0 46 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 61 0 64 0 65 0 67 0 68 0 71 0 72 0 73 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 95 0 101 0 102 0 103 0 106 0 107 0 108 0 111 0 112 0 180] 
#[1 4 249 0 112 9 89 0 138 5 1 0 139] 
#[0 9 93 0 1] 
#[0 3 202 0 2 0 8 0 180] 
#[1 3 206 0 2 6 101 0 5 3 206 0 8 3 206 0 106 3 206 0 180] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 97 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 9 101 0 2 2 201 0 5 2 217 0 172] 
#[1 3 210 0 2 3 210 0 8 9 105 0 104 3 210 0 106 3 210 0 180] 
#[0 9 109 0 1] 
#[1 0 249 0 1 0 253 0 3 1 1 0 6 1 5 0 25 1 9 0 26 1 13 0 47 1 17 0 59 1 21 0 73 1 25 0 74 1 29 0 93 1 33 0 100 1 37 0 112 1 41 0 113 1 45 0 114 1 49 0 115 9 113 0 171 1 125 0 173 1 129 0 174 1 129 0 175 1 129 0 179] 
#[1 9 117 0 2 2 201 0 5 2 217 0 172] 
#[0 3 214 0 2 0 8 0 106 0 180]
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
	result table: (nodes at: 2).
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
TeradataParser >> reduceActionForInsertQuery3: nodes [
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
TeradataParser >> reduceActionForInsertQuery4: nodes [
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
TeradataParser >> reduceActionForInsertQuery5: nodes [
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
