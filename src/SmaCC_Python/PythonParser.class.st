Class {
	#name : 'PythonParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'SmaCC_Python',
	#package : 'SmaCC_Python'
}

{ #category : 'generated' }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 82 2 113] 
#[ 0 118 3 5] 
#[ 0 122 3 9] 
#[ 0 126 3 13] 
#[ 0 130 3 17] 
#[ 0 130 3 21] 
#[ 0 130 3 25] 
#[ 0 130 3 29] 
#[ 0 134 3 33] 
#[ 0 134 3 37] 
#[ 0 134 3 41] 
#[ 0 134 3 45] 
#[ 0 146 3 49] 
#[ 0 150 3 53] 
#[ 0 150 3 57] 
#[ 0 150 3 61] 
#[ 1 98 3 53] 
#[ 1 98 3 57] 
#[ 1 98 3 61] 
#[ 1 114 2 113] 
#[ 2 130 2 134] 
#[ 2 134 6 65] 
#[ 2 113 2 154] 
#[ 2 113 2 158] 
#[ 2 246 3 33] 
#[ 2 246 3 37] 
#[ 2 246 3 41] 
#[ 2 246 3 45] 
#[ 2 250 3 33] 
#[ 2 250 3 37] 
#[ 2 250 3 41] 
#[ 2 250 3 45] 
#[ 3 234 7 157]
	).
]

{ #category : 'generated-accessing' }
PythonParser class >> cacheId [
	^'2026-03-16T06:29:03.983505-05:00'
]

{ #category : 'generated' }
PythonParser class >> definitionComment [
"# Python Grammar and Lexer extracted from Python2 documentation on 16/04/2014 (Python 2.7.6)
# As seen from this grammar, the python doc and the implemented python scanner/parser diverge in several places
# https://docs.python.org/2/reference/index.html

# added f string support from Python 3

#Identifiers
%glr;
<ellipsis> : \.\.\.;
<period> : \.;
<name> :  ( [a-zA-Z]  | _ ) ([a-zA-Z]  | [0-9] | _)*;

# String literals
<stringprefix> :  r | u | ur | R | U | UR | Ur | uR | b | B | br | Br | bR | BR;
<escapeseq>       :  \\.;
<shortstring>  : 
		\' ( [^\\\n\r\'] | <escapeseq> )* \'
		| \"" ( [^\\\n\r\""] | <escapeseq>)* \"";
<longstring> :
		\'\'\' ( [^\\\'] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\'
		| \""\""\"" ( [^\\\""] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;
<string> : <stringprefix>?(<shortstring> | <longstring>);
<fStringWhole> : f <stringprefix>? (\' ( [^\\\n\r\'\{] | <escapeseq> )* \'
		| \"" ( [^\\\n\r\""\{] | <escapeseq>)* \"" 
		| \'\'\' ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\'
		| \""\""\"" ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"");
<fStringSingleStart> : [fF] <stringprefix>? \' ( [^\\\n\r\'\{] | (\{\{) | <escapeseq> )* \{ ;
<fStringFormat>
	: [\!\:\=] [^\}]*
	;
fStringSingle <fStringSingleMid> : <fStringFormat>? \} ( [^\\\n\r\'\{] | (\{\{) | <escapeseq> )* \{ ;
fStringSingle <fStringSingleEnd> : <fStringFormat>? \} ( [^\\\n\r\'\{] | (\{\{) | <escapeseq> )* \' ;
<fStringDoubleStart> : [fF] <stringprefix>? \"" ( [^\\\n\r\""\{] | (\{\{) | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleMid> : <fStringFormat>? \} ( [^\\\n\r\""\{] | v(\{\{) | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleEnd> : <fStringFormat>? \} ( [^\\\n\r\""\{] | (\{\{) | <escapeseq> )* \"" ;
<fLongStringSingleStart> : [fF] <stringprefix>? \'\'\' ( [^\\\'\{] | (\{\{) | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleMid> : <fStringFormat>? \} ( [^\\\'\{] | (\{\{) | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleEnd> : <fStringFormat>? \} ( [^\\\'\{] | (\{\{) | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\' ;
<fLongStringDoubleStart> : [fF] <stringprefix>? \""\""\"" ( [^\\\""\{] | (\{\{) | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleMid> : <fStringFormat>? \} ( [^\\\""\{] | (\{\{) | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleEnd> : <fStringFormat>? \} ( [^\\\""\{] | (\{\{) | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;

# Integer literals
<decimalinteger> :  [1-9] [0-9]* | 0 ; 
<octinteger> :  0 (o | O) [0-7]+ | 0 [0-7]+;
<hexinteger> :  0 (x | X) [0-9a-fA-F]+;
<bininteger> :  0 (b | B) [01]+;
<integer> :  <decimalinteger> | <octinteger> | <hexinteger> | <bininteger>;
<longinteger> : <integer> (l | L) ;

#Float literals
<pointfloat> :  ([0-9]+ \. [0-9]*) | (\. [0-9]+) ; #Is that true that one can write 0000. ? Yes. Oh, and .50 is accepted in Python, not in the doc of Python.
<exponentfloat> :  ([0-9]+ | <pointfloat>) (e | E) (\+|\-)? [0-9]+ ;
<floatnumber> :  <pointfloat> | <exponentfloat> ;

#Imaginary literals
<imagnumber> : (<floatnumber> | [0-9]+) j ; #Is that true that one can write 0000j ? Yes.

#All number literals
<number> : <longinteger> | <integer> | <floatnumber> | <imagnumber> ;

#Modes
<cr>	: \r | \n | \r\n ;
lineBegin <emptyLine> : <cr> ;
lineBegin <blankLine> : [ \t\f]* ((\# [^\r\n]*  <cr>?) | <cr>) ;
lineBegin <indent> : [ \t\f]+ ;
lineBegin <noindent>  : [^ \t\f\#] ;
<comment> : \#[^\r\n]* ;
<whitespace> : [ \t]+ | \\<cr>;

<NEWLINE> : <cr> ;


<lparen> : \( ;
<rparen> : \) ;
<lbrack>	 : \[ ;
<rbrack> : \] ;
<lcurly> : \{ ;
<rcurly>	: \} ;

%id <INDENT> <DEDENT> <NEWLINE> <lbrack> <lcurly> <lparen> <rbrack> <rcurly> <rparen> <Python2> <ellipsis> <period>;

# Grammar for Python

# Note:  Changing the grammar specified in this file will most likely
#        require corresponding changes in the parser module
#        (../Modules/parsermodule.c).  If you can""t make the changes to
#        that module yourself, please co-ordinate the required changes
#        with someone who can; ask around on python-dev for help.  Fred
#        Drake <fdrake@acm.org> will probably be listening there.

# NOTE WELL: You should also follow all the steps listed in PEP 306,
# ""How to Change Python""s Grammar""

# Start symbols for the grammar:
#       single_input is a single interactive statement;
#       file_input is a module or sequence of commands read from an input file;
#       eval_input is the input for the eval() and input() functions.
# NB: compound_stmt in single_input is followed by extra <NEWLINE>!

%start file_input single_input eval_input small_stmt test;

# Note: Grammar rewritten to eliminate () [] * ? + ThierryGoubier 5/5/2014 22:34

#%annotate_tokens;
%root Root;
%prefix Py;
%suffix Node;
%hierarchy VariableExpression (TypedVariableExpression);
%right "":="";
%hierarchy BinaryExpression (ComparisonExpression);
%hierarchy Name (AsName);
%hierarchy Statement (AssertStatement AssignmentStatement BreakStatement ClassDefinition ContinueStatement DelStatement ExecStatement ExpressionStatement ForStatement FunctionDefinition GlobalStatement IfStatement ImportStatement PassStatement PrintStatement RaiseStatement ReturnStatement TryStatement WhileStatement WithStatement YieldStatement);
%hierarchy Expression (AssignmentExpression AwaitExpression BacktickExpression BinaryExpression DictionaryExpression Ellipsis FieldAccessExpression FunctionCallExpression IfExpression LambdaExpression ListExpression Number SetExpression String SpreadExpression SubscriptExpression  TupleExpression UnaryExpression VariableExpression YieldExpression);
%hierarchy FunctionCallExpression (DecoratorExpression);
%hierarchy Parameter (ListParameter KeywordParameter);
<patternToken>
: 	\`\` [a-zA-Z_]+ [^\`]* \`
;

file_input: {{File}}
	| file_input <NEWLINE> {{File}}
	| file_input stmt 'statement' {{File}}
	;

single_input: 
	<NEWLINE> {{File}}
	| simple_stmt {{File}}
	| compound_stmt 'statement' <NEWLINE> {{File}}
	;

eval_input:
	testlist <NEWLINE>* {{Eval}}
	;

decorator:
	""@"" 'ampersandToken' dotted_name 'receiver' paren_arglist_opt <NEWLINE> {{DecoratorExpression}}
	;
paren_arglist_opt:
	| <lparen> 'lparenToken' arglist? <rparen> 'rparenToken' 
	;
decorators:
	decorators decorator 'decorator' 
	| decorator 'decorator' 
	;
funcdef:
	decorators? ""async"" 'asyncToken'? ""def"" 'defToken' <name> 'fname' parameters return_annotation_opt 'returnAnnotation' "":"" 'colonToken' suite {{FunctionDefinition}}
	;
return_annotation_opt
	:
	| ""->"" 'arrowToken' expr 'typeExpression' {{ReturnTypeAnnotation}}
	;
parameters:
	<lparen> 'lparenToken' varargslist_opt <rparen> 'rparenToken'
	;
varargslist_opt:
	| varargslist
	;
varargslist:
	parameter 'parameter' "","" 'commaToken' varargslist
	| list_parameter 'parameter' varArg* comma_opt
	| list_parameter 'parameter' varArg*  "","" 'commaToken' keyword_parameter 'parameter' comma_opt
	| keyword_parameter 'parameter' comma_opt
	| parameter 'parameter' comma_opt
	;
keyword_parameter
	: ""**"" 'starStarToken' Symbol 'name' type_annotation? {{}}
	;
list_parameter
	: ""*"" 'starToken' (Symbol 'name' type_annotation?)? {{}}
	;
varArg
	: "","" 'commaToken' parameter 'parameter'
	;
parameter
	: fpdef 'name' type_annotation? init 'initializer'? {{}}
	;
init
	: ""="" 'equalToken' test 'value' {{}}
	;

fpdef:
	Symbol
	| <lparen> 'lparenToken' fplist <rparen> 'rparenToken' {{ParameterList}}
	;

fplist:
	fpdef 'name' "","" 'commaToken' fplist
	| fpdef 'name' comma_opt
	;

stmt:
	simple_stmt 
	| compound_stmt 'statement'
	;

simple_stmt:
	(small_stmt_with_semicolon 'statement')* statement_with_separator 'statement'
	;
small_stmt_with_semicolon
	: small_stmt "";"" 'semicolonToken' {{Statement}}
	;
statement_with_separator
	: small_stmt "";"" 'semicolonToken' <NEWLINE>? {{Statement}}
	| small_stmt <NEWLINE> {{Statement}}
	;
expr_stmt: 
	testlist_expression 'expression' {{ExpressionStatement}}
	| (testlist_expression 'variable' type_annotation? ""="" 'assign')+ yield_or_testlist 'value' {{AssignmentStatement}}
	| testlist_expression 'variable' augassign 'assign' yield_or_testlist 'value' {{AssignmentStatement}}
	;
yield_or_testlist:
	yield_expr
	| testlist_expression 
	;
testlist_expression
	: testlistItem
	| testlistItem 'expression' ("","" 'commaToken' testlistItem 'expression')+ comma_opt {{ListExpression}}
	| testlistItem 'expression' "","" 'commaToken' {{ListExpression}}
	;
augassign:
	""+=""
	| ""-=""
	| ""*=""
	| ""/=""
	| ""%=""
	| ""&=""
	| ""|=""
	| ""^=""
	| ""<<=""
	| "">>=""
	| ""**=""
	| ""//=""
	;
# For normal assignments, additional restrictions enforced by the interpreter
print_stmt:
	<Python2> ""print"" 'printToken' testlist_opt {{PrintStatement}}
	| <Python2> ""print"" 'printToken' "">>"" 'gtgtToken' testlist {{PrintStatement}}
	;
del_stmt:
	""del"" 'delToken' exprlist {{DelStatement}}
	;
pass_stmt:
	""pass"" 'passToken' {{PassStatement}}
	;
flow_stmt:
	break_stmt
	| continue_stmt
	| return_stmt
	| raise_stmt
	| yield_stmt
	;
break_stmt:
	""break"" 'breakToken' {{BreakStatement}}
	;
continue_stmt:
	""continue"" 'continueToken' {{ContinueStatement}}
	;
return_stmt:
	""return"" 'returnToken' testlist_opt {{ReturnStatement}}
	;
yield_stmt:
	yield_expr 'yieldExpression' {{YieldStatement}}
	;
raise_stmt:
	""raise"" 'raiseToken' {{RaiseStatement}}
	| ""raise"" 'raiseToken' test 'arg' raise_from? {{RaiseStatement}}
	| ""raise"" 'raiseToken' test 'arg' "","" 'commaToken' test 'arg'  {{RaiseStatement}}
	| ""raise"" 'raiseToken' test 'arg' "","" 'commaToken' test 'arg' "","" 'commaToken' test 'arg' {{RaiseStatement}}
	;
raise_from
	: ""from"" 'fromToken'  test 'from'
	;
import_stmt:
	import_name
	| import_from
	;
import_name:
	""import"" 'importToken' dotted_as_names {{ImportStatement}}
	;
import_from:
	""from"" 'fromToken' dotopt_dotted_name 'from' ""import"" 'importToken' import_names_star {{ImportStatement}}
	;
dotopt_dotted_name:
	dotted_name
	| <period> 'periodToken'+ dotted_name 'name'? {{RelativeName}}
	;
import_names_star:
	""*"" 'starToken'
	| <lparen> 'lparenToken' import_as_names <rparen> 'rparenToken'
	| import_as_names
	;
import_as_name:
	<name> 'nameToken' {{Name}}
	| <name> 'nameToken' ""as"" 'asToken' <name> 'rename' {{AsName}}
	;
dotted_as_name:
	dotted_name 'name'
	| dotted_name 'name' ""as"" 'asToken' <name> 'rename'
	;
import_as_names:
	import_as_names_in comma_opt
	;
import_as_names_in:
	import_as_names_in "","" 'commaToken' import_as_name 'name'
	| import_as_name 'name'
	;
dotted_as_names:
	dotted_as_names "","" 'commaToken' dotted_as_name
	| dotted_as_name
	;
dotted_name:
	dotted_name 'receiver' <period> 'periodToken' <name> 'nameToken' {{FieldAccessExpression}}
	| Symbol
	;
global_stmt:
	""global"" 'globalToken' namelist {{GlobalStatement}}
	;
namelist:
	namelist "","" 'commaToken' <name> 'nameToken'
	| <name> 'nameToken'
	;
exec_stmt:
	""exec"" 'execToken' expr 'expr' {{ExecStatement}}
	| ""exec"" 'execToken' expr 'expr' ""in"" 'inToken' test_test_opt {{ExecStatement}}
	;

test_test_opt:
	test 'value'
	| test 'value' "","" 'commaToken' test 'value'
	;
assert_stmt:
	""assert"" 'assertToken' test_test_opt {{AssertStatement}}
	;
small_stmt:
	expr_stmt
	| print_stmt
	| del_stmt
	| pass_stmt
	| flow_stmt
	| import_stmt
	| global_stmt
	| exec_stmt
	| assert_stmt
	;
compound_stmt:
	if_stmt
	| while_stmt
	| for_stmt
	| try_stmt
	| with_stmt
	| funcdef 
	| classdef
	;
if_stmt:
	""if"" 'ifToken' test 'condition' "":"" 'colonToken' suite elif 'elsif'* else_opt 'else' {{IfStatement}}
	;
elif: ""elif"" 'elifToken' test 'condition' "":"" 'colonToken' suite {{Elif}}
	;
else_opt:
	| ""else"" 'elseToken' "":"" 'colonToken' suite {{Else}}
	;

while_stmt:
	""while"" 'whileToken' test 'condition' "":"" 'colonToken' suite else_opt 'else' {{WhileStatement}}
	;
for_stmt:
	""for"" 'forToken' exprlist ""in"" 'inToken' testlist_expression 'inExpression' "":"" 'colonToken' suite else_opt 'else' {{ForStatement}}
	;
try_stmt:
	""try"" 'tryToken' "":"" 'colonToken' suite except_list else_opt 'else' finally 'finally'? {{TryStatement}}
	| ""try"" 'tryToken' "":"" 'colonToken' suite finally 'finally' {{TryStatement}}
	;

finally
	: ""finally"" 'finallyToken' "":"" 'colonToken' suite {{}}
	;except_list:
	except_list except_clause 'clause' "":"" 'colonToken' suite
	| except_clause 'clause' "":"" 'colonToken' suite
	;
with_stmt:
	""with"" 'withToken' with_items "":"" 'colonToken' suite {{WithStatement}}
	;
with_items:
	with_items "","" 'commaToken' with_item 'withItem'
	| with_item 'withItem'
	;
with_item:
	test 'expression' {{WithItem}}
	| test 'expression' ""as"" 'asToken' expr 'name'  {{WithItem}}
	;
# NB compile.c makes sure that the default except clause is last
except_clause: 
	""except"" 'exceptToken' {{ExceptClause}}
	| ""except"" 'exceptToken' test 'exception' {{ExceptClause}}
	| ""except"" 'exceptToken' test 'exception' ""as"" 'asToken' test 'variable' {{ExceptClause}}
	| ""except"" 'exceptToken' test 'exception' "","" 'commaToken' test 'variable' {{ExceptClause}}
	;

suite:
	simple_stmt 
	| <NEWLINE> <INDENT> stmts  <DEDENT>
	;

stmts:
	stmts stmt 
	| stmt 
	;

# Backward compatibility cruft to support:
# [ x for x in lambda: True, lambda: False if x() ]
# even while also allowing:
# lambda x: 5 if x else 2
# (But not a mix of the two)
testlist_safe:
	old_test 'value'
	| old_test 'value' "","" 'commaToken' old_tests comma_opt
	;
old_tests:
	old_tests "","" 'commaToken' old_test 'value'
	| old_test 'value'
	;
old_test:
	or_test
	| old_lambdef
	;
old_lambdef:
	""lambda"" 'lambdaToken' varargslist_opt "":"" 'colonToken' old_test 'body' {{LambdaExpression}}
	;
or_test:
	and_test
	| and_test 'left' ""or"" 'operator' or_test 'right' {{BinaryExpression}}
	;
and_test:
	not_test
	| not_test 'left' ""and"" 'operator' and_test 'right' {{BinaryExpression}}
	;
not_test:
	""not"" 'operator' not_test 'expression' {{UnaryExpression}}
	| comparison
	;
comparison:
	expr
	| expr 'left' comp_op comparison 'right' {{ComparisonExpression}}
	;
comp_op:
	""<"" 'operator' 
	| "">"" 'operator' 
	| ""=="" 'operator' 
	| "">="" 'operator' 
	| ""<="" 'operator' 
	| ""<>"" 'operator' 
	| ""!="" 'operator' 
	| ""not"" 'notToken'? ""in"" 'operator' 
	| ""is"" 'operator' ""not"" 'notToken'?
	;
expr:
	xor_expr 
	| xor_expr 'left' ""|"" 'operator' expr 'right' {{BinaryExpression}}
	;
xor_expr:
	and_expr
	| and_expr 'left' ""^"" 'operator' xor_expr  'right' {{BinaryExpression}}
	;
and_expr:
	shift_expr
	| shift_expr 'left' ""&"" 'operator' and_expr 'right'  {{BinaryExpression}}
	;
shift_expr:
	arith_expr
	| arith_expr 'left' ""<<"" 'operator' shift_expr 'right' {{BinaryExpression}}
	| arith_expr 'left' "">>"" 'operator' shift_expr 'right' {{BinaryExpression}}
	;
arith_expr:
	term
	| arith_expr 'left' ""+"" 'operator' term 'right'  {{BinaryExpression}}
	| arith_expr 'left' ""-"" 'operator' term 'right'  {{BinaryExpression}}
	;
term:
	factor
	| term 'left' ""*"" 'operator' factor 'right'  {{BinaryExpression}}
	| term 'left' ""/"" 'operator' factor 'right'  {{BinaryExpression}}
	| term 'left' ""%"" 'operator' factor 'right' {{BinaryExpression}}
	| term 'left' ""//"" 'operator' factor 'right' {{BinaryExpression}}
	;
factor:
	power
	| ""+"" 'operator' factor 'expression' {{UnaryExpression}}
	| ""-"" 'operator' factor 'expression' {{UnaryExpression}}
	| ""~"" 'operator' factor 'expression' {{UnaryExpression}}
	;

power:
    await
	| await 'left' ""**"" 'operator' factor 'right' {{BinaryExpression}}
	;
await
	: trailers
	| ""await"" 'awaitToken' trailers 'expression' {{AwaitExpression}}
	;
trailers
	: atom
	| trailers 'receiver' <lparen> 'lparenToken' arglist? <rparen> 'rparenToken' {{FunctionCallExpression}}
	| trailers 'receiver' <lbrack> 'lbrackToken' subscriptlist <rbrack> 'rbrackToken' {{SubscriptExpression}}
	| trailers 'receiver' <period> 'periodToken' <name> 'nameToken' {{FieldAccessExpression}}
	;
atom: 
	<lparen> 'lparenToken' <rparen> 'rparenToken' {{TupleExpression}}
	| <lparen> 'lparenToken' yield_expr 'expression' <rparen> 'rparenToken' {{TupleExpression}}
	| <lparen> 'lparenToken' testlist_comp <rparen> 'rparenToken' {{TupleExpression}}
	| <lbrack> 'lbrackToken' <rbrack> 'rbrackToken' {{ListExpression}}
	| <lbrack> 'lbrackToken' listmaker <rbrack> 'rbrackToken' {{ListExpression}}
	| <lcurly> 'lcurlyToken' set_items  <rcurly> 'rcurlyToken' {{SetExpression}}
	| <lcurly> 'lcurlyToken' dictionary_items  <rcurly> 'rcurlyToken' {{DictionaryExpression}}
	| <lcurly> 'lcurlyToken'  <rcurly> 'rcurlyToken' {{DictionaryExpression}}
	| ""`"" 'backtickToken' testlist1 ""`"" 'backtickToken' {{BacktickExpression}}
	| Symbol
	| <ellipsis> 'ellipsis' {{Ellipsis}}
	| <name> 'nameToken' type_annotation{{TypedVariableExpression}}
	| <number> 'numberToken' {{Number}}
	| strings
	;
type_annotation
	: "":"" 'colonToken' expr 'typeExpression' 
	;
strings:
	strings string {{String}}
	| string {{String}}
	;
string:
	<string> 'part'
	| <fStringWhole> 'part'
	| StartFStringSingle <fStringSingleStart> 'part' test 'expression' (<fStringSingleMid> 'part' test 'expression')* <fStringSingleEnd> 'part'
	| StartFStringDouble <fStringDoubleStart> 'part' test 'expression' (<fStringDoubleMid> 'part' test 'expression')* <fStringDoubleEnd> 'part'
	| StartFLongStringSingle <fLongStringSingleStart> 'part' test 'expression' (<fLongStringSingleMid> 'part' test 'expression')* <fLongStringSingleEnd> 'part'
	| StartFLongStringDouble <fLongStringDoubleStart> 'part' test 'expression' (<fLongStringDoubleMid> 'part' test 'expression')* <fLongStringDoubleEnd> 'part'
	;
StartFStringSingle: [{#fStringSingle. scanner lineJoiningStack copy}];
StartFStringDouble: [{#fStringDouble. scanner lineJoiningStack copy}];
StartFLongStringSingle: [{#fLongStringSingle. scanner lineJoiningStack copy}];
StartFLongStringDouble: [{#fLongStringDouble. scanner lineJoiningStack copy}];
listmaker:
	list_comprehension 'expression'
	| testlist
	;
list_comprehension
	: test 'object' list_for 'for' {{Comprehension}}
	;
testlist_comp:
	comprehension 'expression'
	| testlist
	;
lambdef:
	""lambda"" 'lambdaToken' varargslist_opt "":"" 'colonToken' test 'body' {{LambdaExpression}}
	;
subscriptlist:
	subscript 'subscript' "","" 'commaToken' subscriptlist
	| subscript 'subscript' comma_opt
	;
subscript:
	/* <ellipsis> 'ellipsis' {{Ellipsis}}	# This is already part of test
	|*/ test 
	| test 'from'? "":"" 'colonToken' test 'to'? sliceop {{Slice}}
	;
sliceop:
	| "":"" 'colonToken' test 'step'?
	;

exprlist:
	expr 'expr' "","" 'commaToken' exprlist
	| expr 'expr' comma_opt
	;
comma_opt:
	| "","" 'commaToken'
	;

test: or_test
	| or_test 'if' ""if"" 'ifToken' or_test 'condition' ""else"" 'elseToken' test 'else' {{IfExpression}}
	| lambdef
	| assignment_expression
	;
assignment_expression
	: Symbol 'variable' "":="" 'assign' test 'value' {{AssignmentExpression}}
	;
Symbol
	: <name> 'nameToken' {{VariableExpression}}
	;
testlist: 
	testlistItem 'expression' ("","" 'commaToken' testlistItem 'expression')+? comma_opt
	;
testlistItem
	: test
	| ""*"" 'operator' test 'expression' {{SpreadExpression}}
	;
testlist_opt:
	| testlist
	;
dictorsetmaker:
	dictionary_items 
	| set_items 
	;
set_items
	: comprehension 'expression'
	| testlist
	;
comprehension
	: test 'object' comp_for 'for' {{Comprehension}}
	;
dictionary_items
	: comprehension_dictionary_item 'expression'
	| dictionary_item 'expression' ("","" 'commaToken' dictionary_item 'expression')* comma_opt
	;
comprehension_dictionary_item
	: test 'object' "":"" 'colonToken' test 'value' comp_for 'comp' {{}}
	;
dictionary_item
	: test 'object' "":"" 'colonToken' test 'value' {{}}
	| dictSpread
	;
dictSpread
	: ""**"" 'operator' test 'expression' {{SpreadExpression}}
	;
classdef:
	decorators? ""class"" 'classToken' <name> 'cname' "":"" 'colonToken' suite {{ClassDefinition}}
	| decorators? ""class"" 'classToken' <name> 'cname' <lparen> 'lparenToken' superclasslist? <rparen> 'rparenToken' "":"" 'colonToken' suite {{ClassDefinition}}
	;
superclasslist
	: classListItem 'superClass' ("","" 'commaToken' classListItem 'superClass')* comma_opt
	;
classListItem
	: test
	| ""metaclass"" 'metaclassToken' ""="" 'equalToken' test 'superclass' {{Metaclass}}
	;

arglist: 
	argument 'argument' "","" 'commaToken' arglist
	| argument 'argument' comma_opt
	| ""*"" 'starToken' test 'argument' more_args comma_opt
	| ""**"" 'starStarToken' test 'argument' comma_opt
	;
more_args:
	| "","" 'commaToken' ""**"" 'starStarToken' test 'argument'
	| "","" 'commaToken' ""*"" 'starToken' test 'argument'
	| "","" 'commaToken' argument 'argument' more_args
	;
# The reason that keywords are test nodes instead of <name> is that using <name>
# results in an ambiguity. ast.c makes sure it""s a <name>.
argument:
	test
	| comprehension
	| test 'name' ""="" 'equalToken' test 'value' {{}}
	;

list_iter:
	list_for
	| list_if
	;
list_for:
	""for"" 'forToken' exprlist ""in"" 'inToken' testlist_safe {{ListFor}}
	| ""for"" 'forToken' exprlist ""in"" 'inToken' testlist_safe list_iter 'list' {{ListFor}}
	;
list_if:
	""if"" 'ifToken' old_test 'condition' {{ListIf}}
	| ""if"" 'ifToken' old_test 'condition' list_iter 'iter' {{ListIf}}
	;

comp_iter:
	comp_for
	| comp_if
	;

comp_for:
	""for"" 'forToken' exprlist ""in"" 'inToken' or_test 'inValue' {{ComprehensionFor}}
	| ""for"" 'forToken' exprlist ""in"" 'inToken' or_test 'inValue' comp_iter 'comprehension' {{ComprehensionFor}}
	;
comp_if:
	""if"" 'ifToken' old_test 'condition' {{ComprehensionIf}}
	| ""if"" 'ifToken' old_test 'condition' comp_iter 'iter' {{ComprehensionIf}}
	;

testlist1:
	(test 'expression' "","" 'commaToken')* test 'expression'
	;

# not used in grammar, but may appear in ""node"" passed from Parser to Compiler
#encoding_decl: <name> ;

yield_expr:
	""yield"" 'yieldToken' ""from"" 'fromToken'? testlist_opt {{YieldExpression}}
	;"
]

{ #category : 'accessing' }
PythonParser class >> eval: aString [
	^self parse: aString startingAt: self startingStateForeval_input
]

{ #category : 'file types' }
PythonParser class >> fileExtension [
	^ '.py'
]

{ #category : 'generated' }
PythonParser class >> reduceTable [
^#(
	#(108 0 #reduceActionForfile_input1: 5960705 false) 
	#(131 0 #reduceActionFor_small_stmt_with_semicolon__statement___1: 7764993 false) 
	#(217 0 #reduceActionForStartFStringSingle1: 17722369 true) 
	#(218 0 #reduceActionForStartFStringDouble1: 17795073 true) 
	#(219 0 #reduceActionForStartFLongStringSingle1: 17867777 true) 
	#(220 0 #reduceActionForStartFLongStringDouble1: 17948673 true) 
	#(109 1 #reduceActionForfile_input1: 6061057 false) 
	#(114 1 #reduceActionFordecorators2: 6418434 false) 
	#(170 1 #liftFirstValue: 11480070 false) 
	#(109 1 #reduceActionForsingle_input2: 6061058 false) 
	#(170 1 #liftFirstValue: 11480065 false) 
	#(170 1 #liftFirstValue: 11480066 false) 
	#(170 1 #liftFirstValue: 11480067 false) 
	#(170 1 #liftFirstValue: 11480068 false) 
	#(170 1 #liftFirstValue: 11480069 false) 
	#(170 1 #liftFirstValue: 11480071 false) 
	#(261 0 #reduceActionFor_test__expression_______commaToken___1: 21729281 false) 
	#(118 0 #reduceActionFor_test__expression_______commaToken___1: 6855681 false) 
	#(205 1 #reduceActionForatom11: 16030731 false) 
	#(232 1 #reduceActionForSymbol1: 19015681 false) 
	#(208 1 #reduceActionForstring1: 17057793 false) 
	#(208 1 #reduceActionForstring1: 17057794 false) 
	#(205 1 #reduceActionForatom13: 16030733 false) 
	#(230 1 #liftFirstValue: 18759681 false) 
	#(190 1 #liftFirstValue: 13786113 false) 
	#(191 1 #liftFirstValue: 13882369 false) 
	#(192 1 #liftFirstValue: 13981698 false) 
	#(193 1 #liftFirstValue: 14070785 false) 
	#(195 1 #liftFirstValue: 14389249 false) 
	#(196 1 #liftFirstValue: 14479361 false) 
	#(197 1 #liftFirstValue: 14577665 false) 
	#(198 1 #liftFirstValue: 14680065 false) 
	#(199 1 #liftFirstValue: 14865409 false) 
	#(200 1 #liftFirstValue: 15032321 false) 
	#(201 1 #liftFirstValue: 15323137 false) 
	#(202 1 #liftFirstValue: 15520769 false) 
	#(203 1 #liftFirstValue: 15610881 false) 
	#(204 1 #liftFirstValue: 15699969 false) 
	#(205 1 #liftFirstValue: 16030734 false) 
	#(207 1 #reduceActionForstrings2: 16996354 false) 
	#(230 1 #liftFirstValue: 18759683 false) 
	#(234 1 #liftFirstValue: 19172353 false) 
	#(230 1 #liftFirstValue: 18759684 false) 
	#(205 1 #liftFirstValue: 16030730 false) 
	#(111 0 #nil 6197249 false) 
	#(229 0 #nil 18723841 false) 
	#(146 1 #reduceActionForbreak_stmt1: 9185281 false) 
	#(147 1 #reduceActionForcontinue_stmt1: 9242625 false) 
	#(144 1 #reduceActionForpass_stmt1: 9043969 false) 
	#(150 1 #reduceActionForraise_stmt1: 9452545 false) 
	#(235 0 #reduceActionFor_test__expression_______commaToken___1: 19255297 false) 
	#(169 1 #liftFirstValue: 11340801 false) 
	#(136 1 #reduceActionFor_testlist_expression__variable__type_annotation_______assign___1: 8131585 false) 
	#(134 1 #reduceActionForexpr_stmt1: 8056833 false) 
	#(169 1 #liftFirstValue: 11340802 false) 
	#(169 1 #liftFirstValue: 11340803 false) 
	#(169 1 #liftFirstValue: 11340804 false) 
	#(169 1 #liftFirstValue: 11340805 false) 
	#(145 1 #liftFirstValue: 9097217 false) 
	#(145 1 #liftFirstValue: 9097218 false) 
	#(145 1 #liftFirstValue: 9097219 false) 
	#(145 1 #liftFirstValue: 9097221 false) 
	#(145 1 #liftFirstValue: 9097220 false) 
	#(169 1 #liftFirstValue: 11340806 false) 
	#(152 1 #liftFirstValue: 9825281 false) 
	#(152 1 #liftFirstValue: 9825282 false) 
	#(169 1 #liftFirstValue: 11340807 false) 
	#(169 1 #liftFirstValue: 11340808 false) 
	#(169 1 #liftFirstValue: 11340809 false) 
	#(138 1 #liftFirstValue: 8416257 false) 
	#(149 1 #reduceActionForyield_stmt1: 9387009 false) 
	#(108 2 #reduceActionForfile_input2: 5960706 false) 
	#(108 2 #reduceActionForfile_input3: 5960707 false) 
	#(128 1 #reduceActionForfile_input2: 7696385 false) 
	#(128 1 #reduceActionFordecorators2: 7696386 false) 
	#(113 0 #reduceActionForparen_arglist_opt1: 6335489 false) 
	#(163 1 #liftFirstValue: 10761218 false) 
	#(181 1 #reduceActionForwith_items2: 12598274 false) 
	#(182 1 #reduceActionForwith_item1: 12689409 false) 
	#(114 2 #reduceActionFordecorators1: 6418433 false) 
	#(131 2 #reduceActionFordecorators1: 7764994 false) 
	#(130 1 #liftFirstValue: 7764993 false) 
	#(129 2 #reduceActionFordecorators1: 7750657 false) 
	#(109 2 #reduceActionForsingle_input3: 6061059 false) 
	#(234 2 #reduceActionFortestlistItem2: 19172354 false) 
	#(201 2 #reduceActionForfactor2: 15323138 false) 
	#(201 2 #reduceActionForfactor2: 15323139 false) 
	#(203 2 #reduceActionForawait2: 15610882 false) 
	#(122 1 #reduceActionForlist_parameter1: 7271425 false) 
	#(118 1 #reduceActionForfile_input2: 6855682 false) 
	#(120 0 #reduceActionFor_test__expression_______commaToken___1: 6988801 false) 
	#(124 1 #reduceActionForparameter1: 7402497 false) 
	#(126 1 #liftFirstValue: 7523329 false) 
	#(192 2 #reduceActionForfactor2: 13981697 false) 
	#(201 2 #reduceActionForfactor2: 15323140 false) 
	#(205 2 #reduceActionForatom12: 16030732 false) 
	#(205 2 #reduceActionForatom1: 16030721 false) 
	#(223 1 #reduceActionForfile_input2: 18163714 false) 
	#(223 1 #reduceActionForstring1: 18163713 false) 
	#(205 2 #reduceActionForatom4: 16030724 false) 
	#(221 1 #reduceActionForstring1: 18029569 false) 
	#(221 1 #reduceActionForfile_input2: 18029570 false) 
	#(205 2 #reduceActionForatom8: 16030728 false) 
	#(237 1 #reduceActionForfile_input2: 19338242 false) 
	#(237 1 #reduceActionForstring1: 19338241 false) 
	#(239 1 #reduceActionForstring1: 19463169 false) 
	#(241 0 #reduceActionFor_test__expression_______commaToken___1: 19560449 false) 
	#(243 1 #liftFirstValue: 19727362 false) 
	#(194 1 #reduceActionForcomp_op7: 14160903 false) 
	#(194 1 #reduceActionForcomp_op7: 14160897 false) 
	#(194 1 #reduceActionForcomp_op7: 14160901 false) 
	#(194 1 #reduceActionForcomp_op7: 14160902 false) 
	#(194 1 #reduceActionForcomp_op7: 14160899 false) 
	#(194 1 #reduceActionForcomp_op7: 14160898 false) 
	#(194 1 #reduceActionForcomp_op7: 14160900 false) 
	#(194 1 #reduceActionForcomp_op7: 14160904 false) 
	#(194 1 #reduceActionForcomp_op7: 14160906 false) 
	#(207 2 #reduceActionForstrings1: 16996353 false) 
	#(110 2 #reduceActionForeval_input1: 6174721 false) 
	#(229 1 #liftFirstValue: 18723842 false) 
	#(140 1 #reduceActionFor______commaToken__testlistItem__expression___1: 8482817 false) 
	#(233 2 #reduceActionFortestlist1: 19072001 false) 
	#(168 2 #reduceActionForassert_stmt1: 11265025 false) 
	#(167 1 #reduceActionFortest_test_opt1: 11185153 false) 
	#(143 2 #reduceActionFordel_stmt1: 8985601 false) 
	#(166 2 #reduceActionForexec_stmt1: 11035649 false) 
	#(156 1 #reduceActionFordecorators2: 10110977 false) 
	#(155 1 #reduceActionFordotopt_dotted_name2: 10074114 false) 
	#(155 1 #liftFirstValue: 10074113 false) 
	#(165 1 #reduceActionForwith_items2: 10952706 false) 
	#(164 2 #reduceActionForglobal_stmt1: 10882049 false) 
	#(162 1 #reduceActionFordotted_as_names2: 10672130 false) 
	#(153 2 #reduceActionForimport_name1: 9870337 false) 
	#(159 1 #reduceActionFordotted_as_name1: 10417153 false) 
	#(150 2 #reduceActionForraise_stmt2: 9452546 false) 
	#(235 1 #reduceActionForfile_input2: 19255298 false) 
	#(148 2 #reduceActionForreturn_stmt1: 9312257 false) 
	#(262 2 #reduceActionForyield_expr1: 21898241 false) 
	#(136 2 #reduceActionFor_testlist_expression__variable__type_annotation_______assign___2: 8131586 false) 
	#(134 2 #reduceActionForexpr_stmt2: 8056834 false) 
	#(137 1 #liftFirstValue: 8356866 false) 
	#(137 1 #liftFirstValue: 8356865 false) 
	#(141 1 #liftFirstValue: 8629253 false) 
	#(141 1 #liftFirstValue: 8629254 false) 
	#(141 1 #liftFirstValue: 8629259 false) 
	#(141 1 #liftFirstValue: 8629251 false) 
	#(141 1 #liftFirstValue: 8629249 false) 
	#(141 1 #liftFirstValue: 8629250 false) 
	#(141 1 #liftFirstValue: 8629260 false) 
	#(141 1 #liftFirstValue: 8629252 false) 
	#(141 1 #liftFirstValue: 8629257 false) 
	#(135 2 #reduceActionFor_testlist_expression__variable__type_annotation_______assign__1: 8131585 false) 
	#(141 1 #liftFirstValue: 8629258 false) 
	#(141 1 #liftFirstValue: 8629256 false) 
	#(141 1 #liftFirstValue: 8629255 false) 
	#(138 2 #reduceActionFortestlist_expression3: 8416259 false) 
	#(116 0 #nil 6677505 false) 
	#(228 2 #reduceActionFortestlist1: 18644994 false) 
	#(184 1 #reduceActionForfile_input2: 13178881 false) 
	#(132 2 #reduceActionForsmall_stmt_with_semicolon1: 7847937 false) 
	#(133 2 #reduceActionForsmall_stmt_with_semicolon1: 7927809 false) 
	#(133 2 #reduceActionForfile_input2: 7927811 false) 
	#(205 3 #reduceActionForatom9: 16030729 false) 
	#(259 2 #reduceActionFortestlist11: 21716993 false) 
	#(261 2 #reduceActionFor_test__expression_______commaToken___2: 21729282 false) 
	#(122 2 #reduceActionForlist_parameter2: 7271426 false) 
	#(121 2 #reduceActionForkeyword_parameter1: 7188481 false) 
	#(119 2 #reduceActionFortestlist1: 6891524 false) 
	#(119 2 #reduceActionFortestlist1: 6891525 false) 
	#(124 2 #reduceActionForparameter2: 7402498 false) 
	#(124 2 #reduceActionForparameter3: 7402499 false) 
	#(206 2 #reduceActionFortype_annotation1: 16932865 false) 
	#(205 3 #reduceActionForatom3: 16030723 false) 
	#(238 2 #reduceActionForcomprehension1: 19394561 false) 
	#(205 3 #reduceActionForatom2: 16030722 false) 
	#(205 3 #reduceActionForatom5: 16030725 false) 
	#(222 2 #reduceActionForcomprehension1: 18089985 false) 
	#(244 2 #reduceActionFortestlistItem2: 19814401 false) 
	#(205 3 #reduceActionForatom6: 16030726 false) 
	#(205 3 #reduceActionForatom7: 16030727 false) 
	#(190 3 #reduceActionForor_test2: 13786114 false) 
	#(191 3 #reduceActionForor_test2: 13882370 false) 
	#(194 2 #reduceActionFortype_annotation1: 14160907 false) 
	#(194 2 #reduceActionForcomp_op9: 14160905 false) 
	#(193 3 #reduceActionForcomparison2: 14070786 false) 
	#(195 3 #reduceActionForor_test2: 14389250 false) 
	#(196 3 #reduceActionForor_test2: 14479362 false) 
	#(197 3 #reduceActionForor_test2: 14577666 false) 
	#(199 3 #reduceActionForor_test2: 14865410 false) 
	#(199 3 #reduceActionForor_test2: 14865411 false) 
	#(198 3 #reduceActionForor_test2: 14680066 false) 
	#(198 3 #reduceActionForor_test2: 14680067 false) 
	#(200 3 #reduceActionForor_test2: 15032324 false) 
	#(200 3 #reduceActionForor_test2: 15032322 false) 
	#(200 3 #reduceActionForor_test2: 15032323 false) 
	#(200 3 #reduceActionForor_test2: 15032325 false) 
	#(202 3 #reduceActionForor_test2: 15520770 false) 
	#(204 3 #reduceActionFortrailers5: 15699973 false) 
	#(204 3 #reduceActionFortrailers2: 15699970 false) 
	#(252 1 #liftFirstValue: 20894721 false) 
	#(252 1 #liftFirstValue: 20894722 false) 
	#(227 0 #reduceActionForsliceop1: 18597889 false) 
	#(226 1 #liftFirstValue: 18437121 false) 
	#(210 0 #reduceActionFor_test__expression_______commaToken___1: 17178625 false) 
	#(212 0 #reduceActionFor_test__expression_______commaToken___1: 17323009 false) 
	#(214 0 #reduceActionFor_test__expression_______commaToken___1: 17475585 false) 
	#(216 0 #reduceActionFor_test__expression_______commaToken___1: 17636353 false) 
	#(231 3 #reduceActionForassignment_expression1: 18915329 false) 
	#(111 2 #liftFirstValue: 6197250 false) 
	#(139 2 #reduceActionFortype_annotation1: 8482817 false) 
	#(140 2 #reduceActionFor_test__expression_______commaToken___2: 8482818 false) 
	#(233 3 #reduceActionFortestlist2: 19072002 false) 
	#(156 2 #reduceActionFordecorators1: 10110978 false) 
	#(155 2 #reduceActionFordotopt_dotted_name3: 10074115 false) 
	#(150 3 #reduceActionForraise_stmt3: 9452547 false) 
	#(262 3 #reduceActionForyield_expr2: 21898242 false) 
	#(134 3 #reduceActionForexpr_stmt3: 8056835 false) 
	#(135 3 #reduceActionFor_testlist_expression__variable__type_annotation_______assign__2: 8131586 false) 
	#(138 3 #reduceActionFortestlist_expression2: 8416258 false) 
	#(142 3 #reduceActionForprint_stmt1: 8823809 false) 
	#(163 3 #reduceActionFortrailers5: 10761217 false) 
	#(113 2 #reduceActionForparen_arglist_opt2: 6335490 false) 
	#(112 4 #reduceActionFordecorator1: 6221825 false) 
	#(245 4 #reduceActionForclassdef1: 19888129 false) 
	#(249 1 #liftFirstValue: 20262913 false) 
	#(248 0 #reduceActionFor_test__expression_______commaToken___1: 20201473 false) 
	#(228 3 #reduceActionForexprlist1: 18644993 false) 
	#(172 0 #reduceActionFor_small_stmt_with_semicolon__statement___1: 11651073 false) 
	#(183 1 #reduceActionForexcept_clause1: 12866561 false) 
	#(177 4 #reduceActionFortry_stmt3: 12113923 false) 
	#(174 0 #nil 11780097 false) 
	#(181 3 #reduceActionForwith_items1: 12598273 false) 
	#(180 4 #reduceActionForwith_stmt1: 12510209 false) 
	#(182 3 #reduceActionForwith_item2: 12689410 false) 
	#(133 3 #reduceActionForsmall_stmt_with_semicolon1: 7927810 false) 
	#(260 2 #reduceActionFortype_annotation1: 21729281 false) 
	#(122 3 #reduceActionForlist_parameter3: 7271427 false) 
	#(121 3 #reduceActionForkeyword_parameter2: 7188482 false) 
	#(127 2 #reduceActionFortestlist1: 7618562 false) 
	#(126 3 #reduceActionForfpdef2: 7523330 false) 
	#(224 4 #reduceActionForlambdef1: 18223105 false) 
	#(120 2 #reduceActionFor_test__expression_______commaToken___2: 6988802 false) 
	#(119 3 #reduceActionFortestlist2: 6891522 false) 
	#(119 3 #reduceActionForexprlist1: 6891521 false) 
	#(125 2 #reduceActionForinit1: 7475201 false) 
	#(124 3 #reduceActionForparameter4: 7402500 false) 
	#(243 3 #reduceActionFordictionary_item1: 19727361 false) 
	#(239 3 #reduceActionFortestlist2: 19463170 false) 
	#(241 2 #reduceActionFor_test__expression_______commaToken___2: 19560450 false) 
	#(251 0 #reduceActionFormore_args1: 20574209 false) 
	#(204 4 #reduceActionFortrailers3: 15699971 false) 
	#(250 2 #reduceActionForarglist2: 20372482 false) 
	#(227 1 #reduceActionForcomp_op7: 18597890 false) 
	#(226 2 #reduceActionForsubscript2: 18437122 false) 
	#(204 4 #reduceActionFortrailers4: 15699972 false) 
	#(225 2 #reduceActionFortestlist1: 18327554 false) 
	#(167 3 #reduceActionFortest_test_opt2: 11185154 false) 
	#(166 4 #reduceActionForexec_stmt2: 11035650 false) 
	#(157 1 #reduceActionForimport_names_star1: 10176513 false) 
	#(158 1 #reduceActionForimport_as_name1: 10302465 false) 
	#(154 4 #reduceActionForimport_from1: 9948161 false) 
	#(161 1 #reduceActionForwith_items2: 10562562 false) 
	#(157 1 #reduceActionForimport_names_star3: 10176515 false) 
	#(165 3 #reduceActionForwith_items1: 10952705 false) 
	#(162 3 #reduceActionFordotted_as_names1: 10672129 false) 
	#(159 3 #reduceActionFordotted_as_name2: 10417154 false) 
	#(150 4 #reduceActionForraise_stmt4: 9452548 false) 
	#(151 2 #reduceActionFortype_annotation1: 9775105 false) 
	#(142 4 #reduceActionForprint_stmt2: 8823810 false) 
	#(113 3 #reduceActionForparen_arglist_opt3: 6335491 false) 
	#(117 3 #reduceActionForparameters1: 6775809 false) 
	#(116 2 #reduceActionForreturn_annotation_opt2: 6677506 false) 
	#(185 1 #reduceActionForfile_input2: 13243394 false) 
	#(183 2 #reduceActionForexcept_clause2: 12866562 false) 
	#(177 5 #reduceActionFortry_stmt1: 12113921 false) 
	#(175 5 #reduceActionForwhile_stmt1: 11849729 false) 
	#(245 5 #reduceActionForclassdef2: 19888130 false) 
	#(127 3 #reduceActionForexprlist1: 7618561 false) 
	#(123 2 #reduceActionFortype_annotation1: 7349249 false) 
	#(242 4 #reduceActionForcomprehension_dictionary_item1: 19623937 false) 
	#(240 2 #reduceActionFortype_annotation1: 19560449 false) 
	#(230 5 #reduceActionFortest2: 18759682 false) 
	#(250 3 #reduceActionForarglist4: 20372484 false) 
	#(252 3 #reduceActionForargument3: 20894723 false) 
	#(250 3 #reduceActionForexprlist1: 20372481 false) 
	#(227 2 #reduceActionFortype_annotation1: 18597891 false) 
	#(226 3 #reduceActionForsubscript3: 18437123 false) 
	#(225 3 #reduceActionForexprlist1: 18327553 false) 
	#(226 3 #reduceActionForsubscript4: 18437124 false) 
	#(208 5 #reduceActionForstring3: 17057795 false) 
	#(210 2 #reduceActionFor_test__expression_______commaToken___2: 17178626 false) 
	#(208 5 #reduceActionForstring3: 17057796 false) 
	#(212 2 #reduceActionFor_test__expression_______commaToken___2: 17323010 false) 
	#(208 5 #reduceActionForstring3: 17057797 false) 
	#(214 2 #reduceActionFor_test__expression_______commaToken___2: 17475586 false) 
	#(208 5 #reduceActionForstring3: 17057798 false) 
	#(216 2 #reduceActionFor_test__expression_______commaToken___2: 17636354 false) 
	#(160 2 #reduceActionFortestlist11: 10511361 false) 
	#(249 3 #reduceActionForclassListItem2: 20262914 false) 
	#(245 6 #reduceActionForclassdef3: 19888131 false) 
	#(246 3 #reduceActionFortestlist2: 20155393 false) 
	#(248 2 #reduceActionFor_test__expression_______commaToken___2: 20201474 false) 
	#(115 6 #reduceActionForfuncdef1: 6496257 false) 
	#(172 2 #reduceActionFordecorators1: 11651074 false) 
	#(171 6 #reduceActionForif_stmt1: 11584513 false) 
	#(185 2 #reduceActionForstmts1: 13243393 false) 
	#(184 4 #reduceActionForsuite2: 13178882 false) 
	#(178 3 #reduceActionForfinally1: 12315649 false) 
	#(177 6 #reduceActionFortry_stmt2: 12113922 false) 
	#(179 3 #reduceActionForexcept_list2: 12383234 false) 
	#(119 5 #reduceActionForvarargslist3: 6891523 false) 
	#(257 4 #reduceActionForcomp_for1: 21359617 false) 
	#(254 4 #reduceActionForlist_for1: 21019649 false) 
	#(186 1 #reduceActionForstring1: 13459457 false) 
	#(188 1 #liftFirstValue: 13635586 false) 
	#(188 1 #liftFirstValue: 13635585 false) 
	#(250 4 #reduceActionForarglist3: 20372483 false) 
	#(226 4 #reduceActionForsubscript5: 18437125 false) 
	#(209 2 #reduceActionFortype_annotation1: 17178625 false) 
	#(211 2 #reduceActionFortype_annotation1: 17323009 false) 
	#(213 2 #reduceActionFortype_annotation1: 17475585 false) 
	#(215 2 #reduceActionFortype_annotation1: 17636353 false) 
	#(158 3 #reduceActionForimport_as_name2: 10302466 false) 
	#(157 3 #reduceActionForimport_names_star2: 10176514 false) 
	#(161 3 #reduceActionForwith_items1: 10562561 false) 
	#(150 6 #reduceActionForraise_stmt5: 9452549 false) 
	#(115 7 #reduceActionForfuncdef2: 6496258 false) 
	#(245 7 #reduceActionForclassdef4: 19888132 false) 
	#(247 2 #reduceActionFortype_annotation1: 20201473 false) 
	#(176 7 #reduceActionForfor_stmt1: 11964417 false) 
	#(183 4 #reduceActionForexcept_clause4: 12866564 false) 
	#(183 4 #reduceActionForexcept_clause3: 12866563 false) 
	#(174 3 #reduceActionForelse_opt2: 11780098 false) 
	#(179 4 #reduceActionForexcept_list1: 12383233 false) 
	#(245 7 #reduceActionForclassdef5: 19888133 false) 
	#(115 7 #reduceActionForfuncdef3: 6496259 false) 
	#(257 5 #reduceActionForcomp_for2: 21359618 false) 
	#(256 1 #liftFirstValue: 21322753 false) 
	#(256 1 #liftFirstValue: 21322754 false) 
	#(254 5 #reduceActionForlist_for2: 21019650 false) 
	#(253 1 #liftFirstValue: 20983809 false) 
	#(253 1 #liftFirstValue: 20983810 false) 
	#(251 3 #reduceActionFormore_args3: 20574211 false) 
	#(251 3 #reduceActionFormore_args2: 20574210 false) 
	#(251 3 #reduceActionFormore_args4: 20574212 false) 
	#(115 8 #reduceActionForfuncdef4: 6496260 false) 
	#(245 8 #reduceActionForclassdef6: 19888134 false) 
	#(258 2 #reduceActionForcomp_if1: 21567489 false) 
	#(255 2 #reduceActionForlist_if1: 21191681 false) 
	#(187 1 #reduceActionForwith_items2: 13554690 false) 
	#(173 4 #reduceActionForelif1: 11701249 false) 
	#(258 3 #reduceActionForcomp_if2: 21567490 false) 
	#(189 4 #reduceActionForlambdef1: 13673473 false) 
	#(255 3 #reduceActionForlist_if2: 21191682 false) 
	#(186 4 #reduceActionFortestlist_safe2: 13459458 false) 
	#(187 3 #reduceActionForwith_items1: 13554689 false)
	).
]

{ #category : 'generated-accessing' }
PythonParser class >> scannerClass [
	^PythonScanner
]

{ #category : 'generated' }
PythonParser class >> startingStateForeval_input [
	^ 3
]

{ #category : 'generated' }
PythonParser class >> startingStateForfile_input [
	^ 1
]

{ #category : 'generated' }
PythonParser class >> startingStateForsingle_input [
	^ 2
]

{ #category : 'generated' }
PythonParser class >> startingStateForsmall_stmt [
	^ 4
]

{ #category : 'generated' }
PythonParser class >> startingStateFortest [
	^ 5
]

{ #category : 'generated' }
PythonParser class >> symbolNames [
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"metaclass"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<ellipsis>' '<period>' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' '<patternToken>' 'B e g i n' 'file_input' 'single_input' 'eval_input' '<NEWLINE>*' 'decorator' 'paren_arglist_opt' 'decorators' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'varArg*' 'keyword_parameter' 'list_parameter' 'varArg' 'parameter' 'init' 'fpdef' 'fplist' 'stmt' 'simple_stmt' '(small_stmt_with_semicolon ''statement'')' '(small_stmt_with_semicolon ''statement'')*' 'small_stmt_with_semicolon' 'statement_with_separator' 'expr_stmt' '(testlist_expression ''variable'' type_annotation? "=" ''assign'')' '(testlist_expression ''variable'' type_annotation? "=" ''assign'')+' 'yield_or_testlist' 'testlist_expression' '("," ''commaToken'' testlistItem ''expression'')' '("," ''commaToken'' testlistItem ''expression'')+' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' '<period> ''periodToken''+' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elif ''elsif''*' 'elif' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'list_comprehension' 'testlist_comp' 'lambdef' 'subscriptlist' 'subscript' 'sliceop' 'exprlist' 'comma_opt' 'test' 'assignment_expression' 'Symbol' 'testlist' 'testlistItem' 'testlist_opt' 'dictorsetmaker' 'set_items' 'comprehension' 'dictionary_items' '("," ''commaToken'' dictionary_item ''expression'')' '("," ''commaToken'' dictionary_item ''expression'')*' 'comprehension_dictionary_item' 'dictionary_item' 'dictSpread' 'classdef' 'superclasslist' '("," ''commaToken'' classListItem ''superClass'')' '("," ''commaToken'' classListItem ''superClass'')*' 'classListItem' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' '(test ''expression'' "," ''commaToken'')' '(test ''expression'' "," ''commaToken'')*' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : 'generated' }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileNode #PyFileNode #PyFileNode #PyEvalNode nil #PyDecoratorExpressionNode #OrderedCollection #OrderedCollection #PyFunctionDefinitionNode #PyReturnTypeAnnotationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyKeywordParameterNode #PyListParameterNode #OrderedCollection #PyParameterNode #PyInitNode #PyRootNode #OrderedCollection #Object #OrderedCollection #PyStatementNode #OrderedCollection #PyStatementNode #PyStatementNode #PyStatementNode #OrderedCollection #OrderedCollection #PyExpressionNode #PyExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #PyPrintStatementNode #PyDelStatementNode #PyPassStatementNode #PyStatementNode #PyBreakStatementNode #PyContinueStatementNode #PyReturnStatementNode #PyYieldStatementNode #PyRaiseStatementNode #OrderedCollection #PyImportStatementNode #PyImportStatementNode #PyImportStatementNode #PyRootNode #OrderedCollection #OrderedCollection #PyNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyGlobalStatementNode #OrderedCollection #PyExecStatementNode #OrderedCollection #PyAssertStatementNode #PyStatementNode #PyStatementNode #PyIfStatementNode #OrderedCollection #PyElifNode #PyElseNode #PyWhileStatementNode #PyForStatementNode #PyTryStatementNode #PyFinallyNode #OrderedCollection #PyWithStatementNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyLambdaExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyStringNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #OrderedCollection #PyComprehensionNode #OrderedCollection #PyLambdaExpressionNode #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #SmaCCToken #PyExpressionNode #PyAssignmentExpressionNode #PyVariableExpressionNode #OrderedCollection #PyExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionDictionaryItemNode #PyRootNode #PySpreadExpressionNode #PyClassDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyComprehensionForNode #PyComprehensionIfNode #OrderedCollection #OrderedCollection #OrderedCollection #PyYieldExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 6 0 6 0 10 0 6 0 13 0 6 0 34 0 6 0 37 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 51 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 60 0 6 0 62 0 6 0 64 0 6 0 66 0 6 0 67 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 74 0 6 0 75 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 92 0 6 0 99 0 6 0 100 0 6 0 102 0 6 0 104 0 25 0 108 0 6 1 9 0 6 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 29 0 34 0 10 0 37 0 10 0 40 0 33 0 41 0 10 0 42 0 10 0 43 0 37 0 44 0 10 0 45 0 41 0 46 0 10 0 47 0 10 0 51 0 45 0 53 0 10 0 54 0 10 0 55 0 49 0 56 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 53 0 68 0 57 0 69 0 61 0 70 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 0 65 0 99 0 10 0 100 0 10 0 102 0 10 0 104 0 69 0 109 0 73 0 112 0 77 0 114 0 93 0 115 0 85 0 129 0 89 0 131 0 93 0 170 0 93 0 171 0 93 0 175 0 93 0 176 0 93 0 177 0 93 0 180 0 93 0 245 0 10 1 9] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 185 0 110 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 1 33 0 233 1 37 0 234] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 1 41 0 40 0 137 0 42 1 45 0 43 1 49 0 45 1 53 0 47 1 57 0 51 1 61 0 54 1 65 0 55 1 69 0 57 0 141 0 60 0 145 0 62 1 73 0 64 1 77 0 66 1 81 0 67 1 85 0 71 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 165 0 134 1 93 0 135 1 97 0 136 1 101 0 138 1 165 0 142 1 165 0 143 1 165 0 144 1 165 0 145 1 165 0 146 1 165 0 147 1 165 0 148 1 165 0 149 1 165 0 150 1 165 0 152 1 165 0 153 1 165 0 154 1 165 0 164 1 165 0 166 1 165 0 168 1 165 0 169 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 169 0 224 1 169 0 230 1 169 0 231 1 29 0 232 1 169 0 234 1 173 1 6 1 177 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 181 0 224 1 181 0 230 1 181 0 231 1 29 0 232] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 29 0 34 0 10 0 37 0 10 0 40 0 33 0 41 0 10 0 42 0 10 0 43 0 37 0 44 0 10 0 45 0 41 0 46 0 10 0 47 0 10 0 51 0 45 0 53 0 10 0 54 0 10 0 55 0 49 0 56 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 53 0 68 0 57 0 69 0 61 0 70 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 1 185 0 99 0 10 0 100 0 10 0 102 0 10 0 104 0 73 0 112 0 77 0 114 1 197 0 115 1 189 0 128 1 193 0 129 0 89 0 131 1 197 0 170 1 197 0 171 1 197 0 175 1 197 0 176 1 197 0 177 1 197 0 180 1 197 0 245 0 10 1 9 0 0 1 10] 
#[1 1 201 0 77 1 205 0 163 1 205 0 232] 
#[0 1 213 0 46] 
#[0 1 217 0 77] 
#[0 1 221 0 77] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 225 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 229 0 228 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 237 0 224 1 237 0 230 1 237 0 231 1 29 0 232] 
#[0 1 241 0 20] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 245 0 224 1 245 0 230 1 245 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 249 0 181 1 253 0 182 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 1 0 224 2 1 0 230 2 1 0 231 1 29 0 232] 
#[0 0 30 1 10] 
#[0 0 0 1 10] 
#[0 0 34 0 34 0 41 0 44 0 46] 
#[1 0 29 0 34 2 5 0 41 2 9 0 44 2 13 0 46 2 17 0 112] 
#[0 0 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 42 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 1 41 0 40 0 137 0 42 1 45 0 43 1 49 0 45 1 53 0 47 1 57 0 51 1 61 0 54 1 65 0 55 1 69 0 57 0 141 0 60 0 145 0 62 1 73 0 64 1 77 0 66 1 81 0 67 1 85 0 71 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 21 0 130 2 21 0 132 2 29 0 133 2 33 0 134 1 93 0 135 1 97 0 136 1 101 0 138 2 33 0 142 2 33 0 143 2 33 0 144 2 33 0 145 2 33 0 146 2 33 0 147 2 33 0 148 2 33 0 149 2 33 0 150 2 33 0 152 2 33 0 153 2 33 0 154 2 33 0 164 2 33 0 166 2 33 0 168 2 33 0 169 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 169 0 224 1 169 0 230 1 169 0 231 1 29 0 232 1 169 0 234 1 173 1 6 1 177 1 9] 
#[0 2 37 0 99] 
#[0 0 46 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 50 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 54 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 58 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 62 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 66 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 41 0 224 2 41 0 230 2 41 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 45 0 201 2 45 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 49 0 201 2 49 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 70 0 10 0 70 0 13 0 70 0 37 0 70 0 42 0 70 0 60 0 70 0 62 0 70 0 74 0 70 0 75 0 70 0 77 0 70 0 78 0 70 0 79 0 70 0 80 0 70 0 83 0 70 0 86 0 70 0 89 0 70 0 92 0 70 0 100 0 70 0 102 0 70 0 104 2 53 1 3 2 57 1 5] 
#[1 0 133 0 37 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 61 0 204 2 61 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 61 0 232] 
#[1 2 65 0 6 2 69 0 7 0 74 0 20 1 201 0 77 2 73 0 100 2 77 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 105 0 192 2 105 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 109 0 201 2 109 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 82 0 1 0 82 0 2 0 82 0 3 0 82 0 4 0 82 0 5 0 82 0 6 0 82 0 7 0 82 0 8 0 82 0 9 0 82 0 10 0 82 0 11 0 82 0 12 0 82 0 13 0 82 0 14 0 82 0 16 0 82 0 17 0 82 0 18 0 82 0 19 0 7 0 20 0 82 0 21 0 82 0 22 0 82 0 23 0 82 0 24 0 82 0 25 0 82 0 26 0 82 0 27 0 82 0 28 0 82 0 29 0 82 0 30 0 82 0 31 0 82 0 32 0 82 0 33 0 82 0 35 0 82 0 36 0 82 0 37 0 82 0 38 0 82 0 39 0 82 0 49 0 82 0 53 0 82 0 54 0 82 0 56 0 82 0 58 0 82 0 59 0 82 0 62 0 82 0 63 0 82 0 72 0 82 0 73 0 82 0 76 0 82 0 81 0 82 0 82 0 82 0 84 0 82 0 85 0 82 0 87 0 82 0 88 0 82 0 90 0 82 0 91 0 82 0 99 0 82 0 100 0 82 0 101 0 82 0 102 0 82 0 103 0 82 0 105 2 117 0 206 0 82 1 10] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 1 85 0 71 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 2 121 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 125 0 223 2 129 0 224 2 129 0 230 2 129 0 231 1 29 0 232 2 133 0 233 1 37 0 234 2 137 0 238 2 141 1 6] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 2 145 0 103 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 149 0 221 2 153 0 222 2 157 0 224 2 157 0 230 2 157 0 231 1 29 0 232 2 161 0 233 1 37 0 234] 
#[1 0 121 0 6 2 165 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 2 169 0 105 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 173 0 224 2 173 0 230 2 173 0 231 1 29 0 232 2 177 0 233 1 37 0 234 2 181 0 237 2 185 0 238 2 189 0 239 2 193 0 242 2 197 0 243 2 197 0 244] 
#[0 0 0 1 10] 
#[1 0 98 0 3 0 98 0 5 0 98 0 8 0 98 0 9 0 98 0 11 0 98 0 12 0 98 0 14 0 98 0 18 0 98 0 19 0 98 0 20 0 98 0 22 0 98 0 25 0 98 0 28 0 98 0 33 0 98 0 36 0 98 0 37 0 98 0 39 0 98 0 53 0 98 0 54 2 205 0 56 0 98 0 73 0 98 0 81 0 98 0 82 0 98 0 84 0 98 0 85 0 98 0 87 0 98 0 88 0 98 0 90 0 98 0 91 0 98 0 99 0 98 0 101 0 98 0 103 0 98 0 105 0 98 1 10] 
#[1 0 102 0 3 0 102 0 5 0 102 0 8 0 102 0 9 0 102 0 11 0 102 0 12 0 102 0 14 0 102 0 18 0 102 0 19 0 102 0 20 0 102 0 22 0 102 0 25 0 102 0 28 0 102 0 33 0 102 0 36 0 102 0 37 0 102 0 39 0 102 0 49 0 102 0 53 0 102 0 54 0 102 0 56 2 209 0 63 0 102 0 73 0 102 0 81 0 102 0 82 0 102 0 84 0 102 0 85 0 102 0 87 0 102 0 88 0 102 0 90 0 102 0 91 0 102 0 99 0 102 0 101 0 102 0 103 0 102 0 105 0 102 1 10] 
#[1 0 106 0 3 0 106 0 5 0 106 0 8 0 106 0 9 0 106 0 11 0 106 0 12 0 106 0 14 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 22 0 106 0 25 0 106 0 28 0 106 0 33 0 106 0 36 0 106 0 37 2 213 0 38 0 106 0 39 0 106 0 49 0 106 0 53 0 106 0 54 0 106 0 56 0 106 0 63 0 106 0 73 0 106 0 81 0 106 0 82 0 106 0 84 0 106 0 85 0 106 0 87 0 106 0 88 0 106 0 90 0 106 0 91 0 106 0 99 0 106 0 101 0 106 0 103 0 106 0 105 0 106 1 10] 
#[0 0 110 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[1 2 217 0 1 0 114 0 3 0 114 0 5 0 114 0 8 0 114 0 9 0 114 0 11 0 114 0 12 0 114 0 14 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 22 2 221 0 23 0 114 0 25 2 225 0 26 2 229 0 27 0 114 0 28 2 233 0 29 2 237 0 30 2 241 0 31 0 114 0 33 0 114 0 36 0 114 0 37 0 114 0 38 0 114 0 39 0 114 0 49 0 114 0 53 0 114 0 54 0 114 0 56 2 245 0 58 2 249 0 59 2 253 0 62 0 114 0 63 0 114 0 73 0 114 0 81 0 114 0 82 0 114 0 84 0 114 0 85 0 114 0 87 0 114 0 88 0 114 0 90 0 114 0 91 0 114 0 99 0 114 0 101 0 114 0 103 0 114 0 105 3 1 0 194 0 114 1 10] 
#[1 0 118 0 1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 11 0 118 0 12 0 118 0 13 0 118 0 14 0 118 0 16 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 22 0 118 0 23 0 118 0 24 0 118 0 25 0 118 0 26 0 118 0 27 0 118 0 28 0 118 0 29 0 118 0 30 0 118 0 31 0 118 0 32 0 118 0 33 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 49 0 118 0 53 0 118 0 54 0 118 0 56 0 118 0 58 0 118 0 59 0 118 0 62 0 118 0 63 0 11 0 72 0 118 0 73 0 118 0 76 0 118 0 81 0 118 0 82 0 118 0 84 0 118 0 85 0 118 0 87 0 118 0 88 0 118 0 90 0 118 0 91 0 118 0 99 0 118 0 100 0 118 0 101 0 118 0 102 0 118 0 103 0 118 0 105 0 118 1 10] 
#[1 0 122 0 1 0 122 0 2 0 122 0 3 0 122 0 4 0 122 0 5 0 122 0 6 0 122 0 7 0 122 0 8 0 122 0 9 0 122 0 10 0 122 0 11 0 122 0 12 0 122 0 13 0 122 0 14 0 122 0 16 0 122 0 17 0 122 0 18 0 122 0 19 0 122 0 20 0 122 0 22 0 122 0 23 0 122 0 24 0 122 0 25 0 122 0 26 0 122 0 27 0 122 0 28 0 122 0 29 0 122 0 30 0 122 0 31 0 122 0 32 0 122 0 33 0 15 0 35 0 122 0 36 0 122 0 37 0 122 0 38 0 122 0 39 0 122 0 49 0 122 0 53 0 122 0 54 0 122 0 56 0 122 0 58 0 122 0 59 0 122 0 62 0 122 0 63 0 122 0 72 0 122 0 73 0 122 0 76 0 122 0 81 0 122 0 82 0 122 0 84 0 122 0 85 0 122 0 87 0 122 0 88 0 122 0 90 0 122 0 91 0 122 0 99 0 122 0 100 0 122 0 101 0 122 0 102 0 122 0 103 0 122 0 105 0 122 1 10] 
#[1 0 126 0 1 0 126 0 2 0 126 0 3 0 19 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 16 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 22 0 126 0 23 0 126 0 24 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 39 0 126 0 49 0 126 0 53 0 126 0 54 0 126 0 56 0 126 0 58 0 126 0 59 0 126 0 62 0 126 0 63 0 126 0 72 0 126 0 73 0 126 0 76 0 126 0 81 0 126 0 82 0 126 0 84 0 126 0 85 0 126 0 87 0 126 0 88 0 126 0 90 0 126 0 91 0 126 0 99 0 126 0 100 0 126 0 101 0 126 0 102 0 126 0 103 0 126 0 105 0 126 1 10] 
#[1 0 130 0 1 0 130 0 2 0 130 0 3 0 130 0 4 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 23 0 10 0 130 0 11 0 130 0 12 0 27 0 13 0 130 0 14 0 130 0 16 0 130 0 17 0 130 0 18 0 130 0 19 0 130 0 20 0 130 0 22 0 130 0 23 0 31 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 130 0 29 0 130 0 30 0 130 0 31 0 35 0 32 0 130 0 33 0 130 0 35 0 130 0 36 0 130 0 37 0 130 0 38 0 130 0 39 0 130 0 49 0 130 0 53 0 130 0 54 0 130 0 56 0 130 0 58 0 130 0 59 0 130 0 62 0 130 0 63 0 130 0 72 0 130 0 73 0 130 0 76 0 130 0 81 0 130 0 82 0 130 0 84 0 130 0 85 0 130 0 87 0 130 0 88 0 130 0 90 0 130 0 91 0 130 0 99 0 130 0 100 0 130 0 101 0 130 0 102 0 130 0 103 0 130 0 105 0 130 1 10] 
#[1 0 134 0 1 0 39 0 2 0 134 0 3 0 134 0 4 0 134 0 5 0 43 0 6 0 134 0 7 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 12 0 134 0 13 0 134 0 14 0 47 0 16 0 51 0 17 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 22 0 134 0 23 0 134 0 24 0 134 0 25 0 134 0 26 0 134 0 27 0 134 0 28 0 134 0 29 0 134 0 30 0 134 0 31 0 134 0 32 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 49 0 134 0 53 0 134 0 54 0 134 0 56 0 134 0 58 0 134 0 59 0 134 0 62 0 134 0 63 0 134 0 72 0 134 0 73 0 134 0 76 0 134 0 81 0 134 0 82 0 134 0 84 0 134 0 85 0 134 0 87 0 134 0 88 0 134 0 90 0 134 0 91 0 134 0 99 0 134 0 100 0 134 0 101 0 134 0 102 0 134 0 103 0 134 0 105 0 134 1 10] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 146 0 1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 55 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 11 0 146 0 12 0 146 0 13 0 146 0 14 0 146 0 16 0 146 0 17 0 146 0 18 0 146 0 19 0 146 0 20 0 146 0 22 0 146 0 23 0 146 0 24 0 146 0 25 0 146 0 26 0 146 0 27 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 49 0 146 0 53 0 146 0 54 0 146 0 56 0 146 0 58 0 146 0 59 0 146 0 62 0 146 0 63 0 146 0 72 0 146 0 73 0 146 0 76 0 146 0 81 0 146 0 82 0 146 0 84 0 146 0 85 0 146 0 87 0 146 0 88 0 146 0 90 0 146 0 91 0 146 0 99 0 146 0 100 0 146 0 101 0 146 0 102 0 146 0 103 0 146 0 105 0 146 1 10] 
#[1 0 150 0 1 0 150 0 2 0 150 0 3 0 150 0 4 0 150 0 5 0 150 0 6 0 150 0 7 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 11 0 150 0 12 0 150 0 13 0 150 0 14 0 150 0 16 0 150 0 17 0 150 0 18 0 150 0 19 0 150 0 20 0 150 0 22 0 150 0 23 0 150 0 24 0 150 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 150 0 29 0 150 0 30 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 35 0 150 0 36 0 150 0 37 0 150 0 38 0 150 0 39 0 150 0 49 0 150 0 53 0 150 0 54 0 150 0 56 0 150 0 58 0 150 0 59 0 150 0 62 0 150 0 63 0 150 0 72 0 150 0 73 0 59 0 76 0 150 0 81 0 150 0 82 0 150 0 84 0 150 0 85 0 150 0 87 0 150 0 88 0 150 0 90 0 150 0 91 0 150 0 99 0 63 0 100 0 150 0 101 0 67 0 102 0 150 0 103 0 150 0 105 0 150 1 10] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 158 0 1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 49 0 158 0 53 0 158 0 54 0 158 0 56 0 158 0 58 0 158 0 59 0 158 0 62 0 158 0 63 0 158 0 72 0 158 0 73 0 158 0 76 0 161 0 78 0 165 0 79 0 14 0 80 0 158 0 81 0 158 0 82 0 18 0 83 0 158 0 84 0 158 0 85 0 22 0 86 0 158 0 87 0 158 0 88 0 26 0 89 0 158 0 90 0 158 0 91 0 158 0 99 0 158 0 100 0 158 0 101 0 158 0 102 0 158 0 103 0 158 0 105 3 65 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 158 1 10] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 69 0 80] 
#[0 3 73 0 83] 
#[0 3 77 0 86] 
#[0 3 81 0 89] 
#[0 0 166 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 0 170 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 10] 
#[0 0 174 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[1 0 178 0 1 0 178 0 2 0 178 0 3 0 178 0 4 0 178 0 5 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 11 0 178 0 12 0 178 0 13 0 178 0 14 0 178 0 16 0 178 0 17 0 178 0 18 0 178 0 19 0 178 0 20 3 85 0 21 0 178 0 22 0 178 0 23 0 178 0 24 0 178 0 25 0 178 0 26 0 178 0 27 0 178 0 28 0 178 0 29 0 178 0 30 0 178 0 31 0 178 0 32 0 178 0 33 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 53 0 178 0 54 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 62 0 178 0 63 0 178 0 72 0 178 0 73 0 178 0 76 0 178 0 81 0 178 0 82 0 178 0 84 0 178 0 85 0 178 0 87 0 178 0 88 0 178 0 90 0 178 0 91 0 178 0 99 0 178 0 100 0 178 0 101 0 178 0 102 0 178 0 103 0 178 0 105 0 178 1 10] 
#[1 0 182 0 99 3 89 0 111 0 182 1 10] 
#[1 3 93 0 12 0 186 0 22 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 3 97 0 139 3 101 0 140 3 105 0 229 0 186 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 3 109 0 167 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 3 113 0 224 3 113 0 230 3 113 0 231 1 29 0 232] 
#[0 0 190 0 22 0 99 1 10] 
#[0 0 194 0 22 0 99 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 225 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 3 117 0 228 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 3 121 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 3 125 0 76 1 201 0 77 3 129 0 155 3 133 0 156 3 137 0 163 3 137 0 232] 
#[1 3 141 0 77 3 145 0 165] 
#[1 1 201 0 77 3 149 0 159 3 153 0 162 3 157 0 163 3 157 0 232] 
#[0 0 198 0 22 0 99 1 10] 
#[1 0 125 0 10 0 129 0 13 0 202 0 22 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 202 0 99 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 3 161 0 224 3 161 0 230 3 161 0 231 1 29 0 232 0 202 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 206 0 22 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 206 0 99 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 3 165 0 233 1 37 0 234 3 169 0 235 0 206 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 206 0 22 0 133 0 37 0 137 0 42 3 173 0 54 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 206 0 99 0 173 0 100 0 206 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 3 165 0 233 1 37 0 234 3 177 0 235 0 206 1 10] 
#[0 0 210 0 22 0 99 1 10] 
#[0 0 214 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 1 85 0 71 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 3 181 0 135 3 185 0 137 3 189 0 138 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 169 0 224 1 169 0 230 1 169 0 231 1 29 0 232 1 169 0 234 3 185 1 6] 
#[1 3 249 0 3 3 249 0 5 3 249 0 8 3 249 0 9 3 249 0 11 3 249 0 14 3 249 0 18 3 249 0 19 2 113 0 20 0 218 0 22 3 249 0 25 3 233 0 28 3 249 0 33 3 249 0 36 3 249 0 73 0 218 0 99 3 249 0 141 3 253 0 206 0 218 1 10] 
#[0 0 222 0 22 0 99 1 10] 
#[0 0 226 0 22 0 99 1 10] 
#[0 0 230 0 22 0 99 1 10] 
#[0 0 234 0 22 0 99 1 10] 
#[0 0 238 0 22 0 99 1 10] 
#[0 0 242 0 22 0 99 1 10] 
#[0 0 246 0 22 0 99 1 10] 
#[0 0 250 0 22 0 99 1 10] 
#[0 0 254 0 22 0 99 1 10] 
#[0 1 2 0 22 0 99 1 10] 
#[0 1 6 0 22 0 99 1 10] 
#[0 1 10 0 22 0 99 1 10] 
#[0 1 14 0 22 0 99 1 10] 
#[0 1 18 0 22 0 99 1 10] 
#[0 1 22 0 22 0 99 1 10] 
#[0 0 0 1 10] 
#[1 1 26 0 3 1 26 0 5 1 26 0 8 1 26 0 9 1 26 0 11 4 1 0 12 1 26 0 14 1 26 0 18 1 26 0 19 1 26 0 20 1 26 0 22 1 26 0 25 1 26 0 28 1 26 0 33 1 26 0 36 1 26 0 73 1 26 0 99 3 97 0 139 4 5 0 140 1 26 1 10] 
#[0 1 30 0 22 0 99 1 10] 
#[0 4 9 0 65] 
#[0 0 0 1 10] 
#[0 1 34 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 9 1 10] 
#[0 1 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 9 1 10] 
#[0 1 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 1 46 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 0 82 0 12 0 20 0 22 0 28 0 39 0 57 0 76 0 99 0 100 0 101 1 10] 
#[1 4 13 0 76 1 50 0 99 4 17 0 100 4 21 0 113] 
#[0 1 54 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 10] 
#[0 4 25 0 77] 
#[1 4 29 0 20 4 33 0 100] 
#[1 4 37 0 100 4 41 0 117] 
#[1 4 45 0 12 0 186 0 22 0 186 0 58 0 186 0 99 4 49 0 229 0 186 1 10] 
#[0 4 53 0 58] 
#[0 0 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 57 0 20] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 4 69 0 184 0 10 1 9] 
#[0 4 73 0 20] 
#[1 4 77 0 12 4 81 0 20] 
#[0 1 58 0 12 0 20] 
#[1 1 62 0 12 1 62 0 20 4 85 0 39] 
#[0 4 89 0 46] 
#[0 4 93 0 77] 
#[0 4 97 0 77] 
#[0 1 66 0 34 0 41 0 44 0 46] 
#[0 1 70 0 6 0 10 0 13 0 37 0 40 0 42 0 43 0 45 0 47 0 51 0 54 0 55 0 57 0 60 0 62 0 64 0 66 0 67 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 9] 
#[0 1 74 0 6 0 10 0 13 0 37 0 40 0 42 0 43 0 45 0 47 0 51 0 54 0 55 0 57 0 60 0 62 0 64 0 66 0 67 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 9] 
#[0 1 78 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 4 101 0 22 4 105 0 99] 
#[0 1 82 1 10] 
#[0 1 86 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 10] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 1 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 109 0 37] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 4 113 0 224 4 113 0 230 4 113 0 231 1 29 0 232 4 117 1 4] 
#[1 1 98 0 1 1 98 0 2 1 98 0 3 1 98 0 4 1 98 0 5 1 98 0 6 1 98 0 7 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 22 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 1 98 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 49 1 98 0 53 1 98 0 54 1 98 0 56 1 98 0 58 1 98 0 59 1 98 0 62 1 98 0 63 1 98 0 72 1 98 0 73 0 71 0 76 1 98 0 81 1 98 0 82 1 98 0 84 1 98 0 85 1 98 0 87 1 98 0 88 1 98 0 90 1 98 0 91 1 98 0 99 0 75 0 100 1 98 0 101 0 79 0 102 1 98 0 103 1 98 0 105 1 98 1 10] 
#[1 1 102 0 12 1 102 0 20 1 201 0 77 1 102 0 101 4 121 0 232] 
#[1 1 201 0 77 4 125 0 232] 
#[1 1 201 0 77 2 73 0 100 4 129 0 126 4 133 0 127 4 129 0 232] 
#[0 4 137 0 20] 
#[0 1 106 0 20 0 101] 
#[1 4 145 0 12 0 186 0 20 0 186 0 101 4 145 0 229] 
#[1 1 110 0 12 1 110 0 20 1 110 0 101 4 149 0 120] 
#[1 4 153 0 12 0 186 0 20 0 186 0 101 4 157 0 229] 
#[1 1 114 0 12 0 83 0 20 4 161 0 28 1 114 0 101 4 165 0 125 4 169 0 206] 
#[0 1 118 0 12 0 20 0 28 0 101] 
#[0 1 122 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 1 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 173 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 177 0 101] 
#[1 0 170 0 12 4 181 0 53 0 170 0 101 4 185 1 1] 
#[0 1 138 0 101] 
#[0 1 142 0 101] 
#[0 4 189 0 101] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 193 0 103] 
#[0 1 150 0 103] 
#[1 0 170 0 12 4 197 0 53 0 170 0 103 4 201 0 254] 
#[0 1 154 0 103] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 4 205 0 224 4 205 0 230 4 205 0 231 1 29 0 232] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 170 0 12 4 209 0 20 4 181 0 53 0 170 0 105 4 185 1 1] 
#[0 1 162 0 105] 
#[0 4 213 0 105] 
#[0 1 166 0 105] 
#[0 4 217 0 105] 
#[0 1 170 0 105] 
#[1 1 174 0 12 1 174 0 105 4 221 0 241] 
#[0 1 178 0 12 0 105] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 225 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 229 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 233 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 1 182 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 186 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 190 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 194 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 198 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 202 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 206 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 210 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 1 214 0 10 1 214 0 13 1 214 0 37 1 214 0 42 4 237 0 62 1 214 0 74 1 214 0 75 1 214 0 77 1 214 0 78 1 214 0 79 1 214 0 80 1 214 0 83 1 214 0 86 1 214 0 89 1 214 0 92 1 214 0 100 1 214 0 102 1 214 0 104] 
#[0 4 241 0 58] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 245 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 249 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 4 253 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 1 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 5 0 200 5 5 0 201 5 5 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 9 0 200 5 9 0 201 5 9 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 13 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 17 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 21 0 201 5 21 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 25 0 201 5 25 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 29 0 201 5 29 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 33 0 201 5 33 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 37 0 201 5 37 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 5 41 0 77] 
#[1 5 45 0 6 5 49 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 5 53 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 57 0 224 5 57 0 230 5 57 0 231 1 29 0 232 5 69 0 238 5 65 0 250 5 69 0 252] 
#[1 0 125 0 10 0 129 0 13 5 73 0 20 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 85 0 224 5 77 0 225 5 81 0 226 5 85 0 230 5 85 0 231 1 29 0 232] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 89 0 224 5 89 0 230 5 89 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 93 0 224 5 93 0 230 5 93 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 97 0 224 5 97 0 230 5 97 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 101 0 224 5 101 0 230 5 101 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 105 0 224 5 105 0 230 5 105 0 231 1 29 0 232] 
#[1 5 109 0 99 1 222 1 10] 
#[1 1 226 0 3 1 226 0 5 0 121 0 6 1 226 0 8 1 226 0 9 0 125 0 10 1 226 0 11 0 129 0 13 1 226 0 14 1 226 0 18 1 226 0 19 1 226 0 20 1 226 0 22 1 226 0 25 1 226 0 28 1 226 0 33 1 226 0 36 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 1 226 0 73 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 1 226 0 99 0 173 0 100 1 226 0 101 0 177 0 102 1 226 0 103 0 181 0 104 1 226 0 105 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 113 0 224 5 113 0 230 5 113 0 231 1 29 0 232 5 113 0 234 1 226 1 10] 
#[0 1 230 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 10] 
#[1 3 93 0 12 0 186 0 22 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 5 117 0 139 5 121 0 229 0 186 1 10] 
#[0 1 234 0 22 0 99 0 101 0 103 0 105 1 10] 
#[0 1 238 0 22 0 99 1 10] 
#[1 5 125 0 12 1 242 0 22 1 242 0 99 1 242 1 10] 
#[0 1 246 0 22 0 99 1 10] 
#[1 1 250 0 22 5 129 0 58 1 250 0 99 1 250 1 10] 
#[0 1 254 0 57 0 76 0 77] 
#[0 5 133 0 57] 
#[1 2 2 0 57 5 137 0 76 1 201 0 77 5 141 0 163 5 141 0 232] 
#[1 2 6 0 57 4 13 0 76] 
#[0 2 10 0 12 0 22 0 99 1 10] 
#[1 5 145 0 12 2 14 0 22 2 14 0 99 2 14 1 10] 
#[0 2 18 0 12 0 22 0 99 1 10] 
#[1 5 149 0 12 2 22 0 22 2 22 0 99 2 22 1 10] 
#[1 2 26 0 12 2 26 0 22 5 153 0 39 4 13 0 76 2 26 0 99 2 26 1 10] 
#[1 5 157 0 12 2 30 0 22 5 161 0 54 2 30 0 99 5 165 0 151 2 30 1 10] 
#[0 2 34 0 22 0 99 0 101 1 10] 
#[0 2 38 0 22 0 99 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 206 0 22 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 206 0 99 0 173 0 100 0 206 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 3 165 0 233 1 37 0 234 5 169 0 235 0 206 1 10] 
#[0 2 42 0 22 0 99 0 101 1 10] 
#[0 2 46 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 50 0 22 0 99 1 10] 
#[1 2 113 0 20 2 54 0 22 3 233 0 28 2 54 0 99 3 253 0 206 2 54 1 10] 
#[0 2 58 0 22 0 99 1 10] 
#[0 2 62 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 66 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 70 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 74 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 78 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 82 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 86 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 90 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 94 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 98 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 102 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 106 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 110 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 1 85 0 71 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 5 173 0 137 5 173 0 138 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 169 0 224 1 169 0 230 1 169 0 231 1 29 0 232 1 169 0 234 5 173 1 6] 
#[0 5 181 0 28] 
#[1 2 114 0 3 2 114 0 5 0 121 0 6 2 114 0 8 2 114 0 9 0 125 0 10 2 114 0 11 0 129 0 13 2 114 0 14 2 114 0 18 2 114 0 19 2 114 0 20 2 114 0 22 2 114 0 25 2 114 0 28 2 114 0 33 2 114 0 36 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 2 114 0 73 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 2 114 0 99 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 113 0 224 5 113 0 230 5 113 0 231 1 29 0 232 5 113 0 234 2 114 1 10] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 3 93 0 12 0 186 0 14 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 22 0 186 0 25 0 186 0 28 0 186 0 33 0 186 0 36 0 186 0 73 0 186 0 99 5 117 0 139 5 185 0 229 0 186 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 206 0 22 5 189 0 32 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 206 0 99 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 3 165 0 233 1 37 0 234 5 193 0 235 0 206 1 10] 
#[0 5 197 0 77] 
#[1 5 45 0 6 5 49 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 5 201 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 57 0 224 5 57 0 230 5 57 0 231 1 29 0 232 5 69 0 238 5 205 0 250 5 69 0 252] 
#[0 5 209 0 99] 
#[1 4 37 0 100 5 213 0 117] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 5 217 0 184 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 5 221 0 61 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 5 225 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 237 0 224 5 237 0 230 5 237 0 231 1 29 0 232 5 233 0 246 5 237 0 249] 
#[1 2 65 0 6 2 69 0 7 1 201 0 77 2 73 0 100 0 74 0 101 5 241 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 232] 
#[1 5 245 0 15 2 118 0 20 5 249 0 116] 
#[1 0 125 0 10 0 129 0 13 1 226 0 22 0 133 0 37 0 137 0 42 1 226 0 58 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 1 226 0 99 0 173 0 100 0 177 0 102 0 181 0 104 1 225 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 253 0 228 0 241 0 232 1 226 1 10] 
#[0 2 122 0 22 0 58 0 99 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 6 1 0 138 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 169 0 224 1 169 0 230 1 169 0 231 1 29 0 232 1 169 0 234] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 6 5 0 184 0 10 1 9] 
#[0 6 9 1 8] 
#[0 2 126 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 6 13 0 50 6 17 0 52 6 21 0 178 6 25 0 179 6 29 0 183] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 6 33 0 184 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 6 37 0 182 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 2 1 0 224 2 1 0 230 2 1 0 231 1 29 0 232] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 6 41 0 184 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 6 45 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 6 49 0 77] 
#[1 6 53 0 20 6 57 0 100] 
#[1 4 37 0 100 6 61 0 117] 
#[1 0 87 0 6 0 87 0 10 0 87 0 13 2 134 0 34 0 87 0 37 0 87 0 40 2 134 0 41 0 87 0 42 0 87 0 43 2 134 0 44 0 87 0 45 2 134 0 46 0 87 0 47 2 134 0 48 2 134 0 49 2 134 0 50 0 87 0 51 2 134 0 52 2 134 0 53 0 87 0 54 0 87 0 55 2 134 0 56 0 87 0 57 0 87 0 60 0 87 0 62 0 87 0 64 0 87 0 66 0 87 0 67 2 134 0 68 2 134 0 69 2 134 0 70 0 87 0 71 0 87 0 74 0 87 0 75 0 87 0 77 0 87 0 78 0 87 0 79 0 87 0 80 0 87 0 83 0 87 0 86 0 87 0 89 0 87 0 92 0 91 0 99 0 87 0 100 0 87 0 102 0 87 0 104 2 134 1 7 0 87 1 9 2 134 1 10] 
#[0 2 138 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 6 69 0 12 2 146 0 37] 
#[0 2 150 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 2 154 0 12 0 95 0 20 2 154 0 101 6 73 0 206] 
#[1 2 158 0 12 0 99 0 20 2 158 0 101 6 77 0 206] 
#[1 6 81 0 12 0 186 0 101 6 85 0 229] 
#[0 6 89 0 101] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 93 0 224 6 93 0 230 6 93 0 231 1 29 0 232] 
#[0 1 226 0 20 0 101] 
#[0 2 162 0 20 0 101] 
#[1 6 97 0 12 0 186 0 20 0 186 0 101 6 101 0 123 6 105 0 229] 
#[1 2 65 0 6 2 69 0 7 1 226 0 20 1 201 0 77 2 73 0 100 1 226 0 101 6 109 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 232] 
#[0 2 166 0 20 0 101] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 113 0 224 6 113 0 230 6 113 0 231 1 29 0 232] 
#[0 2 170 0 12 0 20 0 101] 
#[1 2 174 0 12 2 174 0 20 4 161 0 28 2 174 0 101 6 117 0 125] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 225 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 121 0 228 0 241 0 232] 
#[0 2 186 0 12 0 101 0 105] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 225 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 125 0 228 0 241 0 232] 
#[0 2 198 0 103] 
#[0 2 202 0 12 0 105] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 129 0 224 6 129 0 230 6 129 0 231 1 29 0 232] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 6 133 0 12 0 186 0 105 6 137 0 229 6 141 0 240] 
#[0 6 145 0 49] 
#[0 2 214 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 2 218 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 2 222 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 226 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 230 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 2 246 0 1 0 103 0 2 2 246 0 3 2 246 0 4 2 246 0 5 0 107 0 6 2 246 0 7 2 246 0 8 2 246 0 9 2 246 0 10 2 246 0 11 2 246 0 12 2 246 0 13 2 246 0 14 0 111 0 16 0 115 0 17 2 246 0 18 2 246 0 19 2 246 0 20 2 246 0 22 2 246 0 23 2 246 0 24 2 246 0 25 2 246 0 26 2 246 0 27 2 246 0 28 2 246 0 29 2 246 0 30 2 246 0 31 2 246 0 32 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 37 2 246 0 38 2 246 0 39 2 246 0 49 2 246 0 53 2 246 0 54 2 246 0 56 2 246 0 58 2 246 0 59 2 246 0 62 2 246 0 63 2 246 0 72 2 246 0 73 2 246 0 76 2 246 0 81 2 246 0 82 2 246 0 84 2 246 0 85 2 246 0 87 2 246 0 88 2 246 0 90 2 246 0 91 2 246 0 99 2 246 0 100 2 246 0 101 2 246 0 102 2 246 0 103 2 246 0 105 2 246 1 10] 
#[1 2 250 0 1 0 119 0 2 2 250 0 3 2 250 0 4 2 250 0 5 0 123 0 6 2 250 0 7 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 11 2 250 0 12 2 250 0 13 2 250 0 14 0 127 0 16 0 131 0 17 2 250 0 18 2 250 0 19 2 250 0 20 2 250 0 22 2 250 0 23 2 250 0 24 2 250 0 25 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 29 2 250 0 30 2 250 0 31 2 250 0 32 2 250 0 33 2 250 0 35 2 250 0 36 2 250 0 37 2 250 0 38 2 250 0 39 2 250 0 49 2 250 0 53 2 250 0 54 2 250 0 56 2 250 0 58 2 250 0 59 2 250 0 62 2 250 0 63 2 250 0 72 2 250 0 73 2 250 0 76 2 250 0 81 2 250 0 82 2 250 0 84 2 250 0 85 2 250 0 87 2 250 0 88 2 250 0 90 2 250 0 91 2 250 0 99 2 250 0 100 2 250 0 101 2 250 0 102 2 250 0 103 2 250 0 105 2 250 1 10] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 149 0 224 6 149 0 230 6 149 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 153 0 224 6 153 0 230 6 153 0 231 1 29 0 232] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 3 34 0 12 6 157 0 28 4 181 0 53 3 34 0 101 4 185 1 1] 
#[0 3 38 0 12 0 101] 
#[0 6 161 0 101] 
#[1 6 165 0 12 0 186 0 101 6 169 0 229] 
#[1 0 125 0 10 3 42 0 12 0 129 0 13 6 173 0 20 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 3 42 0 103 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 181 0 224 6 177 0 227 6 181 0 230 6 181 0 231 1 29 0 232] 
#[0 6 185 0 103] 
#[1 6 189 0 12 0 186 0 103 6 193 0 229] 
#[1 3 46 0 12 6 197 0 20 3 46 0 103] 
#[1 3 50 0 81 3 50 0 82 6 201 0 210] 
#[1 3 54 0 84 3 54 0 85 6 205 0 212] 
#[1 3 58 0 87 3 58 0 88 6 209 0 214] 
#[1 3 62 0 90 3 62 0 91 6 213 0 216] 
#[0 3 66 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[0 3 70 0 99 1 10] 
#[0 3 74 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 10] 
#[0 3 78 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 10] 
#[0 3 82 0 22 0 99 0 101 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 6 217 0 224 6 217 0 230 6 217 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 6 221 0 167 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 3 113 0 224 3 113 0 230 3 113 0 231 1 29 0 232] 
#[1 6 225 0 6 6 229 0 77 6 233 0 100 6 237 0 157 6 241 0 158 6 245 0 160 6 249 0 161] 
#[0 3 86 0 57 0 76 0 77] 
#[1 3 90 0 57 4 13 0 76] 
#[0 6 253 0 77] 
#[1 1 201 0 77 7 1 0 159 3 157 0 163 3 157 0 232] 
#[0 7 5 0 77] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 9 0 224 7 9 0 230 7 9 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 13 0 224 7 13 0 230 7 13 0 231 1 29 0 232] 
#[0 3 94 0 22 0 99 1 10] 
#[0 3 98 0 22 0 99 0 101 1 10] 
#[0 3 102 0 22 0 99 1 10] 
#[0 2 54 0 22 0 99 1 10] 
#[0 3 106 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 3 110 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 1 10] 
#[1 0 121 0 6 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 1 37 0 224 1 37 0 230 1 37 0 231 1 29 0 232 7 17 0 233 1 37 0 234] 
#[0 3 114 0 22 0 99 1 10] 
#[0 3 118 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 10] 
#[0 3 122 0 99] 
#[0 7 21 0 101] 
#[0 3 126 0 34 0 41 0 44 0 46] 
#[1 5 245 0 15 2 118 0 20 7 25 0 116] 
#[0 3 130 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 7 29 0 28] 
#[0 7 33 0 20] 
#[0 3 134 0 12 0 101] 
#[0 7 37 0 101] 
#[1 3 138 0 12 3 138 0 101 7 41 0 248] 
#[0 7 45 0 101] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 7 49 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 7 53 0 20] 
#[0 3 142 0 22 0 58 0 99 1 10] 
#[0 7 57 0 20] 
#[1 3 146 0 6 3 146 0 10 3 146 0 13 3 146 0 34 3 146 0 37 3 146 0 40 3 146 0 41 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 46 3 146 0 47 3 146 0 48 3 146 0 49 3 146 0 51 3 146 0 53 3 146 0 54 3 146 0 55 3 146 0 56 3 146 0 57 3 146 0 60 3 146 0 62 3 146 0 64 3 146 0 66 3 146 0 67 3 146 0 68 3 146 0 69 3 146 0 70 3 146 0 71 3 146 0 74 3 146 0 75 3 146 0 77 3 146 0 78 3 146 0 79 3 146 0 80 3 146 0 83 3 146 0 86 3 146 0 89 3 146 0 92 3 146 0 99 3 146 0 100 3 146 0 102 3 146 0 104 7 61 0 172 3 146 1 7 3 146 1 9 3 146 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 29 0 34 0 10 0 37 0 10 0 40 0 33 0 41 0 10 0 42 0 10 0 43 0 37 0 44 0 10 0 45 0 41 0 46 0 10 0 47 0 10 0 51 0 45 0 53 0 10 0 54 0 10 0 55 0 49 0 56 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 53 0 68 0 57 0 69 0 61 0 70 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 0 10 0 100 0 10 0 102 0 10 0 104 0 73 0 112 0 77 0 114 1 197 0 115 7 65 0 128 1 193 0 129 0 89 0 131 1 197 0 170 1 197 0 171 1 197 0 175 1 197 0 176 1 197 0 177 1 197 0 180 7 69 0 185 1 197 0 245 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 3 150 0 20 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 73 0 224 7 73 0 230 7 73 0 231 1 29 0 232] 
#[0 7 77 0 20] 
#[0 3 154 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 3 158 0 6 3 158 0 10 3 158 0 13 3 158 0 34 3 158 0 37 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 7 81 0 49 6 13 0 50 3 158 0 51 3 158 0 52 3 158 0 53 3 158 0 54 3 158 0 55 3 158 0 56 3 158 0 57 3 158 0 60 3 158 0 62 3 158 0 64 3 158 0 66 3 158 0 67 3 158 0 68 3 158 0 69 3 158 0 70 3 158 0 71 3 158 0 74 3 158 0 75 3 158 0 77 3 158 0 78 3 158 0 79 3 158 0 80 3 158 0 83 3 158 0 86 3 158 0 89 3 158 0 92 3 158 0 99 3 158 0 100 3 158 0 102 3 158 0 104 7 85 0 174 7 89 0 183 3 158 1 7 3 158 1 9 3 158 1 10] 
#[0 7 93 0 20] 
#[1 3 158 0 6 3 158 0 10 3 158 0 13 3 158 0 34 3 158 0 37 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 7 81 0 49 3 158 0 51 3 158 0 53 3 158 0 54 3 158 0 55 3 158 0 56 3 158 0 57 3 158 0 60 3 158 0 62 3 158 0 64 3 158 0 66 3 158 0 67 3 158 0 68 3 158 0 69 3 158 0 70 3 158 0 71 3 158 0 74 3 158 0 75 3 158 0 77 3 158 0 78 3 158 0 79 3 158 0 80 3 158 0 83 3 158 0 86 3 158 0 89 3 158 0 92 3 158 0 99 3 158 0 100 3 158 0 102 3 158 0 104 7 97 0 174 3 158 1 7 3 158 1 9 3 158 1 10] 
#[0 3 162 0 12 0 20] 
#[0 3 166 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 3 170 0 12 0 20] 
#[1 4 37 0 100 7 101 0 117] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 7 105 0 184 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 5 221 0 61 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 7 109 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 237 0 224 5 237 0 230 5 237 0 231 1 29 0 232 7 113 0 246 5 237 0 249] 
#[1 5 245 0 15 2 118 0 20 7 117 0 116] 
#[0 3 174 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 3 178 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 3 182 0 12 0 20 0 101] 
#[0 3 186 0 12 0 20 0 101] 
#[1 1 201 0 77 2 73 0 100 1 226 0 101 4 129 0 126 7 121 0 127 4 129 0 232] 
#[0 3 190 0 101] 
#[0 3 194 0 12 0 20 0 28 0 101] 
#[0 3 198 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[1 2 69 0 7 1 226 0 20 1 201 0 77 2 73 0 100 1 226 0 101 7 125 0 121 7 129 0 124 2 97 0 126 2 97 0 232] 
#[0 3 202 0 12 0 20 0 101] 
#[0 3 206 0 20 0 101] 
#[0 3 210 0 20 0 101] 
#[0 3 214 0 12 0 20 0 101] 
#[0 3 218 0 12 0 20 0 101] 
#[0 7 133 0 58] 
#[0 7 137 0 58] 
#[1 3 222 0 12 4 181 0 53 3 222 0 105 7 141 1 1] 
#[1 2 165 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 1 226 0 105 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 145 0 224 7 145 0 230 7 145 0 231 1 29 0 232 7 149 0 243 7 149 0 244] 
#[0 3 226 0 105] 
#[0 3 230 0 12 0 105] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 153 0 224 7 153 0 230 7 153 0 231 1 29 0 232] 
#[1 0 135 0 12 3 234 0 101 7 161 0 251] 
#[1 7 165 0 12 0 186 0 101 7 165 0 229] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 169 0 224 7 169 0 230 7 169 0 231 1 29 0 232] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 5 45 0 6 5 49 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 1 226 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 57 0 224 5 57 0 230 5 57 0 231 1 29 0 232 5 69 0 238 7 173 0 250 5 69 0 252] 
#[0 3 242 0 101] 
#[1 0 125 0 10 3 246 0 12 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 3 246 0 103 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 177 0 224 7 177 0 230 7 177 0 231 1 29 0 232] 
#[0 3 250 0 12 0 103] 
#[1 3 42 0 12 6 173 0 20 3 42 0 103 7 181 0 227] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[1 0 125 0 10 0 129 0 13 5 73 0 20 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 1 226 0 103 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 85 0 224 7 185 0 225 5 81 0 226 5 85 0 230 5 85 0 231 1 29 0 232] 
#[0 4 2 0 103] 
#[1 0 125 0 10 3 42 0 12 0 129 0 13 6 173 0 20 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 3 42 0 103 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 7 193 0 224 7 189 0 227 7 193 0 230 7 193 0 231 1 29 0 232] 
#[1 7 197 0 81 7 201 0 82 7 205 0 209] 
#[1 7 209 0 84 7 213 0 85 7 217 0 211] 
#[1 7 221 0 87 7 225 0 88 7 229 0 213] 
#[1 7 233 0 90 7 237 0 91 7 241 0 215] 
#[0 4 6 0 22 0 99 1 10] 
#[0 4 10 0 22 0 99 1 10] 
#[0 4 14 0 22 0 99 1 10] 
#[1 4 18 0 12 4 18 0 22 7 245 0 39 4 18 0 99 4 18 0 101 4 18 1 10] 
#[1 6 229 0 77 6 241 0 158 7 249 0 160 6 249 0 161] 
#[0 4 22 0 22 0 99 1 10] 
#[0 4 26 0 12 0 22 0 99 0 101 1 10] 
#[0 4 30 0 22 0 99 1 10] 
#[1 7 253 0 12 0 186 0 22 0 186 0 99 0 186 0 101 8 1 0 229 0 186 1 10] 
#[0 4 34 0 12 0 22 0 99 1 10] 
#[0 4 38 0 12 0 22 0 99 1 10] 
#[0 4 42 0 12 0 22 0 99 1 10] 
#[1 8 5 0 12 4 46 0 22 4 46 0 99 4 46 1 10] 
#[0 4 50 0 22 0 99 1 10] 
#[0 4 54 0 22 0 99 1 10] 
#[0 4 58 0 99] 
#[0 8 9 0 20] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 13 0 224 8 13 0 230 8 13 0 231 1 29 0 232] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 17 0 184 0 10 1 9] 
#[0 8 21 0 20] 
#[1 8 25 0 12 0 186 0 101 8 29 0 229 8 33 0 247] 
#[0 4 62 0 15 0 20] 
#[0 4 66 0 20] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 37 0 184 0 10 1 9] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 41 0 184 0 10 1 9] 
#[1 3 158 0 6 3 158 0 10 3 158 0 13 3 158 0 34 3 158 0 37 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 8 45 0 48 7 81 0 49 3 158 0 51 3 158 0 53 3 158 0 54 3 158 0 55 3 158 0 56 3 158 0 57 3 158 0 60 3 158 0 62 3 158 0 64 3 158 0 66 3 158 0 67 3 158 0 68 3 158 0 69 3 158 0 70 3 158 0 71 3 158 0 74 3 158 0 75 3 158 0 77 3 158 0 78 3 158 0 79 3 158 0 80 3 158 0 83 3 158 0 86 3 158 0 89 3 158 0 92 3 158 0 99 3 158 0 100 3 158 0 102 3 158 0 104 8 49 0 173 8 53 0 174 3 158 1 7 3 158 1 9 3 158 1 10] 
#[0 4 70 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 7 1 9] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 29 0 34 0 10 0 37 0 10 0 40 0 33 0 41 0 10 0 42 0 10 0 43 0 37 0 44 0 10 0 45 0 41 0 46 0 10 0 47 0 10 0 51 0 45 0 53 0 10 0 54 0 10 0 55 0 49 0 56 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 53 0 68 0 57 0 69 0 61 0 70 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 0 10 0 100 0 10 0 102 0 10 0 104 0 73 0 112 0 77 0 114 1 197 0 115 8 57 0 128 1 193 0 129 0 89 0 131 1 197 0 170 1 197 0 171 1 197 0 175 1 197 0 176 1 197 0 177 1 197 0 180 1 197 0 245 8 61 1 7 0 10 1 9] 
#[1 8 65 0 12 4 74 0 20 8 69 0 39] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 73 0 184 0 10 1 9] 
#[0 8 77 0 20] 
#[1 4 78 0 6 4 78 0 10 4 78 0 13 4 78 0 34 4 78 0 37 4 78 0 40 4 78 0 41 4 78 0 42 4 78 0 43 4 78 0 44 4 78 0 45 4 78 0 46 4 78 0 47 4 78 0 51 6 17 0 52 4 78 0 53 4 78 0 54 4 78 0 55 4 78 0 56 4 78 0 57 4 78 0 60 4 78 0 62 4 78 0 64 4 78 0 66 4 78 0 67 4 78 0 68 4 78 0 69 4 78 0 70 4 78 0 71 4 78 0 74 4 78 0 75 4 78 0 77 4 78 0 78 4 78 0 79 4 78 0 80 4 78 0 83 4 78 0 86 4 78 0 89 4 78 0 92 4 78 0 99 4 78 0 100 4 78 0 102 4 78 0 104 8 81 0 178 4 78 1 7 4 78 1 9 4 78 1 10] 
#[0 8 85 0 20] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 89 0 184 0 10 1 9] 
#[0 4 82 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 5 245 0 15 2 118 0 20 8 93 0 116] 
#[0 4 86 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 8 97 0 20] 
#[0 8 101 0 101] 
#[0 8 105 0 20] 
#[0 4 90 0 101] 
#[1 8 109 0 12 0 186 0 20 0 186 0 101 8 109 0 229] 
#[0 4 94 0 12 0 20 0 101] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 8 113 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 8 121 0 186 8 125 0 188 8 125 0 189 8 125 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 4 98 0 105] 
#[0 8 137 0 20] 
#[0 4 102 0 12 0 105] 
#[0 4 106 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 10] 
#[1 8 141 0 6 8 145 0 7 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 5 57 0 224 5 57 0 230 5 57 0 231 1 29 0 232 8 149 0 238 8 149 0 252] 
#[1 8 153 0 12 0 186 0 101 8 153 0 229] 
#[0 4 110 0 101] 
#[0 4 114 0 12 0 101] 
#[0 4 118 0 101] 
#[0 4 122 0 12 0 103] 
#[0 4 126 0 12 0 103] 
#[0 4 130 0 103] 
#[0 4 134 0 12 0 103] 
#[1 3 42 0 12 6 173 0 20 3 42 0 103 8 157 0 227] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 161 0 224 8 161 0 230 8 161 0 231 1 29 0 232] 
#[0 4 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 142 0 81 0 82] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 165 0 224 8 165 0 230 8 165 0 231 1 29 0 232] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 150 0 84 0 85] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 169 0 224 8 169 0 230 8 169 0 231 1 29 0 232] 
#[0 4 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 158 0 87 0 88] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 173 0 224 8 173 0 230 8 173 0 231 1 29 0 232] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 10] 
#[0 4 166 0 90 0 91] 
#[0 8 177 0 77] 
#[0 8 181 0 101] 
#[1 1 226 0 22 6 229 0 77 1 226 0 99 1 226 0 101 8 185 0 158 1 226 1 10] 
#[0 4 170 0 22 0 99 0 101 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 189 0 224 8 189 0 230 8 189 0 231 1 29 0 232] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 193 0 184 0 10 1 9] 
#[0 4 174 0 12 0 101] 
#[0 4 178 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 197 0 184 0 10 1 9] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 5 221 0 61 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 1 226 0 101 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 201 0 224 8 201 0 230 8 201 0 231 1 29 0 232 8 201 0 249] 
#[0 4 182 0 101] 
#[0 4 186 0 12 0 101] 
#[0 4 190 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 3 158 0 6 3 158 0 10 3 158 0 13 3 158 0 34 3 158 0 37 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 7 81 0 49 3 158 0 51 3 158 0 53 3 158 0 54 3 158 0 55 3 158 0 56 3 158 0 57 3 158 0 60 3 158 0 62 3 158 0 64 3 158 0 66 3 158 0 67 3 158 0 68 3 158 0 69 3 158 0 70 3 158 0 71 3 158 0 74 3 158 0 75 3 158 0 77 3 158 0 78 3 158 0 79 3 158 0 80 3 158 0 83 3 158 0 86 3 158 0 89 3 158 0 92 3 158 0 99 3 158 0 100 3 158 0 102 3 158 0 104 8 205 0 174 3 158 1 7 3 158 1 9 3 158 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 209 0 224 8 209 0 230 8 209 0 231 1 29 0 232] 
#[0 4 194 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 4 198 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 4 202 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 7 1 9] 
#[0 4 206 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 213 0 224 8 213 0 230 8 213 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 8 217 0 224 8 217 0 230 8 217 0 231 1 29 0 232] 
#[0 4 210 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 221 0 184 0 10 1 9] 
#[0 4 214 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 225 0 184 0 10 1 9] 
#[0 4 218 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 8 229 0 20] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 233 0 184 0 10 1 9] 
#[0 8 237 0 20] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 8 241 0 184 0 10 1 9] 
#[0 4 222 0 20 0 101] 
#[1 4 226 0 12 4 181 0 53 8 245 0 56 4 226 0 101 4 226 0 105 8 249 1 0 8 249 1 1 8 249 1 2] 
#[1 2 65 0 6 2 69 0 7 0 74 0 20 1 201 0 77 2 73 0 100 9 5 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 232] 
#[1 4 197 0 53 9 9 0 56 4 230 0 103 9 13 0 253 9 13 0 254 9 13 0 255] 
#[1 9 25 0 12 4 234 0 53 4 234 0 56 4 234 0 103] 
#[0 4 238 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 4 242 0 12 0 53 0 56 0 101 0 103 0 105] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 9 29 0 224 9 29 0 230 9 29 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 9 33 0 224 9 33 0 230 9 33 0 231 1 29 0 232] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 0 141 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 0 189 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 9 37 0 224 9 37 0 230 9 37 0 231 1 29 0 232] 
#[1 0 135 0 12 3 234 0 101 9 41 0 251] 
#[0 4 246 0 101] 
#[0 4 250 0 12 0 103] 
#[0 4 254 0 81 0 82] 
#[0 5 2 0 84 0 85] 
#[0 5 6 0 87 0 88] 
#[0 5 10 0 90 0 91] 
#[0 5 14 0 12 0 22 0 99 0 101 1 10] 
#[0 5 18 0 22 0 99 1 10] 
#[0 5 22 0 12 0 22 0 99 0 101 1 10] 
#[0 5 26 0 22 0 99 1 10] 
#[0 5 30 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 5 34 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 5 38 0 12 0 101] 
#[0 5 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 9 45 0 20] 
#[0 5 46 0 20] 
#[0 5 50 0 20] 
#[0 5 54 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 5 58 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 9 49 0 184 0 10 1 9] 
#[0 5 62 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 9 53 0 184 0 10 1 9] 
#[0 5 66 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 9 57 0 188 9 57 0 189 9 57 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 5 70 0 12 0 101 0 105] 
#[0 5 74 0 12 0 101 0 105] 
#[0 5 78 0 12 0 101 0 105] 
#[0 9 61 0 20] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 9 65 0 188 9 65 0 189 9 65 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 5 82 0 103] 
#[0 5 86 0 103] 
#[0 5 90 0 103] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 9 69 0 187 9 73 0 188 9 73 0 189 9 73 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 3 222 0 12 0 105] 
#[0 5 94 0 12 0 101] 
#[0 5 98 0 12 0 101] 
#[0 5 102 0 12 0 101] 
#[1 0 10 0 6 0 10 0 10 0 10 0 13 0 10 0 37 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 45 0 10 0 47 0 10 0 51 0 10 0 54 0 10 0 55 0 10 0 57 0 10 0 60 0 10 0 62 0 10 0 64 0 10 0 66 0 10 0 67 0 10 0 71 0 10 0 74 0 10 0 75 0 10 0 77 0 10 0 78 0 10 0 79 0 10 0 80 0 10 0 83 0 10 0 86 0 10 0 89 0 10 0 92 4 61 0 99 0 10 0 100 0 10 0 102 0 10 0 104 4 65 0 129 0 89 0 131 9 77 0 184 0 10 1 9] 
#[0 5 106 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 5 110 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[1 5 114 0 12 4 181 0 53 8 245 0 56 5 114 0 101 5 114 0 105 9 81 1 0 9 81 1 1 9 81 1 2] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 0 181 0 104 9 85 0 188 9 85 0 189 9 85 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[1 4 197 0 53 9 9 0 56 5 118 0 103 9 89 0 253 9 89 0 254 9 89 0 255] 
#[1 9 93 0 12 0 186 0 53 0 186 0 56 0 186 0 103 9 97 0 229] 
#[0 5 122 0 12 0 53 0 56 0 103] 
#[0 5 126 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 9 1 10] 
#[0 5 130 0 12 0 101 0 105] 
#[0 5 134 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 5 138 0 103] 
#[1 0 125 0 10 0 129 0 13 0 133 0 37 0 137 0 42 1 226 0 53 1 226 0 56 8 117 0 60 0 145 0 62 0 149 0 74 0 153 0 75 0 157 0 77 0 161 0 78 0 165 0 79 0 14 0 80 0 18 0 83 0 22 0 86 0 26 0 89 0 169 0 92 0 173 0 100 0 177 0 102 1 226 0 103 0 181 0 104 9 101 0 188 9 101 0 189 9 101 0 190 0 193 0 191 0 197 0 192 0 197 0 193 0 205 0 195 0 209 0 196 0 213 0 197 0 217 0 198 0 221 0 199 0 225 0 200 0 225 0 201 0 225 0 202 0 237 0 203 0 241 0 204 0 241 0 205 0 249 0 207 0 253 0 208 1 1 0 217 1 5 0 218 1 9 0 219 1 13 0 220 0 241 0 232] 
#[0 5 142 0 53 0 56 0 103] 
#[0 5 146 0 12 0 53 0 56 0 103]
	).
]

{ #category : 'private' }
PythonParser >> actionsForCurrentToken [
	| actions originalToken originalPosition |
	originalToken := currentToken.
	originalPosition := self position.
	(#('!' ':' '=') includes: originalToken source)
		ifTrue: [ self findInterpolationState
				ifNotNil: [ :scannerState | 
					self scope: scannerState first.
					scanner lineJoiningStack: scannerState second.
					self position: currentToken startPosition - 1.
					currentToken := nil.
					self getNextToken.
					self scope: #default.
					currentToken source = originalToken source
						ifFalse: [ self actionsForCurrentToken do: [ :each | self splitWithAction: each ] ].
					currentToken := originalToken.
					self position: originalPosition ] ].
	actions := super actionsForCurrentToken.
	actions isEmpty
		ifTrue: [ currentToken source = '}'
				ifTrue: [ self findInterpolationState
						ifNotNil: [ :scannerState | 
							self scope: scannerState first.
							scanner lineJoiningStack: scannerState second.
							self position: currentToken startPosition - 1.
							currentToken := nil.
							self getNextToken.
							self scope: #default.
							currentToken source = '}' ifTrue: [ ^ actions ].
							^ self actionsForCurrentToken ] ].
			currentToken ids first = scanner ellipsisId
				ifTrue: [ currentToken := currentToken class
							value: '.'
							start: currentToken startPosition
							ids: {scanner periodId}.
					self position: currentToken startPosition.
					^ super actionsForCurrentToken ].
			currentToken ids first = scanner emptySymbolTokenId
				ifTrue: [ self addActionsFor: scanner DEDENTId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: currentToken startPosition
									ids: {scanner DEDENTId}.
							^ actions ].
					self addActionsFor: scanner NEWLINEId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: currentToken startPosition
									ids: {scanner NEWLINEId}.
							^ actions ] ] ].
	^ actions
]

{ #category : 'private' }
PythonParser >> findInterpolationState [
	| i stackItem |
	i := nodeStack size.
	[ i > 0 ]
		whileTrue: [ stackItem := nodeStack at: i.
			(stackItem class = Array
				and: [ stackItem size = 2 and: [ stackItem first isSymbol ] ])
				ifTrue: [ ^ stackItem ].
			i := i - 1 ].
	^ nil
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringDouble1: nodes [
	^ {#fLongStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringSingle1: nodes [
	^ {#fLongStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringDouble1: nodes [
	^ {#fStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringSingle1: nodes [
	^ {#fStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForSymbol1: nodes [
	| result |
	result := PyVariableExpressionNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor______commaToken__testlistItem__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_small_stmt_with_semicolon__statement___1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_test__expression_______commaToken___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_test__expression_______commaToken___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign__1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign__2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 3 put: ((nodes at: 2) at: 1).
	result at: 4 put: ((nodes at: 2) at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign___1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForarglist2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForarglist3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	result at: 4 put: ((nodes at: 3) at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	self add: ((nodes at: 3) at: 4) to: (result at: 3).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForarglist4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForargument3: nodes [
	| result |
	result := PyArgumentNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertStatementNode new.
	result assertToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result commaToken: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForassignment_expression1: nodes [
	| result |
	result := PyAssignmentExpressionNode new.
	result variable: (nodes at: 1).
	result assign: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom11: nodes [
	| result |
	result := PyEllipsisNode new.
	result ellipsis: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom12: nodes [
	| result |
	result := PyTypedVariableExpressionNode new.
	result nameToken: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom13: nodes [
	| result |
	result := PyNumberNode new.
	result numberToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom1: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom2: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom3: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom4: nodes [
	| result |
	result := PyListExpressionNode new.
	result lbrackToken: (nodes at: 1).
	result rbrackToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom5: nodes [
	| result |
	result := PyListExpressionNode new.
	result lbrackToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom6: nodes [
	| result |
	result := PySetExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom7: nodes [
	| result |
	result := PyDictionaryExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom8: nodes [
	| result |
	result := PyDictionaryExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result rcurlyToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForatom9: nodes [
	| result |
	result := PyBacktickExpressionNode new.
	result addToken: (nodes at: 1) to: result backtickTokens.
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result backtickTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForawait2: nodes [
	| result |
	result := PyAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForbreak_stmt1: nodes [
	| result |
	result := PyBreakStatementNode new.
	result breakToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassListItem2: nodes [
	| result |
	result := PyMetaclassNode new.
	result metaclassToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result superclass: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef1: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef2: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result cname: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef3: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result rparenToken: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef4: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result superClasses.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef5: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result cname: (nodes at: 3).
	result lparenToken: (nodes at: 4).
	result rparenToken: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForclassdef6: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classToken: (nodes at: 2).
	result cname: (nodes at: 3).
	result lparenToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result superClasses.
	result addTokens: ((nodes at: 5) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 6).
	result colonToken: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for1: nodes [
	| result |
	result := PyComprehensionForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result inValue: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for2: nodes [
	| result |
	result := PyComprehensionForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result inValue: (nodes at: 4).
	result comprehension: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if1: nodes [
	| result |
	result := PyComprehensionIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if2: nodes [
	| result |
	result := PyComprehensionIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op7: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op9: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomparison2: nodes [
	| result |
	result := PyComparisonExpressionNode new.
	result left: (nodes at: 1).
	result operator: ((nodes at: 2) at: 1).
	result notToken: ((nodes at: 2) at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomprehension1: nodes [
	| result |
	result := PyComprehensionNode new.
	result object: (nodes at: 1).
	result for: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcomprehension_dictionary_item1: nodes [
	| result |
	result := PyComprehensionDictionaryItemNode new.
	result object: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	result comp: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForcontinue_stmt1: nodes [
	| result |
	result := PyContinueStatementNode new.
	result continueToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordecorator1: nodes [
	| result |
	result := PyDecoratorExpressionNode new.
	result ampersandToken: (nodes at: 1).
	result receiver: (nodes at: 2).
	result lparenToken: ((nodes at: 3) at: 1).
	result rparenToken: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result arguments.
	result addTokens: ((nodes at: 3) at: 4) to: result commaTokens.
	result addTokens: ((nodes at: 3) at: 5) to: result starTokens.
	result starStarToken: ((nodes at: 3) at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordecorators1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordecorators2: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordel_stmt1: nodes [
	| result |
	result := PyDelStatementNode new.
	result delToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordictionary_item1: nodes [
	| result |
	result := PyDictionaryItemNode new.
	result object: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result periodTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result periodTokens.
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: ((nodes at: 3) at: 1) to: (result at: 2).
	self add: ((nodes at: 3) at: 2) to: (result at: 3).
	self add: ((nodes at: 3) at: 3) to: (result at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_names2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 2).
	self add: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: ((nodes at: 1) at: 3) to: (result at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForelif1: nodes [
	| result |
	result := PyElifNode new.
	result elifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForelse_opt2: nodes [
	| result |
	result := PyElseNode new.
	result elseToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForeval_input1: nodes [
	| result |
	result := PyEvalNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result expressions.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause1: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause2: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause3: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	result asToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause4: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	result commaToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt1: nodes [
	| result |
	result := PyExecStatementNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt2: nodes [
	| result |
	result := PyExecStatementNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result commaToken: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt1: nodes [
	| result |
	result := PyExpressionStatementNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt2: nodes [
	| result |
	result := PyAssignmentStatementNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result variables.
	result addTokens: ((nodes at: 1) at: 2) to: result assigns.
	result addTokens: ((nodes at: 1) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 1) at: 4) to: result typeExpressions.
	result value: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt3: nodes [
	| result |
	result := PyAssignmentStatementNode new.
	result addNode: (nodes at: 1) to: result variables.
	result addToken: (nodes at: 2) to: result assigns.
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForexprlist1: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfactor2: nodes [
	| result |
	result := PyUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfile_input1: nodes [
	| result |
	result := PyFileNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfile_input2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfile_input3: nodes [
	| result |
	result := nodes at: 1.
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfinally1: nodes [
	| result |
	result := PyFinallyNode new.
	result finallyToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfor_stmt1: nodes [
	| result |
	result := PyForStatementNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result inExpression: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result else: (nodes at: 7).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfpdef2: nodes [
	| result |
	result := PyParameterListNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef1: nodes [
	| result |
	result := PyFunctionDefinitionNode new.
	result defToken: (nodes at: 1).
	result fname: (nodes at: 2).
	result lparenToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commaTokens.
	result rparenToken: ((nodes at: 3) at: 4).
	result returnAnnotation: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef2: nodes [
	| result |
	result := PyFunctionDefinitionNode new.
	result asyncToken: (nodes at: 1).
	result defToken: (nodes at: 2).
	result fname: (nodes at: 3).
	result lparenToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commaTokens.
	result rparenToken: ((nodes at: 4) at: 4).
	result returnAnnotation: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef3: nodes [
	| result |
	result := PyFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result defToken: (nodes at: 2).
	result fname: (nodes at: 3).
	result lparenToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commaTokens.
	result rparenToken: ((nodes at: 4) at: 4).
	result returnAnnotation: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef4: nodes [
	| result |
	result := PyFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result asyncToken: (nodes at: 2).
	result defToken: (nodes at: 3).
	result fname: (nodes at: 4).
	result lparenToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commaTokens.
	result rparenToken: ((nodes at: 5) at: 4).
	result returnAnnotation: (nodes at: 6).
	result colonToken: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForglobal_stmt1: nodes [
	| result |
	result := PyGlobalStatementNode new.
	result globalToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForif_stmt1: nodes [
	| result |
	result := PyIfStatementNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	result addNodes: (nodes at: 5) to: result elsifs.
	result else: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_name1: nodes [
	| result |
	result := PyNameNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_name2: nodes [
	| result |
	result := PyAsNameNode new.
	result nameToken: (nodes at: 1).
	result asToken: (nodes at: 2).
	result rename: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_from1: nodes [
	| result |
	result := PyImportStatementNode new.
	result fromToken: (nodes at: 1).
	result from: (nodes at: 2).
	result importToken: (nodes at: 3).
	result starToken: ((nodes at: 4) at: 1).
	result lparenToken: ((nodes at: 4) at: 2).
	result addTokens: ((nodes at: 4) at: 3) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 4) to: result names.
	result rparenToken: ((nodes at: 4) at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_name1: nodes [
	| result |
	result := PyImportStatementNode new.
	result importToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result names.
	result addTokens: ((nodes at: 2) at: 3) to: result asTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result renames.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star2: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star3: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForinit1: nodes [
	| result |
	result := PyInitNode new.
	result equalToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForkeyword_parameter1: nodes [
	| result |
	result := PyKeywordParameterNode new.
	result starStarToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForkeyword_parameter2: nodes [
	| result |
	result := PyKeywordParameterNode new.
	result starStarToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result typeExpression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlambdef1: nodes [
	| result |
	result := PyLambdaExpressionNode new.
	result lambdaToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_for1: nodes [
	| result |
	result := PyListForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_for2: nodes [
	| result |
	result := PyListForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result list: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_if1: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_if2: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter1: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter2: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter3: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result typeExpression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFormore_args1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFormore_args2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFormore_args3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 4 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFormore_args4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForor_test2: nodes [
	| result |
	result := PyBinaryExpressionNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparameter1: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparameter2: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparameter3: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparameter4: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparameters1: nodes [
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

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparen_arglist_opt1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparen_arglist_opt2: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForparen_arglist_opt3: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	result at: 6 put: ((nodes at: 2) at: 4).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForpass_stmt1: nodes [
	| result |
	result := PyPassStatementNode new.
	result passToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt1: nodes [
	| result |
	result := PyPrintStatementNode new.
	result printToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt2: nodes [
	| result |
	result := PyPrintStatementNode new.
	result printToken: (nodes at: 2).
	result gtgtToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt1: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt2: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt3: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt4: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	result addToken: (nodes at: 3) to: result commaTokens.
	result addNode: (nodes at: 4) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt5: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	result addToken: (nodes at: 3) to: result commaTokens.
	result addNode: (nodes at: 4) to: result args.
	result addToken: (nodes at: 5) to: result commaTokens.
	result addNode: (nodes at: 6) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForreturn_annotation_opt2: nodes [
	| result |
	result := PyReturnTypeAnnotationNode new.
	result arrowToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForreturn_stmt1: nodes [
	| result |
	result := PyReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input2: nodes [
	| result |
	result := PyFileNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input3: nodes [
	| result |
	result := PyFileNode new.
	result addNode: (nodes at: 1) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsliceop1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsmall_stmt_with_semicolon1: nodes [
	| result |
	result := nodes at: 1.
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForstmts1: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForstring1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForstring3: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 2) to: (result at: 1).
	self addFirst: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 1.
	result addTokens: ((nodes at: 2) at: 1) to: result parts.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result parts.
	result addNodes: ((nodes at: 1) at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsubscript2: nodes [
	| result |
	result := PySliceNode new.
	result addToken: (nodes at: 1) to: result colonTokens.
	result addToken: ((nodes at: 2) at: 1) to: result colonTokens.
	result step: ((nodes at: 2) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsubscript3: nodes [
	| result |
	result := PySliceNode new.
	result addToken: (nodes at: 1) to: result colonTokens.
	result to: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result colonTokens.
	result step: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsubscript4: nodes [
	| result |
	result := PySliceNode new.
	result from: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addToken: ((nodes at: 3) at: 1) to: result colonTokens.
	result step: ((nodes at: 3) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsubscript5: nodes [
	| result |
	result := PySliceNode new.
	result from: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result to: (nodes at: 3).
	result addToken: ((nodes at: 4) at: 1) to: result colonTokens.
	result step: ((nodes at: 4) at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForsuite2: nodes [
	| result |
	result := nodes at: 3.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortest2: nodes [
	| result |
	result := PyIfExpressionNode new.
	result if: (nodes at: 1).
	result ifToken: (nodes at: 2).
	result condition: (nodes at: 3).
	result elseToken: (nodes at: 4).
	result else: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist11: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlistItem2: nodes [
	| result |
	result := PySpreadExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_expression2: nodes [
	| result |
	result := PyListExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result addToken: (nodes at: 3) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_expression3: nodes [
	| result |
	result := PyListExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result addToken: (nodes at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_safe2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortrailers2: nodes [
	| result |
	result := PyFunctionCallExpressionNode new.
	result receiver: (nodes at: 1).
	result lparenToken: (nodes at: 2).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortrailers3: nodes [
	| result |
	result := PyFunctionCallExpressionNode new.
	result receiver: (nodes at: 1).
	result lparenToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result addTokens: ((nodes at: 3) at: 3) to: result starTokens.
	result starStarToken: ((nodes at: 3) at: 4).
	result rparenToken: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortrailers4: nodes [
	| result |
	result := PySubscriptExpressionNode new.
	result receiver: (nodes at: 1).
	result lbrackToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result subscripts.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortrailers5: nodes [
	| result |
	result := PyFieldAccessExpressionNode new.
	result receiver: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result nameToken: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt1: nodes [
	| result |
	result := PyTryStatementNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: (nodes at: 3) to: result statements.
	result addNodes: ((nodes at: 4) at: 1) to: result clauses.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result statements.
	result else: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt2: nodes [
	| result |
	result := PyTryStatementNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: (nodes at: 3) to: result statements.
	result addNodes: ((nodes at: 4) at: 1) to: result clauses.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result statements.
	result else: (nodes at: 5).
	result finally: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt3: nodes [
	| result |
	result := PyTryStatementNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: (nodes at: 3) to: result statements.
	result finally: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionFortype_annotation1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist3: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 1).
	self add: (nodes at: 5) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwhile_stmt1: nodes [
	| result |
	result := PyWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	result else: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwith_item1: nodes [
	| result |
	result := PyWithItemNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwith_item2: nodes [
	| result |
	result := PyWithItemNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwith_items1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwith_items2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForwith_stmt1: nodes [
	| result |
	result := PyWithStatementNode new.
	result withToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result withItems.
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr1: nodes [
	| result |
	result := PyYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr2: nodes [
	| result |
	result := PyYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : 'generated-reduction actions' }
PythonParser >> reduceActionForyield_stmt1: nodes [
	| result |
	result := PyYieldStatementNode new.
	result yieldExpression: (nodes at: 1).
	^ result
]

{ #category : 'testing' }
PythonParser >> tryAllTokens [
	^ true
]

{ #category : 'testing' }
PythonParser >> useAllTokenIds [
	^ false
]
