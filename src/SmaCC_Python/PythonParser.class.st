Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 58 2 153] 
#[ 0 206 3 149] 
#[ 0 210 3 153] 
#[ 0 214 3 157] 
#[ 0 218 3 161] 
#[ 0 218 3 165] 
#[ 0 218 3 169] 
#[ 0 218 3 173] 
#[ 0 222 3 177] 
#[ 0 222 3 181] 
#[ 0 222 3 185] 
#[ 0 222 3 189] 
#[ 0 234 3 193] 
#[ 0 238 3 197] 
#[ 0 238 3 201] 
#[ 0 238 3 205] 
#[ 1 78 3 197] 
#[ 1 78 3 201] 
#[ 1 78 3 205] 
#[ 1 134 2 153] 
#[ 2 42 5 17] 
#[ 2 142 2 153] 
#[ 2 146 2 153] 
#[ 3 2 3 177] 
#[ 3 2 3 181] 
#[ 3 2 3 185] 
#[ 3 2 3 189] 
#[ 3 6 3 177] 
#[ 3 6 3 181] 
#[ 3 6 3 185] 
#[ 3 6 3 189] 
#[ 4 10 7 165]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2025-11-04T08:56:40.114918-06:00'
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
	#(108 0 #reduceActionForfile_input1: 5960705 false) 
	#(215 0 #reduceActionForStartFStringSingle1: 17666049 true) 
	#(216 0 #reduceActionForStartFStringDouble1: 17738753 true) 
	#(217 0 #reduceActionForStartFLongStringSingle1: 17811457 true) 
	#(218 0 #reduceActionForStartFLongStringDouble1: 17892353 true) 
	#(259 0 #reduceActionFor_test__expression_______commaToken___1: 21672961 false) 
	#(144 1 #reduceActionForbreak_stmt1: 9106433 false) 
	#(145 1 #reduceActionForcontinue_stmt1: 9163777 false) 
	#(118 0 #reduceActionFor_test__expression_______commaToken___1: 6855681 false) 
	#(142 1 #reduceActionForpass_stmt1: 8965121 false) 
	#(148 1 #reduceActionForraise_stmt1: 9373697 false) 
	#(233 0 #reduceActionFor_test__expression_______commaToken___1: 19198977 false) 
	#(203 1 #reduceActionForatom11: 15974411 false) 
	#(230 1 #reduceActionForSymbol1: 18959361 false) 
	#(206 1 #reduceActionForstring1: 17001473 false) 
	#(206 1 #reduceActionForstring1: 17001474 false) 
	#(203 1 #reduceActionForatom13: 15974413 false) 
	#(109 1 #reduceActionForfile_input1: 6061057 false) 
	#(114 1 #reduceActionFordecorators2: 6418434 false) 
	#(168 1 #liftFirstValue: 11401222 false) 
	#(109 1 #reduceActionForsingle_input2: 6061058 false) 
	#(129 1 #liftFirstValue: 7750657 false) 
	#(167 1 #liftFirstValue: 11261953 false) 
	#(134 1 #reduceActionFor_testlist_expression__variable__type_annotation_______assign___1: 8052737 false) 
	#(132 1 #reduceActionForexpr_stmt1: 7977985 false) 
	#(167 1 #liftFirstValue: 11261954 false) 
	#(167 1 #liftFirstValue: 11261955 false) 
	#(167 1 #liftFirstValue: 11261956 false) 
	#(167 1 #liftFirstValue: 11261957 false) 
	#(143 1 #liftFirstValue: 9018369 false) 
	#(143 1 #liftFirstValue: 9018370 false) 
	#(143 1 #liftFirstValue: 9018371 false) 
	#(143 1 #liftFirstValue: 9018373 false) 
	#(143 1 #liftFirstValue: 9018372 false) 
	#(167 1 #liftFirstValue: 11261958 false) 
	#(150 1 #liftFirstValue: 9746433 false) 
	#(150 1 #liftFirstValue: 9746434 false) 
	#(167 1 #liftFirstValue: 11261959 false) 
	#(167 1 #liftFirstValue: 11261960 false) 
	#(167 1 #liftFirstValue: 11261961 false) 
	#(168 1 #liftFirstValue: 11401217 false) 
	#(168 1 #liftFirstValue: 11401218 false) 
	#(168 1 #liftFirstValue: 11401219 false) 
	#(168 1 #liftFirstValue: 11401220 false) 
	#(168 1 #liftFirstValue: 11401221 false) 
	#(228 1 #liftFirstValue: 18703361 false) 
	#(188 1 #liftFirstValue: 13729793 false) 
	#(189 1 #liftFirstValue: 13826049 false) 
	#(190 1 #liftFirstValue: 13925378 false) 
	#(191 1 #liftFirstValue: 14014465 false) 
	#(193 1 #liftFirstValue: 14332929 false) 
	#(194 1 #liftFirstValue: 14423041 false) 
	#(195 1 #liftFirstValue: 14521345 false) 
	#(196 1 #liftFirstValue: 14623745 false) 
	#(197 1 #liftFirstValue: 14809089 false) 
	#(198 1 #liftFirstValue: 14976001 false) 
	#(199 1 #liftFirstValue: 15266817 false) 
	#(200 1 #liftFirstValue: 15464449 false) 
	#(201 1 #liftFirstValue: 15554561 false) 
	#(202 1 #liftFirstValue: 15643649 false) 
	#(203 1 #liftFirstValue: 15974414 false) 
	#(205 1 #reduceActionForstrings2: 16940034 false) 
	#(228 1 #liftFirstValue: 18703363 false) 
	#(232 1 #liftFirstValue: 19116033 false) 
	#(228 1 #liftFirstValue: 18703364 false) 
	#(203 1 #liftFirstValue: 15974410 false) 
	#(136 1 #liftFirstValue: 8337409 false) 
	#(168 1 #liftFirstValue: 11401223 false) 
	#(147 1 #reduceActionForyield_stmt1: 9308161 false) 
	#(111 0 #nil 6197249 false) 
	#(227 0 #nil 18667521 false) 
	#(108 2 #reduceActionForfile_input2: 5960706 false) 
	#(108 2 #reduceActionForfile_input3: 5960707 false) 
	#(128 1 #liftFirstValue: 7696385 false) 
	#(128 1 #liftFirstValue: 7696386 false) 
	#(232 2 #reduceActionFortestlistItem2: 19116034 false) 
	#(199 2 #reduceActionForfactor2: 15266818 false) 
	#(199 2 #reduceActionForfactor2: 15266819 false) 
	#(113 0 #reduceActionForparen_arglist_opt1: 6335489 false) 
	#(161 1 #liftFirstValue: 10682370 false) 
	#(166 2 #reduceActionForassert_stmt1: 11186177 false) 
	#(165 1 #reduceActionFortest_test_opt1: 11106305 false) 
	#(201 2 #reduceActionForawait2: 15554562 false) 
	#(141 2 #reduceActionFordel_stmt1: 8906753 false) 
	#(164 2 #reduceActionForexec_stmt1: 10956801 false) 
	#(154 1 #reduceActionFordecorators2: 10032129 false) 
	#(153 1 #reduceActionFordotopt_dotted_name2: 9995266 false) 
	#(153 1 #liftFirstValue: 9995265 false) 
	#(163 1 #reduceActionFornamelist2: 10873858 false) 
	#(162 2 #reduceActionForglobal_stmt1: 10803201 false) 
	#(160 1 #reduceActionFordotted_as_names2: 10593282 false) 
	#(151 2 #reduceActionForimport_name1: 9791489 false) 
	#(157 1 #reduceActionFordotted_as_name1: 10338305 false) 
	#(122 1 #reduceActionForlist_parameter1: 7271425 false) 
	#(118 1 #reduceActionForfile_input2: 6855682 false) 
	#(120 0 #reduceActionFor_test__expression_______commaToken___1: 6988801 false) 
	#(124 1 #reduceActionForparameter1: 7402497 false) 
	#(126 1 #liftFirstValue: 7523329 false) 
	#(190 2 #reduceActionForfactor2: 13925377 false) 
	#(148 2 #reduceActionForraise_stmt2: 9373698 false) 
	#(233 1 #reduceActionForfile_input2: 19198978 false) 
	#(146 2 #reduceActionForreturn_stmt1: 9233409 false) 
	#(179 1 #reduceActionFornamelist2: 12519426 false) 
	#(180 1 #reduceActionForwith_item1: 12610561 false) 
	#(260 2 #reduceActionForyield_expr1: 21841921 false) 
	#(199 2 #reduceActionForfactor2: 15266820 false) 
	#(203 2 #reduceActionForatom12: 15974412 false) 
	#(203 2 #reduceActionForatom1: 15974401 false) 
	#(221 1 #reduceActionForfile_input2: 18107394 false) 
	#(221 1 #reduceActionForstring1: 18107393 false) 
	#(203 2 #reduceActionForatom4: 15974404 false) 
	#(219 1 #reduceActionForstring1: 17973249 false) 
	#(219 1 #reduceActionForfile_input2: 17973250 false) 
	#(203 2 #reduceActionForatom8: 15974408 false) 
	#(235 1 #reduceActionForfile_input2: 19281922 false) 
	#(235 1 #reduceActionForstring1: 19281921 false) 
	#(237 1 #reduceActionForstring1: 19406849 false) 
	#(239 0 #reduceActionFor_test__expression_______commaToken___1: 19504129 false) 
	#(241 1 #liftFirstValue: 19671042 false) 
	#(114 2 #reduceActionFordecorators1: 6418433 false) 
	#(134 2 #reduceActionFor_testlist_expression__variable__type_annotation_______assign___2: 8052738 false) 
	#(132 2 #reduceActionForexpr_stmt2: 7977986 false) 
	#(135 1 #liftFirstValue: 8278018 false) 
	#(135 1 #liftFirstValue: 8278017 false) 
	#(139 1 #liftFirstValue: 8550405 false) 
	#(139 1 #liftFirstValue: 8550406 false) 
	#(139 1 #liftFirstValue: 8550411 false) 
	#(139 1 #liftFirstValue: 8550403 false) 
	#(139 1 #liftFirstValue: 8550401 false) 
	#(139 1 #liftFirstValue: 8550402 false) 
	#(139 1 #liftFirstValue: 8550412 false) 
	#(139 1 #liftFirstValue: 8550404 false) 
	#(139 1 #liftFirstValue: 8550409 false) 
	#(133 2 #reduceActionFor_testlist_expression__variable__type_annotation_______assign__1: 8052737 false) 
	#(139 1 #liftFirstValue: 8550410 false) 
	#(139 1 #liftFirstValue: 8550408 false) 
	#(139 1 #liftFirstValue: 8550407 false) 
	#(130 2 #reduceActionForstatement_with_separator1: 7805953 false) 
	#(130 2 #reduceActionForfile_input2: 7805955 false) 
	#(109 2 #reduceActionForsingle_input2: 6061059 false) 
	#(192 1 #reduceActionForcomp_op7: 14104583 false) 
	#(192 1 #reduceActionForcomp_op7: 14104577 false) 
	#(192 1 #reduceActionForcomp_op7: 14104581 false) 
	#(192 1 #reduceActionForcomp_op7: 14104582 false) 
	#(192 1 #reduceActionForcomp_op7: 14104579 false) 
	#(192 1 #reduceActionForcomp_op7: 14104578 false) 
	#(192 1 #reduceActionForcomp_op7: 14104580 false) 
	#(192 1 #reduceActionForcomp_op7: 14104584 false) 
	#(192 1 #reduceActionForcomp_op7: 14104586 false) 
	#(205 2 #reduceActionForstrings1: 16940033 false) 
	#(136 2 #reduceActionFortestlist_expression3: 8337411 false) 
	#(138 1 #reduceActionFor______commaToken__testlistItem__expression___1: 8403969 false) 
	#(110 2 #reduceActionForeval_input1: 6174721 false) 
	#(227 1 #liftFirstValue: 18667522 false) 
	#(231 2 #reduceActionFortestlist1: 19015681 false) 
	#(203 3 #reduceActionForatom9: 15974409 false) 
	#(257 2 #reduceActionFortestlist11: 21660673 false) 
	#(259 2 #reduceActionFor_test__expression_______commaToken___2: 21672962 false) 
	#(116 0 #nil 6677505 false) 
	#(226 2 #reduceActionFortestlist1: 18588674 false) 
	#(154 2 #reduceActionFordecorators1: 10032130 false) 
	#(153 2 #reduceActionFordotopt_dotted_name3: 9995267 false) 
	#(122 2 #reduceActionForlist_parameter2: 7271426 false) 
	#(121 2 #reduceActionForkeyword_parameter1: 7188481 false) 
	#(119 2 #reduceActionFortestlist1: 6891524 false) 
	#(119 2 #reduceActionFortestlist1: 6891525 false) 
	#(124 2 #reduceActionForparameter2: 7402498 false) 
	#(124 2 #reduceActionForparameter3: 7402499 false) 
	#(148 3 #reduceActionForraise_stmt3: 9373699 false) 
	#(182 1 #reduceActionFordecorators2: 13100033 false) 
	#(260 3 #reduceActionForyield_expr2: 21841922 false) 
	#(204 2 #reduceActionFortype_annotation1: 16876545 false) 
	#(203 3 #reduceActionForatom3: 15974403 false) 
	#(236 2 #reduceActionForcomprehension1: 19338241 false) 
	#(203 3 #reduceActionForatom2: 15974402 false) 
	#(203 3 #reduceActionForatom5: 15974405 false) 
	#(220 2 #reduceActionForcomprehension1: 18033665 false) 
	#(242 2 #reduceActionFortestlistItem2: 19758081 false) 
	#(203 3 #reduceActionForatom6: 15974406 false) 
	#(203 3 #reduceActionForatom7: 15974407 false) 
	#(132 3 #reduceActionForexpr_stmt3: 7977987 false) 
	#(133 3 #reduceActionFor_testlist_expression__variable__type_annotation_______assign__2: 8052738 false) 
	#(130 3 #reduceActionForstatement_with_separator1: 7805954 false) 
	#(188 3 #reduceActionForor_test2: 13729794 false) 
	#(189 3 #reduceActionForor_test2: 13826050 false) 
	#(192 2 #reduceActionFortype_annotation1: 14104587 false) 
	#(192 2 #reduceActionForcomp_op9: 14104585 false) 
	#(191 3 #reduceActionForcomparison2: 14014466 false) 
	#(193 3 #reduceActionForor_test2: 14332930 false) 
	#(194 3 #reduceActionForor_test2: 14423042 false) 
	#(195 3 #reduceActionForor_test2: 14521346 false) 
	#(197 3 #reduceActionForor_test2: 14809090 false) 
	#(197 3 #reduceActionForor_test2: 14809091 false) 
	#(196 3 #reduceActionForor_test2: 14623746 false) 
	#(196 3 #reduceActionForor_test2: 14623747 false) 
	#(198 3 #reduceActionForor_test2: 14976004 false) 
	#(198 3 #reduceActionForor_test2: 14976002 false) 
	#(198 3 #reduceActionForor_test2: 14976003 false) 
	#(198 3 #reduceActionForor_test2: 14976005 false) 
	#(200 3 #reduceActionForor_test2: 15464450 false) 
	#(202 3 #reduceActionFortrailers5: 15643653 false) 
	#(202 3 #reduceActionFortrailers2: 15643650 false) 
	#(250 1 #liftFirstValue: 20838401 false) 
	#(250 1 #liftFirstValue: 20838402 false) 
	#(225 0 #reduceActionForsliceop1: 18541569 false) 
	#(224 1 #liftFirstValue: 18380801 false) 
	#(208 0 #reduceActionFor_test__expression_______commaToken___1: 17122305 false) 
	#(210 0 #reduceActionFor_test__expression_______commaToken___1: 17266689 false) 
	#(212 0 #reduceActionFor_test__expression_______commaToken___1: 17419265 false) 
	#(214 0 #reduceActionFor_test__expression_______commaToken___1: 17580033 false) 
	#(229 3 #reduceActionForassignment_expression1: 18859009 false) 
	#(137 2 #reduceActionFortype_annotation1: 8403969 false) 
	#(138 2 #reduceActionFor_test__expression_______commaToken___2: 8403970 false) 
	#(136 3 #reduceActionFortestlist_expression2: 8337410 false) 
	#(140 3 #reduceActionForprint_stmt1: 8744961 false) 
	#(111 2 #liftFirstValue: 6197250 false) 
	#(231 3 #reduceActionFortestlist2: 19015682 false) 
	#(161 3 #reduceActionFortrailers5: 10682369 false) 
	#(113 2 #reduceActionForparen_arglist_opt2: 6335490 false) 
	#(112 4 #reduceActionFordecorator1: 6221825 false) 
	#(258 2 #reduceActionFortype_annotation1: 21672961 false) 
	#(165 3 #reduceActionFortest_test_opt2: 11106306 false) 
	#(243 4 #reduceActionForclassdef1: 19831809 false) 
	#(247 1 #liftFirstValue: 20206593 false) 
	#(246 0 #reduceActionFor_test__expression_______commaToken___1: 20145153 false) 
	#(226 3 #reduceActionForexprlist1: 18588673 false) 
	#(164 4 #reduceActionForexec_stmt2: 10956802 false) 
	#(155 1 #reduceActionForimport_names_star1: 10097665 false) 
	#(156 1 #reduceActionForimport_as_name1: 10223617 false) 
	#(152 4 #reduceActionForimport_from1: 9869313 false) 
	#(159 1 #reduceActionFornamelist2: 10483714 false) 
	#(155 1 #reduceActionForimport_names_star3: 10097667 false) 
	#(163 3 #reduceActionFornamelist1: 10873857 false) 
	#(170 0 #reduceActionForelif__elsif__1: 11572225 false) 
	#(160 3 #reduceActionFordotted_as_names1: 10593281 false) 
	#(157 3 #reduceActionFordotted_as_name2: 10338306 false) 
	#(122 3 #reduceActionForlist_parameter3: 7271427 false) 
	#(121 3 #reduceActionForkeyword_parameter2: 7188482 false) 
	#(127 2 #reduceActionFortestlist1: 7618562 false) 
	#(126 3 #reduceActionForfpdef2: 7523330 false) 
	#(222 4 #reduceActionForlambdef1: 18166785 false) 
	#(120 2 #reduceActionFor_test__expression_______commaToken___2: 6988802 false) 
	#(119 3 #reduceActionFortestlist2: 6891522 false) 
	#(119 3 #reduceActionForexprlist1: 6891521 false) 
	#(125 2 #reduceActionForinit1: 7475201 false) 
	#(124 3 #reduceActionForparameter4: 7402500 false) 
	#(148 4 #reduceActionForraise_stmt4: 9373700 false) 
	#(149 2 #reduceActionFortype_annotation1: 9696257 false) 
	#(181 1 #reduceActionForexcept_clause1: 12787713 false) 
	#(175 4 #reduceActionFortry_stmt3: 12035075 false) 
	#(172 0 #nil 11701249 false) 
	#(179 3 #reduceActionFornamelist1: 12519425 false) 
	#(178 4 #reduceActionForwith_stmt1: 12431361 false) 
	#(180 3 #reduceActionForwith_item2: 12610562 false) 
	#(241 3 #reduceActionFordictionary_item1: 19671041 false) 
	#(237 3 #reduceActionFortestlist2: 19406850 false) 
	#(239 2 #reduceActionFor_test__expression_______commaToken___2: 19504130 false) 
	#(249 0 #reduceActionFormore_args1: 20517889 false) 
	#(202 4 #reduceActionFortrailers3: 15643651 false) 
	#(248 2 #reduceActionForarglist2: 20316162 false) 
	#(225 1 #reduceActionForcomp_op7: 18541570 false) 
	#(224 2 #reduceActionForsubscript2: 18380802 false) 
	#(202 4 #reduceActionFortrailers4: 15643652 false) 
	#(223 2 #reduceActionFortestlist1: 18271234 false) 
	#(140 4 #reduceActionForprint_stmt2: 8744962 false) 
	#(113 3 #reduceActionForparen_arglist_opt3: 6335491 false) 
	#(117 3 #reduceActionForparameters1: 6775809 false) 
	#(116 2 #reduceActionForreturn_annotation_opt2: 6677506 false) 
	#(158 2 #reduceActionFortestlist11: 10432513 false) 
	#(127 3 #reduceActionForexprlist1: 7618561 false) 
	#(123 2 #reduceActionFortype_annotation1: 7349249 false) 
	#(183 1 #reduceActionFordecorators2: 13164546 false) 
	#(181 2 #reduceActionForexcept_clause2: 12787714 false) 
	#(175 5 #reduceActionFortry_stmt1: 12035073 false) 
	#(173 5 #reduceActionForwhile_stmt1: 11770881 false) 
	#(240 4 #reduceActionForcomprehension_dictionary_item1: 19567617 false) 
	#(238 2 #reduceActionFortype_annotation1: 19504129 false) 
	#(243 5 #reduceActionForclassdef2: 19831810 false) 
	#(228 5 #reduceActionFortest2: 18703362 false) 
	#(248 3 #reduceActionForarglist4: 20316164 false) 
	#(250 3 #reduceActionForargument3: 20838403 false) 
	#(248 3 #reduceActionForexprlist1: 20316161 false) 
	#(225 2 #reduceActionFortype_annotation1: 18541571 false) 
	#(224 3 #reduceActionForsubscript3: 18380803 false) 
	#(223 3 #reduceActionForexprlist1: 18271233 false) 
	#(224 3 #reduceActionForsubscript4: 18380804 false) 
	#(206 5 #reduceActionForstring3: 17001475 false) 
	#(208 2 #reduceActionFor_test__expression_______commaToken___2: 17122306 false) 
	#(206 5 #reduceActionForstring3: 17001476 false) 
	#(210 2 #reduceActionFor_test__expression_______commaToken___2: 17266690 false) 
	#(206 5 #reduceActionForstring3: 17001477 false) 
	#(212 2 #reduceActionFor_test__expression_______commaToken___2: 17419266 false) 
	#(206 5 #reduceActionForstring3: 17001478 false) 
	#(214 2 #reduceActionFor_test__expression_______commaToken___2: 17580034 false) 
	#(247 3 #reduceActionForclassListItem2: 20206594 false) 
	#(243 6 #reduceActionForclassdef3: 19831811 false) 
	#(244 3 #reduceActionFortestlist2: 20099073 false) 
	#(246 2 #reduceActionFor_test__expression_______commaToken___2: 20145154 false) 
	#(115 6 #reduceActionForfuncdef1: 6496257 false) 
	#(156 3 #reduceActionForimport_as_name2: 10223618 false) 
	#(155 3 #reduceActionForimport_names_star2: 10097666 false) 
	#(159 3 #reduceActionFornamelist1: 10483713 false) 
	#(170 2 #reduceActionFordecorators1: 11572226 false) 
	#(169 6 #reduceActionForif_stmt1: 11505665 false) 
	#(119 5 #reduceActionForvarargslist3: 6891523 false) 
	#(148 6 #reduceActionForraise_stmt5: 9373701 false) 
	#(183 2 #reduceActionFordecorators1: 13164545 false) 
	#(182 4 #reduceActionForsuite2: 13100034 false) 
	#(176 3 #reduceActionForfinally1: 12236801 false) 
	#(175 6 #reduceActionFortry_stmt2: 12035074 false) 
	#(177 3 #reduceActionForexcept_list2: 12304386 false) 
	#(255 4 #reduceActionForcomp_for1: 21303297 false) 
	#(252 4 #reduceActionForlist_for1: 20963329 false) 
	#(184 1 #reduceActionForstring1: 13403137 false) 
	#(186 1 #liftFirstValue: 13579266 false) 
	#(186 1 #liftFirstValue: 13579265 false) 
	#(248 4 #reduceActionForarglist3: 20316163 false) 
	#(224 4 #reduceActionForsubscript5: 18380805 false) 
	#(207 2 #reduceActionFortype_annotation1: 17122305 false) 
	#(209 2 #reduceActionFortype_annotation1: 17266689 false) 
	#(211 2 #reduceActionFortype_annotation1: 17419265 false) 
	#(213 2 #reduceActionFortype_annotation1: 17580033 false) 
	#(115 7 #reduceActionForfuncdef2: 6496258 false) 
	#(243 7 #reduceActionForclassdef4: 19831812 false) 
	#(245 2 #reduceActionFortype_annotation1: 20145153 false) 
	#(174 7 #reduceActionForfor_stmt1: 11885569 false) 
	#(181 4 #reduceActionForexcept_clause4: 12787716 false) 
	#(181 4 #reduceActionForexcept_clause3: 12787715 false) 
	#(172 3 #reduceActionForelse_opt2: 11701250 false) 
	#(177 4 #reduceActionForexcept_list1: 12304385 false) 
	#(255 5 #reduceActionForcomp_for2: 21303298 false) 
	#(254 1 #liftFirstValue: 21266433 false) 
	#(254 1 #liftFirstValue: 21266434 false) 
	#(252 5 #reduceActionForlist_for2: 20963330 false) 
	#(251 1 #liftFirstValue: 20927489 false) 
	#(251 1 #liftFirstValue: 20927490 false) 
	#(243 7 #reduceActionForclassdef5: 19831813 false) 
	#(115 7 #reduceActionForfuncdef3: 6496259 false) 
	#(249 3 #reduceActionFormore_args3: 20517891 false) 
	#(249 3 #reduceActionFormore_args2: 20517890 false) 
	#(249 3 #reduceActionFormore_args4: 20517892 false) 
	#(256 2 #reduceActionForcomp_if1: 21511169 false) 
	#(253 2 #reduceActionForlist_if1: 21135361 false) 
	#(185 1 #reduceActionFornamelist2: 13498370 false) 
	#(115 8 #reduceActionForfuncdef4: 6496260 false) 
	#(243 8 #reduceActionForclassdef6: 19831814 false) 
	#(171 4 #reduceActionForelif1: 11622401 false) 
	#(256 3 #reduceActionForcomp_if2: 21511170 false) 
	#(187 4 #reduceActionForlambdef1: 13617153 false) 
	#(253 3 #reduceActionForlist_if2: 21135362 false) 
	#(184 4 #reduceActionFortestlist_safe2: 13403138 false) 
	#(185 3 #reduceActionFornamelist1: 13498369 false)
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
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"metaclass"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<ellipsis>' '<period>' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' '<patternToken>' 'B e g i n' 'file_input' 'single_input' 'eval_input' '<NEWLINE>*' 'decorator' 'paren_arglist_opt' 'decorators' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'varArg*' 'keyword_parameter' 'list_parameter' 'varArg' 'parameter' 'init' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'statement_with_separator' 'semicolon_opt' 'expr_stmt' '(testlist_expression ''variable'' type_annotation? "=" ''assign'')' '(testlist_expression ''variable'' type_annotation? "=" ''assign'')+' 'yield_or_testlist' 'testlist_expression' '("," ''commaToken'' testlistItem ''expression'')' '("," ''commaToken'' testlistItem ''expression'')+' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' '<period> ''periodToken''+' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elif ''elsif''*' 'elif' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'list_comprehension' 'testlist_comp' 'lambdef' 'subscriptlist' 'subscript' 'sliceop' 'exprlist' 'comma_opt' 'test' 'assignment_expression' 'Symbol' 'testlist' 'testlistItem' 'testlist_opt' 'dictorsetmaker' 'set_items' 'comprehension' 'dictionary_items' '("," ''commaToken'' dictionary_item ''expression'')' '("," ''commaToken'' dictionary_item ''expression'')*' 'comprehension_dictionary_item' 'dictionary_item' 'dictSpread' 'classdef' 'superclasslist' '("," ''commaToken'' classListItem ''superClass'')' '("," ''commaToken'' classListItem ''superClass'')*' 'classListItem' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' '(test ''expression'' "," ''commaToken'')' '(test ''expression'' "," ''commaToken'')*' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileNode #PyFileNode #PyFileNode #PyEvalNode nil #PyDecoratorExpressionNode #OrderedCollection #OrderedCollection #PyFunctionDefinitionNode #PyReturnTypeAnnotationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyKeywordParameterNode #PyListParameterNode #OrderedCollection #PyParameterNode #PyInitNode #PyRootNode #OrderedCollection #PyStatementNode #PyStatementNode #PyStatementNode #SmaCCToken #PyStatementNode #OrderedCollection #OrderedCollection #PyExpressionNode #PyExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #PyPrintStatementNode #PyDelStatementNode #PyPassStatementNode #PyStatementNode #PyBreakStatementNode #PyContinueStatementNode #PyReturnStatementNode #PyYieldStatementNode #PyRaiseStatementNode #OrderedCollection #PyImportStatementNode #PyImportStatementNode #PyImportStatementNode #PyRootNode #OrderedCollection #OrderedCollection #PyNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyGlobalStatementNode #OrderedCollection #PyExecStatementNode #OrderedCollection #PyAssertStatementNode #PyStatementNode #PyStatementNode #PyIfStatementNode #OrderedCollection #PyElifNode #PyElseNode #PyWhileStatementNode #PyForStatementNode #PyTryStatementNode #PyFinallyNode #OrderedCollection #PyWithStatementNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #Object #OrderedCollection #OrderedCollection #OrderedCollection #PyExpressionNode #PyLambdaExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #PyExpressionNode #OrderedCollection #PyStringNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #OrderedCollection #PyComprehensionNode #OrderedCollection #PyLambdaExpressionNode #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #SmaCCToken #PyExpressionNode #PyAssignmentExpressionNode #PyVariableExpressionNode #OrderedCollection #PyExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyComprehensionDictionaryItemNode #PyRootNode #PySpreadExpressionNode #PyClassDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyComprehensionForNode #PyComprehensionIfNode #OrderedCollection #OrderedCollection #OrderedCollection #PyYieldExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 6 0 6 0 10 0 6 0 13 0 6 0 34 0 6 0 37 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 51 0 6 0 53 0 6 0 54 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 60 0 6 0 62 0 6 0 64 0 6 0 66 0 6 0 67 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 74 0 6 0 75 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 92 0 6 0 99 0 6 0 100 0 6 0 102 0 6 0 104 0 25 0 108 0 6 1 7 0 6 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 0 181 0 109 0 185 0 112 0 189 0 114 1 29 0 115 0 197 0 129 0 197 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 1 29 0 168 1 29 0 169 1 29 0 173 1 29 0 174 1 29 0 175 1 29 0 178 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 29 0 243 1 161 1 4 1 165 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 169 0 110 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 1 173 0 231 1 177 0 232] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 181 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 181 0 140 1 181 0 141 1 181 0 142 1 181 0 143 1 181 0 144 1 181 0 145 1 181 0 146 1 181 0 147 1 181 0 148 1 181 0 150 1 181 0 151 1 181 0 152 1 181 0 162 1 181 0 164 1 181 0 166 1 181 0 167 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 185 0 222 1 185 0 228 1 185 0 229 1 149 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 1 189 0 99 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 1 193 0 115 1 193 0 128 1 193 0 129 1 193 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 1 193 0 168 1 193 0 169 1 193 0 173 1 193 0 174 1 193 0 175 1 193 0 178 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 193 0 243 1 161 1 4 1 165 1 7 0 0 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 205 0 222 1 205 0 228 1 205 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 209 0 199 1 209 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 217 0 199 1 217 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 1 221 0 77 1 225 0 161 1 225 0 230] 
#[1 0 26 0 10 0 26 0 13 0 26 0 37 0 26 0 42 0 26 0 60 0 26 0 62 0 26 0 74 0 26 0 75 0 26 0 77 0 26 0 78 0 26 0 79 0 26 0 80 0 26 0 83 0 26 0 86 0 26 0 89 0 26 0 92 0 26 0 100 0 26 0 102 0 26 0 104 1 233 1 1 1 237 1 3] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 241 0 165 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 245 0 222 1 245 0 228 1 245 0 229 1 149 0 230] 
#[0 1 249 0 46] 
#[1 0 45 0 37 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 253 0 202 1 253 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 253 0 230] 
#[0 0 30 0 22 0 99 1 8] 
#[0 2 1 0 77] 
#[0 0 34 0 22 0 99 1 8] 
#[0 2 5 0 77] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 13 0 226 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 17 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 21 0 226 1 105 0 230] 
#[1 2 25 0 76 1 221 0 77 2 29 0 153 2 33 0 154 2 37 0 161 2 37 0 230] 
#[1 2 41 0 77 2 45 0 163] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 49 0 222 2 49 0 228 2 49 0 229 1 149 0 230] 
#[1 1 221 0 77 2 53 0 157 2 57 0 160 2 61 0 161 2 61 0 230] 
#[1 2 65 0 6 2 69 0 7 0 38 0 20 1 221 0 77 2 73 0 100 2 77 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 105 0 190 2 105 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 0 42 0 22 0 99 1 8] 
#[1 0 33 0 10 0 37 0 13 0 46 0 22 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 46 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 109 0 222 2 109 0 228 2 109 0 229 1 149 0 230 0 46 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 2 113 0 231 1 177 0 232 2 117 0 233 0 50 1 8] 
#[0 2 121 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 125 0 222 2 125 0 228 2 125 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 129 0 179 2 133 0 180 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 137 0 222 2 137 0 228 2 137 0 229 1 149 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 0 45 0 37 0 57 0 42 2 141 0 54 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 50 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 2 113 0 231 1 177 0 232 2 145 0 233 0 50 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 149 0 199 2 149 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 58 0 1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 16 0 58 0 17 0 58 0 18 0 58 0 19 0 7 0 20 0 58 0 21 0 58 0 22 0 58 0 23 0 58 0 24 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 28 0 58 0 29 0 58 0 30 0 58 0 31 0 58 0 32 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 38 0 58 0 39 0 58 0 49 0 58 0 53 0 58 0 54 0 58 0 56 0 58 0 58 0 58 0 59 0 58 0 62 0 58 0 63 0 58 0 72 0 58 0 73 0 58 0 76 0 58 0 81 0 58 0 82 0 58 0 84 0 58 0 85 0 58 0 87 0 58 0 88 0 58 0 90 0 58 0 91 0 58 0 99 0 58 0 100 0 58 0 101 0 58 0 102 0 58 0 103 0 58 0 105 2 157 0 204 0 58 1 8] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 74 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 161 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 165 0 221 2 169 0 222 2 169 0 228 2 169 0 229 1 149 0 230 2 173 0 231 1 177 0 232 2 177 0 236 2 181 1 4] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 185 0 103 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 189 0 219 2 193 0 220 2 197 0 222 2 197 0 228 2 197 0 229 1 149 0 230 2 201 0 231 1 177 0 232] 
#[1 0 29 0 6 2 205 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 209 0 105 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 213 0 222 2 213 0 228 2 213 0 229 1 149 0 230 2 217 0 231 1 177 0 232 2 221 0 235 2 225 0 236 2 229 0 237 2 233 0 240 2 237 0 241 2 237 0 242] 
#[0 0 0 1 8] 
#[0 0 78 0 34 0 41 0 44 0 46] 
#[1 0 41 0 34 2 245 0 41 2 249 0 44 2 253 0 46 3 1 0 112] 
#[0 0 82 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 86 1 8] 
#[0 0 90 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 94 0 22 0 99 1 8] 
#[0 0 98 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 3 5 0 133 3 9 0 135 3 13 0 136 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 3 9 1 4] 
#[1 3 73 0 3 3 73 0 5 3 73 0 8 3 73 0 9 3 73 0 11 3 73 0 14 3 73 0 18 3 73 0 19 2 153 0 20 0 102 0 22 3 73 0 25 3 57 0 28 3 73 0 33 3 73 0 36 3 73 0 73 0 102 0 99 3 73 0 139 3 77 0 204 0 102 1 8] 
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
#[0 0 162 0 22 0 99 1 8] 
#[1 3 81 0 22 3 85 0 99] 
#[0 3 89 0 99] 
#[0 0 166 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 170 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 174 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 178 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 0 182 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 22 0 186 0 25 0 186 0 28 0 186 0 33 0 186 0 36 0 186 0 37 0 186 0 39 0 186 0 53 0 186 0 54 3 93 0 56 0 186 0 73 0 186 0 81 0 186 0 82 0 186 0 84 0 186 0 85 0 186 0 87 0 186 0 88 0 186 0 90 0 186 0 91 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 0 186 1 8] 
#[1 0 190 0 3 0 190 0 5 0 190 0 8 0 190 0 9 0 190 0 11 0 190 0 12 0 190 0 14 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 22 0 190 0 25 0 190 0 28 0 190 0 33 0 190 0 36 0 190 0 37 0 190 0 39 0 190 0 49 0 190 0 53 0 190 0 54 0 190 0 56 3 97 0 63 0 190 0 73 0 190 0 81 0 190 0 82 0 190 0 84 0 190 0 85 0 190 0 87 0 190 0 88 0 190 0 90 0 190 0 91 0 190 0 99 0 190 0 101 0 190 0 103 0 190 0 105 0 190 1 8] 
#[1 0 194 0 3 0 194 0 5 0 194 0 8 0 194 0 9 0 194 0 11 0 194 0 12 0 194 0 14 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 22 0 194 0 25 0 194 0 28 0 194 0 33 0 194 0 36 0 194 0 37 3 101 0 38 0 194 0 39 0 194 0 49 0 194 0 53 0 194 0 54 0 194 0 56 0 194 0 63 0 194 0 73 0 194 0 81 0 194 0 82 0 194 0 84 0 194 0 85 0 194 0 87 0 194 0 88 0 194 0 90 0 194 0 91 0 194 0 99 0 194 0 101 0 194 0 103 0 194 0 105 0 194 1 8] 
#[0 0 198 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 3 105 0 1 0 202 0 3 0 202 0 5 0 202 0 8 0 202 0 9 0 202 0 11 0 202 0 12 0 202 0 14 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 22 3 109 0 23 0 202 0 25 3 113 0 26 3 117 0 27 0 202 0 28 3 121 0 29 3 125 0 30 3 129 0 31 0 202 0 33 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 49 0 202 0 53 0 202 0 54 0 202 0 56 3 133 0 58 3 137 0 59 3 141 0 62 0 202 0 63 0 202 0 73 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 87 0 202 0 88 0 202 0 90 0 202 0 91 0 202 0 99 0 202 0 101 0 202 0 103 0 202 0 105 3 145 0 192 0 202 1 8] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 22 0 206 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 49 0 206 0 53 0 206 0 54 0 206 0 56 0 206 0 58 0 206 0 59 0 206 0 62 0 206 0 63 0 11 0 72 0 206 0 73 0 206 0 76 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 87 0 206 0 88 0 206 0 90 0 206 0 91 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 102 0 206 0 103 0 206 0 105 0 206 1 8] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 22 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 15 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 49 0 210 0 53 0 210 0 54 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 62 0 210 0 63 0 210 0 72 0 210 0 73 0 210 0 76 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 91 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 102 0 210 0 103 0 210 0 105 0 210 1 8] 
#[1 0 214 0 1 0 214 0 2 0 214 0 3 0 19 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 22 0 214 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 49 0 214 0 53 0 214 0 54 0 214 0 56 0 214 0 58 0 214 0 59 0 214 0 62 0 214 0 63 0 214 0 72 0 214 0 73 0 214 0 76 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 87 0 214 0 88 0 214 0 90 0 214 0 91 0 214 0 99 0 214 0 100 0 214 0 101 0 214 0 102 0 214 0 103 0 214 0 105 0 214 1 8] 
#[1 0 218 0 1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 23 0 10 0 218 0 11 0 218 0 12 0 27 0 13 0 218 0 14 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 22 0 218 0 23 0 31 0 24 0 218 0 25 0 218 0 26 0 218 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 35 0 32 0 218 0 33 0 218 0 35 0 218 0 36 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 49 0 218 0 53 0 218 0 54 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 62 0 218 0 63 0 218 0 72 0 218 0 73 0 218 0 76 0 218 0 81 0 218 0 82 0 218 0 84 0 218 0 85 0 218 0 87 0 218 0 88 0 218 0 90 0 218 0 91 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 103 0 218 0 105 0 218 1 8] 
#[1 0 222 0 1 0 39 0 2 0 222 0 3 0 222 0 4 0 222 0 5 0 43 0 6 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 10 0 222 0 11 0 222 0 12 0 222 0 13 0 222 0 14 0 47 0 16 0 51 0 17 0 222 0 18 0 222 0 19 0 222 0 20 0 222 0 22 0 222 0 23 0 222 0 24 0 222 0 25 0 222 0 26 0 222 0 27 0 222 0 28 0 222 0 29 0 222 0 30 0 222 0 31 0 222 0 32 0 222 0 33 0 222 0 35 0 222 0 36 0 222 0 37 0 222 0 38 0 222 0 39 0 222 0 49 0 222 0 53 0 222 0 54 0 222 0 56 0 222 0 58 0 222 0 59 0 222 0 62 0 222 0 63 0 222 0 72 0 222 0 73 0 222 0 76 0 222 0 81 0 222 0 82 0 222 0 84 0 222 0 85 0 222 0 87 0 222 0 88 0 222 0 90 0 222 0 91 0 222 0 99 0 222 0 100 0 222 0 101 0 222 0 102 0 222 0 103 0 222 0 105 0 222 1 8] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 234 0 1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 55 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 22 0 234 0 23 0 234 0 24 0 234 0 25 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 49 0 234 0 53 0 234 0 54 0 234 0 56 0 234 0 58 0 234 0 59 0 234 0 62 0 234 0 63 0 234 0 72 0 234 0 73 0 234 0 76 0 234 0 81 0 234 0 82 0 234 0 84 0 234 0 85 0 234 0 87 0 234 0 88 0 234 0 90 0 234 0 91 0 234 0 99 0 234 0 100 0 234 0 101 0 234 0 102 0 234 0 103 0 234 0 105 0 234 1 8] 
#[1 0 238 0 1 0 238 0 2 0 238 0 3 0 238 0 4 0 238 0 5 0 238 0 6 0 238 0 7 0 238 0 8 0 238 0 9 0 238 0 10 0 238 0 11 0 238 0 12 0 238 0 13 0 238 0 14 0 238 0 16 0 238 0 17 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 22 0 238 0 23 0 238 0 24 0 238 0 25 0 238 0 26 0 238 0 27 0 238 0 28 0 238 0 29 0 238 0 30 0 238 0 31 0 238 0 32 0 238 0 33 0 238 0 35 0 238 0 36 0 238 0 37 0 238 0 38 0 238 0 39 0 238 0 49 0 238 0 53 0 238 0 54 0 238 0 56 0 238 0 58 0 238 0 59 0 238 0 62 0 238 0 63 0 238 0 72 0 238 0 73 0 59 0 76 0 238 0 81 0 238 0 82 0 238 0 84 0 238 0 85 0 238 0 87 0 238 0 88 0 238 0 90 0 238 0 91 0 238 0 99 0 63 0 100 0 238 0 101 0 67 0 102 0 238 0 103 0 238 0 105 0 238 1 8] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 246 0 1 0 246 0 2 0 246 0 3 0 246 0 4 0 246 0 5 0 246 0 6 0 246 0 7 0 246 0 8 0 246 0 9 0 246 0 10 0 246 0 11 0 246 0 12 0 246 0 13 0 246 0 14 0 246 0 16 0 246 0 17 0 246 0 18 0 246 0 19 0 246 0 20 0 246 0 22 0 246 0 23 0 246 0 24 0 246 0 25 0 246 0 26 0 246 0 27 0 246 0 28 0 246 0 29 0 246 0 30 0 246 0 31 0 246 0 32 0 246 0 33 0 246 0 35 0 246 0 36 0 246 0 37 0 246 0 38 0 246 0 39 0 246 0 49 0 246 0 53 0 246 0 54 0 246 0 56 0 246 0 58 0 246 0 59 0 246 0 62 0 246 0 63 0 246 0 72 0 246 0 73 0 246 0 76 0 153 0 78 0 157 0 79 0 10 0 80 0 246 0 81 0 246 0 82 0 14 0 83 0 246 0 84 0 246 0 85 0 18 0 86 0 246 0 87 0 246 0 88 0 22 0 89 0 246 0 90 0 246 0 91 0 246 0 99 0 246 0 100 0 246 0 101 0 246 0 102 0 246 0 103 0 246 0 105 3 209 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 0 246 1 8] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 213 0 80] 
#[0 3 217 0 83] 
#[0 3 221 0 86] 
#[0 3 225 0 89] 
#[0 0 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 1 2 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 1 6 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 1 10 0 1 1 10 0 2 1 10 0 3 1 10 0 4 1 10 0 5 1 10 0 6 1 10 0 7 1 10 0 8 1 10 0 9 1 10 0 10 1 10 0 11 1 10 0 12 1 10 0 13 1 10 0 14 1 10 0 16 1 10 0 17 1 10 0 18 1 10 0 19 1 10 0 20 3 229 0 21 1 10 0 22 1 10 0 23 1 10 0 24 1 10 0 25 1 10 0 26 1 10 0 27 1 10 0 28 1 10 0 29 1 10 0 30 1 10 0 31 1 10 0 32 1 10 0 33 1 10 0 35 1 10 0 36 1 10 0 37 1 10 0 38 1 10 0 39 1 10 0 53 1 10 0 54 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 62 1 10 0 63 1 10 0 72 1 10 0 73 1 10 0 76 1 10 0 81 1 10 0 82 1 10 0 84 1 10 0 85 1 10 0 87 1 10 0 88 1 10 0 90 1 10 0 91 1 10 0 99 1 10 0 100 1 10 0 101 1 10 0 102 1 10 0 103 1 10 0 105 1 10 1 8] 
#[1 1 14 0 3 1 14 0 5 1 14 0 8 1 14 0 9 1 14 0 11 3 233 0 12 1 14 0 14 1 14 0 18 1 14 0 19 1 14 0 20 1 14 0 22 1 14 0 25 1 14 0 28 1 14 0 33 1 14 0 36 1 14 0 73 1 14 0 99 3 237 0 137 3 241 0 138 1 14 1 8] 
#[0 1 18 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 22 0 22 0 99 1 8] 
#[0 3 245 0 65] 
#[0 0 0 1 8] 
#[1 1 26 0 99 3 249 0 111 1 26 1 8] 
#[1 3 253 0 12 1 30 0 22 1 30 0 99 1 30 0 101 1 30 0 103 1 30 0 105 3 237 0 137 4 1 0 138 4 5 0 227 1 30 1 8] 
#[0 0 0 1 8] 
#[0 0 0 1 8] 
#[0 1 34 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 8] 
#[0 1 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 7 1 8] 
#[0 1 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 46 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 1 50 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 0 58 0 12 0 20 0 22 0 28 0 39 0 57 0 76 0 99 0 100 0 101 1 8] 
#[1 4 9 0 76 1 62 0 99 4 13 0 100 4 17 0 113] 
#[0 1 66 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 8] 
#[0 4 21 0 37] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 4 25 0 222 4 25 0 228 4 25 0 229 1 149 0 230 4 29 1 2] 
#[0 1 70 0 22 0 99 1 8] 
#[1 4 33 0 12 1 74 0 22 1 74 0 99 1 74 1 8] 
#[0 4 37 0 77] 
#[1 1 78 0 1 1 78 0 2 1 78 0 3 1 78 0 4 1 78 0 5 1 78 0 6 1 78 0 7 1 78 0 8 1 78 0 9 1 78 0 10 1 78 0 11 1 78 0 12 1 78 0 13 1 78 0 14 1 78 0 16 1 78 0 17 1 78 0 18 1 78 0 19 1 78 0 20 1 78 0 22 1 78 0 23 1 78 0 24 1 78 0 25 1 78 0 26 1 78 0 27 1 78 0 28 1 78 0 29 1 78 0 30 1 78 0 31 1 78 0 32 1 78 0 33 1 78 0 35 1 78 0 36 1 78 0 37 1 78 0 38 1 78 0 39 1 78 0 49 1 78 0 53 1 78 0 54 1 78 0 56 1 78 0 58 1 78 0 59 1 78 0 62 1 78 0 63 1 78 0 72 1 78 0 73 0 71 0 76 1 78 0 81 1 78 0 82 1 78 0 84 1 78 0 85 1 78 0 87 1 78 0 88 1 78 0 90 1 78 0 91 1 78 0 99 0 75 0 100 1 78 0 101 0 79 0 102 1 78 0 103 1 78 0 105 1 78 1 8] 
#[1 4 41 0 20 4 45 0 100] 
#[1 4 49 0 100 4 53 0 117] 
#[1 4 57 0 12 1 30 0 22 1 30 0 58 1 30 0 99 4 61 0 227 1 30 1 8] 
#[0 1 82 0 22 0 99 1 8] 
#[1 1 86 0 22 4 65 0 58 1 86 0 99 1 86 1 8] 
#[0 4 69 0 58] 
#[0 1 90 0 57 0 76 0 77] 
#[0 4 73 0 57] 
#[1 1 94 0 57 4 77 0 76 1 221 0 77 4 81 0 161 4 81 0 230] 
#[1 1 98 0 57 4 9 0 76] 
#[0 1 102 0 12 0 22 0 99 1 8] 
#[1 4 85 0 12 1 106 0 22 1 106 0 99 1 106 1 8] 
#[0 4 89 0 20] 
#[0 1 110 0 12 0 22 0 99 1 8] 
#[1 4 93 0 12 1 114 0 22 1 114 0 99 1 114 1 8] 
#[1 1 118 0 12 1 118 0 22 4 97 0 39 4 9 0 76 1 118 0 99 1 118 1 8] 
#[1 1 122 0 12 1 122 0 20 1 221 0 77 1 122 0 101 4 101 0 230] 
#[1 1 221 0 77 4 105 0 230] 
#[1 1 221 0 77 2 73 0 100 4 109 0 126 4 113 0 127 4 109 0 230] 
#[0 4 117 0 20] 
#[0 1 126 0 20 0 101] 
#[1 4 125 0 12 1 30 0 20 1 30 0 101 4 125 0 227] 
#[1 1 130 0 12 1 130 0 20 1 130 0 101 4 129 0 120] 
#[1 4 133 0 12 1 30 0 20 1 30 0 101 4 137 0 227] 
#[1 1 134 0 12 0 83 0 20 4 141 0 28 1 134 0 101 4 145 0 125 4 149 0 204] 
#[0 1 138 0 12 0 20 0 28 0 101] 
#[0 1 142 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 4 153 0 12 1 146 0 22 4 157 0 54 1 146 0 99 4 161 0 149 1 146 1 8] 
#[0 1 150 0 22 0 99 0 101 1 8] 
#[0 1 154 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 4 173 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 4 177 0 20] 
#[1 4 181 0 12 4 185 0 20] 
#[0 1 158 0 12 0 20] 
#[1 1 162 0 12 1 162 0 20 4 189 0 39] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 50 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 2 113 0 231 1 177 0 232 4 193 0 233 0 50 1 8] 
#[0 1 166 0 22 0 99 0 101 1 8] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 4 197 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 201 0 101] 
#[1 1 2 0 12 4 205 0 53 1 2 0 101 4 209 0 255] 
#[0 1 182 0 101] 
#[0 1 186 0 101] 
#[0 4 213 0 101] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 217 0 103] 
#[0 1 194 0 103] 
#[1 1 2 0 12 4 221 0 53 1 2 0 103 4 225 0 252] 
#[0 1 198 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 4 229 0 222 4 229 0 228 4 229 0 229 1 149 0 230] 
#[0 1 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 1 2 0 12 4 233 0 20 4 205 0 53 1 2 0 105 4 209 0 255] 
#[0 1 206 0 105] 
#[0 4 237 0 105] 
#[0 1 210 0 105] 
#[0 4 241 0 105] 
#[0 1 214 0 105] 
#[1 1 218 0 12 1 218 0 105 4 245 0 239] 
#[0 1 222 0 12 0 105] 
#[0 4 249 0 46] 
#[0 4 253 0 77] 
#[0 5 1 0 77] 
#[0 1 226 0 34 0 41 0 44 0 46] 
#[0 1 230 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 234 0 22 0 99 1 8] 
#[1 2 153 0 20 1 238 0 22 3 57 0 28 1 238 0 99 3 77 0 204 1 238 1 8] 
#[0 1 242 0 22 0 99 1 8] 
#[0 1 246 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 250 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 254 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 2 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 6 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 10 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 14 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 18 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 22 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 26 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 30 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 34 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 38 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 5 0 135 5 5 0 136 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 5 5 1 4] 
#[0 5 13 0 28] 
#[1 2 42 0 6 2 42 0 10 2 42 0 13 2 42 0 34 2 42 0 37 2 42 0 40 2 42 0 41 2 42 0 42 2 42 0 43 2 42 0 44 2 42 0 45 2 42 0 46 2 42 0 47 2 42 0 48 2 42 0 49 2 42 0 50 2 42 0 51 2 42 0 52 2 42 0 53 2 42 0 54 2 42 0 55 2 42 0 56 2 42 0 57 2 42 0 60 2 42 0 62 2 42 0 64 2 42 0 66 2 42 0 67 2 42 0 68 2 42 0 69 2 42 0 70 2 42 0 71 2 42 0 74 2 42 0 75 2 42 0 77 2 42 0 78 2 42 0 79 2 42 0 80 2 42 0 83 2 42 0 86 2 42 0 89 2 42 0 92 0 87 0 99 2 42 0 100 2 42 0 102 2 42 0 104 2 42 1 5 2 42 1 7 2 42 1 8] 
#[0 2 46 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 2 50 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 21 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 25 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 29 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 2 54 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 58 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 62 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 66 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 70 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 74 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 78 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 82 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 2 86 0 10 2 86 0 13 2 86 0 37 2 86 0 42 5 33 0 62 2 86 0 74 2 86 0 75 2 86 0 77 2 86 0 78 2 86 0 79 2 86 0 80 2 86 0 83 2 86 0 86 2 86 0 89 2 86 0 92 2 86 0 100 2 86 0 102 2 86 0 104] 
#[0 5 37 0 58] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 41 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 45 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 49 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 53 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 57 0 198 5 57 0 199 5 57 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 61 0 198 5 61 0 199 5 61 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 65 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 69 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 73 0 199 5 73 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 77 0 199 5 77 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 81 0 199 5 81 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 85 0 199 5 85 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 5 89 0 199 5 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 5 93 0 77] 
#[1 5 97 0 6 5 101 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 105 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 109 0 222 5 109 0 228 5 109 0 229 1 149 0 230 5 121 0 236 5 117 0 248 5 121 0 250] 
#[1 0 33 0 10 0 37 0 13 5 125 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 137 0 222 5 129 0 223 5 133 0 224 5 137 0 228 5 137 0 229 1 149 0 230] 
#[0 2 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 141 0 222 5 141 0 228 5 141 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 145 0 222 5 145 0 228 5 145 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 149 0 222 5 149 0 228 5 149 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 153 0 222 5 153 0 228 5 153 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 157 0 222 5 157 0 228 5 157 0 229 1 149 0 230] 
#[1 2 94 0 3 2 94 0 5 0 29 0 6 2 94 0 8 2 94 0 9 0 33 0 10 2 94 0 11 0 37 0 13 2 94 0 14 2 94 0 18 2 94 0 19 2 94 0 20 2 94 0 22 2 94 0 25 2 94 0 28 2 94 0 33 2 94 0 36 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 2 94 0 73 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 94 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 161 0 222 5 161 0 228 5 161 0 229 1 149 0 230 5 161 0 232 2 94 1 8] 
#[0 2 98 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[1 1 30 0 3 1 30 0 5 1 30 0 8 1 30 0 9 1 30 0 11 3 253 0 12 1 30 0 14 1 30 0 18 1 30 0 19 1 30 0 20 1 30 0 22 1 30 0 25 1 30 0 28 1 30 0 33 1 30 0 36 1 30 0 73 1 30 0 99 5 165 0 137 5 169 0 227 1 30 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 50 0 22 5 173 0 32 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 50 0 99 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 2 113 0 231 1 177 0 232 5 177 0 233 0 50 1 8] 
#[1 5 181 0 99 2 102 1 8] 
#[1 2 106 0 3 2 106 0 5 0 29 0 6 2 106 0 8 2 106 0 9 0 33 0 10 2 106 0 11 0 37 0 13 2 106 0 14 2 106 0 18 2 106 0 19 2 106 0 20 2 106 0 22 2 106 0 25 2 106 0 28 2 106 0 33 2 106 0 36 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 2 106 0 73 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 106 0 99 0 169 0 100 2 106 0 101 0 173 0 102 2 106 0 103 0 177 0 104 2 106 0 105 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 161 0 222 5 161 0 228 5 161 0 229 1 149 0 230 5 161 0 232 2 106 1 8] 
#[1 3 253 0 12 1 30 0 22 1 30 0 99 1 30 0 101 1 30 0 103 1 30 0 105 5 165 0 137 5 185 0 227 1 30 1 8] 
#[0 2 110 0 22 0 99 0 101 0 103 0 105 1 8] 
#[0 5 189 0 77] 
#[1 5 97 0 6 5 101 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 193 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 109 0 222 5 109 0 228 5 109 0 229 1 149 0 230 5 121 0 236 5 197 0 248 5 121 0 250] 
#[0 5 201 0 99] 
#[0 2 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 5 205 0 12 2 118 0 37] 
#[0 2 122 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 209 0 222 5 209 0 228 5 209 0 229 1 149 0 230] 
#[1 4 49 0 100 5 213 0 117] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 5 217 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 221 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 5 225 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 237 0 222 5 237 0 228 5 237 0 229 1 149 0 230 5 233 0 244 5 237 0 247] 
#[1 2 65 0 6 2 69 0 7 1 221 0 77 2 73 0 100 0 38 0 101 5 241 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 230] 
#[1 5 245 0 15 2 126 0 20 5 249 0 116] 
#[1 0 33 0 10 0 37 0 13 2 106 0 22 0 45 0 37 0 57 0 42 2 106 0 58 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 2 106 0 99 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 253 0 226 1 105 0 230 2 106 1 8] 
#[0 2 130 0 22 0 58 0 99 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 1 0 165 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 245 0 222 1 245 0 228 1 245 0 229 1 149 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 5 0 136 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232] 
#[1 6 9 0 6 6 13 0 77 6 17 0 100 6 21 0 155 6 25 0 156 6 29 0 158 6 33 0 159] 
#[0 2 134 0 57 0 76 0 77] 
#[1 2 138 0 57 4 9 0 76] 
#[0 6 37 0 77] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 6 41 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 1 221 0 77 6 45 0 157 2 61 0 161 2 61 0 230] 
#[0 6 49 0 77] 
#[1 2 142 0 12 0 91 0 20 2 142 0 101 6 53 0 204] 
#[1 2 146 0 12 0 95 0 20 2 146 0 101 6 57 0 204] 
#[1 6 61 0 12 1 30 0 101 6 65 0 227] 
#[0 6 69 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 73 0 222 6 73 0 228 6 73 0 229 1 149 0 230] 
#[0 2 106 0 20 0 101] 
#[0 2 150 0 20 0 101] 
#[1 6 77 0 12 1 30 0 20 1 30 0 101 6 81 0 123 6 85 0 227] 
#[1 2 65 0 6 2 69 0 7 2 106 0 20 1 221 0 77 2 73 0 100 2 106 0 101 6 89 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 230] 
#[0 2 154 0 20 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 93 0 222 6 93 0 228 6 93 0 229 1 149 0 230] 
#[0 2 158 0 12 0 20 0 101] 
#[1 2 162 0 12 2 162 0 20 4 141 0 28 2 162 0 101 6 97 0 125] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 101 0 222 6 101 0 228 6 101 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 105 0 222 6 105 0 228 6 105 0 229 1 149 0 230] 
#[0 2 166 0 22 0 99 1 8] 
#[0 6 109 1 6] 
#[0 2 170 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 6 113 0 50 6 117 0 52 6 121 0 176 6 125 0 177 6 129 0 181] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 6 133 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 137 0 180 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 2 137 0 222 2 137 0 228 2 137 0 229 1 149 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 6 141 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 6 145 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 2 174 0 22 0 99 0 101 1 8] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 149 0 226 1 105 0 230] 
#[0 2 186 0 12 0 101 0 105] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 9 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 153 0 226 1 105 0 230] 
#[0 2 198 0 103] 
#[0 2 202 0 12 0 105] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 157 0 222 6 157 0 228 6 157 0 229 1 149 0 230] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 6 161 0 12 1 30 0 105 6 165 0 227 6 169 0 238] 
#[0 6 173 0 77] 
#[1 6 177 0 20 6 181 0 100] 
#[1 4 49 0 100 6 185 0 117] 
#[0 2 214 0 22 0 99 1 8] 
#[0 1 238 0 22 0 99 1 8] 
#[0 2 218 0 6 0 10 0 13 0 37 0 42 0 60 0 62 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 222 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 6 189 0 49] 
#[0 2 226 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 230 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 234 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 238 0 10 0 13 0 37 0 42 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 242 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 63 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 3 2 0 1 0 99 0 2 3 2 0 3 3 2 0 4 3 2 0 5 0 103 0 6 3 2 0 7 3 2 0 8 3 2 0 9 3 2 0 10 3 2 0 11 3 2 0 12 3 2 0 13 3 2 0 14 0 107 0 16 0 111 0 17 3 2 0 18 3 2 0 19 3 2 0 20 3 2 0 22 3 2 0 23 3 2 0 24 3 2 0 25 3 2 0 26 3 2 0 27 3 2 0 28 3 2 0 29 3 2 0 30 3 2 0 31 3 2 0 32 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 37 3 2 0 38 3 2 0 39 3 2 0 49 3 2 0 53 3 2 0 54 3 2 0 56 3 2 0 58 3 2 0 59 3 2 0 62 3 2 0 63 3 2 0 72 3 2 0 73 3 2 0 76 3 2 0 81 3 2 0 82 3 2 0 84 3 2 0 85 3 2 0 87 3 2 0 88 3 2 0 90 3 2 0 91 3 2 0 99 3 2 0 100 3 2 0 101 3 2 0 102 3 2 0 103 3 2 0 105 3 2 1 8] 
#[1 3 6 0 1 0 115 0 2 3 6 0 3 3 6 0 4 3 6 0 5 0 119 0 6 3 6 0 7 3 6 0 8 3 6 0 9 3 6 0 10 3 6 0 11 3 6 0 12 3 6 0 13 3 6 0 14 0 123 0 16 0 127 0 17 3 6 0 18 3 6 0 19 3 6 0 20 3 6 0 22 3 6 0 23 3 6 0 24 3 6 0 25 3 6 0 26 3 6 0 27 3 6 0 28 3 6 0 29 3 6 0 30 3 6 0 31 3 6 0 32 3 6 0 33 3 6 0 35 3 6 0 36 3 6 0 37 3 6 0 38 3 6 0 39 3 6 0 49 3 6 0 53 3 6 0 54 3 6 0 56 3 6 0 58 3 6 0 59 3 6 0 62 3 6 0 63 3 6 0 72 3 6 0 73 3 6 0 76 3 6 0 81 3 6 0 82 3 6 0 84 3 6 0 85 3 6 0 87 3 6 0 88 3 6 0 90 3 6 0 91 3 6 0 99 3 6 0 100 3 6 0 101 3 6 0 102 3 6 0 103 3 6 0 105 3 6 1 8] 
#[0 3 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 3 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 193 0 222 6 193 0 228 6 193 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 197 0 222 6 197 0 228 6 197 0 229 1 149 0 230] 
#[0 3 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 3 46 0 12 6 201 0 28 4 205 0 53 3 46 0 101 4 209 0 255] 
#[0 3 50 0 12 0 101] 
#[0 6 205 0 101] 
#[1 6 209 0 12 1 30 0 101 6 213 0 227] 
#[1 0 33 0 10 3 54 0 12 0 37 0 13 6 217 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 3 54 0 103 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 6 225 0 222 6 221 0 225 6 225 0 228 6 225 0 229 1 149 0 230] 
#[0 6 229 0 103] 
#[1 6 233 0 12 1 30 0 103 6 237 0 227] 
#[1 3 58 0 12 6 241 0 20 3 58 0 103] 
#[1 3 62 0 81 3 62 0 82 6 245 0 208] 
#[1 3 66 0 84 3 66 0 85 6 249 0 210] 
#[1 3 70 0 87 3 70 0 88 6 253 0 212] 
#[1 3 74 0 90 3 74 0 91 7 1 0 214] 
#[0 3 78 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[0 3 82 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 3 86 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 0 101 0 103 0 105 1 8] 
#[0 3 90 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 73 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 177 0 222 1 177 0 228 1 177 0 229 1 149 0 230 7 5 0 231 1 177 0 232] 
#[0 3 94 0 22 0 99 1 8] 
#[0 3 98 0 99 1 8] 
#[0 3 102 0 22 0 99 0 101 0 103 0 105 1 8] 
#[0 3 106 0 12 0 22 0 39 0 57 0 76 0 99 0 100 1 8] 
#[0 3 110 0 99] 
#[0 7 9 0 101] 
#[0 3 114 0 34 0 41 0 44 0 46] 
#[0 3 118 0 10 0 13 0 37 0 42 0 60 0 62 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 3 122 0 22 0 99 1 8] 
#[1 5 245 0 15 2 126 0 20 7 13 0 116] 
#[0 3 126 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 7 17 0 28] 
#[0 7 21 0 20] 
#[0 3 130 0 12 0 101] 
#[0 7 25 0 101] 
#[1 3 134 0 12 3 134 0 101 7 29 0 246] 
#[0 7 33 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 7 37 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 7 41 0 20] 
#[0 3 138 0 22 0 58 0 99 1 8] 
#[0 3 142 0 22 0 99 1 8] 
#[0 7 45 0 20] 
#[0 3 146 0 22 0 99 1 8] 
#[1 3 150 0 12 3 150 0 22 7 49 0 39 3 150 0 99 3 150 0 101 3 150 1 8] 
#[1 6 13 0 77 6 25 0 156 7 53 0 158 6 33 0 159] 
#[0 3 154 0 22 0 99 1 8] 
#[0 3 158 0 12 0 22 0 99 0 101 1 8] 
#[0 3 162 0 22 0 99 1 8] 
#[1 7 57 0 12 1 30 0 22 1 30 0 99 1 30 0 101 7 61 0 227 1 30 1 8] 
#[0 3 166 0 12 0 22 0 99 1 8] 
#[1 3 170 0 6 3 170 0 10 3 170 0 13 3 170 0 34 3 170 0 37 3 170 0 40 3 170 0 41 3 170 0 42 3 170 0 43 3 170 0 44 3 170 0 45 3 170 0 46 3 170 0 47 3 170 0 48 3 170 0 49 3 170 0 51 3 170 0 53 3 170 0 54 3 170 0 55 3 170 0 56 3 170 0 57 3 170 0 60 3 170 0 62 3 170 0 64 3 170 0 66 3 170 0 67 3 170 0 68 3 170 0 69 3 170 0 70 3 170 0 71 3 170 0 74 3 170 0 75 3 170 0 77 3 170 0 78 3 170 0 79 3 170 0 80 3 170 0 83 3 170 0 86 3 170 0 89 3 170 0 92 3 170 0 99 3 170 0 100 3 170 0 102 3 170 0 104 7 65 0 170 3 170 1 5 3 170 1 7 3 170 1 8] 
#[0 3 174 0 12 0 22 0 99 1 8] 
#[0 3 178 0 12 0 22 0 99 1 8] 
#[0 3 182 0 12 0 20 0 101] 
#[0 3 186 0 12 0 20 0 101] 
#[1 1 221 0 77 2 73 0 100 2 106 0 101 4 109 0 126 7 69 0 127 4 109 0 230] 
#[0 3 190 0 101] 
#[0 3 194 0 12 0 20 0 28 0 101] 
#[0 3 198 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 2 69 0 7 2 106 0 20 1 221 0 77 2 73 0 100 2 106 0 101 7 73 0 121 7 77 0 124 2 97 0 126 2 97 0 230] 
#[0 3 202 0 12 0 20 0 101] 
#[0 3 206 0 20 0 101] 
#[0 3 210 0 20 0 101] 
#[0 3 214 0 12 0 20 0 101] 
#[0 3 218 0 12 0 20 0 101] 
#[1 7 81 0 12 3 222 0 22 3 222 0 99 3 222 1 8] 
#[0 3 226 0 22 0 99 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 7 85 0 115 7 85 0 128 7 85 0 129 7 85 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 7 85 0 168 7 85 0 169 7 85 0 173 7 85 0 174 7 85 0 175 7 85 0 178 7 89 0 183 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 7 85 0 243 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 3 230 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 93 0 222 7 93 0 228 7 93 0 229 1 149 0 230] 
#[0 7 97 0 20] 
#[0 3 234 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 3 238 0 6 3 238 0 10 3 238 0 13 3 238 0 34 3 238 0 37 3 238 0 40 3 238 0 41 3 238 0 42 3 238 0 43 3 238 0 44 3 238 0 45 3 238 0 46 3 238 0 47 7 101 0 49 6 113 0 50 3 238 0 51 3 238 0 52 3 238 0 53 3 238 0 54 3 238 0 55 3 238 0 56 3 238 0 57 3 238 0 60 3 238 0 62 3 238 0 64 3 238 0 66 3 238 0 67 3 238 0 68 3 238 0 69 3 238 0 70 3 238 0 71 3 238 0 74 3 238 0 75 3 238 0 77 3 238 0 78 3 238 0 79 3 238 0 80 3 238 0 83 3 238 0 86 3 238 0 89 3 238 0 92 3 238 0 99 3 238 0 100 3 238 0 102 3 238 0 104 7 105 0 172 7 109 0 181 3 238 1 5 3 238 1 7 3 238 1 8] 
#[0 7 113 0 20] 
#[1 3 238 0 6 3 238 0 10 3 238 0 13 3 238 0 34 3 238 0 37 3 238 0 40 3 238 0 41 3 238 0 42 3 238 0 43 3 238 0 44 3 238 0 45 3 238 0 46 3 238 0 47 7 101 0 49 3 238 0 51 3 238 0 53 3 238 0 54 3 238 0 55 3 238 0 56 3 238 0 57 3 238 0 60 3 238 0 62 3 238 0 64 3 238 0 66 3 238 0 67 3 238 0 68 3 238 0 69 3 238 0 70 3 238 0 71 3 238 0 74 3 238 0 75 3 238 0 77 3 238 0 78 3 238 0 79 3 238 0 80 3 238 0 83 3 238 0 86 3 238 0 89 3 238 0 92 3 238 0 99 3 238 0 100 3 238 0 102 3 238 0 104 7 117 0 172 3 238 1 5 3 238 1 7 3 238 1 8] 
#[0 3 242 0 12 0 20] 
#[0 3 246 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 3 250 0 12 0 20] 
#[0 7 121 0 58] 
#[0 7 125 0 58] 
#[1 3 254 0 12 4 205 0 53 3 254 0 105 7 129 0 255] 
#[1 2 205 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 2 106 0 105 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 133 0 222 7 133 0 228 7 133 0 229 1 149 0 230 7 137 0 241 7 137 0 242] 
#[0 4 2 0 105] 
#[0 4 6 0 12 0 105] 
#[1 4 49 0 100 7 141 0 117] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 7 145 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 221 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 7 149 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 237 0 222 5 237 0 228 5 237 0 229 1 149 0 230 7 153 0 244 5 237 0 247] 
#[1 5 245 0 15 2 126 0 20 7 157 0 116] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 161 0 222 7 161 0 228 7 161 0 229 1 149 0 230] 
#[1 0 131 0 12 4 10 0 101 7 169 0 249] 
#[1 7 173 0 12 1 30 0 101 7 173 0 227] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 177 0 222 7 177 0 228 7 177 0 229 1 149 0 230] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 5 97 0 6 5 101 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 106 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 109 0 222 5 109 0 228 5 109 0 229 1 149 0 230 5 121 0 236 7 181 0 248 5 121 0 250] 
#[0 4 18 0 101] 
#[1 0 33 0 10 4 22 0 12 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 4 22 0 103 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 185 0 222 7 185 0 228 7 185 0 229 1 149 0 230] 
#[0 4 26 0 12 0 103] 
#[1 3 54 0 12 6 217 0 20 3 54 0 103 7 189 0 225] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[1 0 33 0 10 0 37 0 13 5 125 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 106 0 103 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 137 0 222 7 193 0 223 5 133 0 224 5 137 0 228 5 137 0 229 1 149 0 230] 
#[0 4 34 0 103] 
#[1 0 33 0 10 3 54 0 12 0 37 0 13 6 217 0 20 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 3 54 0 103 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 7 201 0 222 7 197 0 225 7 201 0 228 7 201 0 229 1 149 0 230] 
#[1 7 205 0 81 7 209 0 82 7 213 0 207] 
#[1 7 217 0 84 7 221 0 85 7 225 0 209] 
#[1 7 229 0 87 7 233 0 88 7 237 0 211] 
#[1 7 241 0 90 7 245 0 91 7 249 0 213] 
#[0 4 38 0 22 0 99 1 8] 
#[0 4 42 0 99] 
#[0 7 253 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 1 0 222 8 1 0 228 8 1 0 229 1 149 0 230] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 5 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 8 9 0 20] 
#[1 8 13 0 12 1 30 0 101 8 17 0 227 8 21 0 245] 
#[0 4 46 0 15 0 20] 
#[0 4 50 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 25 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 29 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 8 33 0 77] 
#[0 8 37 0 101] 
#[1 2 106 0 22 6 13 0 77 2 106 0 99 2 106 0 101 8 41 0 156 2 106 1 8] 
#[0 4 54 0 22 0 99 0 101 1 8] 
#[1 3 238 0 6 3 238 0 10 3 238 0 13 3 238 0 34 3 238 0 37 3 238 0 40 3 238 0 41 3 238 0 42 3 238 0 43 3 238 0 44 3 238 0 45 3 238 0 46 3 238 0 47 8 45 0 48 7 101 0 49 3 238 0 51 3 238 0 53 3 238 0 54 3 238 0 55 3 238 0 56 3 238 0 57 3 238 0 60 3 238 0 62 3 238 0 64 3 238 0 66 3 238 0 67 3 238 0 68 3 238 0 69 3 238 0 70 3 238 0 71 3 238 0 74 3 238 0 75 3 238 0 77 3 238 0 78 3 238 0 79 3 238 0 80 3 238 0 83 3 238 0 86 3 238 0 89 3 238 0 92 3 238 0 99 3 238 0 100 3 238 0 102 3 238 0 104 8 49 0 171 8 53 0 172 3 238 1 5 3 238 1 7 3 238 1 8] 
#[0 4 58 0 101] 
#[1 8 57 0 12 1 30 0 20 1 30 0 101 8 57 0 227] 
#[0 4 62 0 12 0 20 0 101] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 61 0 222 8 61 0 228 8 61 0 229 1 149 0 230] 
#[0 4 66 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 5 1 7] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 41 0 34 0 45 0 37 0 49 0 40 0 53 0 41 0 57 0 42 0 61 0 43 0 65 0 44 0 69 0 45 0 73 0 46 0 77 0 47 0 81 0 51 0 85 0 53 0 89 0 54 0 93 0 55 0 97 0 56 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 125 0 68 0 129 0 69 0 133 0 70 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 0 185 0 112 0 189 0 114 8 65 0 115 8 65 0 128 8 65 0 129 8 65 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 65 0 168 8 65 0 169 8 65 0 173 8 65 0 174 8 65 0 175 8 65 0 178 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 8 65 0 243 1 161 1 4 8 69 1 5 1 165 1 7] 
#[1 8 73 0 12 4 70 0 20 8 77 0 39] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 81 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 8 85 0 20] 
#[1 4 74 0 6 4 74 0 10 4 74 0 13 4 74 0 34 4 74 0 37 4 74 0 40 4 74 0 41 4 74 0 42 4 74 0 43 4 74 0 44 4 74 0 45 4 74 0 46 4 74 0 47 4 74 0 51 6 117 0 52 4 74 0 53 4 74 0 54 4 74 0 55 4 74 0 56 4 74 0 57 4 74 0 60 4 74 0 62 4 74 0 64 4 74 0 66 4 74 0 67 4 74 0 68 4 74 0 69 4 74 0 70 4 74 0 71 4 74 0 74 4 74 0 75 4 74 0 77 4 74 0 78 4 74 0 79 4 74 0 80 4 74 0 83 4 74 0 86 4 74 0 89 4 74 0 92 4 74 0 99 4 74 0 100 4 74 0 102 4 74 0 104 8 89 0 176 4 74 1 5 4 74 1 7 4 74 1 8] 
#[0 8 93 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 97 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 4 78 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 8 101 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 8 109 0 184 8 113 0 186 8 113 0 187 8 113 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 4 82 0 105] 
#[0 8 125 0 20] 
#[0 4 86 0 12 0 105] 
#[1 5 245 0 15 2 126 0 20 8 129 0 116] 
#[0 4 90 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 8 133 0 20] 
#[0 8 137 0 101] 
#[0 8 141 0 20] 
#[0 4 94 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 22 0 25 0 28 0 33 0 36 0 37 0 39 0 53 0 54 0 73 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 1 8] 
#[1 8 145 0 6 8 149 0 7 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 5 109 0 222 5 109 0 228 5 109 0 229 1 149 0 230 8 153 0 236 8 153 0 250] 
#[1 8 157 0 12 1 30 0 101 8 157 0 227] 
#[0 4 98 0 101] 
#[0 4 102 0 12 0 101] 
#[0 4 106 0 101] 
#[0 4 110 0 12 0 103] 
#[0 4 114 0 12 0 103] 
#[0 4 118 0 103] 
#[0 4 122 0 12 0 103] 
#[1 3 54 0 12 6 217 0 20 3 54 0 103 8 161 0 225] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 165 0 222 8 165 0 228 8 165 0 229 1 149 0 230] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 130 0 81 0 82] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 169 0 222 8 169 0 228 8 169 0 229 1 149 0 230] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 138 0 84 0 85] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 173 0 222 8 173 0 228 8 173 0 229 1 149 0 230] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 146 0 87 0 88] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 177 0 222 8 177 0 228 8 177 0 229 1 149 0 230] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 49 0 53 0 54 0 56 0 58 0 59 0 62 0 63 0 72 0 73 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 1 8] 
#[0 4 154 0 90 0 91] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 181 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 4 158 0 12 0 101] 
#[0 4 162 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 185 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 5 221 0 61 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 2 106 0 101 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 189 0 222 8 189 0 228 8 189 0 229 1 149 0 230 8 189 0 247] 
#[0 4 166 0 101] 
#[0 4 170 0 12 0 101] 
#[0 4 174 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 3 238 0 6 3 238 0 10 3 238 0 13 3 238 0 34 3 238 0 37 3 238 0 40 3 238 0 41 3 238 0 42 3 238 0 43 3 238 0 44 3 238 0 45 3 238 0 46 3 238 0 47 7 101 0 49 3 238 0 51 3 238 0 53 3 238 0 54 3 238 0 55 3 238 0 56 3 238 0 57 3 238 0 60 3 238 0 62 3 238 0 64 3 238 0 66 3 238 0 67 3 238 0 68 3 238 0 69 3 238 0 70 3 238 0 71 3 238 0 74 3 238 0 75 3 238 0 77 3 238 0 78 3 238 0 79 3 238 0 80 3 238 0 83 3 238 0 86 3 238 0 89 3 238 0 92 3 238 0 99 3 238 0 100 3 238 0 102 3 238 0 104 8 193 0 172 3 238 1 5 3 238 1 7 3 238 1 8] 
#[0 4 178 0 12 0 22 0 99 0 101 1 8] 
#[0 4 182 0 22 0 99 1 8] 
#[0 4 186 0 12 0 22 0 99 0 101 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 197 0 222 8 197 0 228 8 197 0 229 1 149 0 230] 
#[0 4 190 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 4 194 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 4 198 0 20 0 101] 
#[0 4 202 0 22 0 99 1 8] 
#[0 4 206 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 1 5 1 7] 
#[0 4 210 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 201 0 222 8 201 0 228 8 201 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 8 205 0 222 8 205 0 228 8 205 0 229 1 149 0 230] 
#[0 4 214 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 209 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 4 218 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 8 213 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 4 222 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 4 226 0 12 4 205 0 53 8 217 0 56 4 226 0 101 4 226 0 105 8 221 0 254 8 221 0 255 8 221 1 0] 
#[1 2 65 0 6 2 69 0 7 0 38 0 20 1 221 0 77 2 73 0 100 8 233 0 118 2 81 0 119 2 85 0 121 2 89 0 122 2 93 0 124 2 97 0 126 2 97 0 230] 
#[1 4 221 0 53 8 237 0 56 4 230 0 103 8 241 0 251 8 241 0 252 8 241 0 253] 
#[1 8 253 0 12 4 234 0 53 4 234 0 56 4 234 0 103] 
#[0 4 238 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 4 242 0 12 0 53 0 56 0 101 0 103 0 105] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 9 1 0 222 9 1 0 228 9 1 0 229 1 149 0 230] 
#[0 9 5 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 9 9 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 9 13 0 20] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 9 17 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 9 21 0 222 9 21 0 228 9 21 0 229 1 149 0 230] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 0 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 9 25 0 222 9 25 0 228 9 25 0 229 1 149 0 230] 
#[1 0 131 0 12 4 10 0 101 9 29 0 249] 
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
#[0 9 33 0 20] 
#[0 5 30 0 20] 
#[0 5 34 0 20] 
#[0 5 38 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 42 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 37 0 186 9 37 0 187 9 37 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 5 46 0 12 0 101 0 105] 
#[0 5 50 0 12 0 101 0 105] 
#[0 5 54 0 12 0 101 0 105] 
#[0 9 41 0 20] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 45 0 186 9 45 0 187 9 45 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 5 58 0 103] 
#[0 5 62 0 103] 
#[0 5 66 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 49 0 185 9 53 0 186 9 53 0 187 9 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[0 3 254 0 12 0 105] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 9 57 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 5 70 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 9 61 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[0 5 74 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 78 0 12 0 101] 
#[0 5 82 0 12 0 101] 
#[0 5 86 0 12 0 101] 
#[1 0 29 0 6 0 33 0 10 0 37 0 13 0 45 0 37 0 49 0 40 0 57 0 42 0 61 0 43 0 69 0 45 0 77 0 47 0 81 0 51 0 89 0 54 0 93 0 55 0 101 0 57 0 105 0 60 0 109 0 62 0 113 0 64 0 117 0 66 0 121 0 67 0 137 0 71 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 4 165 0 99 0 169 0 100 0 173 0 102 0 177 0 104 4 169 0 129 4 169 0 130 1 25 0 132 0 209 0 133 0 213 0 134 0 217 0 136 1 25 0 140 1 25 0 141 1 25 0 142 1 25 0 143 1 25 0 144 1 25 0 145 1 25 0 146 1 25 0 147 1 25 0 148 1 25 0 150 1 25 0 151 1 25 0 152 1 25 0 162 1 25 0 164 1 25 0 166 1 25 0 167 9 65 0 182 1 53 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 153 0 222 1 153 0 228 1 153 0 229 1 149 0 230 1 153 0 232 1 161 1 4 1 165 1 7] 
#[1 5 90 0 12 4 205 0 53 8 217 0 56 5 90 0 101 5 90 0 105 9 69 0 254 9 69 0 255 9 69 1 0] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 0 177 0 104 9 73 0 186 9 73 0 187 9 73 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
#[1 4 221 0 53 8 237 0 56 5 94 0 103 9 77 0 251 9 77 0 252 9 77 0 253] 
#[1 9 81 0 12 1 30 0 53 1 30 0 56 1 30 0 103 9 85 0 227] 
#[0 5 98 0 12 0 53 0 56 0 103] 
#[0 5 102 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 106 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 110 0 6 0 10 0 13 0 34 0 37 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 54 0 55 0 56 0 57 0 60 0 62 0 64 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 1 5 1 7 1 8] 
#[0 5 114 0 12 0 101 0 105] 
#[0 5 118 0 12 0 53 0 56 0 101 0 103 0 105] 
#[0 5 122 0 103] 
#[1 0 33 0 10 0 37 0 13 0 45 0 37 0 57 0 42 2 106 0 53 2 106 0 56 8 105 0 60 0 109 0 62 0 141 0 74 0 145 0 75 0 149 0 77 0 153 0 78 0 157 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 161 0 92 0 169 0 100 0 173 0 102 2 106 0 103 0 177 0 104 9 89 0 186 9 89 0 187 9 89 0 188 1 57 0 189 1 61 0 190 1 61 0 191 1 69 0 193 1 73 0 194 1 77 0 195 1 81 0 196 1 85 0 197 1 89 0 198 1 89 0 199 1 89 0 200 1 101 0 201 1 105 0 202 1 105 0 203 1 113 0 205 1 117 0 206 1 121 0 215 1 125 0 216 1 129 0 217 1 133 0 218 1 105 0 230] 
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
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign__1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign__2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 3 put: ((nodes at: 2) at: 1).
	result at: 4 put: ((nodes at: 2) at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_testlist_expression__variable__type_annotation_______assign___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
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
	result addNodes: ((nodes at: 1) at: 1) to: result variables.
	result addTokens: ((nodes at: 1) at: 2) to: result assigns.
	result addTokens: ((nodes at: 1) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 1) at: 4) to: result typeExpressions.
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt3: nodes [
	| result |
	result := PyAssignmentStatementNode new.
	result addNode: (nodes at: 1) to: result variables.
	result addToken: (nodes at: 2) to: result assigns.
	result value: (nodes at: 3).
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
	result operator: (nodes at: 2).
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
	result if: (nodes at: 1).
	result ifToken: (nodes at: 2).
	result condition: (nodes at: 3).
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
