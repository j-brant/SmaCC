Class {
	#name : #TeradataParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataParser class >> ambiguousTransitions [
^#(
#[ 0 14 1 41] 
#[ 0 230 2 77] 
#[ 0 230 2 133] 
#[ 0 230 2 153] 
#[ 0 238 2 77] 
#[ 0 238 2 133] 
#[ 0 238 2 153] 
#[ 0 254 1 2] 
#[ 1 154 2 77] 
#[ 1 154 2 133] 
#[ 1 154 2 153] 
#[ 1 158 2 77] 
#[ 1 158 2 133] 
#[ 1 158 2 153] 
#[ 1 162 2 77] 
#[ 1 162 2 133] 
#[ 1 162 2 153] 
#[ 1 166 2 77] 
#[ 1 166 2 133] 
#[ 1 166 2 153] 
#[ 1 170 2 77] 
#[ 1 170 2 133] 
#[ 1 170 2 153] 
#[ 1 174 2 77] 
#[ 1 174 2 133] 
#[ 1 174 2 153] 
#[ 1 178 2 77] 
#[ 1 178 2 133] 
#[ 1 178 2 153] 
#[ 1 182 2 77] 
#[ 1 182 2 133] 
#[ 1 182 2 153] 
#[ 1 186 2 77] 
#[ 1 186 2 133] 
#[ 1 186 2 153] 
#[ 1 190 2 77] 
#[ 1 190 2 133] 
#[ 1 190 2 153] 
#[ 1 194 2 77] 
#[ 1 194 2 133] 
#[ 1 194 2 153] 
#[ 1 198 2 77] 
#[ 1 198 2 133] 
#[ 1 198 2 153] 
#[ 1 206 2 77] 
#[ 1 206 5 205] 
#[ 1 206 2 133] 
#[ 1 206 2 153] 
#[ 1 210 2 77] 
#[ 1 210 2 133] 
#[ 1 210 2 153] 
#[ 1 214 2 77] 
#[ 1 214 2 133] 
#[ 1 214 2 153] 
#[ 1 218 2 77] 
#[ 1 218 2 133] 
#[ 1 218 2 153] 
#[ 1 229 2 38] 
#[ 1 233 2 38] 
#[ 1 237 2 38] 
#[ 2 38 6 185] 
#[ 1 241 2 38] 
#[ 2 77 2 78] 
#[ 2 78 2 133] 
#[ 2 78 2 153] 
#[ 2 77 2 82] 
#[ 2 82 7 29] 
#[ 2 82 2 133] 
#[ 2 82 2 153] 
#[ 1 194 2 77 2 182] 
#[ 1 194 2 81 2 182] 
#[ 1 194 2 85 2 182] 
#[ 1 194 2 89 2 182] 
#[ 1 194 2 93 2 182] 
#[ 1 194 2 97 2 182] 
#[ 1 194 2 101 2 182] 
#[ 1 194 2 105 2 182] 
#[ 1 194 2 109 2 182] 
#[ 1 194 2 113 2 182] 
#[ 1 194 2 117 2 182] 
#[ 1 194 2 121 2 182] 
#[ 1 194 2 125 2 182] 
#[ 1 194 2 129 2 182] 
#[ 1 194 2 133 2 182] 
#[ 1 194 2 137 2 182] 
#[ 1 194 2 141 2 182] 
#[ 1 194 2 145 2 182] 
#[ 1 194 2 149 2 182] 
#[ 1 194 2 153 2 182] 
#[ 1 194 2 157 2 182] 
#[ 1 66 2 186] 
#[ 2 77 2 190] 
#[ 2 133 2 190] 
#[ 2 153 2 190] 
#[ 1 66 3 70] 
#[ 2 77 3 74] 
#[ 2 133 3 74] 
#[ 2 153 3 74]
	).
]

{ #category : #'generated-accessing' }
TeradataParser class >> cacheId [
	^'2020-07-09T09:21:50.938507-05:00'
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
    CaseSpecificExpression
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
	: [a-z_\$][a-z0-9_\$]* 
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
	: ""WITH"" 'withToken' ""RECURSIVE"" 'recursiveToken' IdentifierName 'name' ""("" 'leftParen' ExpressionList "")"" 'rightParen' ""AS"" 'asToken' ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' Statement 'statement' {{RecursiveQuery}}
	;
RollbackStatement
	: ""ROLLBACK"" 'rollbackToken' ""WORK"" 'workToken' <string> 'work' ""FROM"" 'fromToken' TableList WhereExpression {{}}
	;
LockTableStatement
	: (""LOCKING"" 'lockToken' | ""LOCK"" 'lockToken') ""TABLE"" 'tableToken'? TableName 'table' ""FOR"" 'forToken' IdentifierName 'lock' Statement 'statement'? {{}}
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
	: IdentifierName 'name' ""="" 'equals' Expression 'value' {{}}
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
	: ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""FOR"" 'forToken' Statement 'statement'  {{}}
	| ""CHECK"" 'checkToken' ""WORKLOAD"" 'workloadToken' ""END"" 'endToken'  {{}}
	;
SetStatement
	: ""SET"" 'setToken' IdentifierName 'name' ""="" 'equals' Expression 'value' ""UPDATE"" 'updateToken' ""FOR"" 'forToken' ""SESSION"" 'sessionToken' {{}}
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
	: (<identifier> 'name' ""."" 'period')* <identifier> 'name' (""AS"" 'asToken'? <identifier> 'alias')? {{Table}}
	| ""("" 'leftParen' SelectQuery 'query' "")"" 'rightParen' (""AS"" 'asToken'? <identifier> 'alias')? {{SelectTable}}
	| Table 'left' ((""LEFT"" 'direction' | ""RIGHT"" 'direction') ""OUTER"" 'type'? | ""INNER"" 'type' | ""CROSS"" 'type') ""JOIN"" 'joinToken' Table 'right' (""ON"" 'onToken' Expression 'on')? {{JoinTable}}
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
	| Expression 'value' ""("" 'leftParen' ""CASESPECIFIC"" 'caseSpecificToken' "")"" 'rightParen' {{CaseSpecificExpression}}
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
	#(122 0 #reduceActionFor_____semicolon__1: 1131521 false ) 
	#(148 1 #reduceActionForTransactionStatement1: 5501953 false ) 
	#(168 0 #reduceActionFor__identifier___name_______period___1: 7035905 false ) 
	#(148 1 #reduceActionForTransactionStatement2: 5501954 false ) 
	#(121 1 #reduceActionForFile2: 1112066 false ) 
	#(123 1 #reduceActionForStatements1: 1182721 false ) 
	#(124 1 #liftFirstValue: 1293331 false ) 
	#(124 1 #liftFirstValue: 1293330 false ) 
	#(124 1 #liftFirstValue: 1293329 false ) 
	#(124 1 #liftFirstValue: 1293328 false ) 
	#(124 1 #liftFirstValue: 1293327 false ) 
	#(124 1 #liftFirstValue: 1293326 false ) 
	#(124 1 #liftFirstValue: 1293325 false ) 
	#(124 1 #liftFirstValue: 1293324 false ) 
	#(124 1 #liftFirstValue: 1293323 false ) 
	#(124 1 #liftFirstValue: 1293322 false ) 
	#(124 1 #liftFirstValue: 1293321 false ) 
	#(124 1 #liftFirstValue: 1293320 false ) 
	#(124 1 #liftFirstValue: 1293319 false ) 
	#(124 1 #liftFirstValue: 1293318 false ) 
	#(124 1 #liftFirstValue: 1293317 false ) 
	#(124 1 #liftFirstValue: 1293316 false ) 
	#(124 1 #liftFirstValue: 1293315 false ) 
	#(124 1 #liftFirstValue: 1293314 false ) 
	#(124 1 #liftFirstValue: 1293313 false ) 
	#(149 2 #reduceActionForDatabaseStatement1: 5626881 false ) 
	#(151 2 #reduceActionForDeleteQuery7: 5789703 false ) 
	#(151 2 #reduceActionForDeleteQuery7: 5789697 false ) 
	#(144 2 #reduceActionForLoadingStatement2: 4779010 false ) 
	#(178 1 #reduceActionForExpression6: 8002566 false ) 
	#(178 1 #reduceActionForExpression5: 8002565 false ) 
	#(178 1 #reduceActionForExpression2: 8002562 false ) 
	#(178 1 #reduceActionForExpression3: 8002563 false ) 
	#(178 1 #reduceActionForExpression3: 8002564 false ) 
	#(150 2 #reduceActionForExecuteStatement1: 5710849 false ) 
	#(178 1 #liftFirstValue: 8002567 false ) 
	#(178 1 #liftFirstValue: 8002568 false ) 
	#(178 1 #liftFirstValue: 8002561 false ) 
	#(147 2 #reduceActionForHelpSessionStatement1: 5424129 false ) 
	#(153 0 #nil 6113281 false ) 
	#(175 1 #reduceActionForStatements1: 7777281 false ) 
	#(177 1 #liftFirstValue: 7879681 false ) 
	#(122 2 #reduceActionFor_____semicolon__2: 1131522 false ) 
	#(121 2 #reduceActionForFile1: 1112065 false ) 
	#(145 3 #reduceActionForCheckWorkloadStatement2: 5059586 false ) 
	#(132 0 #reduceActionForMacroArgs1: 3045377 false ) 
	#(185 2 #reduceActionForIdentifierName1: 11736065 false ) 
	#(168 2 #reduceActionFor__identifier___name_______period___2: 7035906 false ) 
	#(151 3 #reduceActionForDeleteQuery10: 5789706 false ) 
	#(151 3 #reduceActionForDeleteQuery9: 5789705 false ) 
	#(151 3 #reduceActionForDeleteQuery8: 5789704 false ) 
	#(166 2 #reduceActionForTable1: 7026689 false ) 
	#(151 3 #reduceActionForDeleteQuery10: 5789700 false ) 
	#(151 3 #reduceActionForDeleteQuery9: 5789699 false ) 
	#(151 3 #reduceActionForDeleteQuery8: 5789698 false ) 
	#(138 3 #reduceActionForDropTableQuery1: 3738625 false ) 
	#(178 2 #reduceActionForExpression43: 8002603 false ) 
	#(181 1 #reduceActionForWhenExpressions1: 11334657 false ) 
	#(178 2 #reduceActionForExpression43: 8002610 false ) 
	#(184 2 #reduceActionForIdentifier1: 11635713 false ) 
	#(171 2 #reduceActionForTable1: 7458817 false ) 
	#(176 1 #reduceActionForWhenExpressions1: 7838721 false ) 
	#(156 0 #nil 6225921 false ) 
	#(155 0 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____1: 6136833 false ) 
	#(153 1 #liftFirstValue: 6113282 false ) 
	#(177 2 #reduceActionForNamedExpression2: 7879682 false ) 
	#(143 3 #reduceActionForUsingStatement1: 4692993 false ) 
	#(160 1 #reduceActionForUnionSelectQuery2: 6509570 false ) 
	#(152 3 #reduceActionForSelectQuery13: 5935117 false ) 
	#(145 4 #reduceActionForCheckWorkloadStatement1: 5059585 false ) 
	#(137 4 #reduceActionForCheckpointStatement1: 3584001 false ) 
	#(167 2 #reduceActionFor__identifier___name_______period__1: 7035905 false ) 
	#(166 3 #reduceActionForTable4: 7026692 false ) 
	#(151 4 #reduceActionForDeleteQuery12: 5789708 false ) 
	#(151 4 #reduceActionForDeleteQuery11: 5789707 false ) 
	#(172 2 #reduceActionFor__identifier___name_______period__1: 7542785 false ) 
	#(166 3 #reduceActionForTable2: 7026690 false ) 
	#(151 4 #reduceActionForDeleteQuery12: 5789702 false ) 
	#(151 4 #reduceActionForDeleteQuery11: 5789701 false ) 
	#(178 3 #reduceActionForExpression49: 8002609 false ) 
	#(178 3 #reduceActionForExpression30: 8002590 false ) 
	#(179 3 #reduceActionForCaseExpression1: 11140097 false ) 
	#(181 2 #reduceActionFor_____semicolon__2: 11334658 false ) 
	#(178 3 #reduceActionForExpression56: 8002616 false ) 
	#(183 3 #reduceActionForFunctionExpression1: 11530241 false ) 
	#(136 1 #liftFirstValue: 3388426 false ) 
	#(136 1 #liftFirstValue: 3388423 false ) 
	#(136 1 #liftFirstValue: 3388417 false ) 
	#(136 1 #liftFirstValue: 3388419 false ) 
	#(136 1 #liftFirstValue: 3388420 false ) 
	#(136 1 #liftFirstValue: 3388427 false ) 
	#(136 1 #liftFirstValue: 3388429 false ) 
	#(136 1 #liftFirstValue: 3388425 false ) 
	#(136 1 #liftFirstValue: 3388431 false ) 
	#(136 1 #liftFirstValue: 3388428 false ) 
	#(136 1 #liftFirstValue: 3388430 false ) 
	#(136 1 #liftFirstValue: 3388424 false ) 
	#(136 1 #liftFirstValue: 3388421 false ) 
	#(136 1 #liftFirstValue: 3388422 false ) 
	#(136 1 #liftFirstValue: 3388418 false ) 
	#(135 1 #reduceActionForType1: 3264513 false ) 
	#(178 3 #reduceActionForExpression11: 8002571 false ) 
	#(178 3 #reduceActionForExpression11: 8002569 false ) 
	#(178 3 #reduceActionForExpression11: 8002570 false ) 
	#(178 3 #reduceActionForExpression11: 8002572 false ) 
	#(178 3 #reduceActionForExpression11: 8002579 false ) 
	#(178 3 #reduceActionForExpression11: 8002580 false ) 
	#(178 3 #reduceActionForExpression11: 8002578 false ) 
	#(178 3 #reduceActionForExpression11: 8002577 false ) 
	#(178 3 #reduceActionForExpression11: 8002581 false ) 
	#(178 3 #reduceActionForExpression11: 8002582 false ) 
	#(178 3 #reduceActionForExpression11: 8002575 false ) 
	#(178 3 #reduceActionForExpression31: 8002591 false ) 
	#(178 3 #reduceActionForExpression28: 8002588 false ) 
	#(178 3 #reduceActionForExpression23: 8002583 false ) 
	#(178 3 #reduceActionForExpression11: 8002573 false ) 
	#(178 3 #reduceActionForExpression11: 8002576 false ) 
	#(178 3 #reduceActionForExpression11: 8002574 false ) 
	#(130 4 #reduceActionForLockTableStatement5: 2675717 false ) 
	#(130 4 #reduceActionForLockTableStatement5: 2675713 false ) 
	#(155 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 6136834 false ) 
	#(152 4 #reduceActionForSelectQuery7: 5935111 false ) 
	#(157 0 #nil 6261761 false ) 
	#(156 1 #liftFirstValue: 6225922 false ) 
	#(176 2 #reduceActionFor_____semicolon__2: 7838722 false ) 
	#(175 3 #reduceActionForExpressionList2: 7777282 false ) 
	#(177 3 #reduceActionForNamedExpression3: 7879683 false ) 
	#(152 4 #reduceActionForSelectQuery7: 5935105 false ) 
	#(165 1 #reduceActionForStatements1: 6955009 false ) 
	#(139 4 #reduceActionForUpdateQuery1: 3824641 false ) 
	#(140 1 #reduceActionForStatements1: 4142081 false ) 
	#(123 4 #reduceActionForStatements2: 1182722 false ) 
	#(152 4 #reduceActionForSelectQuery14: 5935118 false ) 
	#(137 5 #reduceActionForCheckpointStatement2: 3584002 false ) 
	#(133 1 #reduceActionForStatements1: 3112961 false ) 
	#(166 4 #reduceActionForTable5: 7026693 false ) 
	#(170 0 #reduceActionFor__ON___onToken__Expression__on___1: 7406593 false ) 
	#(166 4 #reduceActionForTable3: 7026691 false ) 
	#(179 4 #reduceActionForCaseExpression3: 11140099 false ) 
	#(180 2 #reduceActionForElseExpression1: 11269121 false ) 
	#(179 4 #reduceActionForCaseExpression2: 11140098 false ) 
	#(178 4 #reduceActionForExpression45: 8002605 false ) 
	#(183 4 #reduceActionForFunctionExpression2: 11530242 false ) 
	#(178 4 #reduceActionForExpression57: 8002617 false ) 
	#(178 4 #reduceActionForExpression40: 8002600 false ) 
	#(178 4 #reduceActionForExpression29: 8002589 false ) 
	#(178 4 #reduceActionForExpression33: 8002593 false ) 
	#(178 4 #reduceActionForExpression25: 8002585 false ) 
	#(178 4 #reduceActionForExpression52: 8002612 false ) 
	#(130 5 #reduceActionForLockTableStatement7: 2675719 false ) 
	#(130 5 #reduceActionForLockTableStatement6: 2675718 false ) 
	#(130 5 #reduceActionForLockTableStatement7: 2675715 false ) 
	#(130 5 #reduceActionForLockTableStatement6: 2675714 false ) 
	#(152 5 #reduceActionForSelectQuery9: 5935113 false ) 
	#(152 5 #reduceActionForSelectQuery9: 5935115 false ) 
	#(164 2 #reduceActionForFromTables1: 6907905 false ) 
	#(158 0 #nil 6291457 false ) 
	#(157 1 #liftFirstValue: 6261762 false ) 
	#(152 5 #reduceActionForSelectQuery9: 5935107 false ) 
	#(152 5 #reduceActionForSelectQuery9: 5935109 false ) 
	#(139 5 #reduceActionForUpdateQuery4: 3824644 false ) 
	#(132 3 #reduceActionForMacroArgs2: 3045378 false ) 
	#(134 2 #reduceActionForParameter1: 3208193 false ) 
	#(166 5 #reduceActionForTable6: 7026694 false ) 
	#(170 1 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy____2: 7406594 false ) 
	#(166 5 #reduceActionForTable12: 7026700 false ) 
	#(166 5 #reduceActionForTable12: 7026699 false ) 
	#(166 5 #reduceActionForTable7: 7026695 false ) 
	#(166 5 #reduceActionForTable7: 7026697 false ) 
	#(182 4 #reduceActionForWhenExpression1: 11421697 false ) 
	#(179 5 #reduceActionForCaseExpression4: 11140100 false ) 
	#(178 5 #reduceActionForExpression39: 8002599 false ) 
	#(178 5 #reduceActionForExpression44: 8002604 false ) 
	#(178 5 #reduceActionForExpression35: 8002595 false ) 
	#(178 5 #reduceActionForExpression24: 8002584 false ) 
	#(178 5 #reduceActionForExpression54: 8002614 false ) 
	#(178 5 #reduceActionForExpression53: 8002613 false ) 
	#(142 6 #reduceActionForInsertQuery1: 4342785 false ) 
	#(130 6 #reduceActionForLockTableStatement8: 2675720 false ) 
	#(130 6 #reduceActionForLockTableStatement8: 2675716 false ) 
	#(129 6 #reduceActionForRollbackStatement1: 2536449 false ) 
	#(152 6 #reduceActionForSelectQuery8: 5935112 false ) 
	#(163 4 #reduceActionForIntoExpression1: 6812673 false ) 
	#(173 3 #reduceActionForGroupByExpression1: 7606273 false ) 
	#(162 3 #reduceActionForPartitionByExpression1: 6718465 false ) 
	#(161 2 #reduceActionForQualifyExpression1: 6639617 false ) 
	#(154 3 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___1: 6136833 false ) 
	#(158 1 #liftFirstValue: 6291458 false ) 
	#(159 2 #reduceActionForHavingExpression1: 6427649 false ) 
	#(152 6 #reduceActionForSelectQuery8: 5935106 false ) 
	#(165 3 #reduceActionForTableList2: 6955010 false ) 
	#(139 6 #reduceActionForUpdateQuery7: 3824647 false ) 
	#(140 3 #reduceActionForTableList2: 4142082 false ) 
	#(139 6 #reduceActionForUpdateQuery3: 3824643 false ) 
	#(139 6 #reduceActionForUpdateQuery3: 3824642 false ) 
	#(141 3 #reduceActionForSetExpression1: 4261889 false ) 
	#(160 4 #reduceActionForUnionSelectQuery1: 6509569 false ) 
	#(144 7 #reduceActionForLoadingStatement1: 4779009 false ) 
	#(133 3 #reduceActionForTableList2: 3112962 false ) 
	#(169 2 #reduceActionFor__identifier___name_______period__1: 7406593 false ) 
	#(166 6 #reduceActionForTable8: 7026696 false ) 
	#(166 6 #reduceActionForTable8: 7026698 false ) 
	#(178 6 #reduceActionForExpression41: 8002601 false ) 
	#(178 6 #reduceActionForExpression51: 8002611 false ) 
	#(178 6 #reduceActionForExpression46: 8002606 false ) 
	#(178 6 #reduceActionForExpression46: 8002608 false ) 
	#(178 6 #reduceActionForExpression46: 8002607 false ) 
	#(135 4 #reduceActionForType2: 3264514 false ) 
	#(178 6 #reduceActionForExpression36: 8002596 false ) 
	#(178 6 #reduceActionForExpression26: 8002586 false ) 
	#(174 3 #reduceActionForOrderByExpression1: 7695361 false ) 
	#(178 6 #reduceActionForExpression55: 8002615 false ) 
	#(142 7 #reduceActionForInsertQuery5: 4342789 false ) 
	#(142 7 #reduceActionForInsertQuery3: 4342787 false ) 
	#(125 7 #reduceActionForMergeQuery1: 1688577 false ) 
	#(126 1 #reduceActionForWhenExpressions1: 1844225 false ) 
	#(152 7 #reduceActionForSelectQuery10: 5935114 false ) 
	#(152 7 #reduceActionForSelectQuery10: 5935116 false ) 
	#(154 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___7: 6136839 false ) 
	#(154 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___4: 6136836 false ) 
	#(154 4 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___2: 6136834 false ) 
	#(152 7 #reduceActionForSelectQuery10: 5935108 false ) 
	#(152 7 #reduceActionForSelectQuery10: 5935110 false ) 
	#(146 7 #reduceActionForSetStatement1: 5260289 false ) 
	#(139 7 #reduceActionForUpdateQuery8: 3824648 false ) 
	#(139 7 #reduceActionForUpdateQuery6: 3824646 false ) 
	#(139 7 #reduceActionForUpdateQuery6: 3824645 false ) 
	#(178 7 #reduceActionForExpression32: 8002592 false ) 
	#(125 8 #reduceActionForMergeQuery2: 1688578 false ) 
	#(126 2 #reduceActionFor_____semicolon__2: 1844226 false ) 
	#(154 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___10: 6136842 false ) 
	#(154 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___8: 6136840 false ) 
	#(154 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___5: 6136837 false ) 
	#(154 5 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___3: 6136835 false ) 
	#(131 9 #reduceActionForCreateMacroStatement1: 2856961 false ) 
	#(178 8 #reduceActionForExpression42: 8002602 false ) 
	#(178 8 #reduceActionForExpression27: 8002587 false ) 
	#(135 6 #reduceActionForType3: 3264515 false ) 
	#(178 8 #reduceActionForExpression34: 8002594 false ) 
	#(142 9 #reduceActionForInsertQuery2: 4342786 false ) 
	#(154 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___11: 6136843 false ) 
	#(154 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___9: 6136841 false ) 
	#(154 6 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___6: 6136838 false ) 
	#(178 9 #reduceActionForExpression37: 8002597 false ) 
	#(142 10 #reduceActionForInsertQuery4: 4342788 false ) 
	#(154 7 #reduceActionFor_FromTables__WhereExpression___GroupByExpression___group__HavingExpression__having_____PartitionByExpression__partition___QualifyExpression__qualify___OrderByExpression__orderBy___12: 6136844 false ) 
	#(178 10 #reduceActionForExpression38: 8002598 false ) 
	#(128 11 #reduceActionForWithRecursiveQuery1: 2278401 false ) 
	#(127 6 #reduceActionForWhenMergeCondition1: 1885185 false ) 
	#(127 8 #reduceActionForWhenMergeCondition2: 1885186 false ) 
	#(127 12 #reduceActionForWhenMergeCondition3: 1885187 false )
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
	^ #('"("' '")"' '"*"' '"+"' '","' '"-"' '"."' '"/"' '";"' '"<"' '"<="' '"<>"' '"="' '">"' '">="' '"ALL"' '"AND"' '"AS"' '"BEGIN"' '"BETWEEN"' '"BIGINT"' '"BOTH"' '"BT"' '"BY"' '"BYTEINT"' '"CASE"' '"CASESPECIFIC"' '"CAST"' '"CHAR"' '"CHECK"' '"CHECKPOINT"' '"CLOB"' '"CREATE"' '"CROSS"' '"DATABASE"' '"DATE"' '"DECIMAL"' '"DEL"' '"DELETE"' '"DISTINCT"' '"DISTINCTROW"' '"DROP"' '"ELSE"' '"END"' '"ERRORFILES"' '"ESCAPE"' '"ET"' '"EXECUTE"' '"EXTRACT"' '"FLOAT"' '"FOR"' '"FORMAT"' '"FROM"' '"GROUP"' '"HAVING"' '"HELP"' '"IN"' '"INNER"' '"INSERT"' '"INTEGER"' '"INTERVAL"' '"INTO"' '"IS"' '"JOIN"' '"LEADING"' '"LEFT"' '"LIKE"' '"LOADING"' '"LOCK"' '"LOCKING"' '"MACRO"' '"MATCHED"' '"MERGE"' '"MOD"' '"NOT"' '"NULL"' '"NUMBER"' '"NUMERIC"' '"ON"' '"OR"' '"ORDER"' '"OUTER"' '"OVER"' '"PARTITION"' '"QUALIFY"' '"REAL"' '"RECURSIVE"' '"RIGHT"' '"ROLLBACK"' '"SEL"' '"SELECT"' '"SESSION"' '"SET"' '"SMALLINT"' '"SUBSTRING"' '"TABLE"' '"THEN"' '"TIME"' '"TIMESTAMP"' '"TOP"' '"TRAILING"' '"TRIM"' '"UNION"' '"UPDATE"' '"USING"' '"VALUES"' '"VARCHAR"' '"WHEN"' '"WHERE"' '"WITH"' '"WORK"' '"WORKLOAD"' '"||"' '<identifier>' '<variable>' '<string>' '<number>' '<whitespace>' '<comment>' 'B e g i n' 'File' '";" ''semicolon''*' 'Statements' 'Statement' 'MergeQuery' 'WhenMergeCondition ''whenMerge''+' 'WhenMergeCondition' 'WithRecursiveQuery' 'RollbackStatement' 'LockTableStatement' 'CreateMacroStatement' 'MacroArgs' 'ParameterList' 'Parameter' 'Type' 'TypeName' 'CheckpointStatement' 'DropTableQuery' 'UpdateQuery' 'SetExpressionList' 'SetExpression' 'InsertQuery' 'UsingStatement' 'LoadingStatement' 'CheckWorkloadStatement' 'SetStatement' 'HelpSessionStatement' 'TransactionStatement' 'DatabaseStatement' 'ExecuteStatement' 'DeleteQuery' 'SelectQuery' 'IntoExpression ''into''?' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)' '(FromTables? WhereExpression? (GroupByExpression  ''group'' HavingExpression ''having''?)? PartitionByExpression ''partition''? QualifyExpression ''qualify''? OrderByExpression ''orderBy''?)?' 'PartitionByExpression ''partition''?' 'QualifyExpression ''qualify''?' 'OrderByExpression ''orderBy''?' 'HavingExpression' 'UnionSelectQuery' 'QualifyExpression' 'PartitionByExpression' 'IntoExpression' 'FromTables' 'TableList' 'Table' '(<identifier> ''name'' "." ''period'')' '(<identifier> ''name'' "." ''period'')*' '("ON" ''onToken'' Expression ''on'')' '("ON" ''onToken'' Expression ''on'')?' 'TableName' 'WhereExpression' 'GroupByExpression' 'OrderByExpression' 'ExpressionList' '"," ''comma''+' 'NamedExpression' 'Expression' 'CaseExpression' 'ElseExpression' 'WhenExpressions' 'WhenExpression' 'FunctionExpression' 'Identifier' 'IdentifierName' 'E O F' 'error')
]

{ #category : #generated }
TeradataParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #TeradataFileNode #TeradataFileNode #OrderedCollection #OrderedCollection #TeradataProgramNode #TeradataMergeQueryNode #OrderedCollection #TeradataWhenMergeConditionNode #TeradataRecursiveQueryNode #TeradataRollbackStatementNode #TeradataLockTableStatementNode #TeradataCreateMacroStatementNode #OrderedCollection #OrderedCollection #TeradataParameterNode #TeradataTypeNode #SmaCCToken #TeradataCheckpointStatementNode #TeradataDropTableQueryNode #TeradataUpdateQueryNode #OrderedCollection #TeradataSetExpressionNode #TeradataInsertQueryNode #TeradataUsingStatementNode #TeradataProgramNode #TeradataCheckWorkloadStatementNode #TeradataSetStatementNode #TeradataHelpSessionStatementNode #TeradataProgramNode #TeradataDatabaseStatementNode #TeradataExecuteStatementNode #TeradataDeleteQueryNode #TeradataProgramNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataPartitionByExpressionNode #TeradataQualifyExpressionNode #TeradataOrderByExpressionNode #TeradataHavingNode #OrderedCollection #TeradataQualifyExpressionNode #TeradataPartitionByExpressionNode #TeradataIntoExpressionNode #OrderedCollection #OrderedCollection #TeradataProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #TeradataTableNode #OrderedCollection #TeradataGroupByNode #TeradataOrderByExpressionNode #OrderedCollection #OrderedCollection #TeradataExpressionNode #TeradataExpressionNode #TeradataCaseExpressionNode #TeradataElseExpressionNode #OrderedCollection #TeradataWhenExpressionNode #TeradataFunctionExpressionNode #TeradataIdentifierExpressionNode #TeradataIdentifierNameNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
TeradataParser class >> transitionTable [
^#(
#[1 0 6 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 0 105 0 121 0 109 0 122 0 113 0 123 0 117 0 124 0 117 0 125 0 117 0 128 0 117 0 129 0 117 0 130 0 117 0 131 0 117 0 137 0 117 0 138 0 117 0 139 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 117 0 150 0 117 0 151 0 193 0 152 0 6 0 186] 
#[0 0 197 0 68] 
#[0 0 10 0 2 0 9 0 186] 
#[0 0 201 0 112] 
#[0 0 205 0 68] 
#[0 0 209 0 71] 
#[1 0 14 0 114 0 213 0 168 0 217 0 185] 
#[1 0 221 0 1 0 225 0 53 0 14 0 114 0 229 0 166 0 233 0 168] 
#[1 0 221 0 1 0 237 0 53 0 14 0 114 0 241 0 166 0 233 0 168] 
#[0 0 245 0 96] 
#[0 0 249 0 68] 
#[0 0 18 0 2 0 9 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 1 61 0 178 1 61 0 179 1 61 0 183 1 61 0 184] 
#[0 1 77 0 92] 
#[1 1 81 0 62 0 14 0 114 1 85 0 168 1 89 0 171] 
#[1 1 93 0 96 0 14 0 114 1 85 0 168 1 97 0 171] 
#[1 1 101 0 96 0 14 0 114 1 85 0 168 1 105 0 171] 
#[1 0 221 0 1 1 109 0 62 0 14 0 114 1 113 0 166 0 233 0 168] 
#[0 1 117 0 111] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 121 0 40 1 125 0 41 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 129 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 1 133 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 145 0 40 1 149 0 41 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 153 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 1 157 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 14 0 114 0 213 0 168 1 161 0 185] 
#[1 0 14 0 114 1 85 0 168 1 165 0 171] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 1 169 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 1 173 0 87] 
#[0 0 0 0 186] 
#[1 1 177 0 9 0 22 0 186] 
#[1 0 6 0 9 1 181 0 122 0 6 0 186] 
#[0 0 26 0 2 0 9 0 186] 
#[0 0 30 0 2 0 9 0 186] 
#[0 0 34 0 2 0 9 0 186] 
#[0 0 38 0 2 0 9 0 186] 
#[0 0 42 0 2 0 9 0 186] 
#[0 0 46 0 2 0 9 0 186] 
#[0 0 50 0 2 0 9 0 186] 
#[0 0 54 0 2 0 9 0 186] 
#[0 0 58 0 2 0 9 0 186] 
#[0 0 62 0 2 0 9 0 186] 
#[0 0 66 0 2 0 9 0 186] 
#[0 0 70 0 2 0 9 0 186] 
#[0 0 74 0 2 0 9 0 186] 
#[0 0 78 0 2 0 9 0 186] 
#[0 0 82 0 2 0 9 0 186] 
#[0 0 86 0 2 0 9 0 186] 
#[0 0 90 0 2 0 9 0 186] 
#[0 0 94 0 2 0 9 0 186] 
#[0 0 98 0 2 0 9 0 186] 
#[1 0 102 0 2 0 102 0 9 1 185 0 103 0 102 0 186] 
#[1 0 14 0 114 1 85 0 168 1 189 0 171] 
#[1 1 193 0 44 1 197 0 51] 
#[0 1 201 0 61] 
#[1 0 14 0 114 0 213 0 168 1 205 0 185] 
#[1 1 209 0 114 1 213 0 167] 
#[0 0 106 0 2 0 9 0 186] 
#[1 0 81 0 90 0 85 0 91 1 217 0 152] 
#[1 0 221 0 1 0 14 0 114 1 221 0 166 0 233 0 168] 
#[1 0 110 0 2 0 110 0 9 1 225 0 16 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 1 245 0 109 1 249 0 172 0 110 0 186] 
#[1 1 253 0 114 1 213 0 167] 
#[1 0 221 0 1 0 14 0 114 2 1 0 166 0 233 0 168] 
#[1 0 114 0 2 0 114 0 9 2 5 0 16 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 1 245 0 109 2 9 0 172 0 114 0 186] 
#[1 0 14 0 114 1 85 0 168 2 13 0 171] 
#[0 0 118 0 2 0 9 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 0 81 0 90 0 85 0 91 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 2 17 0 152 1 57 0 168 2 21 0 178 2 21 0 179 2 21 0 183 2 21 0 184] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 2 25 0 178 2 25 0 179 2 25 0 183 2 25 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 2 29 0 108 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 2 33 0 178 2 33 0 179 2 37 0 181 2 41 0 182 2 33 0 183 2 33 0 184] 
#[0 2 45 0 1] 
#[0 2 49 0 1] 
#[0 2 53 0 116] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 2 57 0 178 2 57 0 179 2 57 0 183 2 57 0 184] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 2 61 0 1] 
#[0 2 65 0 1] 
#[0 2 69 0 1] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 2 73 0 114 1 213 0 167] 
#[1 2 77 0 1 0 142 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 0 142 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113 0 142 0 186] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 0 158 0 2 0 9 0 186] 
#[1 0 14 0 114 1 85 0 168 2 161 0 171] 
#[1 2 165 0 114 1 213 0 167] 
#[1 2 169 0 1 2 173 0 106] 
#[1 0 14 0 114 1 85 0 168 2 177 0 171] 
#[0 2 181 0 51] 
#[1 0 14 0 114 1 85 0 168 2 185 0 171] 
#[0 2 189 0 51] 
#[1 0 221 0 1 0 14 0 114 2 193 0 166 0 233 0 168] 
#[1 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 2 197 0 105] 
#[0 2 201 0 116] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 2 205 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 2 209 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 2 213 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 2 217 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 2 221 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 2 233 0 153 2 233 0 163 2 241 0 176 0 162 0 186] 
#[0 0 166 0 2 0 5 0 9 0 19 0 23 0 30 0 31 0 33 0 35 0 38 0 39 0 42 0 44 0 47 0 48 0 53 0 54 0 55 0 56 0 59 0 62 0 69 0 70 0 73 0 81 0 84 0 85 0 89 0 90 0 91 0 93 0 103 0 104 0 105 0 109 0 110 0 186] 
#[1 2 77 0 1 0 170 0 2 2 81 0 3 2 85 0 4 0 170 0 5 2 89 0 6 2 93 0 8 0 170 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 245 0 18 0 170 0 19 2 125 0 20 0 170 0 23 0 170 0 30 0 170 0 31 0 170 0 33 0 170 0 35 0 170 0 38 0 170 0 39 0 170 0 42 0 170 0 44 0 170 0 47 0 170 0 48 0 170 0 53 0 170 0 54 0 170 0 55 0 170 0 56 2 129 0 57 0 170 0 59 0 170 0 62 2 133 0 63 2 137 0 67 0 170 0 69 0 170 0 70 0 170 0 73 2 141 0 74 2 145 0 75 2 149 0 80 0 170 0 81 2 153 0 83 0 170 0 84 0 170 0 85 0 170 0 89 0 170 0 90 0 170 0 91 0 170 0 93 0 170 0 103 0 170 0 104 0 170 0 105 0 170 0 109 0 170 0 110 2 157 0 113 2 249 0 114 0 170 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 2 253 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 1 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 3 5 0 100 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 9 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 3 13 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 3 17 0 153 3 17 0 163 2 241 0 176 0 162 0 186] 
#[0 3 21 0 13] 
#[1 3 25 0 53 3 29 0 93] 
#[1 2 225 0 5 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 3 33 0 124 3 33 0 125 3 33 0 128 3 33 0 129 3 33 0 130 3 33 0 131 3 33 0 137 3 33 0 138 3 33 0 139 3 33 0 142 3 33 0 143 3 33 0 144 3 33 0 145 3 33 0 146 3 33 0 147 3 33 0 148 3 33 0 149 3 33 0 150 3 33 0 151 0 193 0 152 2 241 0 176] 
#[1 0 14 0 114 0 213 0 168 3 37 0 185] 
#[0 0 174 0 9 0 186] 
#[1 3 41 0 9 0 178 0 186] 
#[1 3 45 0 1 3 49 0 16 0 81 0 90 0 85 0 91 3 53 0 152 3 57 0 160] 
#[0 3 61 0 45] 
#[0 0 182 0 2 0 9 0 186] 
#[1 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 3 65 0 124 3 65 0 125 3 65 0 128 3 65 0 129 3 65 0 130 3 65 0 131 3 65 0 137 3 65 0 138 3 65 0 139 3 65 0 142 3 65 0 143 3 65 0 144 3 65 0 145 3 65 0 146 3 65 0 147 3 65 0 148 3 65 0 149 3 65 0 150 3 65 0 151 0 193 0 152] 
#[0 3 69 0 117] 
#[1 3 73 0 1 0 186 0 18 3 77 0 132] 
#[1 0 190 0 1 0 190 0 2 3 81 0 7 0 190 0 9 0 190 0 13 0 190 0 18 0 190 0 19 0 190 0 21 0 190 0 23 0 190 0 25 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 42 0 190 0 44 0 190 0 47 0 190 0 48 0 190 0 50 0 190 0 56 0 190 0 59 0 190 0 60 0 190 0 69 0 190 0 70 0 190 0 73 0 190 0 77 0 190 0 78 0 190 0 86 0 190 0 89 0 190 0 90 0 190 0 91 0 190 0 93 0 190 0 94 0 190 0 98 0 190 0 99 0 190 0 104 0 190 0 105 0 190 0 107 0 190 0 110 0 190 0 186] 
#[0 0 194 0 114] 
#[1 3 85 0 2 1 185 0 103] 
#[1 0 198 0 2 0 198 0 9 3 89 0 16 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 1 245 0 109 3 93 0 172 0 198 0 186] 
#[0 0 202 0 2 0 9 0 186] 
#[0 3 97 0 64] 
#[0 3 101 0 64] 
#[1 3 105 0 64 3 109 0 82] 
#[1 3 113 0 64 3 117 0 82] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 121 0 178 3 121 0 179 3 121 0 183 3 121 0 184] 
#[0 0 206 0 2 0 9 0 186] 
#[1 0 210 0 2 0 210 0 5 3 81 0 7 0 210 0 9 0 210 0 16 3 125 0 18 0 210 0 34 0 210 0 54 0 210 0 58 0 210 0 66 0 210 0 79 0 210 0 81 0 210 0 84 0 210 0 85 0 210 0 88 0 210 0 93 0 210 0 103 0 210 0 105 0 210 0 109 3 129 0 114 0 210 0 186] 
#[1 0 214 0 2 0 214 0 9 3 133 0 16 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 1 245 0 109 3 137 0 172 0 214 0 186] 
#[0 0 218 0 2 0 9 0 186] 
#[0 0 222 0 2 0 9 0 186] 
#[0 0 226 0 2 0 9 0 186] 
#[1 3 141 0 2 1 185 0 103] 
#[1 2 77 0 1 3 145 0 2 2 81 0 3 2 85 0 4 3 149 0 5 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 0 11 0 1 0 230 0 2 2 81 0 3 0 230 0 4 0 230 0 5 0 230 0 6 2 93 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 23 0 230 0 30 0 230 0 31 0 230 0 33 0 230 0 34 0 230 0 35 0 230 0 38 0 230 0 39 0 230 0 42 0 230 0 43 0 230 0 44 0 230 0 46 0 230 0 47 0 230 0 48 0 230 0 51 0 230 0 53 0 230 0 54 0 230 0 55 0 230 0 56 0 230 0 57 0 230 0 58 0 230 0 59 0 230 0 62 0 15 0 63 0 230 0 66 0 230 0 67 0 230 0 69 0 230 0 70 0 230 0 73 2 141 0 74 0 230 0 75 0 230 0 79 0 230 0 80 0 230 0 81 0 19 0 83 0 230 0 84 0 230 0 85 0 230 0 88 0 230 0 89 0 230 0 90 0 230 0 91 0 230 0 93 0 230 0 97 0 230 0 103 0 230 0 104 0 230 0 105 0 230 0 108 0 230 0 109 0 230 0 110 0 230 0 113 0 230 0 114 0 230 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 153 0 178 3 153 0 179 3 153 0 183 3 153 0 184] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 29 0 108 2 157 0 113 3 157 0 181 2 41 0 182] 
#[1 3 161 0 43 3 165 0 44 2 29 0 108 3 169 0 180 3 173 0 182] 
#[0 0 234 0 43 0 44 0 108] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 177 0 178 3 177 0 179 3 177 0 183 3 177 0 184] 
#[0 3 181 0 114] 
#[0 3 185 0 114] 
#[1 0 23 0 1 0 238 0 2 2 81 0 3 2 85 0 4 0 238 0 5 2 89 0 6 2 93 0 8 0 238 0 9 0 238 0 10 0 238 0 11 0 238 0 12 0 238 0 13 0 238 0 14 0 238 0 15 0 238 0 16 0 238 0 17 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 23 0 238 0 30 0 238 0 31 0 238 0 33 0 238 0 34 0 238 0 35 0 238 0 38 0 238 0 39 0 238 0 42 0 238 0 43 0 238 0 44 0 238 0 46 0 238 0 47 0 238 0 48 0 238 0 51 0 238 0 53 0 238 0 54 0 238 0 55 0 238 0 56 0 238 0 58 0 238 0 59 0 238 0 62 0 27 0 63 0 238 0 66 0 238 0 69 0 238 0 70 0 238 0 73 2 141 0 74 0 238 0 79 0 238 0 80 0 238 0 81 0 31 0 83 0 238 0 84 0 238 0 85 0 238 0 88 0 238 0 89 0 238 0 90 0 238 0 91 0 238 0 93 0 238 0 97 0 238 0 103 0 238 0 104 0 238 0 105 0 238 0 108 0 238 0 109 0 238 0 110 0 238 0 113 0 238 0 114 0 238 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 189 0 178 3 189 0 179 3 189 0 183 3 189 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 3 193 0 22 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 3 197 0 65 1 25 0 75 1 29 0 76 1 33 0 95 3 201 0 101 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 205 0 178 3 205 0 179 3 205 0 183 3 205 0 184] 
#[1 0 253 0 1 3 209 0 2 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 3 213 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 242 0 1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 3 81 0 7 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 15 0 242 0 16 0 242 0 17 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 23 0 242 0 30 0 242 0 31 0 242 0 33 0 242 0 34 0 242 0 35 0 242 0 38 0 242 0 39 0 242 0 42 0 242 0 43 0 242 0 44 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 51 0 242 0 53 0 242 0 54 0 242 0 55 0 242 0 56 0 242 0 57 0 242 0 58 0 242 0 59 0 242 0 62 0 242 0 63 0 242 0 66 0 242 0 67 0 242 0 69 0 242 0 70 0 242 0 73 0 242 0 74 0 242 0 75 0 242 0 79 0 242 0 80 0 242 0 81 0 242 0 83 0 242 0 84 0 242 0 85 0 242 0 88 0 242 0 89 0 242 0 90 0 242 0 91 0 242 0 93 0 242 0 97 0 242 0 103 0 242 0 104 0 242 0 105 0 242 0 108 0 242 0 109 0 242 0 110 0 242 0 113 0 242 0 114 0 242 0 186] 
#[1 4 33 0 21 4 33 0 25 3 225 0 27 4 33 0 29 4 33 0 32 4 33 0 36 4 33 0 37 4 33 0 50 3 249 0 52 4 33 0 60 4 33 0 77 4 33 0 78 4 33 0 86 4 33 0 94 4 33 0 98 4 33 0 99 4 33 0 107 4 29 0 135 4 33 0 136] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 37 0 178 4 37 0 179 4 37 0 183 4 37 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 41 0 178 4 41 0 179 4 41 0 183 4 41 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 45 0 178 4 45 0 179 4 45 0 183 4 45 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 49 0 178 4 49 0 179 4 49 0 183 4 49 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 53 0 178 4 53 0 179 4 53 0 183 4 53 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 57 0 178 4 57 0 179 4 57 0 183 4 57 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 61 0 178 4 61 0 179 4 61 0 183 4 61 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 65 0 178 4 65 0 179 4 65 0 183 4 65 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 69 0 178 4 69 0 179 4 69 0 183 4 69 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 73 0 178 4 73 0 179 4 73 0 183 4 73 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 77 0 178 4 77 0 179 4 77 0 183 4 77 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 81 0 178 4 81 0 179 4 81 0 183 4 81 0 184] 
#[1 4 85 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 89 0 178 4 89 0 179 4 89 0 183 4 89 0 184] 
#[1 4 93 0 75 4 97 0 76] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 101 0 178 4 101 0 179 4 101 0 183 4 101 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 105 0 178 4 105 0 179 4 105 0 183 4 105 0 184] 
#[1 4 109 0 57 4 113 0 67] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 117 0 178 4 117 0 179 4 117 0 183 4 117 0 184] 
#[0 4 121 0 1] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 125 0 178 4 125 0 179 4 125 0 183 4 125 0 184] 
#[1 4 129 0 1 4 133 0 106] 
#[1 0 246 0 1 0 246 0 2 3 81 0 7 0 246 0 9 0 246 0 45 0 246 0 51 0 246 0 53 0 246 0 93 0 246 0 106 0 246 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 137 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 4 141 0 1] 
#[0 4 145 0 51] 
#[1 0 14 0 114 0 213 0 168 4 149 0 185] 
#[0 4 153 0 51] 
#[1 0 14 0 114 0 213 0 168 4 157 0 185] 
#[1 1 229 0 34 1 233 0 58 1 237 0 66 1 241 0 88 4 161 0 105] 
#[1 0 221 0 1 0 14 0 114 4 165 0 166 0 233 0 168] 
#[0 4 169 0 53] 
#[0 4 173 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 4 177 0 153 4 177 0 163 2 241 0 176 0 162 0 186] 
#[0 4 181 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 4 185 0 153 4 185 0 163 2 241 0 176 0 162 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 189 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 0 250 0 1 0 3 0 5 0 6 0 26 0 28 0 49 0 61 0 75 0 76 0 95 0 102 0 114 0 115 0 116 0 117] 
#[0 4 193 0 1] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 4 213 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[0 1 6 0 2 0 9 0 53 0 54 0 81 0 84 0 85 0 103 0 109 0 186] 
#[1 0 253 0 1 1 1 0 3 4 237 0 5 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 4 241 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 4 245 0 114] 
#[0 1 10 0 2 0 5 0 9 0 19 0 23 0 30 0 31 0 33 0 35 0 38 0 39 0 42 0 44 0 47 0 48 0 53 0 54 0 55 0 56 0 59 0 62 0 69 0 70 0 73 0 81 0 84 0 85 0 89 0 90 0 91 0 93 0 103 0 104 0 105 0 109 0 110 0 186] 
#[0 4 249 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 4 253 0 153 4 253 0 163 2 241 0 176 0 162 0 186] 
#[0 5 1 0 117] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 5 5 0 153 5 5 0 163 2 241 0 176 0 162 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 9 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 5 13 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 17 0 178 5 17 0 179 5 17 0 183 5 17 0 184] 
#[1 0 221 0 1 0 14 0 114 5 21 0 165 5 25 0 166 0 233 0 168] 
#[1 0 14 0 114 5 29 0 140 5 33 0 141 0 213 0 168 5 37 0 185] 
#[0 1 14 0 2 0 9 0 186] 
#[0 5 41 0 1] 
#[1 0 174 0 2 0 174 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 5 45 0 124 5 45 0 125 5 45 0 128 5 45 0 129 5 45 0 130 5 45 0 131 5 45 0 137 5 45 0 138 5 45 0 139 5 45 0 142 5 45 0 143 5 45 0 144 5 45 0 145 5 45 0 146 5 45 0 147 5 45 0 148 5 45 0 149 5 45 0 150 5 45 0 151 0 193 0 152 0 174 0 186] 
#[1 0 81 0 90 0 85 0 91 5 49 0 152] 
#[1 3 45 0 1 0 81 0 90 0 85 0 91 3 53 0 152 5 53 0 160] 
#[1 1 18 0 2 1 18 0 9 1 185 0 103 1 18 0 186] 
#[0 1 22 0 2 0 9 0 103 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 57 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 1 26 0 2 0 9 0 186] 
#[1 1 30 0 2 1 30 0 9 5 61 0 44 1 30 0 186] 
#[1 0 14 0 114 5 65 0 133 5 69 0 134 0 213 0 168 5 73 0 185] 
#[0 5 77 0 18] 
#[0 1 34 0 114] 
#[1 1 38 0 2 1 38 0 5 1 38 0 9 1 38 0 16 5 81 0 18 1 38 0 34 1 38 0 54 1 38 0 58 1 38 0 66 1 38 0 79 1 38 0 81 1 38 0 84 1 38 0 85 1 38 0 88 1 38 0 93 1 38 0 103 1 38 0 105 1 38 0 109 5 85 0 114 1 38 0 186] 
#[0 1 42 0 2 0 9 0 186] 
#[0 1 46 0 2 0 9 0 186] 
#[1 0 221 0 1 0 14 0 114 5 89 0 166 0 233 0 168] 
#[1 0 221 0 1 0 14 0 114 5 93 0 166 0 233 0 168] 
#[1 0 221 0 1 0 14 0 114 5 97 0 166 0 233 0 168] 
#[0 5 101 0 64] 
#[1 0 221 0 1 0 14 0 114 5 105 0 166 0 233 0 168] 
#[0 5 109 0 64] 
#[1 2 77 0 1 1 50 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 1 50 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 1 50 0 43 1 50 0 54 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 1 50 0 81 2 153 0 83 1 50 0 84 1 50 0 85 1 50 0 103 2 157 0 113 1 50 0 186] 
#[0 5 113 0 114] 
#[0 1 54 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 1 58 0 2 0 9 0 186] 
#[0 1 62 0 2 0 9 0 186] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 1 70 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 117 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 5 121 0 97 2 157 0 113] 
#[1 3 161 0 43 5 125 0 44 2 29 0 108 5 129 0 180 3 173 0 182] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 133 0 178 5 133 0 179 5 133 0 183 5 133 0 184] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 5 137 0 44] 
#[0 1 78 0 43 0 44 0 108] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 5 141 0 18 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 5 145 0 53] 
#[0 1 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 5 149 0 53 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 5 153 0 53] 
#[0 5 157 0 53] 
#[0 5 161 0 53] 
#[1 2 77 0 1 5 165 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 1 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 5 169 0 2 2 225 0 5 2 241 0 176] 
#[0 1 90 0 1 0 2 0 5 0 52] 
#[0 1 94 0 1 0 2 0 5 0 52] 
#[0 5 173 0 2] 
#[0 1 98 0 1 0 2 0 5 0 52] 
#[0 1 102 0 1 0 2 0 5 0 52] 
#[0 1 106 0 1 0 2 0 5 0 52] 
#[0 1 110 0 1 0 2 0 5 0 52] 
#[0 1 114 0 1 0 2 0 5 0 52] 
#[0 5 177 0 116] 
#[0 1 118 0 1 0 2 0 5 0 52] 
#[0 1 122 0 1 0 2 0 5 0 52] 
#[0 1 126 0 1 0 2 0 5 0 52] 
#[0 1 130 0 1 0 2 0 5 0 52] 
#[0 1 134 0 1 0 2 0 5 0 52] 
#[0 1 138 0 1 0 2 0 5 0 52] 
#[0 1 142 0 1 0 2 0 5 0 52] 
#[0 1 146 0 1 0 2 0 5 0 52] 
#[0 5 181 0 2] 
#[1 5 185 0 1 1 150 0 2 1 150 0 5 1 150 0 52] 
#[1 0 39 0 1 1 154 0 2 1 154 0 3 1 154 0 4 1 154 0 5 1 154 0 6 1 154 0 8 1 154 0 9 1 154 0 10 1 154 0 11 1 154 0 12 1 154 0 13 1 154 0 14 1 154 0 15 1 154 0 16 1 154 0 17 1 154 0 18 1 154 0 19 1 154 0 20 1 154 0 23 1 154 0 30 1 154 0 31 1 154 0 33 1 154 0 34 1 154 0 35 1 154 0 38 1 154 0 39 1 154 0 42 1 154 0 43 1 154 0 44 1 154 0 46 1 154 0 47 1 154 0 48 1 154 0 51 1 154 0 53 1 154 0 54 1 154 0 55 1 154 0 56 1 154 0 57 1 154 0 58 1 154 0 59 1 154 0 62 0 43 0 63 1 154 0 66 1 154 0 67 1 154 0 69 1 154 0 70 1 154 0 73 1 154 0 74 1 154 0 75 1 154 0 79 1 154 0 80 1 154 0 81 0 47 0 83 1 154 0 84 1 154 0 85 1 154 0 88 1 154 0 89 1 154 0 90 1 154 0 91 1 154 0 93 1 154 0 97 1 154 0 103 1 154 0 104 1 154 0 105 1 154 0 108 1 154 0 109 1 154 0 110 1 154 0 113 1 154 0 114 1 154 0 186] 
#[1 0 51 0 1 1 158 0 2 2 81 0 3 1 158 0 4 1 158 0 5 1 158 0 6 2 93 0 8 1 158 0 9 1 158 0 10 1 158 0 11 1 158 0 12 1 158 0 13 1 158 0 14 1 158 0 15 1 158 0 16 1 158 0 17 1 158 0 18 1 158 0 19 1 158 0 20 1 158 0 23 1 158 0 30 1 158 0 31 1 158 0 33 1 158 0 34 1 158 0 35 1 158 0 38 1 158 0 39 1 158 0 42 1 158 0 43 1 158 0 44 1 158 0 46 1 158 0 47 1 158 0 48 1 158 0 51 1 158 0 53 1 158 0 54 1 158 0 55 1 158 0 56 1 158 0 57 1 158 0 58 1 158 0 59 1 158 0 62 0 55 0 63 1 158 0 66 1 158 0 67 1 158 0 69 1 158 0 70 1 158 0 73 2 141 0 74 1 158 0 75 1 158 0 79 1 158 0 80 1 158 0 81 0 59 0 83 1 158 0 84 1 158 0 85 1 158 0 88 1 158 0 89 1 158 0 90 1 158 0 91 1 158 0 93 1 158 0 97 1 158 0 103 1 158 0 104 1 158 0 105 1 158 0 108 1 158 0 109 1 158 0 110 1 158 0 113 1 158 0 114 1 158 0 186] 
#[1 0 63 0 1 1 162 0 2 2 81 0 3 1 162 0 4 1 162 0 5 1 162 0 6 2 93 0 8 1 162 0 9 1 162 0 10 1 162 0 11 1 162 0 12 1 162 0 13 1 162 0 14 1 162 0 15 1 162 0 16 1 162 0 17 1 162 0 18 1 162 0 19 1 162 0 20 1 162 0 23 1 162 0 30 1 162 0 31 1 162 0 33 1 162 0 34 1 162 0 35 1 162 0 38 1 162 0 39 1 162 0 42 1 162 0 43 1 162 0 44 1 162 0 46 1 162 0 47 1 162 0 48 1 162 0 51 1 162 0 53 1 162 0 54 1 162 0 55 1 162 0 56 1 162 0 57 1 162 0 58 1 162 0 59 1 162 0 62 0 67 0 63 1 162 0 66 1 162 0 67 1 162 0 69 1 162 0 70 1 162 0 73 2 141 0 74 1 162 0 75 1 162 0 79 1 162 0 80 1 162 0 81 0 71 0 83 1 162 0 84 1 162 0 85 1 162 0 88 1 162 0 89 1 162 0 90 1 162 0 91 1 162 0 93 1 162 0 97 1 162 0 103 1 162 0 104 1 162 0 105 1 162 0 108 1 162 0 109 1 162 0 110 1 162 0 113 1 162 0 114 1 162 0 186] 
#[1 0 75 0 1 1 166 0 2 1 166 0 3 1 166 0 4 1 166 0 5 1 166 0 6 1 166 0 8 1 166 0 9 1 166 0 10 1 166 0 11 1 166 0 12 1 166 0 13 1 166 0 14 1 166 0 15 1 166 0 16 1 166 0 17 1 166 0 18 1 166 0 19 1 166 0 20 1 166 0 23 1 166 0 30 1 166 0 31 1 166 0 33 1 166 0 34 1 166 0 35 1 166 0 38 1 166 0 39 1 166 0 42 1 166 0 43 1 166 0 44 1 166 0 46 1 166 0 47 1 166 0 48 1 166 0 51 1 166 0 53 1 166 0 54 1 166 0 55 1 166 0 56 1 166 0 57 1 166 0 58 1 166 0 59 1 166 0 62 0 79 0 63 1 166 0 66 1 166 0 67 1 166 0 69 1 166 0 70 1 166 0 73 1 166 0 74 1 166 0 75 1 166 0 79 1 166 0 80 1 166 0 81 0 83 0 83 1 166 0 84 1 166 0 85 1 166 0 88 1 166 0 89 1 166 0 90 1 166 0 91 1 166 0 93 1 166 0 97 1 166 0 103 1 166 0 104 1 166 0 105 1 166 0 108 1 166 0 109 1 166 0 110 1 166 0 113 1 166 0 114 1 166 0 186] 
#[1 0 87 0 1 1 170 0 2 2 81 0 3 2 85 0 4 1 170 0 5 2 89 0 6 2 93 0 8 1 170 0 9 1 170 0 16 1 170 0 17 1 170 0 18 1 170 0 19 1 170 0 23 1 170 0 30 1 170 0 31 1 170 0 33 1 170 0 34 1 170 0 35 1 170 0 38 1 170 0 39 1 170 0 42 1 170 0 43 1 170 0 44 1 170 0 46 1 170 0 47 1 170 0 48 1 170 0 51 1 170 0 53 1 170 0 54 1 170 0 55 1 170 0 56 2 129 0 57 1 170 0 58 1 170 0 59 1 170 0 62 0 91 0 63 1 170 0 66 2 137 0 67 1 170 0 69 1 170 0 70 1 170 0 73 2 141 0 74 2 145 0 75 1 170 0 79 1 170 0 80 1 170 0 81 0 95 0 83 1 170 0 84 1 170 0 85 1 170 0 88 1 170 0 89 1 170 0 90 1 170 0 91 1 170 0 93 1 170 0 97 1 170 0 103 1 170 0 104 1 170 0 105 1 170 0 108 1 170 0 109 1 170 0 110 2 157 0 113 1 170 0 114 1 170 0 186] 
#[1 0 99 0 1 1 174 0 2 2 81 0 3 2 85 0 4 1 174 0 5 2 89 0 6 2 93 0 8 1 174 0 9 1 174 0 16 1 174 0 17 1 174 0 18 1 174 0 19 1 174 0 23 1 174 0 30 1 174 0 31 1 174 0 33 1 174 0 34 1 174 0 35 1 174 0 38 1 174 0 39 1 174 0 42 1 174 0 43 1 174 0 44 1 174 0 46 1 174 0 47 1 174 0 48 1 174 0 51 1 174 0 53 1 174 0 54 1 174 0 55 1 174 0 56 2 129 0 57 1 174 0 58 1 174 0 59 1 174 0 62 0 103 0 63 1 174 0 66 2 137 0 67 1 174 0 69 1 174 0 70 1 174 0 73 2 141 0 74 2 145 0 75 1 174 0 79 1 174 0 80 1 174 0 81 0 107 0 83 1 174 0 84 1 174 0 85 1 174 0 88 1 174 0 89 1 174 0 90 1 174 0 91 1 174 0 93 1 174 0 97 1 174 0 103 1 174 0 104 1 174 0 105 1 174 0 108 1 174 0 109 1 174 0 110 2 157 0 113 1 174 0 114 1 174 0 186] 
#[1 0 111 0 1 1 178 0 2 2 81 0 3 2 85 0 4 1 178 0 5 2 89 0 6 2 93 0 8 1 178 0 9 1 178 0 16 1 178 0 17 1 178 0 18 1 178 0 19 1 178 0 23 1 178 0 30 1 178 0 31 1 178 0 33 1 178 0 34 1 178 0 35 1 178 0 38 1 178 0 39 1 178 0 42 1 178 0 43 1 178 0 44 1 178 0 46 1 178 0 47 1 178 0 48 1 178 0 51 1 178 0 53 1 178 0 54 1 178 0 55 1 178 0 56 2 129 0 57 1 178 0 58 1 178 0 59 1 178 0 62 0 115 0 63 1 178 0 66 2 137 0 67 1 178 0 69 1 178 0 70 1 178 0 73 2 141 0 74 2 145 0 75 1 178 0 79 1 178 0 80 1 178 0 81 0 119 0 83 1 178 0 84 1 178 0 85 1 178 0 88 1 178 0 89 1 178 0 90 1 178 0 91 1 178 0 93 1 178 0 97 1 178 0 103 1 178 0 104 1 178 0 105 1 178 0 108 1 178 0 109 1 178 0 110 2 157 0 113 1 178 0 114 1 178 0 186] 
#[1 0 123 0 1 1 182 0 2 2 81 0 3 2 85 0 4 1 182 0 5 2 89 0 6 2 93 0 8 1 182 0 9 1 182 0 16 1 182 0 17 1 182 0 18 1 182 0 19 1 182 0 23 1 182 0 30 1 182 0 31 1 182 0 33 1 182 0 34 1 182 0 35 1 182 0 38 1 182 0 39 1 182 0 42 1 182 0 43 1 182 0 44 1 182 0 46 1 182 0 47 1 182 0 48 1 182 0 51 1 182 0 53 1 182 0 54 1 182 0 55 1 182 0 56 2 129 0 57 1 182 0 58 1 182 0 59 1 182 0 62 0 127 0 63 1 182 0 66 2 137 0 67 1 182 0 69 1 182 0 70 1 182 0 73 2 141 0 74 2 145 0 75 1 182 0 79 1 182 0 80 1 182 0 81 0 131 0 83 1 182 0 84 1 182 0 85 1 182 0 88 1 182 0 89 1 182 0 90 1 182 0 91 1 182 0 93 1 182 0 97 1 182 0 103 1 182 0 104 1 182 0 105 1 182 0 108 1 182 0 109 1 182 0 110 2 157 0 113 1 182 0 114 1 182 0 186] 
#[1 0 135 0 1 1 186 0 2 2 81 0 3 2 85 0 4 1 186 0 5 2 89 0 6 2 93 0 8 1 186 0 9 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 23 1 186 0 30 1 186 0 31 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 38 1 186 0 39 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 51 1 186 0 53 1 186 0 54 1 186 0 55 1 186 0 56 2 129 0 57 1 186 0 58 1 186 0 59 1 186 0 62 0 139 0 63 1 186 0 66 2 137 0 67 1 186 0 69 1 186 0 70 1 186 0 73 2 141 0 74 2 145 0 75 1 186 0 79 1 186 0 80 1 186 0 81 0 143 0 83 1 186 0 84 1 186 0 85 1 186 0 88 1 186 0 89 1 186 0 90 1 186 0 91 1 186 0 93 1 186 0 97 1 186 0 103 1 186 0 104 1 186 0 105 1 186 0 108 1 186 0 109 1 186 0 110 2 157 0 113 1 186 0 114 1 186 0 186] 
#[1 0 147 0 1 1 190 0 2 2 81 0 3 2 85 0 4 1 190 0 5 2 89 0 6 2 93 0 8 1 190 0 9 1 190 0 16 1 190 0 17 1 190 0 18 1 190 0 19 1 190 0 23 1 190 0 30 1 190 0 31 1 190 0 33 1 190 0 34 1 190 0 35 1 190 0 38 1 190 0 39 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 46 1 190 0 47 1 190 0 48 1 190 0 51 1 190 0 53 1 190 0 54 1 190 0 55 1 190 0 56 2 129 0 57 1 190 0 58 1 190 0 59 1 190 0 62 0 151 0 63 1 190 0 66 2 137 0 67 1 190 0 69 1 190 0 70 1 190 0 73 2 141 0 74 2 145 0 75 1 190 0 79 1 190 0 80 1 190 0 81 0 155 0 83 1 190 0 84 1 190 0 85 1 190 0 88 1 190 0 89 1 190 0 90 1 190 0 91 1 190 0 93 1 190 0 97 1 190 0 103 1 190 0 104 1 190 0 105 1 190 0 108 1 190 0 109 1 190 0 110 2 157 0 113 1 190 0 114 1 190 0 186] 
#[1 0 159 0 1 1 194 0 2 2 81 0 3 2 85 0 4 1 194 0 5 2 89 0 6 2 93 0 8 1 194 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 1 194 0 16 1 194 0 17 1 194 0 18 1 194 0 19 2 125 0 20 1 194 0 23 1 194 0 30 1 194 0 31 1 194 0 33 1 194 0 34 1 194 0 35 1 194 0 38 1 194 0 39 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 46 1 194 0 47 1 194 0 48 1 194 0 51 1 194 0 53 1 194 0 54 1 194 0 55 1 194 0 56 2 129 0 57 1 194 0 58 1 194 0 59 1 194 0 62 0 163 0 63 1 194 0 66 2 137 0 67 1 194 0 69 1 194 0 70 1 194 0 73 2 141 0 74 2 145 0 75 1 194 0 79 1 194 0 80 1 194 0 81 0 167 0 83 1 194 0 84 1 194 0 85 1 194 0 88 1 194 0 89 1 194 0 90 1 194 0 91 1 194 0 93 1 194 0 97 1 194 0 103 1 194 0 104 1 194 0 105 1 194 0 108 1 194 0 109 1 194 0 110 2 157 0 113 1 194 0 114 1 194 0 186] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 5 189 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 0 81 0 90 0 85 0 91 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 5 193 0 152 1 57 0 168 5 197 0 178 5 197 0 179 5 197 0 183 5 197 0 184] 
#[1 0 171 0 1 1 198 0 2 2 81 0 3 2 85 0 4 1 198 0 5 2 89 0 6 2 93 0 8 1 198 0 9 1 198 0 10 1 198 0 11 1 198 0 12 1 198 0 13 1 198 0 14 1 198 0 15 1 198 0 16 1 198 0 17 1 198 0 18 1 198 0 19 1 198 0 20 1 198 0 23 1 198 0 30 1 198 0 31 1 198 0 33 1 198 0 34 1 198 0 35 1 198 0 38 1 198 0 39 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 46 1 198 0 47 1 198 0 48 1 198 0 51 1 198 0 53 1 198 0 54 1 198 0 55 1 198 0 56 1 198 0 58 1 198 0 59 1 198 0 62 0 175 0 63 1 198 0 66 1 198 0 69 1 198 0 70 1 198 0 73 2 141 0 74 1 198 0 79 1 198 0 80 1 198 0 81 0 179 0 83 1 198 0 84 1 198 0 85 1 198 0 88 1 198 0 89 1 198 0 90 1 198 0 91 1 198 0 93 1 198 0 97 1 198 0 103 1 198 0 104 1 198 0 105 1 198 0 108 1 198 0 109 1 198 0 110 1 198 0 113 1 198 0 114 1 198 0 186] 
#[0 5 201 0 76] 
#[0 1 202 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 183 0 1 1 206 0 2 2 81 0 3 2 85 0 4 1 206 0 5 2 89 0 6 2 93 0 8 1 206 0 9 1 206 0 10 1 206 0 11 1 206 0 12 1 206 0 13 1 206 0 14 1 206 0 15 1 206 0 16 1 206 0 17 1 206 0 18 1 206 0 19 1 206 0 20 1 206 0 23 1 206 0 30 1 206 0 31 1 206 0 33 1 206 0 34 1 206 0 35 1 206 0 38 1 206 0 39 1 206 0 42 1 206 0 43 1 206 0 44 0 187 0 46 1 206 0 47 1 206 0 48 1 206 0 51 1 206 0 53 1 206 0 54 1 206 0 55 1 206 0 56 1 206 0 58 1 206 0 59 1 206 0 62 0 191 0 63 1 206 0 66 1 206 0 69 1 206 0 70 1 206 0 73 2 141 0 74 1 206 0 79 1 206 0 80 1 206 0 81 0 195 0 83 1 206 0 84 1 206 0 85 1 206 0 88 1 206 0 89 1 206 0 90 1 206 0 91 1 206 0 93 1 206 0 97 1 206 0 103 1 206 0 104 1 206 0 105 1 206 0 108 1 206 0 109 1 206 0 110 1 206 0 113 1 206 0 114 1 206 0 186] 
#[1 0 199 0 1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 8 1 210 0 9 1 210 0 10 1 210 0 11 1 210 0 12 1 210 0 13 1 210 0 14 1 210 0 15 1 210 0 16 1 210 0 17 1 210 0 18 1 210 0 19 1 210 0 20 1 210 0 23 1 210 0 30 1 210 0 31 1 210 0 33 1 210 0 34 1 210 0 35 1 210 0 38 1 210 0 39 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 46 1 210 0 47 1 210 0 48 1 210 0 51 1 210 0 53 1 210 0 54 1 210 0 55 1 210 0 56 1 210 0 57 1 210 0 58 1 210 0 59 1 210 0 62 0 203 0 63 1 210 0 66 1 210 0 67 1 210 0 69 1 210 0 70 1 210 0 73 1 210 0 74 1 210 0 75 1 210 0 79 1 210 0 80 1 210 0 81 0 207 0 83 1 210 0 84 1 210 0 85 1 210 0 88 1 210 0 89 1 210 0 90 1 210 0 91 1 210 0 93 1 210 0 97 1 210 0 103 1 210 0 104 1 210 0 105 1 210 0 108 1 210 0 109 1 210 0 110 1 210 0 113 1 210 0 114 1 210 0 186] 
#[1 5 209 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 213 0 178 5 213 0 179 5 213 0 183 5 213 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 217 0 178 5 217 0 179 5 217 0 183 5 217 0 184] 
#[1 0 211 0 1 1 214 0 2 2 81 0 3 2 85 0 4 1 214 0 5 2 89 0 6 2 93 0 8 1 214 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 1 214 0 16 2 121 0 17 1 214 0 18 1 214 0 19 2 125 0 20 1 214 0 23 1 214 0 30 1 214 0 31 1 214 0 33 1 214 0 34 1 214 0 35 1 214 0 38 1 214 0 39 1 214 0 42 1 214 0 43 1 214 0 44 1 214 0 46 1 214 0 47 1 214 0 48 1 214 0 51 1 214 0 53 1 214 0 54 1 214 0 55 1 214 0 56 2 129 0 57 1 214 0 58 1 214 0 59 1 214 0 62 0 215 0 63 1 214 0 66 2 137 0 67 1 214 0 69 1 214 0 70 1 214 0 73 2 141 0 74 2 145 0 75 1 214 0 79 1 214 0 80 1 214 0 81 0 219 0 83 1 214 0 84 1 214 0 85 1 214 0 88 1 214 0 89 1 214 0 90 1 214 0 91 1 214 0 93 1 214 0 97 1 214 0 103 1 214 0 104 1 214 0 105 1 214 0 108 1 214 0 109 1 214 0 110 2 157 0 113 1 214 0 114 1 214 0 186] 
#[1 5 221 0 2 5 225 0 81 4 205 0 84 5 229 0 162 5 233 0 174] 
#[1 0 223 0 1 1 218 0 2 2 81 0 3 2 85 0 4 1 218 0 5 2 89 0 6 2 93 0 8 1 218 0 9 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 16 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 23 1 218 0 30 1 218 0 31 1 218 0 33 1 218 0 34 1 218 0 35 1 218 0 38 1 218 0 39 1 218 0 42 1 218 0 43 1 218 0 44 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 53 1 218 0 54 1 218 0 55 1 218 0 56 2 129 0 57 1 218 0 58 1 218 0 59 1 218 0 62 0 227 0 63 1 218 0 66 2 137 0 67 1 218 0 69 1 218 0 70 1 218 0 73 2 141 0 74 2 145 0 75 1 218 0 79 1 218 0 80 1 218 0 81 0 231 0 83 1 218 0 84 1 218 0 85 1 218 0 88 1 218 0 89 1 218 0 90 1 218 0 91 1 218 0 93 1 218 0 97 1 218 0 103 1 218 0 104 1 218 0 105 1 218 0 108 1 218 0 109 1 218 0 110 1 218 0 113 1 218 0 114 1 218 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 237 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 5 241 0 1] 
#[1 5 245 0 2 2 225 0 5 2 241 0 176] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 5 249 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 14 0 114 0 213 0 168 5 253 0 185] 
#[1 1 222 0 2 1 222 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 6 1 0 124 6 1 0 125 6 1 0 128 6 1 0 129 6 1 0 130 6 1 0 131 6 1 0 137 6 1 0 138 6 1 0 139 6 1 0 142 6 1 0 143 6 1 0 144 6 1 0 145 6 1 0 146 6 1 0 147 6 1 0 148 6 1 0 149 6 1 0 150 6 1 0 151 0 193 0 152 1 222 0 186] 
#[1 0 14 0 114 0 213 0 168 6 5 0 185] 
#[1 1 226 0 2 1 226 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 6 9 0 124 6 9 0 125 6 9 0 128 6 9 0 129 6 9 0 130 6 9 0 131 6 9 0 137 6 9 0 138 6 9 0 139 6 9 0 142 6 9 0 143 6 9 0 144 6 9 0 145 6 9 0 146 6 9 0 147 6 9 0 148 6 9 0 149 6 9 0 150 6 9 0 151 0 193 0 152 1 226 0 186] 
#[1 0 221 0 1 0 14 0 114 6 13 0 166 0 233 0 168] 
#[1 1 229 0 34 1 233 0 58 1 237 0 66 6 17 0 79 1 241 0 88] 
#[1 0 221 0 1 0 14 0 114 6 21 0 165 5 25 0 166 0 233 0 168] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 25 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 6 29 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 33 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 6 37 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 6 41 0 153 6 41 0 163 2 241 0 176 0 162 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 45 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 221 0 1 0 14 0 114 6 49 0 165 5 25 0 166 0 233 0 168] 
#[0 6 53 0 24] 
#[0 6 57 0 24] 
#[0 1 230 0 2 0 9 0 103 0 186] 
#[0 1 234 0 2 0 9 0 103 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 6 65 0 157 6 65 0 161 1 238 0 186] 
#[0 1 242 0 2 0 9 0 81 0 85 0 103 0 186] 
#[1 0 254 0 2 0 254 0 9 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 1 245 0 109 6 73 0 156 6 73 0 162 6 77 0 172 6 81 0 173 0 254 0 186] 
#[1 0 254 0 2 0 254 0 9 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 6 85 0 156 6 85 0 162 6 89 0 173 0 254 0 186] 
#[1 0 254 0 2 0 254 0 9 6 93 0 55 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 6 97 0 156 6 101 0 159 6 97 0 162 0 254 0 186] 
#[0 1 246 0 1 0 3 0 5 0 6 0 26 0 28 0 49 0 61 0 75 0 76 0 95 0 102 0 114 0 115 0 116 0 117] 
#[0 1 250 0 2 0 5 0 9 0 19 0 23 0 30 0 31 0 33 0 35 0 38 0 39 0 42 0 44 0 47 0 48 0 53 0 54 0 55 0 56 0 59 0 62 0 69 0 70 0 73 0 81 0 84 0 85 0 89 0 90 0 91 0 93 0 103 0 104 0 105 0 109 0 110 0 186] 
#[0 1 254 0 2 0 5 0 9 0 19 0 23 0 30 0 31 0 33 0 35 0 38 0 39 0 42 0 44 0 47 0 48 0 53 0 54 0 55 0 56 0 59 0 62 0 69 0 70 0 73 0 81 0 84 0 85 0 89 0 90 0 91 0 93 0 103 0 104 0 105 0 109 0 110 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 105 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 6 109 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 113 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 6 117 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 6 121 0 153 6 121 0 163 2 241 0 176 0 162 0 186] 
#[0 2 2 0 2 0 9 0 103 0 186] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 6 125 0 104 2 157 0 113] 
#[1 6 129 0 5 6 133 0 93] 
#[1 2 6 0 2 2 6 0 5 2 6 0 9 1 229 0 34 2 6 0 54 1 233 0 58 1 237 0 66 2 6 0 81 2 6 0 84 2 6 0 85 1 241 0 88 2 6 0 93 2 6 0 103 2 6 0 109 2 6 0 186] 
#[1 2 10 0 2 6 137 0 5 2 10 0 9 6 141 0 43 1 245 0 109 6 145 0 172 2 10 0 186] 
#[0 2 14 0 2 0 5 0 9 0 43 0 108 0 109 0 186] 
#[0 6 149 0 13] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 153 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 2 18 0 2 0 9 0 186] 
#[1 6 157 0 2 1 185 0 103] 
#[0 2 22 0 2 0 9 0 103 0 186] 
#[1 2 225 0 5 6 161 0 110 2 241 0 176] 
#[0 2 26 0 2 0 9 0 186] 
#[1 6 165 0 2 6 169 0 5] 
#[0 2 30 0 2 0 5] 
#[1 4 33 0 21 4 33 0 25 4 33 0 29 4 33 0 32 4 33 0 36 4 33 0 37 4 33 0 50 4 33 0 60 4 33 0 77 4 33 0 78 4 33 0 86 4 33 0 94 4 33 0 98 4 33 0 99 4 33 0 107 6 173 0 135 4 33 0 136] 
#[0 6 177 0 1] 
#[0 6 181 0 114] 
#[0 2 34 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 6 193 0 170 2 38 0 186] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 6 197 0 170 2 38 0 186] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 6 201 0 170 2 38 0 186] 
#[1 0 221 0 1 0 14 0 114 6 205 0 166 0 233 0 168] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 6 209 0 170 2 38 0 186] 
#[1 0 221 0 1 0 14 0 114 6 213 0 166 0 233 0 168] 
#[0 2 42 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[1 6 217 0 2 2 225 0 5 2 241 0 176] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 221 0 178 6 221 0 179 6 221 0 183 6 221 0 184] 
#[0 2 46 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 6 225 0 44] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 50 0 44 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 2 54 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 4 33 0 21 4 33 0 25 4 33 0 29 4 33 0 32 4 33 0 36 4 33 0 37 4 33 0 50 4 33 0 60 4 33 0 77 4 33 0 78 4 33 0 86 4 33 0 94 4 33 0 98 4 33 0 99 4 33 0 107 6 229 0 135 4 33 0 136] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 233 0 178 6 233 0 179 6 233 0 183 6 233 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 237 0 178 6 237 0 179 6 237 0 183 6 237 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 241 0 178 6 241 0 179 6 241 0 183 6 241 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 245 0 178 6 245 0 179 6 245 0 183 6 245 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 6 249 0 178 6 249 0 179 6 249 0 183 6 249 0 184] 
#[0 2 58 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 2 62 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 2 66 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 6 253 0 2] 
#[0 2 70 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 7 1 0 117] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 5 0 178 7 5 0 179 7 5 0 183 7 5 0 184] 
#[1 7 9 0 2 1 185 0 103] 
#[1 2 77 0 1 3 145 0 2 2 81 0 3 2 85 0 4 7 13 0 5 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 2 74 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 17 0 178 7 17 0 179 7 17 0 183 7 17 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 0 81 0 90 0 85 0 91 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 7 21 0 152 1 57 0 168 7 25 0 178 7 25 0 179 7 25 0 183 7 25 0 184] 
#[1 0 255 0 1 2 78 0 2 2 81 0 3 2 85 0 4 2 78 0 5 2 89 0 6 2 93 0 8 2 78 0 9 2 78 0 10 2 78 0 11 2 78 0 12 2 78 0 13 2 78 0 14 2 78 0 15 2 78 0 16 2 78 0 17 2 78 0 18 2 78 0 19 2 78 0 20 2 78 0 23 2 78 0 30 2 78 0 31 2 78 0 33 2 78 0 34 2 78 0 35 2 78 0 38 2 78 0 39 2 78 0 42 2 78 0 43 2 78 0 44 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 51 2 78 0 53 2 78 0 54 2 78 0 55 2 78 0 56 2 78 0 58 2 78 0 59 2 78 0 62 1 3 0 63 2 78 0 66 2 78 0 69 2 78 0 70 2 78 0 73 2 141 0 74 2 78 0 79 2 78 0 80 2 78 0 81 1 7 0 83 2 78 0 84 2 78 0 85 2 78 0 88 2 78 0 89 2 78 0 90 2 78 0 91 2 78 0 93 2 78 0 97 2 78 0 103 2 78 0 104 2 78 0 105 2 78 0 108 2 78 0 109 2 78 0 110 2 78 0 113 2 78 0 114 2 78 0 186] 
#[1 1 11 0 1 2 82 0 2 2 81 0 3 2 85 0 4 2 82 0 5 2 89 0 6 2 93 0 8 2 82 0 9 2 82 0 10 2 82 0 11 2 82 0 12 2 82 0 13 2 82 0 14 2 82 0 15 2 82 0 16 2 82 0 17 2 82 0 18 2 82 0 19 2 82 0 20 2 82 0 23 2 82 0 30 2 82 0 31 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 38 2 82 0 39 2 82 0 42 2 82 0 43 2 82 0 44 1 15 0 46 2 82 0 47 2 82 0 48 2 82 0 51 2 82 0 53 2 82 0 54 2 82 0 55 2 82 0 56 2 82 0 58 2 82 0 59 2 82 0 62 1 19 0 63 2 82 0 66 2 82 0 69 2 82 0 70 2 82 0 73 2 141 0 74 2 82 0 79 2 82 0 80 2 82 0 81 1 23 0 83 2 82 0 84 2 82 0 85 2 82 0 88 2 82 0 89 2 82 0 90 2 82 0 91 2 82 0 93 2 82 0 97 2 82 0 103 2 82 0 104 2 82 0 105 2 82 0 108 2 82 0 109 2 82 0 110 2 82 0 113 2 82 0 114 2 82 0 186] 
#[0 2 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 7 33 0 24] 
#[1 7 37 0 2 5 225 0 81 7 41 0 174] 
#[0 7 45 0 2] 
#[1 7 49 0 2 2 225 0 5 2 241 0 176] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 53 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 7 57 0 106] 
#[1 7 61 0 2 2 225 0 5 2 241 0 176] 
#[1 2 90 0 2 2 90 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 7 65 0 124 7 65 0 125 7 65 0 128 7 65 0 129 7 65 0 130 7 65 0 131 7 65 0 137 7 65 0 138 7 65 0 139 7 65 0 142 7 65 0 143 7 65 0 144 7 65 0 145 7 65 0 146 7 65 0 147 7 65 0 148 7 65 0 149 7 65 0 150 7 65 0 151 0 193 0 152 2 90 0 186] 
#[0 2 94 0 2 0 9 0 186] 
#[1 2 98 0 2 2 98 0 9 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 7 69 0 124 7 69 0 125 7 69 0 128 7 69 0 129 7 69 0 130 7 69 0 131 7 69 0 137 7 69 0 138 7 69 0 139 7 69 0 142 7 69 0 143 7 69 0 144 7 69 0 145 7 69 0 146 7 69 0 147 7 69 0 148 7 69 0 149 7 69 0 150 7 69 0 151 0 193 0 152 2 98 0 186] 
#[0 2 102 0 2 0 9 0 186] 
#[1 1 229 0 34 1 233 0 58 1 237 0 66 7 73 0 79 1 241 0 88] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 77 0 178 7 77 0 179 7 77 0 183 7 77 0 184] 
#[1 6 129 0 5 1 245 0 109 7 81 0 172] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 7 85 0 153 7 85 0 163 2 241 0 176 0 162 0 186] 
#[0 2 106 0 2 0 9 0 103 0 186] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 7 89 0 153 7 89 0 163 2 241 0 176 0 162 0 186] 
#[0 2 110 0 2 0 9 0 103 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 7 93 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 7 97 0 2 2 225 0 5 2 241 0 176] 
#[1 2 114 0 2 6 129 0 5 2 114 0 9 2 114 0 54 2 114 0 81 2 114 0 84 2 114 0 85 2 114 0 103 2 114 0 109 2 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 101 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 105 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 109 0 178 7 109 0 179 7 109 0 183 7 109 0 184] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 7 113 0 158 7 113 0 174 2 118 0 186] 
#[0 2 122 0 2 0 9 0 81 0 103 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 7 121 0 157 7 121 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 7 125 0 156 7 125 0 162 7 129 0 173 0 254 0 186] 
#[1 0 254 0 2 0 254 0 9 6 93 0 55 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 7 133 0 156 7 137 0 159 7 133 0 162 0 254 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 7 141 0 157 7 141 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 6 93 0 55 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 7 145 0 156 7 149 0 159 7 145 0 162 0 254 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 153 0 178 7 153 0 179 7 153 0 183 7 153 0 184] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 7 157 0 157 7 157 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 7 161 0 156 7 161 0 162 0 254 0 186] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 7 165 0 153 7 165 0 163 2 241 0 176 0 162 0 186] 
#[0 2 126 0 2 0 9 0 103 0 186] 
#[1 0 162 0 2 2 225 0 5 0 162 0 9 0 162 0 53 0 162 0 54 2 229 0 62 0 162 0 81 0 162 0 84 0 162 0 85 0 162 0 103 0 162 0 109 7 169 0 153 7 169 0 163 2 241 0 176 0 162 0 186] 
#[0 2 130 0 2 0 9 0 103 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 7 173 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[0 7 177 0 51] 
#[1 0 221 0 1 0 14 0 114 7 181 0 166 0 233 0 168] 
#[1 0 14 0 114 7 185 0 140 5 33 0 141 0 213 0 168 5 37 0 185] 
#[1 0 14 0 114 7 189 0 141 0 213 0 168 5 37 0 185] 
#[1 0 61 0 59 0 93 0 104 7 193 0 139 7 197 0 142] 
#[1 2 134 0 2 2 134 0 9 7 201 0 43 2 134 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 205 0 178 7 205 0 179 7 205 0 183 7 205 0 184] 
#[1 7 209 0 2 2 225 0 5 2 241 0 176] 
#[1 5 225 0 81 7 213 0 174] 
#[0 7 217 0 61] 
#[0 2 138 0 18] 
#[1 0 14 0 114 7 221 0 134 0 213 0 168 5 73 0 185] 
#[0 2 142 0 2 0 5] 
#[1 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 7 225 0 123 0 117 0 124 0 117 0 125 0 117 0 128 0 117 0 129 0 117 0 130 0 117 0 131 0 117 0 137 0 117 0 138 0 117 0 139 0 117 0 142 0 117 0 143 0 117 0 144 0 117 0 145 0 117 0 146 0 117 0 147 0 117 0 148 0 117 0 149 0 117 0 150 0 117 0 151 0 193 0 152] 
#[0 2 146 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 7 229 0 178 7 229 0 179 7 229 0 183 7 229 0 184] 
#[0 2 150 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 2 154 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 2 158 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 2 162 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 7 233 0 170 2 38 0 186] 
#[0 2 166 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[1 2 38 0 2 2 38 0 5 2 38 0 9 2 38 0 16 0 235 0 34 2 38 0 54 0 239 0 58 0 243 0 66 0 247 0 79 2 38 0 81 2 38 0 84 2 38 0 85 0 251 0 88 2 38 0 93 2 38 0 103 2 38 0 105 2 38 0 109 6 189 0 169 7 237 0 170 2 38 0 186] 
#[1 7 241 0 57 7 245 0 75] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 170 0 43 2 170 0 44 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 170 0 108 2 157 0 113] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 7 249 0 2 7 253 0 52] 
#[1 2 77 0 1 8 1 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 8 5 0 51 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 2 77 0 1 8 9 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 2 77 0 1 8 13 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 2 77 0 1 8 17 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 8 21 0 2 8 25 0 5] 
#[1 1 27 0 1 2 182 0 2 1 31 0 3 1 35 0 4 2 182 0 5 1 39 0 6 1 43 0 8 2 182 0 9 1 47 0 10 1 51 0 11 1 55 0 12 1 59 0 13 1 63 0 14 1 67 0 15 2 182 0 16 1 71 0 17 2 182 0 18 2 182 0 19 1 75 0 20 2 182 0 23 2 182 0 30 2 182 0 31 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 38 2 182 0 39 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 46 2 182 0 47 2 182 0 48 2 182 0 51 2 182 0 53 2 182 0 54 2 182 0 55 2 182 0 56 1 79 0 57 2 182 0 58 2 182 0 59 2 182 0 62 1 83 0 63 2 182 0 66 1 87 0 67 2 182 0 69 2 182 0 70 2 182 0 73 1 91 0 74 1 95 0 75 2 182 0 79 1 99 0 80 2 182 0 81 1 103 0 83 2 182 0 84 2 182 0 85 2 182 0 88 2 182 0 89 2 182 0 90 2 182 0 91 2 182 0 93 2 182 0 97 2 182 0 103 2 182 0 104 2 182 0 105 2 182 0 108 2 182 0 109 2 182 0 110 1 107 0 113 2 182 0 114 2 182 0 186] 
#[0 1 111 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 29 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 1 115 0 1 2 190 0 2 2 81 0 3 2 85 0 4 2 190 0 5 2 89 0 6 2 93 0 8 2 190 0 9 2 190 0 10 2 190 0 11 2 190 0 12 2 190 0 13 2 190 0 14 2 190 0 15 2 190 0 16 2 190 0 17 2 190 0 18 2 190 0 19 2 190 0 20 2 190 0 23 2 190 0 30 2 190 0 31 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 38 2 190 0 39 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 46 2 190 0 47 2 190 0 48 2 190 0 51 2 190 0 53 2 190 0 54 2 190 0 55 2 190 0 56 2 190 0 58 2 190 0 59 2 190 0 62 1 119 0 63 2 190 0 66 2 190 0 69 2 190 0 70 2 190 0 73 2 141 0 74 2 190 0 79 2 190 0 80 2 190 0 81 1 123 0 83 2 190 0 84 2 190 0 85 2 190 0 88 2 190 0 89 2 190 0 90 2 190 0 91 2 190 0 93 2 190 0 97 2 190 0 103 2 190 0 104 2 190 0 105 2 190 0 108 2 190 0 109 2 190 0 110 2 190 0 113 2 190 0 114 2 190 0 186] 
#[1 8 33 0 2 1 185 0 103] 
#[1 2 77 0 1 3 145 0 2 2 81 0 3 2 85 0 4 8 37 0 5 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 41 0 178 8 41 0 179 8 41 0 183 8 41 0 184] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 45 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 8 49 0 2] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 81 0 90 0 85 0 91 8 53 0 106 8 57 0 152] 
#[1 8 61 0 2 2 225 0 5 2 241 0 176] 
#[0 8 65 0 1] 
#[0 2 202 0 2 0 9 0 186] 
#[0 2 206 0 2 0 9 0 186] 
#[0 2 210 0 2 0 9 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 69 0 178 8 69 0 179 8 69 0 183 8 69 0 184] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 8 73 0 108 2 157 0 113 8 77 0 126 8 81 0 127] 
#[0 2 214 0 2 0 9 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 8 85 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 8 89 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[0 2 218 0 2 0 9 0 103 0 186] 
#[0 2 222 0 2 0 9 0 53 0 54 0 81 0 84 0 85 0 103 0 109 0 186] 
#[1 2 226 0 2 2 225 0 5 2 226 0 9 2 226 0 55 2 226 0 81 2 226 0 84 2 226 0 85 2 226 0 103 2 241 0 176 2 226 0 186] 
#[1 2 230 0 2 2 225 0 5 2 230 0 9 2 230 0 81 2 230 0 85 2 230 0 103 2 241 0 176 2 230 0 186] 
#[1 2 77 0 1 2 234 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 234 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 234 0 81 2 153 0 83 2 234 0 103 2 157 0 113 2 234 0 186] 
#[0 2 238 0 2 0 9 0 103 0 186] 
#[0 2 242 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 93 0 158 8 93 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 97 0 157 8 97 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 6 93 0 55 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 8 101 0 156 8 105 0 159 8 101 0 162 0 254 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 109 0 157 8 109 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 8 113 0 156 8 113 0 162 0 254 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 117 0 158 8 117 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 121 0 157 8 121 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 8 125 0 156 8 125 0 162 0 254 0 186] 
#[1 2 77 0 1 2 246 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 246 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 246 0 81 2 153 0 83 2 246 0 84 2 246 0 85 2 246 0 103 2 157 0 113 2 246 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 129 0 158 8 129 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 133 0 157 8 133 0 161 1 238 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 8 137 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[1 0 35 0 2 0 35 0 9 4 197 0 53 4 201 0 54 0 254 0 81 4 205 0 84 0 254 0 85 0 35 0 103 1 245 0 109 4 209 0 154 8 141 0 155 4 217 0 156 4 217 0 162 4 225 0 164 4 229 0 172 4 233 0 173 0 35 0 186] 
#[0 2 250 0 2 0 9 0 103 0 186] 
#[0 8 145 0 92] 
#[1 2 254 0 2 2 254 0 5 2 254 0 9 1 229 0 34 2 254 0 54 1 233 0 58 1 237 0 66 2 254 0 81 2 254 0 84 2 254 0 85 1 241 0 88 2 254 0 93 2 254 0 103 2 254 0 109 2 254 0 186] 
#[1 3 2 0 2 6 137 0 5 3 2 0 9 1 245 0 109 8 149 0 172 3 2 0 186] 
#[0 3 6 0 2 0 5 0 9 0 43 0 108 0 109 0 186] 
#[0 3 10 0 2 0 9 0 186] 
#[0 3 14 0 2 0 9 0 186] 
#[1 0 61 0 59 0 93 0 104 8 153 0 139 8 157 0 142] 
#[1 2 77 0 1 3 18 0 2 2 81 0 3 2 85 0 4 3 18 0 5 2 89 0 6 2 93 0 8 3 18 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 3 18 0 43 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 3 18 0 108 3 18 0 109 2 157 0 113 3 18 0 186] 
#[0 8 161 0 18] 
#[0 3 22 0 2 0 9 0 103 0 186] 
#[0 3 26 0 2 0 9 0 186] 
#[0 3 30 0 2 0 5] 
#[1 0 6 0 2 0 6 0 9 8 165 0 122] 
#[1 2 77 0 1 3 34 0 2 2 81 0 3 2 85 0 4 3 34 0 5 2 89 0 6 2 93 0 8 3 34 0 9 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 3 34 0 16 2 121 0 17 2 125 0 20 3 34 0 34 3 34 0 54 2 129 0 57 3 34 0 58 2 133 0 63 3 34 0 66 2 137 0 67 2 141 0 74 2 145 0 75 3 34 0 79 2 149 0 80 3 34 0 81 2 153 0 83 3 34 0 84 3 34 0 85 3 34 0 88 3 34 0 93 3 34 0 103 3 34 0 105 3 34 0 109 2 157 0 113 3 34 0 186] 
#[0 3 38 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 3 42 0 2 0 5 0 9 0 16 0 34 0 54 0 58 0 66 0 79 0 81 0 84 0 85 0 88 0 93 0 103 0 105 0 109 0 186] 
#[0 8 169 0 1] 
#[0 8 173 0 57] 
#[0 3 46 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 8 177 0 116] 
#[0 3 50 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 181 0 178 8 181 0 179 8 181 0 183 8 181 0 184] 
#[0 3 54 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 3 58 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 3 62 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 3 66 0 2 0 5 0 52] 
#[0 8 185 0 117] 
#[1 8 189 0 2 2 225 0 5 2 241 0 176] 
#[0 1 127 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 193 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 1 131 0 1 3 74 0 2 2 81 0 3 2 85 0 4 3 74 0 5 2 89 0 6 2 93 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 18 3 74 0 19 3 74 0 20 3 74 0 23 3 74 0 30 3 74 0 31 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 38 3 74 0 39 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 46 3 74 0 47 3 74 0 48 3 74 0 51 3 74 0 53 3 74 0 54 3 74 0 55 3 74 0 56 3 74 0 58 3 74 0 59 3 74 0 62 1 135 0 63 3 74 0 66 3 74 0 69 3 74 0 70 3 74 0 73 2 141 0 74 3 74 0 79 3 74 0 80 3 74 0 81 1 139 0 83 3 74 0 84 3 74 0 85 3 74 0 88 3 74 0 89 3 74 0 90 3 74 0 91 3 74 0 93 3 74 0 97 3 74 0 103 3 74 0 104 3 74 0 105 3 74 0 108 3 74 0 109 3 74 0 110 3 74 0 113 3 74 0 114 3 74 0 186] 
#[1 3 78 0 2 2 225 0 5 3 78 0 9 3 78 0 103 2 241 0 176 3 78 0 186] 
#[0 3 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 8 197 0 1] 
#[1 3 86 0 2 3 86 0 9 1 185 0 103 3 86 0 186] 
#[0 3 90 0 2 0 9 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 8 201 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 2 77 0 1 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 8 73 0 108 2 157 0 113 8 205 0 126 8 81 0 127] 
#[1 8 209 0 72 8 213 0 75] 
#[1 3 94 0 2 3 94 0 9 8 73 0 108 8 217 0 127 3 94 0 186] 
#[0 3 98 0 2 0 9 0 108 0 186] 
#[0 3 102 0 2 0 9 0 103 0 186] 
#[0 3 106 0 2 0 9 0 103 0 186] 
#[0 3 110 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 221 0 158 8 221 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 225 0 157 8 225 0 161 1 238 0 186] 
#[1 0 254 0 2 0 254 0 9 0 254 0 81 4 205 0 84 0 254 0 85 0 254 0 103 8 229 0 156 8 229 0 162 0 254 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 233 0 158 8 233 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 237 0 157 8 237 0 161 1 238 0 186] 
#[0 3 114 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 241 0 158 8 241 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 8 245 0 157 8 245 0 161 1 238 0 186] 
#[0 3 118 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 8 249 0 158 8 249 0 174 2 118 0 186] 
#[0 3 122 0 2 0 9 0 103 0 186] 
#[0 3 126 0 2 0 9 0 103 0 186] 
#[0 3 130 0 2 0 9 0 186] 
#[0 3 134 0 2 0 9 0 186] 
#[0 3 138 0 2 0 9 0 186] 
#[0 3 142 0 2 0 9 0 186] 
#[0 8 253 0 1] 
#[1 9 1 0 2 3 41 0 9] 
#[1 0 81 0 90 0 85 0 91 9 5 0 152] 
#[0 9 9 0 1] 
#[0 9 13 0 2] 
#[1 2 77 0 1 9 17 0 2 2 81 0 3 2 85 0 4 2 89 0 6 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 17 2 125 0 20 2 129 0 57 2 133 0 63 2 137 0 67 2 141 0 74 2 145 0 75 2 149 0 80 2 153 0 83 2 157 0 113] 
#[0 9 21 0 2] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 9 25 0 2 2 225 0 5 2 241 0 176] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 9 29 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 9 33 0 2 2 225 0 5 2 241 0 176] 
#[1 3 150 0 2 3 150 0 9 8 73 0 108 8 217 0 127 3 150 0 186] 
#[0 9 37 0 97] 
#[0 9 41 0 72] 
#[0 3 154 0 2 0 9 0 108 0 186] 
#[0 3 158 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 9 45 0 158 9 45 0 174 2 118 0 186] 
#[1 1 238 0 2 1 238 0 9 1 238 0 81 6 61 0 85 1 238 0 103 9 49 0 157 9 49 0 161 1 238 0 186] 
#[0 3 162 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 9 53 0 158 9 53 0 174 2 118 0 186] 
#[0 3 166 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 9 57 0 158 9 57 0 174 2 118 0 186] 
#[0 3 170 0 2 0 9 0 103 0 186] 
#[1 0 81 0 90 0 85 0 91 9 61 0 152] 
#[0 3 174 0 2 0 9 0 186] 
#[1 9 65 0 2 1 185 0 103] 
#[1 0 81 0 90 0 85 0 91 9 69 0 152] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[0 3 186 0 2 0 5 0 52] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 9 73 0 2 2 225 0 5 2 241 0 176] 
#[0 3 194 0 2 0 9 0 186] 
#[0 9 77 0 104] 
#[0 9 81 0 97] 
#[0 3 198 0 2 0 9 0 103 0 186] 
#[1 2 118 0 2 2 118 0 9 5 225 0 81 2 118 0 103 9 85 0 158 9 85 0 174 2 118 0 186] 
#[0 3 202 0 2 0 9 0 103 0 186] 
#[0 3 206 0 2 0 9 0 103 0 186] 
#[1 9 89 0 2 1 185 0 103] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 9 93 0 2 1 185 0 103] 
#[0 3 214 0 2 0 9 0 186] 
#[0 9 97 0 93] 
#[0 9 101 0 59] 
#[0 3 218 0 2 0 9 0 103 0 186] 
#[1 0 9 0 19 0 13 0 23 0 17 0 30 0 21 0 31 0 25 0 33 0 29 0 35 0 33 0 38 0 37 0 39 0 41 0 42 0 45 0 44 0 49 0 47 0 53 0 48 0 57 0 56 0 61 0 59 0 65 0 69 0 69 0 70 0 73 0 73 0 77 0 89 0 81 0 90 0 85 0 91 0 89 0 93 0 93 0 104 0 97 0 105 0 101 0 110 9 105 0 124 9 105 0 125 9 105 0 128 9 105 0 129 9 105 0 130 9 105 0 131 9 105 0 137 9 105 0 138 9 105 0 139 9 105 0 142 9 105 0 143 9 105 0 144 9 105 0 145 9 105 0 146 9 105 0 147 9 105 0 148 9 105 0 149 9 105 0 150 9 105 0 151 0 193 0 152] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 30 0 31 0 33 0 34 0 35 0 38 0 39 0 42 0 43 0 44 0 46 0 47 0 48 0 51 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 66 0 67 0 69 0 70 0 73 0 74 0 75 0 79 0 80 0 81 0 83 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 97 0 103 0 104 0 105 0 108 0 109 0 110 0 113 0 114 0 186] 
#[1 0 14 0 114 9 109 0 140 5 33 0 141 0 213 0 168 5 37 0 185] 
#[0 9 113 0 1] 
#[0 3 226 0 2 0 9 0 186] 
#[1 3 230 0 2 6 137 0 5 3 230 0 9 3 230 0 108 3 230 0 186] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 9 117 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 9 121 0 2 2 225 0 5 2 241 0 176] 
#[1 3 234 0 2 3 234 0 9 9 125 0 106 3 234 0 108 3 234 0 186] 
#[0 9 129 0 1] 
#[1 0 253 0 1 1 1 0 3 1 5 0 6 1 9 0 26 1 13 0 28 1 17 0 49 1 21 0 61 1 25 0 75 1 29 0 76 1 33 0 95 1 37 0 102 0 7 0 114 1 45 0 115 1 49 0 116 1 53 0 117 1 57 0 168 9 133 0 175 1 137 0 177 1 141 0 178 1 141 0 179 1 141 0 183 1 141 0 184] 
#[1 9 137 0 2 2 225 0 5 2 241 0 176] 
#[0 3 238 0 2 0 9 0 108 0 186]
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
TeradataParser >> reduceActionForExpression57: nodes [
	| result |
	result := TeradataCaseSpecificExpressionNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result caseSpecificToken: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
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
