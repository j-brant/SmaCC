Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 58 2 145] 
#[ 0 202 3 129] 
#[ 0 206 3 133] 
#[ 0 210 3 137] 
#[ 0 214 3 141] 
#[ 0 214 3 145] 
#[ 0 218 3 149] 
#[ 0 218 3 153] 
#[ 0 222 3 157] 
#[ 0 222 3 161] 
#[ 0 222 3 165] 
#[ 0 222 3 169] 
#[ 0 230 3 173] 
#[ 0 234 3 177] 
#[ 0 234 3 181] 
#[ 0 234 3 185] 
#[ 1 74 3 177] 
#[ 1 74 3 181] 
#[ 1 74 3 185] 
#[ 1 130 2 145] 
#[ 2 22 5 5] 
#[ 2 122 2 145] 
#[ 2 126 2 145] 
#[ 2 145 3 254] 
#[ 3 33 3 254] 
#[ 4 2 7 169] 
#[ 2 145 4 90] 
#[ 3 33 4 90]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2024-10-07T07:03:19.26282-05:00'
]

{ #category : #generated }
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
	statement_with_separator 'statement'
	;
statement_with_separator
	: small_stmt "";"" 'semicolonToken' <NEWLINE>? {{Statement}}
	| small_stmt <NEWLINE> {{Statement}}
	;
semicolon_opt:
	| "";"" 'semicolonToken'
	;
expr_stmt: 
	testlist_expression 'expression' {{ExpressionStatement}}
	| testlist_expression 'lhs' assign_after {{AssignmentStatement}}
	| testlist_expression 'lhs' augassign 'assign' yield_or_testlist 'to' {{AssignmentStatement}}
	;
assign_after:
	 type_annotation? ""="" 'assign' yield_or_testlist 'to' assign_after*
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
	stmts stmt 'statement'
	| stmt 'statement'
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
	| and_test 'left' ""or"" 'opeator' or_test 'right' {{BinaryExpression}}
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
	| term 'left' ""+"" 'operator' arith_expr 'right'  {{BinaryExpression}}
	| term 'left' ""-"" 'operator' arith_expr 'right'  {{BinaryExpression}}
	;
term:
	factor
	| factor 'left' ""*"" 'operator' term 'right'  {{BinaryExpression}}
	| factor 'left' ""/"" 'operator' term 'right'  {{BinaryExpression}}
	| factor 'left' ""%"" 'operator' term 'right' {{BinaryExpression}}
	| factor 'left' ""//"" 'operator' term 'right' {{BinaryExpression}}
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
	| or_test 'condition' ""if"" 'ifToken' or_test 'if' ""else"" 'elseToken' test 'else' {{IfExpression}}
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

{ #category : #accessing }
PythonParser class >> eval: aString [
	^self parse: aString startingAt: self startingStateForeval_input
]

{ #category : #'file types' }
PythonParser class >> fileExtension [
	^ '.py'
]

{ #category : #generated }
PythonParser class >> reduceTable [
^#(
	#(108 0 #reduceActionForfile_input1: 5961729 false) 
	#(215 0 #reduceActionForStartFStringSingle1: 17693697 true) 
	#(216 0 #reduceActionForStartFStringDouble1: 17766401 true) 
	#(217 0 #reduceActionForStartFLongStringSingle1: 17839105 true) 
	#(218 0 #reduceActionForStartFLongStringDouble1: 17920001 true) 
	#(259 0 #reduceActionFor_test__expression_______commaToken___1: 21700609 false) 
	#(144 1 #reduceActionForbreak_stmt1: 9135105 false) 
	#(145 1 #reduceActionForcontinue_stmt1: 9192449 false) 
	#(118 0 #reduceActionFor_test__expression_______commaToken___1: 6856705 false) 
	#(142 1 #reduceActionForpass_stmt1: 8993793 false) 
	#(148 1 #reduceActionForraise_stmt1: 9402369 false) 
	#(233 0 #reduceActionFor_test__expression_______commaToken___1: 19226625 false) 
	#(203 1 #reduceActionForatom11: 16002059 false) 
	#(230 1 #reduceActionForSymbol1: 18987009 false) 
	#(206 1 #reduceActionForstring1: 17029121 false) 
	#(206 1 #reduceActionForstring1: 17029122 false) 
	#(203 1 #reduceActionForatom13: 16002061 false) 
	#(109 1 #reduceActionForfile_input1: 6062081 false) 
	#(114 1 #reduceActionFordecorators2: 6419458 false) 
	#(168 1 #liftFirstValue: 11429894 false) 
	#(109 1 #reduceActionForsingle_input2: 6062082 false) 
	#(129 1 #liftFirstValue: 7751681 false) 
	#(167 1 #liftFirstValue: 11290625 false) 
	#(132 1 #reduceActionForexpr_stmt1: 7979009 false) 
	#(167 1 #liftFirstValue: 11290626 false) 
	#(167 1 #liftFirstValue: 11290627 false) 
	#(167 1 #liftFirstValue: 11290628 false) 
	#(167 1 #liftFirstValue: 11290629 false) 
	#(143 1 #liftFirstValue: 9047041 false) 
	#(143 1 #liftFirstValue: 9047042 false) 
	#(143 1 #liftFirstValue: 9047043 false) 
	#(143 1 #liftFirstValue: 9047045 false) 
	#(143 1 #liftFirstValue: 9047044 false) 
	#(167 1 #liftFirstValue: 11290630 false) 
	#(150 1 #liftFirstValue: 9775105 false) 
	#(150 1 #liftFirstValue: 9775106 false) 
	#(167 1 #liftFirstValue: 11290631 false) 
	#(167 1 #liftFirstValue: 11290632 false) 
	#(167 1 #liftFirstValue: 11290633 false) 
	#(168 1 #liftFirstValue: 11429889 false) 
	#(168 1 #liftFirstValue: 11429890 false) 
	#(168 1 #liftFirstValue: 11429891 false) 
	#(168 1 #liftFirstValue: 11429892 false) 
	#(168 1 #liftFirstValue: 11429893 false) 
	#(228 1 #liftFirstValue: 18731009 false) 
	#(188 1 #liftFirstValue: 13758465 false) 
	#(189 1 #liftFirstValue: 13853697 false) 
	#(190 1 #liftFirstValue: 13953026 false) 
	#(191 1 #liftFirstValue: 14042113 false) 
	#(193 1 #liftFirstValue: 14360577 false) 
	#(194 1 #liftFirstValue: 14450689 false) 
	#(195 1 #liftFirstValue: 14548993 false) 
	#(196 1 #liftFirstValue: 14651393 false) 
	#(197 1 #liftFirstValue: 14836737 false) 
	#(198 1 #liftFirstValue: 15003649 false) 
	#(199 1 #liftFirstValue: 15294465 false) 
	#(200 1 #liftFirstValue: 15492097 false) 
	#(201 1 #liftFirstValue: 15582209 false) 
	#(202 1 #liftFirstValue: 15671297 false) 
	#(203 1 #liftFirstValue: 16002062 false) 
	#(205 1 #reduceActionForstrings2: 16967682 false) 
	#(228 1 #liftFirstValue: 18731011 false) 
	#(232 1 #liftFirstValue: 19143681 false) 
	#(228 1 #liftFirstValue: 18731012 false) 
	#(203 1 #liftFirstValue: 16002058 false) 
	#(136 1 #liftFirstValue: 8366081 false) 
	#(168 1 #liftFirstValue: 11429895 false) 
	#(147 1 #reduceActionForyield_stmt1: 9336833 false) 
	#(111 0 #nil 6198273 false) 
	#(227 0 #nil 18695169 false) 
	#(108 2 #reduceActionForfile_input2: 5961730 false) 
	#(108 2 #reduceActionForfile_input3: 5961731 false) 
	#(128 1 #liftFirstValue: 7697409 false) 
	#(128 1 #liftFirstValue: 7697410 false) 
	#(232 2 #reduceActionFortestlistItem2: 19143682 false) 
	#(199 2 #reduceActionForfactor2: 15294466 false) 
	#(199 2 #reduceActionForfactor2: 15294467 false) 
	#(113 0 #reduceActionForparen_arglist_opt1: 6336513 false) 
	#(161 1 #liftFirstValue: 10711042 false) 
	#(166 2 #reduceActionForassert_stmt1: 11214849 false) 
	#(165 1 #reduceActionFortest_test_opt1: 11134977 false) 
	#(201 2 #reduceActionForawait2: 15582210 false) 
	#(141 2 #reduceActionFordel_stmt1: 8935425 false) 
	#(164 2 #reduceActionForexec_stmt1: 10985473 false) 
	#(154 1 #reduceActionFordecorators2: 10060801 false) 
	#(153 1 #reduceActionFordotopt_dotted_name2: 10023938 false) 
	#(153 1 #liftFirstValue: 10023937 false) 
	#(163 1 #reduceActionFornamelist2: 10902530 false) 
	#(162 2 #reduceActionForglobal_stmt1: 10831873 false) 
	#(160 1 #reduceActionFordotted_as_names2: 10621954 false) 
	#(151 2 #reduceActionForimport_name1: 9820161 false) 
	#(157 1 #reduceActionFordotted_as_name1: 10366977 false) 
	#(122 1 #reduceActionForlist_parameter1: 7272449 false) 
	#(118 1 #reduceActionForfile_input2: 6856706 false) 
	#(120 0 #reduceActionFor_test__expression_______commaToken___1: 6989825 false) 
	#(124 1 #reduceActionForparameter1: 7403521 false) 
	#(126 1 #liftFirstValue: 7524353 false) 
	#(190 2 #reduceActionForfactor2: 13953025 false) 
	#(148 2 #reduceActionForraise_stmt2: 9402370 false) 
	#(233 1 #reduceActionForfile_input2: 19226626 false) 
	#(146 2 #reduceActionForreturn_stmt1: 9262081 false) 
	#(179 1 #reduceActionFornamelist2: 12548098 false) 
	#(180 1 #reduceActionForwith_item1: 12639233 false) 
	#(260 2 #reduceActionForyield_expr1: 21869569 false) 
	#(199 2 #reduceActionForfactor2: 15294468 false) 
	#(203 2 #reduceActionForatom12: 16002060 false) 
	#(203 2 #reduceActionForatom1: 16002049 false) 
	#(221 1 #reduceActionForfile_input2: 18135042 false) 
	#(221 1 #reduceActionForstring1: 18135041 false) 
	#(203 2 #reduceActionForatom4: 16002052 false) 
	#(219 1 #reduceActionForstring1: 18000897 false) 
	#(219 1 #reduceActionForfile_input2: 18000898 false) 
	#(203 2 #reduceActionForatom8: 16002056 false) 
	#(235 1 #reduceActionForfile_input2: 19309570 false) 
	#(235 1 #reduceActionForstring1: 19309569 false) 
	#(237 1 #reduceActionForstring1: 19434497 false) 
	#(239 0 #reduceActionFor_test__expression_______commaToken___1: 19531777 false) 
	#(241 1 #liftFirstValue: 19698690 false) 
	#(114 2 #reduceActionFordecorators1: 6419457 false) 
	#(139 1 #liftFirstValue: 8579077 false) 
	#(139 1 #liftFirstValue: 8579078 false) 
	#(139 1 #liftFirstValue: 8579083 false) 
	#(139 1 #liftFirstValue: 8579075 false) 
	#(139 1 #liftFirstValue: 8579073 false) 
	#(139 1 #liftFirstValue: 8579074 false) 
	#(139 1 #liftFirstValue: 8579084 false) 
	#(139 1 #liftFirstValue: 8579076 false) 
	#(139 1 #liftFirstValue: 8579081 false) 
	#(139 1 #liftFirstValue: 8579082 false) 
	#(139 1 #liftFirstValue: 8579080 false) 
	#(139 1 #liftFirstValue: 8579079 false) 
	#(132 2 #reduceActionForexpr_stmt2: 7979010 false) 
	#(130 2 #reduceActionForstatement_with_separator1: 7806977 false) 
	#(130 2 #reduceActionForfile_input2: 7806979 false) 
	#(109 2 #reduceActionForsingle_input2: 6062083 false) 
	#(192 1 #reduceActionForcomp_op7: 14132231 false) 
	#(192 1 #reduceActionForcomp_op7: 14132225 false) 
	#(192 1 #reduceActionForcomp_op7: 14132229 false) 
	#(192 1 #reduceActionForcomp_op7: 14132230 false) 
	#(192 1 #reduceActionForcomp_op7: 14132227 false) 
	#(192 1 #reduceActionForcomp_op7: 14132226 false) 
	#(192 1 #reduceActionForcomp_op7: 14132228 false) 
	#(192 1 #reduceActionForcomp_op7: 14132232 false) 
	#(192 1 #reduceActionForcomp_op7: 14132234 false) 
	#(205 2 #reduceActionForstrings1: 16967681 false) 
	#(136 2 #reduceActionFortestlist_expression3: 8366083 false) 
	#(138 1 #reduceActionFor______commaToken__testlistItem__expression___1: 8432641 false) 
	#(110 2 #reduceActionForeval_input1: 6175745 false) 
	#(227 1 #liftFirstValue: 18695170 false) 
	#(231 2 #reduceActionFortestlist1: 19043329 false) 
	#(203 3 #reduceActionForatom9: 16002057 false) 
	#(257 2 #reduceActionFortestlist11: 21688321 false) 
	#(259 2 #reduceActionFor_test__expression_______commaToken___2: 21700610 false) 
	#(116 0 #nil 6678529 false) 
	#(226 2 #reduceActionFortestlist1: 18616322 false) 
	#(154 2 #reduceActionFordecorators1: 10060802 false) 
	#(153 2 #reduceActionFordotopt_dotted_name3: 10023939 false) 
	#(122 2 #reduceActionForlist_parameter2: 7272450 false) 
	#(121 2 #reduceActionForkeyword_parameter1: 7189505 false) 
	#(119 2 #reduceActionFortestlist1: 6892548 false) 
	#(119 2 #reduceActionFortestlist1: 6892549 false) 
	#(124 2 #reduceActionForparameter2: 7403522 false) 
	#(124 2 #reduceActionForparameter3: 7403523 false) 
	#(148 3 #reduceActionForraise_stmt3: 9402371 false) 
	#(182 1 #reduceActionFordecorators2: 13128705 false) 
	#(260 3 #reduceActionForyield_expr2: 21869570 false) 
	#(204 2 #reduceActionFortype_annotation1: 16904193 false) 
	#(203 3 #reduceActionForatom3: 16002051 false) 
	#(236 2 #reduceActionForcomprehension1: 19365889 false) 
	#(203 3 #reduceActionForatom2: 16002050 false) 
	#(203 3 #reduceActionForatom5: 16002053 false) 
	#(220 2 #reduceActionForcomprehension1: 18061313 false) 
	#(242 2 #reduceActionFortestlistItem2: 19785729 false) 
	#(203 3 #reduceActionForatom6: 16002054 false) 
	#(203 3 #reduceActionForatom7: 16002055 false) 
	#(134 0 #reduceActionForassign_after_1: 8289281 false) 
	#(135 1 #liftFirstValue: 8306690 false) 
	#(135 1 #liftFirstValue: 8306689 false) 
	#(132 3 #reduceActionForexpr_stmt3: 7979011 false) 
	#(130 3 #reduceActionForstatement_with_separator1: 7806978 false) 
	#(188 3 #reduceActionForor_test2: 13758466 false) 
	#(189 3 #reduceActionForand_test2: 13853698 false) 
	#(192 2 #reduceActionFortype_annotation1: 14132235 false) 
	#(192 2 #reduceActionForcomp_op9: 14132233 false) 
	#(191 3 #reduceActionForcomparison2: 14042114 false) 
	#(193 3 #reduceActionForand_test2: 14360578 false) 
	#(194 3 #reduceActionForand_test2: 14450690 false) 
	#(195 3 #reduceActionForand_test2: 14548994 false) 
	#(196 3 #reduceActionForand_test2: 14651394 false) 
	#(196 3 #reduceActionForand_test2: 14651395 false) 
	#(197 3 #reduceActionForand_test2: 14836738 false) 
	#(197 3 #reduceActionForand_test2: 14836739 false) 
	#(198 3 #reduceActionForand_test2: 15003652 false) 
	#(198 3 #reduceActionForand_test2: 15003650 false) 
	#(198 3 #reduceActionForand_test2: 15003651 false) 
	#(198 3 #reduceActionForand_test2: 15003653 false) 
	#(200 3 #reduceActionForand_test2: 15492098 false) 
	#(202 3 #reduceActionFortrailers5: 15671301 false) 
	#(202 3 #reduceActionFortrailers2: 15671298 false) 
	#(250 1 #liftFirstValue: 20866049 false) 
	#(250 1 #liftFirstValue: 20866050 false) 
	#(225 0 #reduceActionForsliceop1: 18569217 false) 
	#(224 1 #liftFirstValue: 18408449 false) 
	#(208 0 #reduceActionFor_test__expression_______commaToken___1: 17149953 false) 
	#(210 0 #reduceActionFor_test__expression_______commaToken___1: 17294337 false) 
	#(212 0 #reduceActionFor_test__expression_______commaToken___1: 17446913 false) 
	#(214 0 #reduceActionFor_test__expression_______commaToken___1: 17607681 false) 
	#(229 3 #reduceActionForassignment_expression1: 18886657 false) 
	#(137 2 #reduceActionFortype_annotation1: 8432641 false) 
	#(138 2 #reduceActionFor_test__expression_______commaToken___2: 8432642 false) 
	#(136 3 #reduceActionFortestlist_expression2: 8366082 false) 
	#(140 3 #reduceActionForprint_stmt1: 8773633 false) 
	#(111 2 #liftFirstValue: 6198274 false) 
	#(231 3 #reduceActionFortestlist2: 19043330 false) 
	#(161 3 #reduceActionFortrailers5: 10711041 false) 
	#(113 2 #reduceActionForparen_arglist_opt2: 6336514 false) 
	#(112 4 #reduceActionFordecorator1: 6222849 false) 
	#(258 2 #reduceActionFortype_annotation1: 21700609 false) 
	#(165 3 #reduceActionFortest_test_opt2: 11134978 false) 
	#(243 4 #reduceActionForclassdef1: 19859457 false) 
	#(247 1 #liftFirstValue: 20234241 false) 
	#(246 0 #reduceActionFor_test__expression_______commaToken___1: 20172801 false) 
	#(226 3 #reduceActionForexprlist1: 18616321 false) 
	#(164 4 #reduceActionForexec_stmt2: 10985474 false) 
	#(155 1 #reduceActionForimport_names_star1: 10126337 false) 
	#(156 1 #reduceActionForimport_as_name1: 10252289 false) 
	#(152 4 #reduceActionForimport_from1: 9897985 false) 
	#(159 1 #reduceActionFornamelist2: 10512386 false) 
	#(155 1 #reduceActionForimport_names_star3: 10126339 false) 
	#(163 3 #reduceActionFornamelist1: 10902529 false) 
	#(170 0 #reduceActionForelif__elsif__1: 11600897 false) 
	#(160 3 #reduceActionFordotted_as_names1: 10621953 false) 
	#(157 3 #reduceActionFordotted_as_name2: 10366978 false) 
	#(122 3 #reduceActionForlist_parameter3: 7272451 false) 
	#(121 3 #reduceActionForkeyword_parameter2: 7189506 false) 
	#(127 2 #reduceActionFortestlist1: 7619586 false) 
	#(126 3 #reduceActionForfpdef2: 7524354 false) 
	#(222 4 #reduceActionForlambdef1: 18194433 false) 
	#(120 2 #reduceActionFor_test__expression_______commaToken___2: 6989826 false) 
	#(119 3 #reduceActionFortestlist2: 6892546 false) 
	#(119 3 #reduceActionForexprlist1: 6892545 false) 
	#(125 2 #reduceActionForinit1: 7476225 false) 
	#(124 3 #reduceActionForparameter4: 7403524 false) 
	#(148 4 #reduceActionForraise_stmt4: 9402372 false) 
	#(149 2 #reduceActionFortype_annotation1: 9724929 false) 
	#(181 1 #reduceActionForexcept_clause1: 12816385 false) 
	#(175 4 #reduceActionFortry_stmt3: 12063747 false) 
	#(172 0 #nil 11729921 false) 
	#(179 3 #reduceActionFornamelist1: 12548097 false) 
	#(178 4 #reduceActionForwith_stmt1: 12460033 false) 
	#(180 3 #reduceActionForwith_item2: 12639234 false) 
	#(241 3 #reduceActionFordictionary_item1: 19698689 false) 
	#(237 3 #reduceActionFortestlist2: 19434498 false) 
	#(239 2 #reduceActionFor_test__expression_______commaToken___2: 19531778 false) 
	#(133 3 #reduceActionForexprlist1: 8218625 false) 
	#(249 0 #reduceActionFormore_args1: 20545537 false) 
	#(202 4 #reduceActionFortrailers3: 15671299 false) 
	#(248 2 #reduceActionForarglist2: 20343810 false) 
	#(225 1 #reduceActionForcomp_op7: 18569218 false) 
	#(224 2 #reduceActionForsubscript2: 18408450 false) 
	#(202 4 #reduceActionFortrailers4: 15671300 false) 
	#(223 2 #reduceActionFortestlist1: 18298882 false) 
	#(140 4 #reduceActionForprint_stmt2: 8773634 false) 
	#(113 3 #reduceActionForparen_arglist_opt3: 6336515 false) 
	#(117 3 #reduceActionForparameters1: 6776833 false) 
	#(116 2 #reduceActionForreturn_annotation_opt2: 6678530 false) 
	#(158 2 #reduceActionFortestlist11: 10461185 false) 
	#(127 3 #reduceActionForexprlist1: 7619585 false) 
	#(123 2 #reduceActionFortype_annotation1: 7350273 false) 
	#(183 1 #reduceActionFordecorators2: 13193218 false) 
	#(181 2 #reduceActionForexcept_clause2: 12816386 false) 
	#(175 5 #reduceActionFortry_stmt1: 12063745 false) 
	#(173 5 #reduceActionForwhile_stmt1: 11799553 false) 
	#(240 4 #reduceActionForcomprehension_dictionary_item1: 19595265 false) 
	#(238 2 #reduceActionFortype_annotation1: 19531777 false) 
	#(243 5 #reduceActionForclassdef2: 19859458 false) 
	#(134 2 #reduceActionForassign_after_2: 8289282 false) 
	#(133 4 #reduceActionForassign_after2: 8218626 false) 
	#(228 5 #reduceActionFortest2: 18731010 false) 
	#(248 3 #reduceActionForarglist4: 20343812 false) 
	#(250 3 #reduceActionForargument3: 20866051 false) 
	#(248 3 #reduceActionForexprlist1: 20343809 false) 
	#(225 2 #reduceActionFortype_annotation1: 18569219 false) 
	#(224 3 #reduceActionForsubscript3: 18408451 false) 
	#(223 3 #reduceActionForexprlist1: 18298881 false) 
	#(224 3 #reduceActionForsubscript4: 18408452 false) 
	#(206 5 #reduceActionForstring3: 17029123 false) 
	#(208 2 #reduceActionFor_test__expression_______commaToken___2: 17149954 false) 
	#(206 5 #reduceActionForstring3: 17029124 false) 
	#(210 2 #reduceActionFor_test__expression_______commaToken___2: 17294338 false) 
	#(206 5 #reduceActionForstring3: 17029125 false) 
	#(212 2 #reduceActionFor_test__expression_______commaToken___2: 17446914 false) 
	#(206 5 #reduceActionForstring3: 17029126 false) 
	#(214 2 #reduceActionFor_test__expression_______commaToken___2: 17607682 false) 
	#(247 3 #reduceActionForclassListItem2: 20234242 false) 
	#(243 6 #reduceActionForclassdef3: 19859459 false) 
	#(244 3 #reduceActionFortestlist2: 20126721 false) 
	#(246 2 #reduceActionFor_test__expression_______commaToken___2: 20172802 false) 
	#(115 6 #reduceActionForfuncdef1: 6497281 false) 
	#(156 3 #reduceActionForimport_as_name2: 10252290 false) 
	#(155 3 #reduceActionForimport_names_star2: 10126338 false) 
	#(159 3 #reduceActionFornamelist1: 10512385 false) 
	#(170 2 #reduceActionFordecorators1: 11600898 false) 
	#(169 6 #reduceActionForif_stmt1: 11534337 false) 
	#(119 5 #reduceActionForvarargslist3: 6892547 false) 
	#(148 6 #reduceActionForraise_stmt5: 9402373 false) 
	#(183 2 #reduceActionFordecorators1: 13193217 false) 
	#(182 4 #reduceActionForsuite2: 13128706 false) 
	#(176 3 #reduceActionForfinally1: 12265473 false) 
	#(175 6 #reduceActionFortry_stmt2: 12063746 false) 
	#(177 3 #reduceActionForexcept_list2: 12333058 false) 
	#(255 4 #reduceActionForcomp_for1: 21330945 false) 
	#(252 4 #reduceActionForlist_for1: 20990977 false) 
	#(184 1 #reduceActionForstring1: 13431809 false) 
	#(186 1 #liftFirstValue: 13607938 false) 
	#(186 1 #liftFirstValue: 13607937 false) 
	#(248 4 #reduceActionForarglist3: 20343811 false) 
	#(224 4 #reduceActionForsubscript5: 18408453 false) 
	#(207 2 #reduceActionFortype_annotation1: 17149953 false) 
	#(209 2 #reduceActionFortype_annotation1: 17294337 false) 
	#(211 2 #reduceActionFortype_annotation1: 17446913 false) 
	#(213 2 #reduceActionFortype_annotation1: 17607681 false) 
	#(115 7 #reduceActionForfuncdef2: 6497282 false) 
	#(243 7 #reduceActionForclassdef4: 19859460 false) 
	#(245 2 #reduceActionFortype_annotation1: 20172801 false) 
	#(174 7 #reduceActionForfor_stmt1: 11914241 false) 
	#(181 4 #reduceActionForexcept_clause4: 12816388 false) 
	#(181 4 #reduceActionForexcept_clause3: 12816387 false) 
	#(172 3 #reduceActionForelse_opt2: 11729922 false) 
	#(177 4 #reduceActionForexcept_list1: 12333057 false) 
	#(255 5 #reduceActionForcomp_for2: 21330946 false) 
	#(254 1 #liftFirstValue: 21294081 false) 
	#(254 1 #liftFirstValue: 21294082 false) 
	#(252 5 #reduceActionForlist_for2: 20990978 false) 
	#(251 1 #liftFirstValue: 20955137 false) 
	#(251 1 #liftFirstValue: 20955138 false) 
	#(243 7 #reduceActionForclassdef5: 19859461 false) 
	#(115 7 #reduceActionForfuncdef3: 6497283 false) 
	#(249 3 #reduceActionFormore_args3: 20545539 false) 
	#(249 3 #reduceActionFormore_args2: 20545538 false) 
	#(249 3 #reduceActionFormore_args4: 20545540 false) 
	#(256 2 #reduceActionForcomp_if1: 21538817 false) 
	#(253 2 #reduceActionForlist_if1: 21163009 false) 
	#(185 1 #reduceActionFornamelist2: 13527042 false) 
	#(115 8 #reduceActionForfuncdef4: 6497284 false) 
	#(243 8 #reduceActionForclassdef6: 19859462 false) 
	#(171 4 #reduceActionForelif1: 11651073 false) 
	#(256 3 #reduceActionForcomp_if2: 21538818 false) 
	#(187 4 #reduceActionForlambdef1: 13645825 false) 
	#(253 3 #reduceActionForlist_if2: 21163010 false) 
	#(184 4 #reduceActionFortestlist_safe2: 13431810 false) 
	#(185 3 #reduceActionFornamelist1: 13527041 false)
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> scannerClass [
	^PythonScanner
]

{ #category : #generated }
PythonParser class >> startingStateForeval_input [
	^ 3
]

{ #category : #generated }
PythonParser class >> startingStateForfile_input [
	^ 1
]

{ #category : #generated }
PythonParser class >> startingStateForsingle_input [
	^ 2
]

{ #category : #generated }
PythonParser class >> startingStateForsmall_stmt [
	^ 4
]

{ #category : #generated }
PythonParser class >> startingStateFortest [
	^ 5
]

{ #category : #generated }
PythonParser class >> symbolNames [
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"metaclass"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<ellipsis>' '<period>' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' '<patternToken>' 'B e g i n' 'file_input' 'single_input' 'eval_input' '<NEWLINE>*' 'decorator' 'paren_arglist_opt' 'decorators' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'varArg*' 'keyword_parameter' 'list_parameter' 'varArg' 'parameter' 'init' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'statement_with_separator' 'semicolon_opt' 'expr_stmt' 'assign_after' 'assign_after*' 'yield_or_testlist' 'testlist_expression' '("," ''commaToken'' testlistItem ''expression'')' '("," ''commaToken'' testlistItem ''expression'')+' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' '<period> ''periodToken''+' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elif ''elsif''*' 'elif' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'list_comprehension' 'testlist_comp' 'lambdef' 'subscriptlist' 'subscript' 'sliceop' 'exprlist' 'comma_opt' 'test' 'assignment_expression' 'Symbol' 'testlist' 'testlistItem' 'testlist_opt' 'dictorsetmaker' 'set_items' 'comprehension' 'dictionary_items' '("," ''commaToken'' dictionary_item ''expression'')' '("," ''commaToken'' dictionary_item ''expression'')*' 'comprehension_dictionary_item' 'dictionary_item' 'dictSpread' 'classdef' 'superclasslist' '("," ''commaToken'' classListItem ''superClass'')' '("," ''commaToken'' classListItem ''superClass'')*' 'classListItem' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' '(test ''expression'' "," ''commaToken'')' '(test ''expression'' "," ''commaToken'')*' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileNode #PyFileNode #PyFileNode #PyEvalNode nil #PyDecoratorExpressionNode #OrderedCollection #OrderedCollection #PyFunctionDefinitionNode #PyReturnTypeAnnotationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyKeywordParameterNode #PyListParameterNode #OrderedCollection #PyParameterNode #PyInitNode #PyRootNode #OrderedCollection #PyStatementNode #PyStatementNode #PyStatementNode #SmaCCToken #PyStatementNode #OrderedCollection #OrderedCollection #PyExpressionNode #PyExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #PyPrintStatementNode #PyDelStatementNode #PyPassStatementNode #PyStatementNode #PyBreakStatementNode #PyContinueStatementNode #PyReturnStatementNode #PyYieldStatementNode #PyRaiseStatementNode #OrderedCollection #PyImportStatementNode #PyImportStatementNode #PyImportStatementNode #PyRootNode #OrderedCollection #OrderedCollection #PyNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyGlobalStatementNode #OrderedCollection #PyExecStatementNode #OrderedCollection #PyAssertStatementNode #PyStatementNode #PyStatementNode #PyIfStatementNode #OrderedCollection #PyElifNode #PyElseNode #PyWhileStatementNode #PyForStatementNode #PyTryStatementNode #PyFinallyNode #OrderedCollection #PyWithStatementNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #Object #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyLambdaExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyStringNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #OrderedCollection #PyComprehensionNode #OrderedCollection #PyLambdaExpressionNode #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #SmaCCToken #PyExpressionNode #PyAssignmentExpressionNode #PyVariableExpressionNode #OrderedCollection #PyExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionDictionaryItemNode #PyRootNode #PySpreadExpressionNode #PyClassDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyComprehensionForNode #PyComprehensionIfNode #OrderedCollection #OrderedCollection #OrderedCollection #PyYieldExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 6 0 6 0 10 0 6 0 13 0 6 0 34 0 6 0 37 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 51 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 60 0 6 0 62 0 6 0 64 0 6 0 66 0 6 0 67 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 74 0 6 0 75 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 92 0 6 0 99 0 6 0 100 0 6 0 102 0 6 0 104 0 25 0 108 0 6 1 7 0 6 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 0 181 0 109 0 185 0 112 0 189 0 114 1 21 0 115 0 197 0 129 0 197 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 1 21 0 168 1 21 0 169 1 21 0 173 1 21 0 174 1 21 0 175 1 21 0 178 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 21 0 243 1 153 1 4 1 157 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 161 0 110 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 1 165 0 231 1 169 0 232] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 173 0 132 0 209 0 136 1 173 0 140 1 173 0 141 1 173 0 142 1 173 0 143 1 173 0 144 1 173 0 145 1 173 0 146 1 173 0 147 1 173 0 148 1 173 0 150 1 173 0 151 1 173 0 152 1 173 0 162 1 173 0 164 1 173 0 166 1 173 0 167 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 141 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 1 181 0 99 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 1 185 0 115 1 185 0 128 1 185 0 129 1 185 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 1 185 0 168 1 185 0 169 1 185 0 173 1 185 0 174 1 185 0 175 1 185 0 178 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 185 0 243 1 153 1 4 1 157 1 7 0 0 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 197 0 222 1 197 0 228 1 197 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 201 0 199 1 201 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 209 0 199 1 209 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 1 213 0 77 1 217 0 161 1 217 0 230] 
#[1 0 26 0 10 0 26 0 13 0 26 0 37 0 26 0 42 0 26 0 60 0 26 0 62 0 26 0 74 0 26 0 75 0 26 0 77 0 26 0 78 0 26 0 79 0 26 0 80 0 26 0 83 0 26 0 86 0 26 0 89 0 26 0 92 0 26 0 100 0 26 0 102 0 26 0 104 1 225 1 1 1 229 1 3] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 233 0 165 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 237 0 222 1 237 0 228 1 237 0 229 1 141 0 230] 
#[0 1 241 0 46] 
#[1 0 45 0 37 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 245 0 202 1 245 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 245 0 230] 
#[0 0 30 0 22 0 99 1 8] 
#[0 1 249 0 77] 
#[0 0 34 0 22 0 99 1 8] 
#[0 1 253 0 77] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 1 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 5 0 226 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 1 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 13 0 226 1 97 0 230] 
#[1 2 17 0 76 1 213 0 77 2 21 0 153 2 25 0 154 2 29 0 161 2 29 0 230] 
#[1 2 33 0 77 2 37 0 163] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 41 0 222 2 41 0 228 2 41 0 229 1 141 0 230] 
#[1 1 213 0 77 2 45 0 157 2 49 0 160 2 53 0 161 2 53 0 230] 
#[1 2 57 0 6 2 61 0 7 0 38 0 20 1 213 0 77 2 65 0 100 2 69 0 118 2 73 0 119 2 77 0 121 2 81 0 122 2 85 0 124 2 89 0 126 2 89 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 97 0 190 2 97 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 0 42 0 22 0 99 1 8] 
#[1 0 33 0 10 0 37 0 13 0 46 0 22 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 46 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 101 0 222 2 101 0 228 2 101 0 229 1 141 0 230 0 46 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 2 105 0 231 1 169 0 232 2 109 0 233 0 50 1 8] 
#[0 2 113 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 117 0 222 2 117 0 228 2 117 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 121 0 179 2 125 0 180 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 129 0 222 2 129 0 228 2 129 0 229 1 141 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 20 0 50 0 22 0 50 0 28 0 45 0 37 0 57 0 42 2 133 0 54 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 50 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 2 105 0 231 1 169 0 232 2 137 0 233 0 50 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 141 0 199 2 141 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 58 0 1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 16 0 58 0 17 0 58 0 18 0 58 0 19 0 7 0 20 0 58 0 21 0 58 0 22 0 58 0 23 0 58 0 24 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 28 0 58 0 29 0 58 0 30 0 58 0 31 0 58 0 32 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 38 0 58 0 39 0 58 0 49 0 58 0 53 0 58 0 54 0 58 0 56 0 58 0 58 0 58 0 59 0 58 0 62 0 58 0 63 0 58 0 72 0 58 0 73 0 58 0 76 0 58 0 81 0 58 0 82 0 58 0 84 0 58 0 85 0 58 0 87 0 58 0 88 0 58 0 90 0 58 0 91 0 58 0 99 0 58 0 100 0 58 0 101 0 58 0 102 0 58 0 103 0 58 0 105 2 149 0 204 0 58 1 8] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 74 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 153 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 157 0 221 2 161 0 222 2 161 0 228 2 161 0 229 1 141 0 230 2 165 0 231 1 169 0 232 2 169 0 236 2 173 1 4] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 177 0 103 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 181 0 219 2 185 0 220 2 189 0 222 2 189 0 228 2 189 0 229 1 141 0 230 2 193 0 231 1 169 0 232] 
#[1 0 29 0 6 2 197 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 201 0 105 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 205 0 222 2 205 0 228 2 205 0 229 1 141 0 230 2 209 0 231 1 169 0 232 2 213 0 235 2 217 0 236 2 221 0 237 2 225 0 240 2 229 0 241 2 229 0 242] 
#[0 0 0 1 8] 
#[0 0 78 0 34 0 41 0 44 0 46] 
#[1 0 41 0 34 2 237 0 41 2 241 0 44 2 245 0 46 2 249 0 112] 
#[0 0 82 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 86 1 8] 
#[0 0 90 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 94 0 22 0 99 1 8] 
#[1 3 53 0 3 3 53 0 5 3 53 0 8 3 53 0 9 3 53 0 11 3 53 0 14 3 53 0 18 3 53 0 19 2 145 0 20 0 98 0 22 3 53 0 25 3 33 0 28 3 53 0 33 3 53 0 36 3 53 0 73 0 98 0 99 3 49 0 133 3 53 0 139 3 57 0 204 0 98 1 8] 
#[0 0 102 0 22 0 99 1 8] 
#[0 0 106 0 22 0 99 1 8] 
#[0 0 110 0 22 0 99 1 8] 
#[0 0 114 0 22 0 99 1 8] 
#[0 0 118 0 22 0 99 1 8] 
#[0 0 122 0 22 0 99 1 8] 
#[0 0 126 0 22 0 99 1 8] 
#[0 0 130 0 22 0 99 1 8] 
#[0 0 134 0 22 0 99 1 8] 
#[0 0 138 0 22 0 99 1 8] 
#[0 0 142 0 22 0 99 1 8] 
#[0 0 146 0 22 0 99 1 8] 
#[0 0 150 0 22 0 99 1 8] 
#[0 0 154 0 22 0 99 1 8] 
#[0 0 158 0 22 0 99 1 8] 
#[1 3 61 0 22 3 65 0 99] 
#[0 3 69 0 99] 
#[0 0 162 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 166 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 170 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 174 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 178 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 22 0 182 0 25 0 182 0 28 0 182 0 33 0 182 0 36 0 182 0 37 0 182 0 39 0 182 0 53 0 182 0 54 3 73 0 56 0 182 0 73 0 182 0 81 0 182 0 82 0 182 0 84 0 182 0 85 0 182 0 87 0 182 0 88 0 182 0 90 0 182 0 91 0 182 0 99 0 182 0 101 0 182 0 103 0 182 0 105 0 182 1 8] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 22 0 186 0 25 0 186 0 28 0 186 0 33 0 186 0 36 0 186 0 37 0 186 0 39 0 186 0 49 0 186 0 53 0 186 0 54 0 186 0 56 3 77 0 63 0 186 0 73 0 186 0 81 0 186 0 82 0 186 0 84 0 186 0 85 0 186 0 87 0 186 0 88 0 186 0 90 0 186 0 91 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 0 186 1 8] 
#[1 0 190 0 3 0 190 0 5 0 190 0 8 0 190 0 9 0 190 0 11 0 190 0 12 0 190 0 14 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 22 0 190 0 25 0 190 0 28 0 190 0 33 0 190 0 36 0 190 0 37 3 81 0 38 0 190 0 39 0 190 0 49 0 190 0 53 0 190 0 54 0 190 0 56 0 190 0 63 0 190 0 73 0 190 0 81 0 190 0 82 0 190 0 84 0 190 0 85 0 190 0 87 0 190 0 88 0 190 0 90 0 190 0 91 0 190 0 99 0 190 0 101 0 190 0 103 0 190 0 105 0 190 1 8] 
#[0 0 194 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 3 85 0 1 0 198 0 3 0 198 0 5 0 198 0 8 0 198 0 9 0 198 0 11 0 198 0 12 0 198 0 14 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 22 3 89 0 23 0 198 0 25 3 93 0 26 3 97 0 27 0 198 0 28 3 101 0 29 3 105 0 30 3 109 0 31 0 198 0 33 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 49 0 198 0 53 0 198 0 54 0 198 0 56 3 113 0 58 3 117 0 59 3 121 0 62 0 198 0 63 0 198 0 73 0 198 0 81 0 198 0 82 0 198 0 84 0 198 0 85 0 198 0 87 0 198 0 88 0 198 0 90 0 198 0 91 0 198 0 99 0 198 0 101 0 198 0 103 0 198 0 105 3 125 0 192 0 198 1 8] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 49 0 202 0 53 0 202 0 54 0 202 0 56 0 202 0 58 0 202 0 59 0 202 0 62 0 202 0 63 0 11 0 72 0 202 0 73 0 202 0 76 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 87 0 202 0 88 0 202 0 90 0 202 0 91 0 202 0 99 0 202 0 100 0 202 0 101 0 202 0 102 0 202 0 103 0 202 0 105 0 202 1 8] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 22 0 206 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 15 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 49 0 206 0 53 0 206 0 54 0 206 0 56 0 206 0 58 0 206 0 59 0 206 0 62 0 206 0 63 0 206 0 72 0 206 0 73 0 206 0 76 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 87 0 206 0 88 0 206 0 90 0 206 0 91 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 102 0 206 0 103 0 206 0 105 0 206 1 8] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 19 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 22 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 49 0 210 0 53 0 210 0 54 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 62 0 210 0 63 0 210 0 72 0 210 0 73 0 210 0 76 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 91 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 102 0 210 0 103 0 210 0 105 0 210 1 8] 
#[1 0 214 0 1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 22 0 214 0 23 0 23 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 27 0 32 0 214 0 33 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 49 0 214 0 53 0 214 0 54 0 214 0 56 0 214 0 58 0 214 0 59 0 214 0 62 0 214 0 63 0 214 0 72 0 214 0 73 0 214 0 76 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 87 0 214 0 88 0 214 0 90 0 214 0 91 0 214 0 99 0 214 0 100 0 214 0 101 0 214 0 102 0 214 0 103 0 214 0 105 0 214 1 8] 
#[1 0 218 0 1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 31 0 10 0 218 0 11 0 218 0 12 0 35 0 13 0 218 0 14 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 22 0 218 0 23 0 218 0 24 0 218 0 25 0 218 0 26 0 218 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 35 0 218 0 36 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 49 0 218 0 53 0 218 0 54 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 62 0 218 0 63 0 218 0 72 0 218 0 73 0 218 0 76 0 218 0 81 0 218 0 82 0 218 0 84 0 218 0 85 0 218 0 87 0 218 0 88 0 218 0 90 0 218 0 91 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 103 0 218 0 105 0 218 1 8] 
#[1 0 222 0 1 0 39 0 2 0 222 0 3 0 222 0 4 0 222 0 5 0 43 0 6 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 10 0 222 0 11 0 222 0 12 0 222 0 13 0 222 0 14 0 47 0 16 0 51 0 17 0 222 0 18 0 222 0 19 0 222 0 20 0 222 0 22 0 222 0 23 0 222 0 24 0 222 0 25 0 222 0 26 0 222 0 27 0 222 0 28 0 222 0 29 0 222 0 30 0 222 0 31 0 222 0 32 0 222 0 33 0 222 0 35 0 222 0 36 0 222 0 37 0 222 0 38 0 222 0 39 0 222 0 49 0 222 0 53 0 222 0 54 0 222 0 56 0 222 0 58 0 222 0 59 0 222 0 62 0 222 0 63 0 222 0 72 0 222 0 73 0 222 0 76 0 222 0 81 0 222 0 82 0 222 0 84 0 222 0 85 0 222 0 87 0 222 0 88 0 222 0 90 0 222 0 91 0 222 0 99 0 222 0 100 0 222 0 101 0 222 0 102 0 222 0 103 0 222 0 105 0 222 1 8] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 230 0 1 0 230 0 2 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 55 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 22 0 230 0 23 0 230 0 24 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 0 230 0 29 0 230 0 30 0 230 0 31 0 230 0 32 0 230 0 33 0 230 0 35 0 230 0 36 0 230 0 37 0 230 0 38 0 230 0 39 0 230 0 49 0 230 0 53 0 230 0 54 0 230 0 56 0 230 0 58 0 230 0 59 0 230 0 62 0 230 0 63 0 230 0 72 0 230 0 73 0 230 0 76 0 230 0 81 0 230 0 82 0 230 0 84 0 230 0 85 0 230 0 87 0 230 0 88 0 230 0 90 0 230 0 91 0 230 0 99 0 230 0 100 0 230 0 101 0 230 0 102 0 230 0 103 0 230 0 105 0 230 1 8] 
#[1 0 234 0 1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 22 0 234 0 23 0 234 0 24 0 234 0 25 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 49 0 234 0 53 0 234 0 54 0 234 0 56 0 234 0 58 0 234 0 59 0 234 0 62 0 234 0 63 0 234 0 72 0 234 0 73 0 59 0 76 0 234 0 81 0 234 0 82 0 234 0 84 0 234 0 85 0 234 0 87 0 234 0 88 0 234 0 90 0 234 0 91 0 234 0 99 0 63 0 100 0 234 0 101 0 67 0 102 0 234 0 103 0 234 0 105 0 234 1 8] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 242 0 1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 0 242 0 7 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 16 0 242 0 17 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 22 0 242 0 23 0 242 0 24 0 242 0 25 0 242 0 26 0 242 0 27 0 242 0 28 0 242 0 29 0 242 0 30 0 242 0 31 0 242 0 32 0 242 0 33 0 242 0 35 0 242 0 36 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 49 0 242 0 53 0 242 0 54 0 242 0 56 0 242 0 58 0 242 0 59 0 242 0 62 0 242 0 63 0 242 0 72 0 242 0 73 0 242 0 76 0 153 0 78 0 157 0 79 0 10 0 80 0 242 0 81 0 242 0 82 0 14 0 83 0 242 0 84 0 242 0 85 0 18 0 86 0 242 0 87 0 242 0 88 0 22 0 89 0 242 0 90 0 242 0 91 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 102 0 242 0 103 0 242 0 105 3 189 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 0 242 1 8] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 193 0 80] 
#[0 3 197 0 83] 
#[0 3 201 0 86] 
#[0 3 205 0 89] 
#[0 0 250 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 0 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 1 2 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 3 209 0 21 1 6 0 22 1 6 0 23 1 6 0 24 1 6 0 25 1 6 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 53 1 6 0 54 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 62 1 6 0 63 1 6 0 72 1 6 0 73 1 6 0 76 1 6 0 81 1 6 0 82 1 6 0 84 1 6 0 85 1 6 0 87 1 6 0 88 1 6 0 90 1 6 0 91 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 102 1 6 0 103 1 6 0 105 1 6 1 8] 
#[1 1 10 0 3 1 10 0 5 1 10 0 8 1 10 0 9 1 10 0 11 3 213 0 12 1 10 0 14 1 10 0 18 1 10 0 19 1 10 0 20 1 10 0 22 1 10 0 25 1 10 0 28 1 10 0 33 1 10 0 36 1 10 0 73 1 10 0 99 3 217 0 137 3 221 0 138 1 10 1 8] 
#[0 1 14 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 18 0 22 0 99 1 8] 
#[0 3 225 0 65] 
#[0 0 0 1 8] 
#[1 1 22 0 99 3 229 0 111 1 22 1 8] 
#[1 3 233 0 12 1 26 0 20 1 26 0 22 1 26 0 28 1 26 0 99 1 26 0 101 1 26 0 103 1 26 0 105 3 217 0 137 3 237 0 138 3 241 0 227 1 26 1 8] 
#[0 0 0 1 8] 
#[0 0 0 1 8] 
#[0 1 30 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 8] 
#[0 1 34 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 8] 
#[0 1 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 46 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 58 0 12 0 20 0 22 0 28 0 39 0 57 0 76 0 99 0 100 0 101 1 8] 
#[1 3 245 0 76 1 58 0 99 3 249 0 100 3 253 0 113] 
#[0 1 62 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 8] 
#[0 4 1 0 37] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 4 5 0 222 4 5 0 228 4 5 0 229 1 141 0 230 4 9 1 2] 
#[0 1 66 0 22 0 99 1 8] 
#[1 4 13 0 12 1 70 0 22 1 70 0 99 1 70 1 8] 
#[0 4 17 0 77] 
#[1 1 74 0 1 1 74 0 2 1 74 0 3 1 74 0 4 1 74 0 5 1 74 0 6 1 74 0 7 1 74 0 8 1 74 0 9 1 74 0 10 1 74 0 11 1 74 0 12 1 74 0 13 1 74 0 14 1 74 0 16 1 74 0 17 1 74 0 18 1 74 0 19 1 74 0 20 1 74 0 22 1 74 0 23 1 74 0 24 1 74 0 25 1 74 0 26 1 74 0 27 1 74 0 28 1 74 0 29 1 74 0 30 1 74 0 31 1 74 0 32 1 74 0 33 1 74 0 35 1 74 0 36 1 74 0 37 1 74 0 38 1 74 0 39 1 74 0 49 1 74 0 53 1 74 0 54 1 74 0 56 1 74 0 58 1 74 0 59 1 74 0 62 1 74 0 63 1 74 0 72 1 74 0 73 0 71 0 76 1 74 0 81 1 74 0 82 1 74 0 84 1 74 0 85 1 74 0 87 1 74 0 88 1 74 0 90 1 74 0 91 1 74 0 99 0 75 0 100 1 74 0 101 0 79 0 102 1 74 0 103 1 74 0 105 1 74 1 8] 
#[1 4 21 0 20 4 25 0 100] 
#[1 4 29 0 100 4 33 0 117] 
#[1 4 37 0 12 1 26 0 22 1 26 0 58 1 26 0 99 4 41 0 227 1 26 1 8] 
#[0 1 78 0 22 0 99 1 8] 
#[1 1 82 0 22 4 45 0 58 1 82 0 99 1 82 1 8] 
#[0 4 49 0 58] 
#[0 1 86 0 57 0 76 0 77] 
#[0 4 53 0 57] 
#[1 1 90 0 57 4 57 0 76 1 213 0 77 4 61 0 161 4 61 0 230] 
#[1 1 94 0 57 3 245 0 76] 
#[0 1 98 0 12 0 22 0 99 1 8] 
#[1 4 65 0 12 1 102 0 22 1 102 0 99 1 102 1 8] 
#[0 4 69 0 20] 
#[0 1 106 0 12 0 22 0 99 1 8] 
#[1 4 73 0 12 1 110 0 22 1 110 0 99 1 110 1 8] 
#[1 1 114 0 12 1 114 0 22 4 77 0 39 3 245 0 76 1 114 0 99 1 114 1 8] 
#[1 1 118 0 12 1 118 0 20 1 213 0 77 1 118 0 101 4 81 0 230] 
#[1 1 213 0 77 4 85 0 230] 
#[1 1 213 0 77 2 65 0 100 4 89 0 126 4 93 0 127 4 89 0 230] 
#[0 4 97 0 20] 
#[0 1 122 0 20 0 101] 
#[1 4 105 0 12 1 26 0 20 1 26 0 101 4 105 0 227] 
#[1 1 126 0 12 1 126 0 20 1 126 0 101 4 109 0 120] 
#[1 4 113 0 12 1 26 0 20 1 26 0 101 4 117 0 227] 
#[1 1 130 0 12 0 83 0 20 4 121 0 28 1 130 0 101 4 125 0 125 4 129 0 204] 
#[0 1 134 0 12 0 20 0 28 0 101] 
#[0 1 138 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 4 133 0 12 1 142 0 22 4 137 0 54 1 142 0 99 4 141 0 149 1 142 1 8] 
#[0 1 146 0 20 0 22 0 28 0 99 0 101 1 8] 
#[0 1 150 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 4 153 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 4 157 0 20] 
#[1 4 161 0 12 4 165 0 20] 
#[0 1 154 0 12 0 20] 
#[1 1 158 0 12 1 158 0 20 4 169 0 39] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 20 0 50 0 22 0 50 0 28 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 50 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 2 105 0 231 1 169 0 232 4 173 0 233 0 50 1 8] 
#[0 1 162 0 20 0 22 0 28 0 99 0 101 1 8] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 4 177 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 181 0 101] 
#[1 0 254 0 12 4 185 0 53 0 254 0 101 4 189 0 255] 
#[0 1 178 0 101] 
#[0 1 182 0 101] 
#[0 4 193 0 101] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 197 0 103] 
#[0 1 190 0 103] 
#[1 0 254 0 12 4 201 0 53 0 254 0 103 4 205 0 252] 
#[0 1 194 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 4 209 0 222 4 209 0 228 4 209 0 229 1 141 0 230] 
#[0 1 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 254 0 12 4 213 0 20 4 185 0 53 0 254 0 105 4 189 0 255] 
#[0 1 202 0 105] 
#[0 4 217 0 105] 
#[0 1 206 0 105] 
#[0 4 221 0 105] 
#[0 1 210 0 105] 
#[1 1 214 0 12 1 214 0 105 4 225 0 239] 
#[0 1 218 0 12 0 105] 
#[0 4 229 0 46] 
#[0 4 233 0 77] 
#[0 4 237 0 77] 
#[0 1 222 0 34 0 41 0 44 0 46] 
#[0 1 226 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 230 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 234 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 238 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 242 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 246 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 250 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 254 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 2 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 4 241 0 135 4 241 0 136 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 4 241 1 4] 
#[0 2 6 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 10 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 14 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 18 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 4 253 0 135 4 253 0 136 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 4 253 1 4] 
#[0 5 1 0 28] 
#[1 2 22 0 6 2 22 0 10 2 22 0 13 2 22 0 34 2 22 0 37 2 22 0 40 2 22 0 41 2 22 0 42 2 22 0 43 2 22 0 44 2 22 0 45 2 22 0 46 2 22 0 47 2 22 0 48 2 22 0 49 2 22 0 50 2 22 0 51 2 22 0 52 2 22 0 53 2 22 0 54 2 22 0 55 2 22 0 56 2 22 0 57 2 22 0 60 2 22 0 62 2 22 0 64 2 22 0 66 2 22 0 67 2 22 0 68 2 22 0 69 2 22 0 70 2 22 0 71 2 22 0 74 2 22 0 75 2 22 0 77 2 22 0 78 2 22 0 79 2 22 0 80 2 22 0 83 2 22 0 86 2 22 0 89 2 22 0 92 0 87 0 99 2 22 0 100 2 22 0 102 2 22 0 104 2 22 1 5 2 22 1 7 2 22 1 8] 
#[0 2 26 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 2 30 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 9 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 13 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 17 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 2 34 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 38 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 42 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 46 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 50 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 54 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 58 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 62 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 2 66 0 10 2 66 0 13 2 66 0 37 2 66 0 42 5 21 0 62 2 66 0 74 2 66 0 75 2 66 0 77 2 66 0 78 2 66 0 79 2 66 0 80 2 66 0 83 2 66 0 86 2 66 0 89 2 66 0 92 2 66 0 100 2 66 0 102 2 66 0 104] 
#[0 5 25 0 58] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 29 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 33 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 37 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 41 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 45 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 49 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 53 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 57 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 61 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 65 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 69 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 73 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 77 0 199 5 77 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 5 81 0 77] 
#[1 5 85 0 6 5 89 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 93 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 97 0 222 5 97 0 228 5 97 0 229 1 141 0 230 5 109 0 236 5 105 0 248 5 109 0 250] 
#[1 0 33 0 10 0 37 0 13 5 113 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 125 0 222 5 117 0 223 5 121 0 224 5 125 0 228 5 125 0 229 1 141 0 230] 
#[0 2 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 129 0 222 5 129 0 228 5 129 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 133 0 222 5 133 0 228 5 133 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 137 0 222 5 137 0 228 5 137 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 141 0 222 5 141 0 228 5 141 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 145 0 222 5 145 0 228 5 145 0 229 1 141 0 230] 
#[1 2 74 0 3 2 74 0 5 0 29 0 6 2 74 0 8 2 74 0 9 0 33 0 10 2 74 0 11 0 37 0 13 2 74 0 14 2 74 0 18 2 74 0 19 2 74 0 20 2 74 0 22 2 74 0 25 2 74 0 28 2 74 0 33 2 74 0 36 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 2 74 0 73 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 74 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 149 0 222 5 149 0 228 5 149 0 229 1 141 0 230 5 149 0 232 2 74 1 8] 
#[0 2 78 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[1 1 26 0 3 1 26 0 5 1 26 0 8 1 26 0 9 1 26 0 11 3 233 0 12 1 26 0 14 1 26 0 18 1 26 0 19 1 26 0 20 1 26 0 22 1 26 0 25 1 26 0 28 1 26 0 33 1 26 0 36 1 26 0 73 1 26 0 99 5 153 0 137 5 157 0 227 1 26 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 5 161 0 32 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 2 105 0 231 1 169 0 232 5 165 0 233 0 50 1 8] 
#[1 5 169 0 99 2 82 1 8] 
#[1 2 86 0 3 2 86 0 5 0 29 0 6 2 86 0 8 2 86 0 9 0 33 0 10 2 86 0 11 0 37 0 13 2 86 0 14 2 86 0 18 2 86 0 19 2 86 0 20 2 86 0 22 2 86 0 25 2 86 0 28 2 86 0 33 2 86 0 36 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 2 86 0 73 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 86 0 99 0 169 0 100 2 86 0 101 0 173 0 102 2 86 0 103 0 177 0 104 2 86 0 105 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 149 0 222 5 149 0 228 5 149 0 229 1 141 0 230 5 149 0 232 2 86 1 8] 
#[1 3 233 0 12 1 26 0 20 1 26 0 22 1 26 0 28 1 26 0 99 1 26 0 101 1 26 0 103 1 26 0 105 5 153 0 137 5 173 0 227 1 26 1 8] 
#[0 2 90 0 20 0 22 0 28 0 99 0 101 0 103 0 105 1 8] 
#[0 5 177 0 77] 
#[1 5 85 0 6 5 89 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 181 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 97 0 222 5 97 0 228 5 97 0 229 1 141 0 230 5 109 0 236 5 185 0 248 5 109 0 250] 
#[0 5 189 0 99] 
#[0 2 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 5 193 0 12 2 98 0 37] 
#[0 2 102 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 197 0 222 5 197 0 228 5 197 0 229 1 141 0 230] 
#[1 4 29 0 100 5 201 0 117] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 5 205 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 209 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 213 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 225 0 222 5 225 0 228 5 225 0 229 1 141 0 230 5 221 0 244 5 225 0 247] 
#[1 2 57 0 6 2 61 0 7 1 213 0 77 2 65 0 100 0 38 0 101 5 229 0 118 2 73 0 119 2 77 0 121 2 81 0 122 2 85 0 124 2 89 0 126 2 89 0 230] 
#[1 5 233 0 15 2 106 0 20 5 237 0 116] 
#[1 0 33 0 10 0 37 0 13 2 86 0 22 0 45 0 37 0 57 0 42 2 86 0 58 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 86 0 99 0 169 0 100 0 173 0 102 0 177 0 104 2 1 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 241 0 226 1 97 0 230 2 86 1 8] 
#[0 2 110 0 22 0 58 0 99 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 245 0 165 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 237 0 222 1 237 0 228 1 237 0 229 1 141 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 249 0 136 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232] 
#[1 5 253 0 6 6 1 0 77 6 5 0 100 6 9 0 155 6 13 0 156 6 17 0 158 6 21 0 159] 
#[0 2 114 0 57 0 76 0 77] 
#[1 2 118 0 57 3 245 0 76] 
#[0 6 25 0 77] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 6 29 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 1 213 0 77 6 33 0 157 2 53 0 161 2 53 0 230] 
#[0 6 37 0 77] 
#[1 2 122 0 12 0 91 0 20 2 122 0 101 6 41 0 204] 
#[1 2 126 0 12 0 95 0 20 2 126 0 101 6 45 0 204] 
#[1 6 49 0 12 1 26 0 101 6 53 0 227] 
#[0 6 57 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 61 0 222 6 61 0 228 6 61 0 229 1 141 0 230] 
#[0 2 86 0 20 0 101] 
#[0 2 130 0 20 0 101] 
#[1 6 65 0 12 1 26 0 20 1 26 0 101 6 69 0 123 6 73 0 227] 
#[1 2 57 0 6 2 61 0 7 2 86 0 20 1 213 0 77 2 65 0 100 2 86 0 101 6 77 0 119 2 77 0 121 2 81 0 122 2 85 0 124 2 89 0 126 2 89 0 230] 
#[0 2 134 0 20 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 81 0 222 6 81 0 228 6 81 0 229 1 141 0 230] 
#[0 2 138 0 12 0 20 0 101] 
#[1 2 142 0 12 2 142 0 20 4 121 0 28 2 142 0 101 6 85 0 125] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 89 0 222 6 89 0 228 6 89 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 93 0 222 6 93 0 228 6 93 0 229 1 141 0 230] 
#[0 2 146 0 22 0 99 1 8] 
#[0 6 97 1 6] 
#[0 2 150 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 6 101 0 50 6 105 0 52 6 109 0 176 6 113 0 177 6 117 0 181] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 6 121 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 125 0 180 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 2 129 0 222 2 129 0 228 2 129 0 229 1 141 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 6 129 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 133 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 2 154 0 20 0 22 0 28 0 99 0 101 1 8] 
#[0 2 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 1 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 137 0 226 1 97 0 230] 
#[0 2 166 0 12 0 101 0 105] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 1 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 141 0 226 1 97 0 230] 
#[0 2 178 0 103] 
#[0 2 182 0 12 0 105] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 145 0 222 6 145 0 228 6 145 0 229 1 141 0 230] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 6 149 0 12 1 26 0 105 6 153 0 227 6 157 0 238] 
#[0 6 161 0 77] 
#[1 6 165 0 20 6 169 0 100] 
#[1 4 29 0 100 6 173 0 117] 
#[1 2 194 0 20 2 194 0 22 2 194 0 28 2 194 0 99 6 177 0 134 2 194 1 8] 
#[0 2 198 0 20 0 22 0 28 0 99 1 8] 
#[0 2 202 0 20 0 22 0 28 0 99 1 8] 
#[0 2 206 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 181 0 135 6 181 0 136 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 6 181 1 4] 
#[0 2 210 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 6 185 0 49] 
#[0 2 214 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 218 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 222 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 226 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 230 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 189 0 222 6 189 0 228 6 189 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 193 0 222 6 193 0 228 6 193 0 229 1 141 0 230] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 3 34 0 12 6 197 0 28 4 185 0 53 3 34 0 101 4 189 0 255] 
#[0 3 38 0 12 0 101] 
#[0 6 201 0 101] 
#[1 6 205 0 12 1 26 0 101 6 209 0 227] 
#[1 0 33 0 10 3 42 0 12 0 37 0 13 6 213 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 3 42 0 103 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 6 221 0 222 6 217 0 225 6 221 0 228 6 221 0 229 1 141 0 230] 
#[0 6 225 0 103] 
#[1 6 229 0 12 1 26 0 103 6 233 0 227] 
#[1 3 46 0 12 6 237 0 20 3 46 0 103] 
#[1 3 50 0 81 3 50 0 82 6 241 0 208] 
#[1 3 54 0 84 3 54 0 85 6 245 0 210] 
#[1 3 58 0 87 3 58 0 88 6 249 0 212] 
#[1 3 62 0 90 3 62 0 91 6 253 0 214] 
#[0 3 66 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 3 70 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 3 74 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 3 78 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 169 0 222 1 169 0 228 1 169 0 229 1 141 0 230 7 1 0 231 1 169 0 232] 
#[0 3 82 0 22 0 99 1 8] 
#[0 3 86 0 99 1 8] 
#[0 3 90 0 20 0 22 0 28 0 99 0 101 0 103 0 105 1 8] 
#[0 3 94 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 8] 
#[0 3 98 0 99] 
#[0 7 5 0 101] 
#[0 3 102 0 34 0 41 0 44 0 46] 
#[0 3 106 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 3 110 0 22 0 99 1 8] 
#[1 5 233 0 15 2 106 0 20 7 9 0 116] 
#[0 3 114 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 7 13 0 28] 
#[0 7 17 0 20] 
#[0 3 118 0 12 0 101] 
#[0 7 21 0 101] 
#[1 3 122 0 12 3 122 0 101 7 25 0 246] 
#[0 7 29 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 7 33 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 7 37 0 20] 
#[0 3 126 0 22 0 58 0 99 1 8] 
#[0 3 130 0 22 0 99 1 8] 
#[0 7 41 0 20] 
#[0 3 134 0 22 0 99 1 8] 
#[1 3 138 0 12 3 138 0 22 7 45 0 39 3 138 0 99 3 138 0 101 3 138 1 8] 
#[1 6 1 0 77 6 13 0 156 7 49 0 158 6 21 0 159] 
#[0 3 142 0 22 0 99 1 8] 
#[0 3 146 0 12 0 22 0 99 0 101 1 8] 
#[0 3 150 0 22 0 99 1 8] 
#[1 7 53 0 12 1 26 0 22 1 26 0 99 1 26 0 101 7 57 0 227 1 26 1 8] 
#[0 3 154 0 12 0 22 0 99 1 8] 
#[1 3 158 0 6 3 158 0 10 3 158 0 13 3 158 0 34 3 158 0 37 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 3 158 0 48 3 158 0 49 3 158 0 51 3 158 0 53 3 158 0 54 3 158 0 55 3 158 0 56 3 158 0 57 3 158 0 60 3 158 0 62 3 158 0 64 3 158 0 66 3 158 0 67 3 158 0 68 3 158 0 69 3 158 0 70 3 158 0 71 3 158 0 74 3 158 0 75 3 158 0 77 3 158 0 78 3 158 0 79 3 158 0 80 3 158 0 83 3 158 0 86 3 158 0 89 3 158 0 92 3 158 0 99 3 158 0 100 3 158 0 102 3 158 0 104 7 61 0 170 3 158 1 5 3 158 1 7 3 158 1 8] 
#[0 3 162 0 12 0 22 0 99 1 8] 
#[0 3 166 0 12 0 22 0 99 1 8] 
#[0 3 170 0 12 0 20 0 101] 
#[0 3 174 0 12 0 20 0 101] 
#[1 1 213 0 77 2 65 0 100 2 86 0 101 4 89 0 126 7 65 0 127 4 89 0 230] 
#[0 3 178 0 101] 
#[0 3 182 0 12 0 20 0 28 0 101] 
#[0 3 186 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 2 61 0 7 2 86 0 20 1 213 0 77 2 65 0 100 2 86 0 101 7 69 0 121 7 73 0 124 2 89 0 126 2 89 0 230] 
#[0 3 190 0 12 0 20 0 101] 
#[0 3 194 0 20 0 101] 
#[0 3 198 0 20 0 101] 
#[0 3 202 0 12 0 20 0 101] 
#[0 3 206 0 12 0 20 0 101] 
#[1 7 77 0 12 3 210 0 22 3 210 0 99 3 210 1 8] 
#[0 3 214 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 7 81 0 115 7 81 0 128 7 81 0 129 7 81 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 7 81 0 168 7 81 0 169 7 81 0 173 7 81 0 174 7 81 0 175 7 81 0 178 7 85 0 183 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 7 81 0 243 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 3 218 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 89 0 222 7 89 0 228 7 89 0 229 1 141 0 230] 
#[0 7 93 0 20] 
#[0 3 222 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 3 226 0 6 3 226 0 10 3 226 0 13 3 226 0 34 3 226 0 37 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 7 97 0 49 6 101 0 50 3 226 0 51 3 226 0 52 3 226 0 53 3 226 0 54 3 226 0 55 3 226 0 56 3 226 0 57 3 226 0 60 3 226 0 62 3 226 0 64 3 226 0 66 3 226 0 67 3 226 0 68 3 226 0 69 3 226 0 70 3 226 0 71 3 226 0 74 3 226 0 75 3 226 0 77 3 226 0 78 3 226 0 79 3 226 0 80 3 226 0 83 3 226 0 86 3 226 0 89 3 226 0 92 3 226 0 99 3 226 0 100 3 226 0 102 3 226 0 104 7 101 0 172 7 105 0 181 3 226 1 5 3 226 1 7 3 226 1 8] 
#[0 7 109 0 20] 
#[1 3 226 0 6 3 226 0 10 3 226 0 13 3 226 0 34 3 226 0 37 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 7 97 0 49 3 226 0 51 3 226 0 53 3 226 0 54 3 226 0 55 3 226 0 56 3 226 0 57 3 226 0 60 3 226 0 62 3 226 0 64 3 226 0 66 3 226 0 67 3 226 0 68 3 226 0 69 3 226 0 70 3 226 0 71 3 226 0 74 3 226 0 75 3 226 0 77 3 226 0 78 3 226 0 79 3 226 0 80 3 226 0 83 3 226 0 86 3 226 0 89 3 226 0 92 3 226 0 99 3 226 0 100 3 226 0 102 3 226 0 104 7 113 0 172 3 226 1 5 3 226 1 7 3 226 1 8] 
#[0 3 230 0 12 0 20] 
#[0 3 234 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 3 238 0 12 0 20] 
#[0 7 117 0 58] 
#[0 7 121 0 58] 
#[1 3 242 0 12 4 185 0 53 3 242 0 105 7 125 0 255] 
#[1 2 197 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 86 0 105 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 129 0 222 7 129 0 228 7 129 0 229 1 141 0 230 7 133 0 241 7 133 0 242] 
#[0 3 246 0 105] 
#[0 3 250 0 12 0 105] 
#[1 4 29 0 100 7 137 0 117] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 7 141 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 209 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 7 145 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 225 0 222 5 225 0 228 5 225 0 229 1 141 0 230 7 149 0 244 5 225 0 247] 
#[1 5 233 0 15 2 106 0 20 7 153 0 116] 
#[1 0 99 0 20 3 254 0 22 0 103 0 28 3 254 0 99 7 157 0 133 3 57 0 204 3 254 1 8] 
#[1 2 194 0 20 2 194 0 22 2 194 0 28 2 194 0 99 7 161 0 134 2 194 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 165 0 222 7 165 0 228 7 165 0 229 1 141 0 230] 
#[1 0 107 0 12 4 2 0 101 7 173 0 249] 
#[1 7 177 0 12 1 26 0 101 7 177 0 227] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 181 0 222 7 181 0 228 7 181 0 229 1 141 0 230] 
#[0 4 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 5 85 0 6 5 89 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 86 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 97 0 222 5 97 0 228 5 97 0 229 1 141 0 230 5 109 0 236 7 185 0 248 5 109 0 250] 
#[0 4 10 0 101] 
#[1 0 33 0 10 4 14 0 12 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 4 14 0 103 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 189 0 222 7 189 0 228 7 189 0 229 1 141 0 230] 
#[0 4 18 0 12 0 103] 
#[1 3 42 0 12 6 213 0 20 3 42 0 103 7 193 0 225] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 5 113 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 86 0 103 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 125 0 222 7 197 0 223 5 121 0 224 5 125 0 228 5 125 0 229 1 141 0 230] 
#[0 4 26 0 103] 
#[1 0 33 0 10 3 42 0 12 0 37 0 13 6 213 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 3 42 0 103 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 7 205 0 222 7 201 0 225 7 205 0 228 7 205 0 229 1 141 0 230] 
#[1 7 209 0 81 7 213 0 82 7 217 0 207] 
#[1 7 221 0 84 7 225 0 85 7 229 0 209] 
#[1 7 233 0 87 7 237 0 88 7 241 0 211] 
#[1 7 245 0 90 7 249 0 91 7 253 0 213] 
#[0 4 30 0 22 0 99 1 8] 
#[0 4 34 0 99] 
#[0 8 1 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 5 0 222 8 5 0 228 8 5 0 229 1 141 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 9 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 8 13 0 20] 
#[1 8 17 0 12 1 26 0 101 8 21 0 227 8 25 0 245] 
#[0 4 38 0 15 0 20] 
#[0 4 42 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 29 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 33 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 8 37 0 77] 
#[0 8 41 0 101] 
#[1 2 86 0 22 6 1 0 77 2 86 0 99 2 86 0 101 8 45 0 156 2 86 1 8] 
#[0 4 46 0 22 0 99 0 101 1 8] 
#[1 3 226 0 6 3 226 0 10 3 226 0 13 3 226 0 34 3 226 0 37 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 8 49 0 48 7 97 0 49 3 226 0 51 3 226 0 53 3 226 0 54 3 226 0 55 3 226 0 56 3 226 0 57 3 226 0 60 3 226 0 62 3 226 0 64 3 226 0 66 3 226 0 67 3 226 0 68 3 226 0 69 3 226 0 70 3 226 0 71 3 226 0 74 3 226 0 75 3 226 0 77 3 226 0 78 3 226 0 79 3 226 0 80 3 226 0 83 3 226 0 86 3 226 0 89 3 226 0 92 3 226 0 99 3 226 0 100 3 226 0 102 3 226 0 104 8 53 0 171 8 57 0 172 3 226 1 5 3 226 1 7 3 226 1 8] 
#[0 4 50 0 101] 
#[1 8 61 0 12 1 26 0 20 1 26 0 101 8 61 0 227] 
#[0 4 54 0 12 0 20 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 65 0 222 8 65 0 228 8 65 0 229 1 141 0 230] 
#[0 4 58 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 5 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 8 69 0 115 8 69 0 128 8 69 0 129 8 69 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 69 0 168 8 69 0 169 8 69 0 173 8 69 0 174 8 69 0 175 8 69 0 178 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 8 69 0 243 1 153 1 4 8 73 1 5 1 157 1 7] 
#[1 8 77 0 12 4 62 0 20 8 81 0 39] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 85 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 8 89 0 20] 
#[1 4 66 0 6 4 66 0 10 4 66 0 13 4 66 0 34 4 66 0 37 4 66 0 40 4 66 0 41 4 66 0 42 4 66 0 43 4 66 0 44 4 66 0 45 4 66 0 46 4 66 0 47 4 66 0 51 6 105 0 52 4 66 0 53 4 66 0 54 4 66 0 55 4 66 0 56 4 66 0 57 4 66 0 60 4 66 0 62 4 66 0 64 4 66 0 66 4 66 0 67 4 66 0 68 4 66 0 69 4 66 0 70 4 66 0 71 4 66 0 74 4 66 0 75 4 66 0 77 4 66 0 78 4 66 0 79 4 66 0 80 4 66 0 83 4 66 0 86 4 66 0 89 4 66 0 92 4 66 0 99 4 66 0 100 4 66 0 102 4 66 0 104 8 93 0 176 4 66 1 5 4 66 1 7 4 66 1 8] 
#[0 8 97 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 101 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 4 70 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 8 105 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 8 113 0 184 8 117 0 186 8 117 0 187 8 117 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 4 74 0 105] 
#[0 8 129 0 20] 
#[0 4 78 0 12 0 105] 
#[1 5 233 0 15 2 106 0 20 8 133 0 116] 
#[0 4 82 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 8 137 0 20] 
#[0 8 141 0 101] 
#[0 8 145 0 20] 
#[0 4 86 0 20 0 22 0 28 0 99 1 8] 
#[1 0 111 0 20 4 90 0 22 0 115 0 28 4 90 0 99 7 157 0 133 3 57 0 204 4 90 1 8] 
#[0 4 94 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 8 149 0 6 8 153 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 5 97 0 222 5 97 0 228 5 97 0 229 1 141 0 230 8 157 0 236 8 157 0 250] 
#[1 8 161 0 12 1 26 0 101 8 161 0 227] 
#[0 4 98 0 101] 
#[0 4 102 0 12 0 101] 
#[0 4 106 0 101] 
#[0 4 110 0 12 0 103] 
#[0 4 114 0 12 0 103] 
#[0 4 118 0 103] 
#[0 4 122 0 12 0 103] 
#[1 3 42 0 12 6 213 0 20 3 42 0 103 8 165 0 225] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 169 0 222 8 169 0 228 8 169 0 229 1 141 0 230] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 130 0 81 0 82] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 173 0 222 8 173 0 228 8 173 0 229 1 141 0 230] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 138 0 84 0 85] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 177 0 222 8 177 0 228 8 177 0 229 1 141 0 230] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 146 0 87 0 88] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 181 0 222 8 181 0 228 8 181 0 229 1 141 0 230] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 154 0 90 0 91] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 185 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 4 158 0 12 0 101] 
#[0 4 162 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 189 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 209 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 86 0 101 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 193 0 222 8 193 0 228 8 193 0 229 1 141 0 230 8 193 0 247] 
#[0 4 166 0 101] 
#[0 4 170 0 12 0 101] 
#[0 4 174 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 3 226 0 6 3 226 0 10 3 226 0 13 3 226 0 34 3 226 0 37 3 226 0 40 3 226 0 41 3 226 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 7 97 0 49 3 226 0 51 3 226 0 53 3 226 0 54 3 226 0 55 3 226 0 56 3 226 0 57 3 226 0 60 3 226 0 62 3 226 0 64 3 226 0 66 3 226 0 67 3 226 0 68 3 226 0 69 3 226 0 70 3 226 0 71 3 226 0 74 3 226 0 75 3 226 0 77 3 226 0 78 3 226 0 79 3 226 0 80 3 226 0 83 3 226 0 86 3 226 0 89 3 226 0 92 3 226 0 99 3 226 0 100 3 226 0 102 3 226 0 104 8 197 0 172 3 226 1 5 3 226 1 7 3 226 1 8] 
#[0 4 178 0 12 0 22 0 99 0 101 1 8] 
#[0 4 182 0 22 0 99 1 8] 
#[0 4 186 0 12 0 22 0 99 0 101 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 201 0 222 8 201 0 228 8 201 0 229 1 141 0 230] 
#[0 4 190 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 4 194 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 4 198 0 20 0 101] 
#[0 4 202 0 22 0 99 1 8] 
#[0 4 206 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 5 1 7] 
#[0 4 210 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 205 0 222 8 205 0 228 8 205 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 8 209 0 222 8 209 0 228 8 209 0 229 1 141 0 230] 
#[0 4 214 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 213 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 4 218 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 8 217 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 4 222 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 4 226 0 12 4 185 0 53 8 221 0 56 4 226 0 101 4 226 0 105 8 225 0 254 8 225 0 255 8 225 1 0] 
#[1 2 57 0 6 2 61 0 7 0 38 0 20 1 213 0 77 2 65 0 100 8 237 0 118 2 73 0 119 2 77 0 121 2 81 0 122 2 85 0 124 2 89 0 126 2 89 0 230] 
#[1 4 201 0 53 8 241 0 56 4 230 0 103 8 245 0 251 8 245 0 252 8 245 0 253] 
#[1 9 1 0 12 4 234 0 53 4 234 0 56 4 234 0 103] 
#[0 4 238 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 4 242 0 12 0 53 0 56 0 101 0 103 0 105] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 9 5 0 222 9 5 0 228 9 5 0 229 1 141 0 230] 
#[0 9 9 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 9 13 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 9 17 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 9 21 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 9 25 0 222 9 25 0 228 9 25 0 229 1 141 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 9 29 0 222 9 29 0 228 9 29 0 229 1 141 0 230] 
#[1 0 107 0 12 4 2 0 101 9 33 0 249] 
#[0 4 246 0 101] 
#[0 4 250 0 12 0 103] 
#[0 4 254 0 81 0 82] 
#[0 5 2 0 84 0 85] 
#[0 5 6 0 87 0 88] 
#[0 5 10 0 90 0 91] 
#[0 5 14 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 18 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 22 0 12 0 101] 
#[0 5 26 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 9 37 0 20] 
#[0 5 30 0 20] 
#[0 5 34 0 20] 
#[0 5 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 41 0 186 9 41 0 187 9 41 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 5 46 0 12 0 101 0 105] 
#[0 5 50 0 12 0 101 0 105] 
#[0 5 54 0 12 0 101 0 105] 
#[0 9 45 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 49 0 186 9 49 0 187 9 49 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 5 58 0 103] 
#[0 5 62 0 103] 
#[0 5 66 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 53 0 185 9 57 0 186 9 57 0 187 9 57 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 3 242 0 12 0 105] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 9 61 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 5 70 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 9 65 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[0 5 74 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 78 0 12 0 101] 
#[0 5 82 0 12 0 101] 
#[0 5 86 0 12 0 101] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 145 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 149 0 129 4 149 0 130 1 17 0 132 0 209 0 136 1 17 0 140 1 17 0 141 1 17 0 142 1 17 0 143 1 17 0 144 1 17 0 145 1 17 0 146 1 17 0 147 1 17 0 148 1 17 0 150 1 17 0 151 1 17 0 152 1 17 0 162 1 17 0 164 1 17 0 166 1 17 0 167 9 69 0 182 1 45 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 145 0 222 1 145 0 228 1 145 0 229 1 141 0 230 1 145 0 232 1 153 1 4 1 157 1 7] 
#[1 5 90 0 12 4 185 0 53 8 221 0 56 5 90 0 101 5 90 0 105 9 73 0 254 9 73 0 255 9 73 1 0] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 77 0 186 9 77 0 187 9 77 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[1 4 201 0 53 8 241 0 56 5 94 0 103 9 81 0 251 9 81 0 252 9 81 0 253] 
#[1 9 85 0 12 1 26 0 53 1 26 0 56 1 26 0 103 9 89 0 227] 
#[0 5 98 0 12 0 53 0 56 0 103] 
#[0 5 102 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 106 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 110 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 114 0 12 0 101 0 105] 
#[0 5 118 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 5 122 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 2 86 0 53 2 86 0 56 8 109 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 86 0 103 0 177 0 104 9 93 0 186 9 93 0 187 9 93 0 188 1 49 0 189 1 53 0 190 1 53 0 191 1 61 0 193 1 65 0 194 1 69 0 195 1 73 0 196 1 77 0 197 1 81 0 198 1 85 0 199 1 85 0 200 1 93 0 201 1 97 0 202 1 97 0 203 1 105 0 205 1 109 0 206 1 113 0 215 1 117 0 216 1 121 0 217 1 125 0 218 1 97 0 230] 
#[0 5 126 0 53 0 56 0 103] 
#[0 5 130 0 12 0 53 0 56 0 103]
	).
]

{ #category : #private }
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

{ #category : #private }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringDouble1: nodes [
	^ {#fLongStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFLongStringSingle1: nodes [
	^ {#fLongStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringDouble1: nodes [
	^ {#fStringDouble.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForStartFStringSingle1: nodes [
	^ {#fStringSingle.
		scanner lineJoiningStack copy}
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForSymbol1: nodes [
	| result |
	result := PyVariableExpressionNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor______commaToken__testlistItem__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_test__expression_______commaToken___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_test__expression_______commaToken___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForand_test2: nodes [
	| result |
	result := PyBinaryExpressionNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument3: nodes [
	| result |
	result := PyArgumentNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertStatementNode new.
	result assertToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result commaToken: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after2: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: ((nodes at: 1) at: 1) to: (result at: 3).
	self addFirst: ((nodes at: 1) at: 2) to: (result at: 4).
	self addFirst: (nodes at: 2) to: (result at: 1).
	self addFirst: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after_1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after_2: nodes [
	| result |
	result := nodes at: 2.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAllFirst: ((nodes at: 1) at: 3) to: (result at: 3).
	self addAllFirst: ((nodes at: 1) at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassignment_expression1: nodes [
	| result |
	result := PyAssignmentExpressionNode new.
	result variable: (nodes at: 1).
	result assign: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom11: nodes [
	| result |
	result := PyEllipsisNode new.
	result ellipsis: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom12: nodes [
	| result |
	result := PyTypedVariableExpressionNode new.
	result nameToken: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom13: nodes [
	| result |
	result := PyNumberNode new.
	result numberToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom1: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom2: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom3: nodes [
	| result |
	result := PyTupleExpressionNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom4: nodes [
	| result |
	result := PyListExpressionNode new.
	result lbrackToken: (nodes at: 1).
	result rbrackToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom5: nodes [
	| result |
	result := PyListExpressionNode new.
	result lbrackToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom6: nodes [
	| result |
	result := PySetExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom7: nodes [
	| result |
	result := PyDictionaryExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom8: nodes [
	| result |
	result := PyDictionaryExpressionNode new.
	result lcurlyToken: (nodes at: 1).
	result rcurlyToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom9: nodes [
	| result |
	result := PyBacktickExpressionNode new.
	result addToken: (nodes at: 1) to: result backtickTokens.
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result backtickTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForawait2: nodes [
	| result |
	result := PyAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForbreak_stmt1: nodes [
	| result |
	result := PyBreakStatementNode new.
	result breakToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassListItem2: nodes [
	| result |
	result := PyMetaclassNode new.
	result metaclassToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result superclass: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassdef1: nodes [
	| result |
	result := PyClassDefinitionNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if1: nodes [
	| result |
	result := PyComprehensionIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if2: nodes [
	| result |
	result := PyComprehensionIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op7: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op9: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomparison2: nodes [
	| result |
	result := PyComparisonExpressionNode new.
	result left: (nodes at: 1).
	result operator: ((nodes at: 2) at: 1).
	result notToken: ((nodes at: 2) at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomprehension1: nodes [
	| result |
	result := PyComprehensionNode new.
	result object: (nodes at: 1).
	result for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomprehension_dictionary_item1: nodes [
	| result |
	result := PyComprehensionDictionaryItemNode new.
	result object: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	result comp: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcontinue_stmt1: nodes [
	| result |
	result := PyContinueStatementNode new.
	result continueToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators2: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordel_stmt1: nodes [
	| result |
	result := PyDelStatementNode new.
	result delToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictionary_item1: nodes [
	| result |
	result := PyDictionaryItemNode new.
	result object: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result periodTokens.
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: ((nodes at: 3) at: 1) to: (result at: 2).
	self add: ((nodes at: 3) at: 2) to: (result at: 3).
	self add: ((nodes at: 3) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelif1: nodes [
	| result |
	result := PyElifNode new.
	result elifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelif__elsif__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelse_opt2: nodes [
	| result |
	result := PyElseNode new.
	result elseToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForeval_input1: nodes [
	| result |
	result := PyEvalNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result expressions.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause1: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause2: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause3: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	result asToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause4: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result exception: (nodes at: 2).
	result commaToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt1: nodes [
	| result |
	result := PyExecStatementNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt1: nodes [
	| result |
	result := PyExpressionStatementNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt2: nodes [
	| result |
	result := PyAssignmentStatementNode new.
	result lhs: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result assigns.
	result addNodes: ((nodes at: 2) at: 2) to: result tos.
	result addTokens: ((nodes at: 2) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 2) at: 4) to: result typeExpressions.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt3: nodes [
	| result |
	result := PyAssignmentStatementNode new.
	result lhs: (nodes at: 1).
	result addToken: (nodes at: 2) to: result assigns.
	result addNode: (nodes at: 3) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexprlist1: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor2: nodes [
	| result |
	result := PyUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input1: nodes [
	| result |
	result := PyFileNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input3: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfinally1: nodes [
	| result |
	result := PyFinallyNode new.
	result finallyToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfpdef2: nodes [
	| result |
	result := PyParameterListNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForglobal_stmt1: nodes [
	| result |
	result := PyGlobalStatementNode new.
	result globalToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_name1: nodes [
	| result |
	result := PyNameNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_name2: nodes [
	| result |
	result := PyAsNameNode new.
	result nameToken: (nodes at: 1).
	result asToken: (nodes at: 2).
	result rename: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star3: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForinit1: nodes [
	| result |
	result := PyInitNode new.
	result equalToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForkeyword_parameter1: nodes [
	| result |
	result := PyKeywordParameterNode new.
	result starStarToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForkeyword_parameter2: nodes [
	| result |
	result := PyKeywordParameterNode new.
	result starStarToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result typeExpression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_if1: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_if2: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter1: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter2: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlist_parameter3: nodes [
	| result |
	result := PyListParameterNode new.
	result starToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colonToken: ((nodes at: 3) at: 1).
	result typeExpression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornamelist1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornamelist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForor_test2: nodes [
	| result |
	result := PyBinaryExpressionNode new.
	result left: (nodes at: 1).
	result opeator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparameter1: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparameter2: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparameter3: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparameter4: nodes [
	| result |
	result := PyParameterNode new.
	result name: (nodes at: 1).
	result colonToken: ((nodes at: 2) at: 1).
	result typeExpression: ((nodes at: 2) at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparen_arglist_opt1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForpass_stmt1: nodes [
	| result |
	result := PyPassStatementNode new.
	result passToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt1: nodes [
	| result |
	result := PyPrintStatementNode new.
	result printToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt2: nodes [
	| result |
	result := PyPrintStatementNode new.
	result printToken: (nodes at: 2).
	result gtgtToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt1: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt2: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt3: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt4: nodes [
	| result |
	result := PyRaiseStatementNode new.
	result raiseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result args.
	result addToken: (nodes at: 3) to: result commaTokens.
	result addNode: (nodes at: 4) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_annotation_opt2: nodes [
	| result |
	result := PyReturnTypeAnnotationNode new.
	result arrowToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_stmt1: nodes [
	| result |
	result := PyReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input2: nodes [
	| result |
	result := PyFileNode new.
	result addNode: (nodes at: 1) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsliceop1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstatement_with_separator1: nodes [
	| result |
	result := nodes at: 1.
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring3: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 2) to: (result at: 1).
	self addFirst: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 1.
	result addTokens: ((nodes at: 2) at: 1) to: result parts.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result parts.
	result addNodes: ((nodes at: 1) at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript2: nodes [
	| result |
	result := PySliceNode new.
	result addToken: (nodes at: 1) to: result colonTokens.
	result addToken: ((nodes at: 2) at: 1) to: result colonTokens.
	result step: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript3: nodes [
	| result |
	result := PySliceNode new.
	result addToken: (nodes at: 1) to: result colonTokens.
	result to: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result colonTokens.
	result step: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript4: nodes [
	| result |
	result := PySliceNode new.
	result from: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addToken: ((nodes at: 3) at: 1) to: result colonTokens.
	result step: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuite2: nodes [
	| result |
	result := nodes at: 3.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest2: nodes [
	| result |
	result := PyIfExpressionNode new.
	result condition: (nodes at: 1).
	result ifToken: (nodes at: 2).
	result if: (nodes at: 3).
	result elseToken: (nodes at: 4).
	result else: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist11: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlistItem2: nodes [
	| result |
	result := PySpreadExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_expression2: nodes [
	| result |
	result := PyListExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result addToken: (nodes at: 3) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_expression3: nodes [
	| result |
	result := PyListExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result addToken: (nodes at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailers2: nodes [
	| result |
	result := PyFunctionCallExpressionNode new.
	result receiver: (nodes at: 1).
	result lparenToken: (nodes at: 2).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailers5: nodes [
	| result |
	result := PyFieldAccessExpressionNode new.
	result receiver: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result nameToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt3: nodes [
	| result |
	result := PyTryStatementNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: (nodes at: 3) to: result statements.
	result finally: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortype_annotation1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item1: nodes [
	| result |
	result := PyWithItemNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item2: nodes [
	| result |
	result := PyWithItemNode new.
	result expression: (nodes at: 1).
	result asToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr1: nodes [
	| result |
	result := PyYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr2: nodes [
	| result |
	result := PyYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_stmt1: nodes [
	| result |
	result := PyYieldStatementNode new.
	result yieldExpression: (nodes at: 1).
	^ result
]

{ #category : #testing }
PythonParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
PythonParser >> useAllTokenIds [
	^ false
]
