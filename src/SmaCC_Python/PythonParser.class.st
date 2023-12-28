Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 54 2 117] 
#[ 0 198 3 9] 
#[ 0 202 3 13] 
#[ 0 206 3 17] 
#[ 0 210 3 21] 
#[ 0 210 3 25] 
#[ 0 214 3 29] 
#[ 0 214 3 33] 
#[ 0 218 3 37] 
#[ 0 218 3 41] 
#[ 0 218 3 45] 
#[ 0 218 3 49] 
#[ 0 226 3 53] 
#[ 0 234 3 57] 
#[ 0 234 3 61] 
#[ 0 234 3 65] 
#[ 1 82 2 117] 
#[ 1 82 1 198] 
#[ 2 6 3 57] 
#[ 2 6 3 61] 
#[ 2 6 3 65] 
#[ 1 126 2 117] 
#[ 3 218 7 105] 
#[ 2 117 4 14]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2023-10-31T07:40:29.888906-05:00'
]

{ #category : #generated }
PythonParser class >> definitionComment [
"# Python Grammar and Lexer extracted from Python2 documentation on 16/04/2014 (Python 2.7.6)
# As seen from this grammar, the python doc and the implemented python scanner/parser diverge in several places
# https://docs.python.org/2/reference/index.html

# added f string support from Python 3

#Identifiers
%glr;

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

%id <INDENT> <DEDENT> <NEWLINE> <lbrack> <lcurly> <lparen> <rbrack> <rcurly> <rparen> <Python2>;

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

%start file_input single_input eval_input ;

# Note: Grammar rewritten to eliminate () [] * ? + ThierryGoubier 5/5/2014 22:34

%annotate_tokens;
%root Root;
%prefix Py;
%suffix Node;
%hierarchy Symbol (AnnotatedSymbol);
%right "":="";
%hierarchy BinaryExpression (ComparisonExpression);
%hierarchy Name (AsName);

file_input: {{}}
	| file_input <NEWLINE> {{}}
	| file_input stmt 'statement' {{}}
	;

single_input: 
	<NEWLINE> {{}}
	| simple_stmt 'statement' {{}}
	| compound_stmt 'statement' <NEWLINE> {{}}
	;

eval_input:
	testlist 'testlist' newline_opts {{}}
	;

newline_opts:
	| newline_opts <NEWLINE>
	;

decorator:
	""@"" dotted_name 'dotted_name' paren_arglist_opt <NEWLINE> {{}}
	;
paren_arglist_opt:
	| <lparen> arglist_opt <rparen> 
	;
arglist_opt:
	| arglist
	;

decorators:
	decorators decorator 'decorator' 
	| decorator 'decorator' 
	;
decorated:
	decorators classdef 'classdef' {{}}
	| decorators funcdef 'funcdef' {{}}
	;
funcdef:
	""async""? ""def"" <name> 'fname' parameters 'parameters' return_annotation_opt 'returnAnnotation' "":"" suite {{}}
	;
return_annotation_opt
	:
	| ""->"" expr 'typeExpression' {{ReturnTypeAnnotation}}
	;
parameters:
	<lparen> varargslist_opt <rparen> { '2' }
	;
varargslist_opt:
	| varargslist {{VarArgList}}
	;
varargslist:
	fpdef 'arg' type_annotation 'parameterAnnotation'? init 'init'? "","" varargslist
	| ""*"" (<name> 'sname' type_annotation 'parameterAnnotation'?)? varArg* comma_opt
	| ""*"" (<name> 'sname' type_annotation 'parameterAnnotation'?)? varArg*  "","" ""**"" <name> 'ssname' type_annotation 'parameterAnnotation'? comma_opt
	| ""**"" <name>  'sname'  type_annotation 'parameterAnnotation'? comma_opt
	| fpdef 'arg' type_annotation 'parameterAnnotation'? init 'init'? comma_opt
	;
varArg
	: "","" fpdef 'arg' type_annotation 'parameterAnnotation'? init 'init'?
	;
init
	: ""="" test 'test' {{}}
	;

fpdef:
	<name> {{}}
	| <lparen> fplist <rparen> {{}}
	;

fplist:
	fpdef 'fpdef' "","" fplist
	| fpdef 'fpdef' comma_opt
	;

stmt:
	simple_stmt 'stmt'
	| compound_stmt 'stmt'
	;

simple_stmt:
	small_stmt 'stmt' "";"" simple_stmt {{}}
	| small_stmt 'stmt' semicolon_opt <NEWLINE> {{}}
	;
semicolon_opt:
	| "";""
	;
expr_stmt: 
	testlist 'testlist' assign_after {{}}
	| testlist 'testlist' augassign 'assign' yield_or_testlist 'to' {{}}
	;
assign_after:
	| assign_after type_annotation 'typeAnnotation'? ""="" 'assign' yield_or_testlist 'to'
	;
yield_or_testlist:
	yield_expr
	| testlist
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
	<Python2> ""print"" testlist_opt {{Print}}
	| <Python2> ""print"" "">>"" testlist 'testlist' {{Print}}
	;
del_stmt:
	""del"" exprlist {{Del}}
	;
pass_stmt:
	""pass"" {{Pass}}
	;
flow_stmt:
	break_stmt
	| continue_stmt
	| return_stmt
	| raise_stmt
	| yield_stmt
	;
break_stmt:
	""break"" {{Break}}
	;
continue_stmt:
	""continue"" {{Continue}}
	;
return_stmt:
	""return"" testlist_opt {{Return}}
	;
yield_stmt:
	yield_expr {{Yield}}
	;
raise_stmt:
	""raise"" {{Raise}}
	| ""raise"" test 'arg1' raise_from? {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2'  {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2' "","" test 'arg3' {{Raise}}
	;
raise_from
	: ""from""  test 'from'
	;
import_stmt:
	import_name
	| import_from
	;
import_name:
	""import"" dotted_as_names {{Import}}
	;
import_from:
	""from"" dotopt_dotted_name 'from' ""import"" import_names_star {{Import}}
	;
dotopt_dotted_name:
	dotted_name
	| ""."" 'dot'+ dotted_name 'name'? {{RelativeName}}
	;
import_names_star:
	""*""
	| <lparen> import_as_names <rparen>
	| import_as_names
	;
import_as_name:
	<name> 'name' {{Name}}
	| <name> 'name' ""as"" <name> 'rename' {{AsName}}
	;
dotted_as_name:
	dotted_name 'name'
	| dotted_name 'name' ""as"" <name> 'rename'
	;
import_as_names:
	import_as_names_in comma_opt
	;
import_as_names_in:
	import_as_names_in "","" import_as_name 'name'
	| import_as_name 'name'
	;
dotted_as_names:
	dotted_as_names "","" dotted_as_name
	| dotted_as_name
	;
dotted_name:
	(<name> 'name' ""."")+ <name> 'name' {{DottedName}}
	| <name> 'name' {{Name}}
	;
global_stmt:
	""global"" namelist {{Global}}
	;
namelist:
	namelist "","" <name>
	| <name>
	;
exec_stmt:
	""exec"" expr 'expr' {{Exec}}
	| ""exec"" expr 'expr' ""in"" test_test_opt {{Exec}}
	;

test_test_opt:
	test 'test'
	| test 'test' "","" test 'test'
	;
assert_stmt:
	""assert"" test_test_opt {{Assert}}
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
	| decorated 
	;
if_stmt:
	""if"" test 'if' "":"" suite elif 'elsif'* else_opt 'else' {{If}}
	;
elif: ""elif"" test 'elif' "":"" suite {{Elif}}
	;
else_opt:
	| ""else"" "":"" suite {{Else}}
	;

while_stmt:
	""while"" test 'test' "":"" suite else_opt 'else' {{While}}
	;
for_stmt:
	""for"" exprlist ""in"" testlist 'testlist' "":"" suite else_opt 'else' {{For}}
	;
try_stmt:
	""try"" "":"" suite except_list else_opt 'else' finally_opt 'finally' {{Try}}
	| ""try"" "":"" suite ""finally"" "":"" suite {{Try}}
	;
finally_opt:
	| ""finally"" "":"" suite {{Finally}}
	;
except_list:
	except_list except_clause 'clause' "":"" suite
	| except_clause 'clause' "":"" suite
	;
with_stmt:
	""with"" with_items "":"" suite {{With}}
	;
with_items:
	with_items "","" with_item 'withItem'
	| with_item 'withItem'
	;
with_item:
	test 'test' {{WithItem}}
	| test 'test' ""as"" expr 'expr'  {{WithItem}}
	;
# NB compile.c makes sure that the default except clause is last
except_clause: 
	""except"" {{ExceptClause}}
	| ""except"" test 'except' {{ExceptClause}}
	| ""except"" test 'except' ""as"" test 'another' {{ExceptClause}}
	| ""except"" test 'except' "","" test 'except2' {{ExceptClause}}
	;

suite:
	simple_stmt 'statement'
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
	old_test 'test'
	| old_test 'test' "","" old_tests comma_opt
	;
old_tests:
	old_tests "","" old_test 'test'
	| old_test 'test'
	;
old_test:
	or_test
	| old_lambdef
	;
old_lambdef:
	""lambda"" varargslist_opt 'args' "":"" old_test 'body' {{Lambda}}
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
	""not"" not_test 'negated' {{Not}}
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
	| ""not"" 'not'? ""in"" 'operator' 
	| ""is"" 'operator' ""not"" 'not'?
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
	| ""+"" factor 'factor' {{}}
	| ""-"" factor 'factor' {{}}
	| ""~"" factor 'factor' {{}}
	;

power:
    await
	| await 'left' ""**"" 'operator' factor 'right' {{BinaryExpression}}
	;
await
	: trailers
	| ""await"" trailers 'expression' {{}}
	;
trailers
	: atom
	| atom 'atom' trailer 'trailer'+ {{}}
	;
atom: 
	<lparen> <rparen> {{}}
	| <lparen> yield_expr 'list' <rparen> {{}}
	| <lparen> testlist_comp 'list' <rparen> {{}}
	| <lbrack> <rbrack> {{}}
	| <lbrack> listmaker 'list' <rbrack> {{}}
	| <lcurly> dictorsetmaker 'list' <rcurly> {{}}
	| <lcurly>  <rcurly> {{}}
	| ""`"" testlist1 'list' ""`"" {{BackTick}}
	| Symbol
	| ""..."" 'nameToken' {{Symbol}}
	| <name> type_annotation 'variableAnnotation' {{AnnotatedSymbol}}
	| <number> {{Number}}
	| strings
	;
type_annotation
	: "":"" expr 'typeExpression' {{TypeAnnotation}}
	;
strings:
	string 'string' strings {{Strings}}
	| string 'string'  {{Strings}}
	;
string:
	<string> 'value' {{String}}
	| <fStringWhole> 'value' {{String}}
	| StartFStringSingle <fStringSingleStart> 'part' test 'expression' (<fStringSingleMid> 'part' test 'expression')* <fStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFStringDouble <fStringDoubleStart> 'part' test 'expression' (<fStringDoubleMid> 'part' test 'expression')* <fStringDoubleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringSingle <fLongStringSingleStart> 'part' test 'expression' (<fLongStringSingleMid> 'part' test 'expression')* <fLongStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringDouble <fLongStringDoubleStart> 'part' test 'expression' (<fLongStringDoubleMid> 'part' test 'expression')* <fLongStringDoubleEnd> 'part' {{InterpolatedString}}
	;
StartFStringSingle: [{#fStringSingle. scanner lineJoiningStack copy}];
StartFStringDouble: [{#fStringDouble. scanner lineJoiningStack copy}];
StartFLongStringSingle: [{#fLongStringSingle. scanner lineJoiningStack copy}];
StartFLongStringDouble: [{#fLongStringDouble. scanner lineJoiningStack copy}];
listmaker:
	test 'test' list_for 'list_for' {{}}
	| testlist
	;
testlist_comp:
	test 'test' comp_for 'comp_for' {{}}
	| testlist
	;
lambdef:
	""lambda"" varargslist_opt 'arguments' "":"" test 'body' {{Lambda}}
	;
trailer: 
	<lparen> <rparen> {{}}
	| <lparen> arglist <rparen> {{}}
	| <lbrack> subscriptlist <rbrack> {{}}
	| ""."" <name>  {{}}
	;
subscriptlist:
	subscript 'subscript' "","" subscriptlist
	| subscript 'subscript' comma_opt
	;
subscript:
	""."" ""."" ""."" {{}}
	| test 'test' {{}}
	| test_opt 'test' "":"" test_opt 'test2' sliceop 'slice' {{}}
	;
test_opt:
	| test
	;
sliceop:
	| "":"" test_opt 'test' {{}}
	;

exprlist:
	expr 'expr' "","" exprlist
	| expr 'expr' comma_opt
	;
comma_opt:
	| "",""
	;

test: or_test
	| or_test 'or' ""if"" or_test 'if' ""else"" test 'else' {{IfTest}}
	| lambdef
	| assignment_expression
	;
assignment_expression
	: Symbol 'variable' "":="" 'assign' test 'value' {{AssignmentExpression}}
	;
Symbol
	: <name> {{}}
	;
testlist: 
	testlistItem 'test' ("","" testlistItem 'test')+ comma_opt {{}}
	| testlistItem
	| testlistItem 'test' "","" {{}}
	;
testlistItem
	: test
	| ""*"" 'operator' test 'test' {{Spread}}
	;
testlist_opt:
	| testlist 'testlist'
	;
dictorsetmaker: 
	test 'object' "":"" test 'value' comp_for 'comp' {{}}
	| dictSpread 'object' {{}}
	| test 'object' "":"" test 'value' more_tests {{}}
	| dictSpread 'object' more_tests {{}}
	| test 'object' comp_for 'comp' {{}}
	| testlist
	;
dictSpread
	: ""**"" 'operator' test 'test' {{Spread}}
	;
more_tests:
	comma_opt
	| "","" test 'object' "":"" test 'value' more_tests
	| "","" dictSpread 'object' more_tests
	;
classdef:
	""class"" <name> 'cname' "":"" suite {{Classdef}}
	| ""class"" <name> 'cname' <lparen> superclasslist? <rparen> "":"" suite {{Classdef}}
	;
superclasslist
	: classListItem 'superClass' ("","" classListItem 'superClass')* comma_opt
	;
classListItem
	: test
	| ""metaclass"" ""="" test 'superclass' {{Metaclass}}
	;

arglist: 
	argument 'argument' "","" arglist
	| argument 'argument' comma_opt
	| ""*"" test 'argument' more_args comma_opt
	| ""**"" test 'argument' comma_opt
	;
more_args:
	| "","" ""**"" test 'argument'
	| "","" ""*"" test 'argument'
	| "","" argument 'argument' more_args
	;
# The reason that keywords are test nodes instead of <name> is that using <name>
# results in an ambiguity. ast.c makes sure it""s a <name>.
argument:
	test 'test' {{}}
	| test 'test' comp_for 'comp' {{}}
	| test 'test' ""="" test 'test2' {{}}
	;

list_iter:
	list_for
	| list_if
	;
list_for:
	""for"" exprlist ""in"" testlist_safe {{ListFor}}
	| ""for"" exprlist ""in"" testlist_safe list_iter 'list' {{ListFor}}
	;
list_if:
	""if"" old_test 'condition' {{ListIf}}
	| ""if"" old_test 'condition' list_iter 'iter' {{ListIf}}
	;

comp_iter:
	comp_for
	| comp_if
	;

comp_for:
	""for"" exprlist ""in"" or_test 'in' {{CompFor}}
	| ""for"" exprlist ""in"" or_test 'in' comp_iter 'comp' {{CompFor}}
	;
comp_if:
	""if"" old_test 'condition' {{CompIf}}
	| ""if"" old_test 'condition' comp_iter 'iter' {{CompIf}}
	;

testlist1:
	test 'test' "","" testlist1 'tests' {{}}
	| test 'test'
	;

# not used in grammar, but may appear in ""node"" passed from Parser to Compiler
#encoding_decl: <name> ;

yield_expr:
	""yield"" ""from""? testlist_opt {{Yield}}
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
	#(107 0 #reduceActionForfile_input1: 4988929 false) 
	#(211 0 #reduceActionForStartFStringSingle1: 14364673 true) 
	#(212 0 #reduceActionForStartFStringDouble1: 14437377 true) 
	#(213 0 #reduceActionForStartFLongStringSingle1: 14510081 true) 
	#(214 0 #reduceActionForStartFLongStringDouble1: 14590977 true) 
	#(199 1 #reduceActionForatom10: 12965898 false) 
	#(137 1 #reduceActionForbreak_stmt1: 7614465 false) 
	#(138 1 #reduceActionForcontinue_stmt1: 7649281 false) 
	#(119 0 #nil 5896193 false) 
	#(135 1 #reduceActionForpass_stmt1: 7494657 false) 
	#(141 1 #reduceActionForraise_stmt1: 7782401 false) 
	#(232 0 #nil 15823873 false) 
	#(227 1 #reduceActionForatom10: 15603713 false) 
	#(202 1 #reduceActionForstring1: 13581313 false) 
	#(202 1 #reduceActionForstring1: 13581314 false) 
	#(199 1 #reduceActionForatom12: 12965900 false) 
	#(108 1 #reduceActionForsingle_input1: 5076993 false) 
	#(114 1 #reduceActionFordecorators2: 5457922 false) 
	#(163 1 #liftFirstValue: 9322504 false) 
	#(163 1 #liftFirstValue: 9322502 false) 
	#(108 1 #reduceActionForsingle_input2: 5076994 false) 
	#(162 1 #liftFirstValue: 9183233 false) 
	#(162 1 #liftFirstValue: 9183234 false) 
	#(162 1 #liftFirstValue: 9183235 false) 
	#(162 1 #liftFirstValue: 9183236 false) 
	#(162 1 #liftFirstValue: 9183237 false) 
	#(136 1 #liftFirstValue: 7526401 false) 
	#(136 1 #liftFirstValue: 7526402 false) 
	#(136 1 #liftFirstValue: 7526403 false) 
	#(136 1 #liftFirstValue: 7526405 false) 
	#(136 1 #liftFirstValue: 7526404 false) 
	#(162 1 #liftFirstValue: 9183238 false) 
	#(143 1 #liftFirstValue: 8018945 false) 
	#(143 1 #liftFirstValue: 8018946 false) 
	#(162 1 #liftFirstValue: 9183239 false) 
	#(162 1 #liftFirstValue: 9183240 false) 
	#(162 1 #liftFirstValue: 9183241 false) 
	#(128 0 #nil 6841345 false) 
	#(163 1 #liftFirstValue: 9322497 false) 
	#(163 1 #liftFirstValue: 9322498 false) 
	#(163 1 #liftFirstValue: 9322499 false) 
	#(163 1 #liftFirstValue: 9322500 false) 
	#(163 1 #liftFirstValue: 9322501 false) 
	#(225 1 #liftFirstValue: 15383553 false) 
	#(183 1 #liftFirstValue: 11150337 false) 
	#(184 1 #liftFirstValue: 11245569 false) 
	#(185 1 #liftFirstValue: 11344898 false) 
	#(186 1 #liftFirstValue: 11407361 false) 
	#(188 1 #liftFirstValue: 11715585 false) 
	#(189 1 #liftFirstValue: 11805697 false) 
	#(190 1 #liftFirstValue: 11904001 false) 
	#(191 1 #liftFirstValue: 12006401 false) 
	#(192 1 #liftFirstValue: 12191745 false) 
	#(193 1 #liftFirstValue: 12358657 false) 
	#(194 1 #liftFirstValue: 12649473 false) 
	#(195 1 #liftFirstValue: 12754945 false) 
	#(196 1 #liftFirstValue: 12845057 false) 
	#(197 1 #liftFirstValue: 12905473 false) 
	#(199 1 #liftFirstValue: 12965901 false) 
	#(201 1 #reduceActionForstrings2: 13498370 false) 
	#(225 1 #liftFirstValue: 15383555 false) 
	#(231 1 #liftFirstValue: 15757313 false) 
	#(225 1 #liftFirstValue: 15383556 false) 
	#(199 1 #liftFirstValue: 12965897 false) 
	#(130 0 #reduceActionForassign_after1: 6993921 false) 
	#(228 1 #liftFirstValue: 15629314 false) 
	#(163 1 #liftFirstValue: 9322503 false) 
	#(140 1 #reduceActionForyield_stmt1: 7744513 false) 
	#(110 0 #reduceActionFornewline_opts1: 5246977 false) 
	#(107 2 #reduceActionForfile_input2: 4988930 false) 
	#(107 2 #reduceActionForfile_input3: 4988931 false) 
	#(126 1 #liftFirstValue: 6677505 false) 
	#(126 1 #liftFirstValue: 6677506 false) 
	#(231 2 #reduceActionFortestlistItem2: 15757314 false) 
	#(194 2 #reduceActionForfactor2: 12649474 false) 
	#(194 2 #reduceActionForfactor3: 12649475 false) 
	#(154 1 #reduceActionFordotted_name2: 8783874 false) 
	#(112 0 #reduceActionForparen_arglist_opt1: 5371905 false) 
	#(156 1 #reduceActionFor__name___name_______1: 8798209 false) 
	#(250 1 #liftFirstValue: 17672194 false) 
	#(161 2 #reduceActionForassert_stmt1: 9131009 false) 
	#(160 1 #reduceActionFortest_test_opt1: 9067521 false) 
	#(196 2 #reduceActionForawait2: 12845058 false) 
	#(224 0 #nil 15361025 false) 
	#(134 2 #reduceActionFordel_stmt1: 7456769 false) 
	#(159 2 #reduceActionForexec_stmt1: 8971265 false) 
	#(147 1 #reduceActionFordecorators2: 8245249 false) 
	#(146 1 #reduceActionFordotopt_dotted_name2: 8208386 false) 
	#(146 1 #liftFirstValue: 8208385 false) 
	#(158 1 #reduceActionFornamelist2: 8926210 false) 
	#(157 2 #reduceActionForglobal_stmt1: 8879105 false) 
	#(153 1 #reduceActionFordotted_as_names2: 8708098 false) 
	#(144 2 #reduceActionForimport_name1: 8064001 false) 
	#(150 1 #reduceActionFordotted_as_name1: 8476673 false) 
	#(121 0 #reduceActionForvarArg_1: 6109185 false) 
	#(124 1 #reduceActionForfpdef1: 6552577 false) 
	#(119 1 #reduceActionForvarargslist_opt2: 5896194 false) 
	#(185 2 #reduceActionFornot_test1: 11344897 false) 
	#(141 2 #reduceActionForraise_stmt2: 7782402 false) 
	#(232 1 #liftFirstValue: 15823874 false) 
	#(139 2 #reduceActionForreturn_stmt1: 7693313 false) 
	#(174 1 #reduceActionFornamelist2: 10118146 false) 
	#(175 1 #reduceActionForwith_item1: 10195969 false) 
	#(251 2 #reduceActionForyield_expr1: 17851393 false) 
	#(194 2 #reduceActionForfactor4: 12649476 false) 
	#(199 2 #reduceActionForatom11: 12965899 false) 
	#(199 2 #reduceActionForatom1: 12965889 false) 
	#(216 1 #liftFirstValue: 14737410 false) 
	#(199 2 #reduceActionForatom4: 12965892 false) 
	#(215 1 #liftFirstValue: 14671874 false) 
	#(199 2 #reduceActionForatom7: 12965895 false) 
	#(233 1 #liftFirstValue: 15864838 false) 
	#(233 1 #reduceActionFordictorsetmaker2: 15864834 false) 
	#(114 2 #reduceActionFordecorators1: 5457921 false) 
	#(115 2 #reduceActionFordecorated2: 5535746 false) 
	#(115 2 #reduceActionFordecorated1: 5535745 false) 
	#(128 1 #liftFirstValue: 6841346 false) 
	#(108 2 #reduceActionForsingle_input3: 5076995 false) 
	#(187 1 #reduceActionForcomp_op7: 11497479 false) 
	#(187 1 #reduceActionForcomp_op7: 11497473 false) 
	#(187 1 #reduceActionForcomp_op7: 11497477 false) 
	#(187 1 #reduceActionForcomp_op7: 11497478 false) 
	#(187 1 #reduceActionForcomp_op7: 11497475 false) 
	#(187 1 #reduceActionForcomp_op7: 11497474 false) 
	#(187 1 #reduceActionForcomp_op7: 11497476 false) 
	#(187 1 #reduceActionForcomp_op7: 11497480 false) 
	#(187 1 #reduceActionForcomp_op7: 11497482 false) 
	#(221 0 #nil 15232001 false) 
	#(197 2 #reduceActionFortrailers2: 12905474 false) 
	#(198 1 #reduceActionFordecorators2: 12938241 false) 
	#(201 2 #reduceActionForstrings1: 13498369 false) 
	#(132 1 #liftFirstValue: 7146501 false) 
	#(132 1 #liftFirstValue: 7146502 false) 
	#(132 1 #liftFirstValue: 7146507 false) 
	#(132 1 #liftFirstValue: 7146499 false) 
	#(132 1 #liftFirstValue: 7146497 false) 
	#(132 1 #liftFirstValue: 7146498 false) 
	#(132 1 #liftFirstValue: 7146508 false) 
	#(132 1 #liftFirstValue: 7146500 false) 
	#(132 1 #liftFirstValue: 7146505 false) 
	#(132 1 #liftFirstValue: 7146506 false) 
	#(132 1 #liftFirstValue: 7146504 false) 
	#(132 1 #liftFirstValue: 7146503 false) 
	#(129 2 #reduceActionForexpr_stmt1: 6866945 false) 
	#(228 2 #reduceActionFortestlist3: 15629315 false) 
	#(230 1 #reduceActionFor__name___name_______1: 15662081 false) 
	#(109 2 #reduceActionForeval_input1: 5190657 false) 
	#(155 2 #reduceActionFor__name___name______1: 8798209 false) 
	#(113 0 #reduceActionForarglist_opt1: 5429249 false) 
	#(154 2 #reduceActionFordotted_name1: 8783873 false) 
	#(156 2 #reduceActionFor__name___name_______2: 8798210 false) 
	#(199 3 #reduceActionForatom8: 12965896 false) 
	#(117 0 #nil 5751809 false) 
	#(224 1 #liftFirstValue: 15361026 false) 
	#(223 2 #reduceActionForexprlist2: 15295490 false) 
	#(147 2 #reduceActionFordecorators1: 8245250 false) 
	#(146 2 #reduceActionFordotopt_dotted_name3: 8208387 false) 
	#(120 2 #reduceActionForvarargslist16: 5947408 false) 
	#(141 3 #reduceActionForraise_stmt3: 7782403 false) 
	#(177 1 #reduceActionForsuite1: 10570753 false) 
	#(251 3 #reduceActionForyield_expr2: 17851394 false) 
	#(200 2 #reduceActionFortype_annotation1: 13429761 false) 
	#(199 3 #reduceActionForatom3: 12965891 false) 
	#(216 2 #reduceActionFortestlist_comp1: 14737409 false) 
	#(199 3 #reduceActionForatom3: 12965890 false) 
	#(199 3 #reduceActionForatom5: 12965893 false) 
	#(215 2 #reduceActionForlistmaker1: 14671873 false) 
	#(234 2 #reduceActionFortestlistItem2: 16110593 false) 
	#(233 2 #reduceActionFordictorsetmaker5: 15864837 false) 
	#(199 3 #reduceActionForatom6: 12965894 false) 
	#(235 1 #reduceActionFormore_tests1: 16167937 false) 
	#(233 2 #reduceActionFordictorsetmaker4: 15864836 false) 
	#(127 3 #reduceActionForsimple_stmt1: 6732801 false) 
	#(127 3 #reduceActionForsimple_stmt2: 6732802 false) 
	#(183 3 #reduceActionForor_test2: 11150338 false) 
	#(184 3 #reduceActionForand_test2: 11245570 false) 
	#(187 2 #reduceActionFor__name___name______1: 11497483 false) 
	#(187 2 #reduceActionForcomp_op9: 11497481 false) 
	#(186 3 #reduceActionForcomparison2: 11407362 false) 
	#(188 3 #reduceActionForand_test2: 11715586 false) 
	#(189 3 #reduceActionForand_test2: 11805698 false) 
	#(190 3 #reduceActionForand_test2: 11904002 false) 
	#(191 3 #reduceActionForand_test2: 12006402 false) 
	#(191 3 #reduceActionForand_test2: 12006403 false) 
	#(192 3 #reduceActionForand_test2: 12191746 false) 
	#(192 3 #reduceActionForand_test2: 12191747 false) 
	#(193 3 #reduceActionForand_test2: 12358660 false) 
	#(193 3 #reduceActionForand_test2: 12358658 false) 
	#(193 3 #reduceActionForand_test2: 12358659 false) 
	#(193 3 #reduceActionForand_test2: 12358661 false) 
	#(195 3 #reduceActionForand_test2: 12754946 false) 
	#(218 2 #reduceActionFortrailer4: 14885892 false) 
	#(218 2 #reduceActionFortrailer1: 14885889 false) 
	#(243 1 #reduceActionForargument1: 17014785 false) 
	#(220 1 #reduceActionForsubscript2: 15116290 false) 
	#(221 1 #liftFirstValue: 15232002 false) 
	#(198 2 #reduceActionFordecorators1: 12938242 false) 
	#(204 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13726721 false) 
	#(206 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13894657 false) 
	#(208 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 14070785 false) 
	#(210 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 14255105 false) 
	#(226 3 #reduceActionForassignment_expression1: 15503361 false) 
	#(129 3 #reduceActionForexpr_stmt2: 6866946 false) 
	#(131 1 #liftFirstValue: 7099394 false) 
	#(131 1 #liftFirstValue: 7099393 false) 
	#(229 2 #reduceActionFor__name___name______1: 15662081 false) 
	#(228 3 #reduceActionFortestlist1: 15629313 false) 
	#(230 2 #reduceActionFor__name___name_______2: 15662082 false) 
	#(133 3 #reduceActionForprint_stmt1: 7341057 false) 
	#(110 2 #reduceActionFordecorators1: 5246978 false) 
	#(113 1 #reduceActionForyield_stmt1: 5429250 false) 
	#(111 4 #reduceActionFordecorator1: 5292033 false) 
	#(250 3 #reduceActionFortestlist11: 17672193 false) 
	#(160 3 #reduceActionFortest_test_opt2: 9067522 false) 
	#(236 4 #reduceActionForclassdef1: 16283649 false) 
	#(240 1 #liftFirstValue: 16524289 false) 
	#(239 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 16476161 false) 
	#(223 3 #reduceActionForexprlist1: 15295489 false) 
	#(159 4 #reduceActionForexec_stmt2: 8971266 false) 
	#(148 1 #reduceActionForimport_names_star1: 8297473 false) 
	#(149 1 #reduceActionFordotted_name2: 8382465 false) 
	#(145 4 #reduceActionForimport_from1: 8118273 false) 
	#(152 1 #reduceActionFornamelist2: 8611842 false) 
	#(148 1 #reduceActionForimport_names_star3: 8297475 false) 
	#(158 3 #reduceActionFornamelist1: 8926209 false) 
	#(165 0 #reduceActionFornewline_opts1: 9477121 false) 
	#(153 3 #reduceActionFordotted_as_names1: 8708097 false) 
	#(150 3 #reduceActionFordotted_as_name2: 8476674 false) 
	#(121 2 #reduceActionForvarArg_2: 6109186 false) 
	#(120 3 #reduceActionForvarargslist5: 5947397 false) 
	#(120 3 #reduceActionForvarargslist14: 5947406 false) 
	#(125 2 #reduceActionForexprlist2: 6610946 false) 
	#(124 3 #reduceActionForfpdef2: 6552578 false) 
	#(217 4 #reduceActionForlambdef1: 14807041 false) 
	#(120 3 #reduceActionForexprlist1: 5947393 false) 
	#(123 2 #reduceActionForinit1: 6518785 false) 
	#(120 3 #reduceActionForvarargslist17: 5947409 false) 
	#(120 3 #reduceActionForvarargslist18: 5947410 false) 
	#(141 4 #reduceActionForraise_stmt4: 7782404 false) 
	#(142 2 #reduceActionFor__name___name______1: 7981057 false) 
	#(176 1 #reduceActionForexcept_clause1: 10350593 false) 
	#(167 0 #nil 9566209 false) 
	#(174 3 #reduceActionFornamelist1: 10118145 false) 
	#(173 4 #reduceActionForwith_stmt1: 10064897 false) 
	#(175 3 #reduceActionForwith_item2: 10195970 false) 
	#(242 0 #reduceActionFormore_args1: 16762881 false) 
	#(243 2 #reduceActionForargument2: 17014786 false) 
	#(218 3 #reduceActionFortrailer2: 14885890 false) 
	#(241 2 #reduceActionForarglist2: 16603138 false) 
	#(218 3 #reduceActionFortrailer3: 14885891 false) 
	#(219 2 #reduceActionForexprlist2: 15020034 false) 
	#(130 3 #reduceActionFornamelist1: 6993922 false) 
	#(133 4 #reduceActionForprint_stmt2: 7341058 false) 
	#(112 3 #reduceActionForparen_arglist_opt2: 5371906 false) 
	#(118 3 #liftSecondValue: 5836801 false) 
	#(117 2 #reduceActionForreturn_annotation_opt2: 5751810 false) 
	#(151 2 #reduceActionForimport_as_names1: 8560641 false) 
	#(120 4 #reduceActionForvarargslist6: 5947398 false) 
	#(122 2 #reduceActionForvarArg1: 6435841 false) 
	#(120 4 #reduceActionForvarargslist15: 5947407 false) 
	#(125 3 #reduceActionForexprlist1: 6610945 false) 
	#(120 4 #reduceActionForvarargslist2: 5947394 false) 
	#(120 4 #reduceActionForvarargslist3: 5947395 false) 
	#(120 4 #reduceActionForvarargslist19: 5947411 false) 
	#(178 1 #reduceActionFordecorators2: 10646530 false) 
	#(176 2 #reduceActionForexcept_clause2: 10350594 false) 
	#(171 0 #nil 9912321 false) 
	#(168 5 #reduceActionForwhile_stmt1: 9610241 false) 
	#(233 4 #reduceActionFordictorsetmaker3: 15864835 false) 
	#(233 4 #reduceActionFordictorsetmaker1: 15864833 false) 
	#(235 3 #reduceActionForexprlist1: 16167939 false) 
	#(225 5 #reduceActionFortest2: 15383554 false) 
	#(241 3 #reduceActionForarglist4: 16603140 false) 
	#(243 3 #reduceActionForargument3: 17014787 false) 
	#(241 3 #reduceActionForexprlist1: 16603137 false) 
	#(220 3 #reduceActionForsubscript1: 15116289 false) 
	#(219 3 #reduceActionForexprlist1: 15020033 false) 
	#(222 0 #nil 15253505 false) 
	#(202 5 #reduceActionForstring3: 13581315 false) 
	#(204 2 #reduceActionFor__name___name_______2: 13726722 false) 
	#(202 5 #reduceActionForstring3: 13581316 false) 
	#(206 2 #reduceActionFor__name___name_______2: 13894658 false) 
	#(202 5 #reduceActionForstring3: 13581317 false) 
	#(208 2 #reduceActionFor__name___name_______2: 14070786 false) 
	#(202 5 #reduceActionForstring3: 13581318 false) 
	#(210 2 #reduceActionFor__name___name_______2: 14255106 false) 
	#(130 4 #reduceActionForassign_after3: 6993923 false) 
	#(240 3 #reduceActionForclassListItem2: 16524290 false) 
	#(236 6 #reduceActionForclassdef2: 16283650 false) 
	#(237 3 #reduceActionForsuperclasslist1: 16430081 false) 
	#(239 2 #reduceActionFor__name___name_______2: 16476162 false) 
	#(116 6 #reduceActionForfuncdef1: 5625857 false) 
	#(149 3 #reduceActionForimport_as_name2: 8382466 false) 
	#(148 3 #reduceActionForimport_names_star2: 8297474 false) 
	#(152 3 #reduceActionFornamelist1: 8611841 false) 
	#(165 2 #reduceActionFordecorators1: 9477122 false) 
	#(164 6 #reduceActionForif_stmt1: 9441281 false) 
	#(120 5 #reduceActionForvarargslist7: 5947399 false) 
	#(122 3 #reduceActionForvarArg2: 6435842 false) 
	#(122 3 #reduceActionForvarArg3: 6435843 false) 
	#(120 5 #reduceActionForvarargslist4: 5947396 false) 
	#(141 6 #reduceActionForraise_stmt5: 7782405 false) 
	#(178 2 #reduceActionFordecorators1: 10646529 false) 
	#(177 4 #reduceActionForsuite2: 10570754 false) 
	#(170 6 #reduceActionFortry_stmt2: 9774082 false) 
	#(170 6 #reduceActionFortry_stmt1: 9774081 false) 
	#(172 3 #reduceActionForexcept_list2: 9964546 false) 
	#(248 4 #reduceActionForcomp_for1: 17434625 false) 
	#(245 4 #reduceActionForlist_for1: 17158145 false) 
	#(179 1 #reduceActionFortestlist_safe1: 10885121 false) 
	#(181 1 #liftFirstValue: 11030530 false) 
	#(181 1 #liftFirstValue: 11030529 false) 
	#(241 4 #reduceActionForarglist3: 16603139 false) 
	#(220 4 #reduceActionForsubscript3: 15116291 false) 
	#(203 2 #reduceActionFor__name___name______1: 13726721 false) 
	#(205 2 #reduceActionFor__name___name______1: 13894657 false) 
	#(207 2 #reduceActionFor__name___name______1: 14070785 false) 
	#(209 2 #reduceActionFor__name___name______1: 14255105 false) 
	#(116 7 #reduceActionForfuncdef2: 5625858 false) 
	#(236 7 #reduceActionForclassdef3: 16283651 false) 
	#(238 2 #reduceActionFor__name___name______1: 16476161 false) 
	#(169 7 #reduceActionForfor_stmt1: 9683969 false) 
	#(120 6 #reduceActionForvarargslist8: 5947400 false) 
	#(122 4 #reduceActionForvarArg4: 6435844 false) 
	#(176 4 #reduceActionForexcept_clause4: 10350596 false) 
	#(176 4 #reduceActionForexcept_clause3: 10350595 false) 
	#(167 3 #reduceActionForelse_opt2: 9566210 false) 
	#(172 4 #reduceActionForexcept_list1: 9964545 false) 
	#(248 5 #reduceActionForcomp_for2: 17434626 false) 
	#(247 1 #liftFirstValue: 17397761 false) 
	#(247 1 #liftFirstValue: 17397762 false) 
	#(245 5 #reduceActionForlist_for2: 17158146 false) 
	#(244 1 #liftFirstValue: 17122305 false) 
	#(244 1 #liftFirstValue: 17122306 false) 
	#(235 5 #reduceActionFormore_tests2: 16167938 false) 
	#(242 3 #reduceActionFormore_args3: 16762883 false) 
	#(242 3 #reduceActionFormore_args2: 16762882 false) 
	#(242 3 #reduceActionFormore_args4: 16762884 false) 
	#(222 2 #reduceActionForsliceop2: 15253506 false) 
	#(120 7 #reduceActionForvarargslist10: 5947402 false) 
	#(120 7 #reduceActionForvarargslist9: 5947401 false) 
	#(171 3 #reduceActionForfinally_opt2: 9912322 false) 
	#(249 2 #reduceActionForcomp_if1: 17561601 false) 
	#(246 2 #reduceActionForlist_if1: 17287169 false) 
	#(180 1 #reduceActionFornamelist2: 10964994 false) 
	#(166 4 #reduceActionForelif1: 9518081 false) 
	#(120 8 #reduceActionForvarargslist11: 5947403 false) 
	#(120 8 #reduceActionForvarargslist12: 5947404 false) 
	#(249 3 #reduceActionForcomp_if2: 17561602 false) 
	#(182 4 #reduceActionForold_lambdef1: 11068417 false) 
	#(246 3 #reduceActionForlist_if2: 17287170 false) 
	#(179 4 #reduceActionFortestlist_safe2: 10885122 false) 
	#(120 9 #reduceActionForvarargslist13: 5947405 false) 
	#(180 3 #reduceActionFornamelist1: 10964993 false)
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
PythonParser class >> symbolNames [
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '"..."' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"metaclass"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'varArg*' 'varArg' 'init' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' '"." ''dot''+' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' '(<name> ''name'' ".")' '(<name> ''name'' ".")+' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elif ''elsif''*' 'elif' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'trailer ''trailer''+' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'assignment_expression' 'Symbol' 'testlist' '("," testlistItem ''test'')' '("," testlistItem ''test'')+' 'testlistItem' 'testlist_opt' 'dictorsetmaker' 'dictSpread' 'more_tests' 'classdef' 'superclasslist' '("," classListItem ''superClass'')' '("," classListItem ''superClass'')*' 'classListItem' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #OrderedCollection #PyDecoratedNode #PyFuncdefNode #PyReturnTypeAnnotationNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #OrderedCollection #OrderedCollection #PyInitNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #PyRootNode #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #OrderedCollection #PyImportNode #PyImportNode #PyImportNode #PyRootNode #OrderedCollection #OrderedCollection #PyNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyGlobalNode #OrderedCollection #PyExecNode #OrderedCollection #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #OrderedCollection #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #OrderedCollection #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #OrderedCollection #PyRootNode #PyTypeAnnotationNode #PyStringsNode #PyRootNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #PyRootNode #PyRootNode #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #PyAssignmentExpressionNode #PySymbolNode #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #PyRootNode #PySpreadNode #OrderedCollection #PyClassdefNode #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 6 0 6 0 10 0 6 0 13 0 6 0 17 0 6 0 36 0 6 0 39 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 53 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 6 0 64 0 6 0 66 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 73 0 6 0 76 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 92 0 6 0 99 0 6 0 100 0 6 0 102 0 6 0 104 0 17 0 107 0 6 0 254 0 6 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 157 0 99 0 161 0 100 0 165 0 102 0 169 0 104 0 173 0 108 0 177 0 111 0 181 0 114 1 9 0 115 1 9 0 116 0 193 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 1 9 0 163 1 9 0 164 1 9 0 168 1 9 0 169 1 9 0 170 1 9 0 173 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 9 0 236 1 145 0 251 1 149 0 254] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 153 0 109 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 157 0 228 1 137 0 231] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 1 161 0 99 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 1 165 0 115 1 165 0 116 1 165 0 126 1 165 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 1 165 0 163 1 165 0 164 1 165 0 168 1 165 0 169 1 165 0 170 1 165 0 173 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 165 0 236 1 145 0 251 1 149 0 254 0 0 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 177 0 217 1 177 0 225 1 177 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 181 0 194 1 181 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 189 0 194 1 189 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 0 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 1 193 0 77 1 197 0 154 1 201 0 155 1 205 0 156] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 209 0 217 1 209 0 225 1 209 0 226 1 129 0 227 1 213 0 250] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 217 0 160 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 221 0 217 1 221 0 225 1 221 0 226 1 129 0 227] 
#[0 1 225 0 48] 
#[1 0 33 0 17 0 41 0 39 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 229 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 0 30 0 24 0 99] 
#[0 1 233 0 77] 
#[0 0 34 0 24 0 99] 
#[0 1 237 0 77] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 245 0 223 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 249 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 253 0 223 1 89 0 227] 
#[1 2 1 0 16 1 193 0 77 2 5 0 146 2 9 0 147 2 5 0 154 1 201 0 155 1 205 0 156] 
#[1 2 17 0 77 2 21 0 158] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 25 0 217 2 25 0 225 2 25 0 226 1 129 0 227] 
#[1 1 193 0 77 2 29 0 150 2 33 0 153 2 37 0 154 1 201 0 155 1 205 0 156] 
#[1 2 41 0 6 2 45 0 7 0 38 0 22 2 49 0 77 2 53 0 100 2 57 0 119 2 61 0 120 2 65 0 124] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 69 0 185 2 69 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 0 42 0 24 0 99] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 46 0 24 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 46 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 73 0 217 2 73 0 225 2 73 0 226 1 129 0 227] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 24 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 2 81 0 228 1 137 0 231 2 81 0 232] 
#[0 2 85 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 89 0 217 2 89 0 225 2 89 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 93 0 174 2 97 0 175 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 101 0 217 2 101 0 225 2 101 0 226 1 129 0 227] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 41 0 39 0 53 0 44 2 105 0 56 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 50 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 2 109 0 228 1 137 0 231 2 109 0 232] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 113 0 194 2 113 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 54 0 1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 16 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 7 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 54 0 27 0 54 0 28 0 54 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 51 0 54 0 55 0 54 0 56 0 54 0 58 0 54 0 60 0 54 0 61 0 54 0 64 0 54 0 65 0 54 0 74 0 54 0 75 0 54 0 81 0 54 0 82 0 54 0 84 0 54 0 85 0 54 0 87 0 54 0 88 0 54 0 90 0 54 0 91 0 54 0 99 0 54 0 100 0 54 0 101 0 54 0 102 0 54 0 103 0 54 0 105 2 121 0 200 0 54 0 255] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 0 70 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 125 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 129 0 216 2 133 0 217 2 133 0 225 2 133 0 226 1 129 0 227 2 129 0 228 1 137 0 231 2 141 0 251] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 145 0 103 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 149 0 215 2 153 0 217 2 153 0 225 2 153 0 226 1 129 0 227 2 149 0 228 1 137 0 231] 
#[1 0 21 0 6 2 161 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 165 0 105 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 169 0 217 2 169 0 225 2 169 0 226 1 129 0 227 2 177 0 228 1 137 0 231 2 177 0 233 2 181 0 234] 
#[0 0 0 0 255] 
#[0 0 74 0 36 0 43 0 46 0 48] 
#[1 0 37 0 36 0 49 0 43 0 61 0 46 0 69 0 48 2 185 0 111 2 189 0 116 2 193 0 236] 
#[0 0 78 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 82 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 86 0 255] 
#[0 0 90 0 24 0 99] 
#[0 0 94 0 24 0 99] 
#[0 0 98 0 24 0 99] 
#[0 0 102 0 24 0 99] 
#[0 0 106 0 24 0 99] 
#[0 0 110 0 24 0 99] 
#[0 0 114 0 24 0 99] 
#[0 0 118 0 24 0 99] 
#[0 0 122 0 24 0 99] 
#[0 0 126 0 24 0 99] 
#[0 0 130 0 24 0 99] 
#[0 0 134 0 24 0 99] 
#[0 0 138 0 24 0 99] 
#[0 0 142 0 24 0 99] 
#[0 0 146 0 24 0 99] 
#[0 0 150 0 24 0 99] 
#[1 2 197 0 24 0 154 0 99 2 201 0 128] 
#[0 2 205 0 99] 
#[0 0 158 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 162 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 166 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 170 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 0 174 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 24 0 178 0 27 0 178 0 30 0 178 0 35 0 178 0 38 0 178 0 39 0 178 0 41 0 178 0 55 0 178 0 56 2 209 0 58 0 178 0 75 0 178 0 81 0 178 0 82 0 178 0 84 0 178 0 85 0 178 0 87 0 178 0 88 0 178 0 90 0 178 0 91 0 178 0 99 0 178 0 101 0 178 0 103 0 178 0 105 0 178 0 255] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 24 0 182 0 27 0 182 0 30 0 182 0 35 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 51 0 182 0 55 0 182 0 56 0 182 0 58 2 213 0 65 0 182 0 75 0 182 0 81 0 182 0 82 0 182 0 84 0 182 0 85 0 182 0 87 0 182 0 88 0 182 0 90 0 182 0 91 0 182 0 99 0 182 0 101 0 182 0 103 0 182 0 105 0 182 0 255] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 24 0 186 0 27 0 186 0 30 0 186 0 35 0 186 0 38 0 186 0 39 2 217 0 40 0 186 0 41 0 186 0 51 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 65 0 186 0 75 0 186 0 81 0 186 0 82 0 186 0 84 0 186 0 85 0 186 0 87 0 186 0 88 0 186 0 90 0 186 0 91 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 0 186 0 255] 
#[0 0 190 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[1 2 221 0 1 0 194 0 3 0 194 0 5 0 194 0 8 0 194 0 9 0 194 0 11 0 194 0 12 0 194 0 14 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 24 2 225 0 25 0 194 0 27 2 229 0 28 2 233 0 29 0 194 0 30 2 237 0 31 2 241 0 32 2 245 0 33 0 194 0 35 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 51 0 194 0 55 0 194 0 56 0 194 0 58 2 249 0 60 2 253 0 61 3 1 0 64 0 194 0 65 0 194 0 75 0 194 0 81 0 194 0 82 0 194 0 84 0 194 0 85 0 194 0 87 0 194 0 88 0 194 0 90 0 194 0 91 0 194 0 99 0 194 0 101 0 194 0 103 0 194 0 105 3 5 0 187 0 194 0 255] 
#[1 0 198 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 16 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 51 0 198 0 55 0 198 0 56 0 198 0 58 0 198 0 60 0 198 0 61 0 198 0 64 0 198 0 65 0 11 0 74 0 198 0 75 0 198 0 81 0 198 0 82 0 198 0 84 0 198 0 85 0 198 0 87 0 198 0 88 0 198 0 90 0 198 0 91 0 198 0 99 0 198 0 100 0 198 0 101 0 198 0 102 0 198 0 103 0 198 0 105 0 198 0 255] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 15 0 37 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 51 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 60 0 202 0 61 0 202 0 64 0 202 0 65 0 202 0 74 0 202 0 75 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 87 0 202 0 88 0 202 0 90 0 202 0 91 0 202 0 99 0 202 0 100 0 202 0 101 0 202 0 102 0 202 0 103 0 202 0 105 0 202 0 255] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 19 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 51 0 206 0 55 0 206 0 56 0 206 0 58 0 206 0 60 0 206 0 61 0 206 0 64 0 206 0 65 0 206 0 74 0 206 0 75 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 87 0 206 0 88 0 206 0 90 0 206 0 91 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 102 0 206 0 103 0 206 0 105 0 206 0 255] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 16 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 24 0 210 0 25 0 23 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 27 0 34 0 210 0 35 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 51 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 64 0 210 0 65 0 210 0 74 0 210 0 75 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 91 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 102 0 210 0 103 0 210 0 105 0 210 0 255] 
#[1 0 214 0 1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 31 0 10 0 214 0 11 0 214 0 12 0 35 0 13 0 214 0 14 0 214 0 16 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 51 0 214 0 55 0 214 0 56 0 214 0 58 0 214 0 60 0 214 0 61 0 214 0 64 0 214 0 65 0 214 0 74 0 214 0 75 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 87 0 214 0 88 0 214 0 90 0 214 0 91 0 214 0 99 0 214 0 100 0 214 0 101 0 214 0 102 0 214 0 103 0 214 0 105 0 214 0 255] 
#[1 0 218 0 1 0 39 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 43 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 16 0 47 0 18 0 51 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 24 0 218 0 25 0 218 0 26 0 218 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 51 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 60 0 218 0 61 0 218 0 64 0 218 0 65 0 218 0 74 0 218 0 75 0 218 0 81 0 218 0 82 0 218 0 84 0 218 0 85 0 218 0 87 0 218 0 88 0 218 0 90 0 218 0 91 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 103 0 218 0 105 0 218 0 255] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 226 0 1 0 226 0 2 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 6 0 55 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 16 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 27 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 51 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 60 0 226 0 61 0 226 0 64 0 226 0 65 0 226 0 74 0 226 0 75 0 226 0 81 0 226 0 82 0 226 0 84 0 226 0 85 0 226 0 87 0 226 0 88 0 226 0 90 0 226 0 91 0 226 0 99 0 226 0 100 0 226 0 101 0 226 0 102 0 226 0 103 0 226 0 105 0 226 0 255] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 234 0 1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 59 0 16 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 24 0 234 0 25 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 40 0 234 0 41 0 234 0 51 0 234 0 55 0 234 0 56 0 234 0 58 0 234 0 60 0 234 0 61 0 234 0 64 0 234 0 65 0 234 0 74 0 234 0 75 0 234 0 81 0 234 0 82 0 234 0 84 0 234 0 85 0 234 0 87 0 234 0 88 0 234 0 90 0 234 0 91 0 234 0 99 0 63 0 100 0 234 0 101 0 67 0 102 0 234 0 103 0 234 0 105 3 69 0 198 3 73 0 218 0 234 0 255] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 242 0 1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 0 242 0 7 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 16 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 21 0 242 0 22 0 242 0 24 0 242 0 25 0 242 0 26 0 242 0 27 0 242 0 28 0 242 0 29 0 242 0 30 0 242 0 31 0 242 0 32 0 242 0 33 0 242 0 34 0 242 0 35 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 40 0 242 0 41 0 242 0 51 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 60 0 242 0 61 0 242 0 64 0 242 0 65 0 242 0 74 0 242 0 75 0 145 0 78 0 149 0 79 0 10 0 80 0 242 0 81 0 242 0 82 0 14 0 83 0 242 0 84 0 242 0 85 0 18 0 86 0 242 0 87 0 242 0 88 0 22 0 89 0 242 0 90 0 242 0 91 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 102 0 242 0 103 0 242 0 105 3 77 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 0 242 0 255] 
#[0 3 81 0 80] 
#[0 3 85 0 83] 
#[0 3 89 0 86] 
#[0 3 93 0 89] 
#[0 0 246 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[0 0 250 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[0 0 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[1 1 2 0 1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 16 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 3 97 0 23 1 2 0 24 1 2 0 25 1 2 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 32 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 41 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 60 1 2 0 61 1 2 0 64 1 2 0 65 1 2 0 74 1 2 0 75 1 2 0 81 1 2 0 82 1 2 0 84 1 2 0 85 1 2 0 87 1 2 0 88 1 2 0 90 1 2 0 91 1 2 0 99 1 2 0 100 1 2 0 101 1 2 0 102 1 2 0 103 1 2 0 105 1 2 0 255] 
#[1 3 153 0 3 3 153 0 5 3 153 0 8 3 153 0 9 3 153 0 11 3 153 0 14 3 153 0 20 3 153 0 21 1 6 0 22 1 6 0 24 3 153 0 27 1 6 0 30 3 153 0 35 3 153 0 38 3 153 0 75 1 6 0 99 3 149 0 130 3 153 0 132] 
#[1 1 10 0 3 1 10 0 5 1 10 0 8 1 10 0 9 1 10 0 11 3 157 0 12 1 10 0 14 1 10 0 20 1 10 0 21 1 10 0 22 1 10 0 24 1 10 0 27 1 10 0 30 1 10 0 35 1 10 0 38 1 10 0 75 1 10 0 99 1 10 0 101 1 10 0 103 1 10 0 105 3 161 0 229 3 165 0 230 1 10 0 255] 
#[0 1 14 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 1 18 0 24 0 99] 
#[0 3 169 0 67] 
#[0 0 0 0 255] 
#[1 1 22 0 99 3 173 0 110 1 22 0 255] 
#[0 1 26 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 254 0 255] 
#[0 1 30 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 254 0 255] 
#[0 1 34 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 1 38 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 1 42 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 1 54 0 12 3 177 0 16 1 54 0 24 1 54 0 41 1 54 0 59 1 54 0 99 1 54 0 100] 
#[1 1 58 0 99 3 181 0 100 3 185 0 112] 
#[0 1 62 0 77] 
#[1 3 189 0 77 3 193 0 155] 
#[1 3 197 0 12 1 66 0 39] 
#[0 3 201 0 39] 
#[0 1 70 0 24 0 99] 
#[1 3 205 0 12 1 74 0 24 1 74 0 99] 
#[0 3 209 0 77] 
#[0 1 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 3 213 0 22 3 217 0 100] 
#[1 3 221 0 100 3 225 0 118] 
#[1 3 229 0 12 1 82 0 24 1 82 0 60 1 82 0 99 3 233 0 224] 
#[0 1 86 0 24 0 99] 
#[1 1 90 0 24 3 237 0 60 1 90 0 99] 
#[0 3 241 0 60] 
#[0 1 94 0 16 0 59 0 77] 
#[0 3 245 0 59] 
#[1 3 249 0 16 1 98 0 59 1 193 0 77 3 253 0 154 1 201 0 155 1 205 0 156] 
#[0 1 102 0 59] 
#[0 1 106 0 12 0 24 0 99] 
#[1 4 1 0 12 1 110 0 24 1 110 0 99] 
#[0 4 5 0 22] 
#[0 1 114 0 12 0 24 0 99] 
#[1 4 9 0 12 1 118 0 24 1 118 0 99] 
#[1 1 122 0 12 1 122 0 24 4 13 0 41 1 122 0 99] 
#[1 1 126 0 12 1 126 0 22 4 17 0 77 1 126 0 101 4 21 0 121] 
#[0 4 25 0 77] 
#[0 1 130 0 12 0 22 0 30 0 101] 
#[1 2 49 0 77 2 53 0 100 4 29 0 124 4 33 0 125] 
#[0 4 37 0 22] 
#[0 1 134 0 22 0 101] 
#[1 4 41 0 12 0 71 0 22 4 45 0 30 1 82 0 101 4 49 0 123 4 53 0 200 4 57 0 224] 
#[0 1 138 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[1 4 61 0 12 1 142 0 24 4 65 0 56 1 142 0 99 4 69 0 142] 
#[0 1 146 0 22 0 24 0 30 0 99 0 101] 
#[0 1 150 0 24 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 4 81 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 4 85 0 22] 
#[1 4 89 0 12 4 93 0 22] 
#[0 1 154 0 12 0 22] 
#[1 1 158 0 12 1 158 0 22 4 97 0 41] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 50 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 4 101 0 228 1 137 0 231 4 101 0 232] 
#[0 1 162 0 22 0 24 0 30 0 99 0 101] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 105 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 109 0 101] 
#[1 0 250 0 12 4 113 0 55 0 250 0 101 4 117 0 248] 
#[0 1 178 0 101] 
#[0 4 121 0 101] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 125 0 103] 
#[1 0 250 0 12 4 129 0 55 0 250 0 103 4 133 0 245] 
#[0 1 186 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 4 137 0 217 4 137 0 225 4 137 0 226 1 129 0 227] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 250 0 12 4 141 0 22 4 113 0 55 0 250 0 105 4 145 0 248] 
#[0 1 194 0 105] 
#[0 4 149 0 105] 
#[1 4 153 0 12 0 75 0 105 4 157 0 224 4 161 0 235] 
#[0 1 202 0 36 0 43 0 46 0 48] 
#[0 1 206 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 1 210 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 1 214 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 165 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 4 169 0 99] 
#[0 1 218 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 173 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 177 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 181 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 1 222 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 226 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 230 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 234 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 238 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 242 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 246 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 250 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 1 254 0 10 1 254 0 13 1 254 0 17 1 254 0 39 1 254 0 44 4 185 0 64 1 254 0 76 1 254 0 77 1 254 0 78 1 254 0 79 1 254 0 80 1 254 0 83 1 254 0 86 1 254 0 89 1 254 0 92 1 254 0 100 1 254 0 102 1 254 0 104] 
#[0 4 189 0 60] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 193 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 197 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 201 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 205 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 209 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 213 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 217 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 221 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 225 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 229 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 233 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 237 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 241 0 194 4 241 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 4 245 0 77] 
#[1 4 249 0 6 4 253 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 5 1 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 5 0 217 5 5 0 225 5 5 0 226 1 129 0 227 5 9 0 241 5 13 0 243] 
#[1 0 25 0 10 0 29 0 13 5 17 0 16 0 33 0 17 2 2 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 33 0 217 5 21 0 219 5 25 0 220 5 29 0 221 5 33 0 225 5 33 0 226 1 129 0 227] 
#[1 2 6 0 1 2 6 0 2 2 6 0 3 2 6 0 4 2 6 0 5 2 6 0 6 2 6 0 7 2 6 0 8 2 6 0 9 2 6 0 10 2 6 0 11 2 6 0 12 2 6 0 13 2 6 0 14 0 79 0 16 2 6 0 18 2 6 0 19 2 6 0 20 2 6 0 21 2 6 0 22 2 6 0 24 2 6 0 25 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 32 2 6 0 33 2 6 0 34 2 6 0 35 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 40 2 6 0 41 2 6 0 51 2 6 0 55 2 6 0 56 2 6 0 58 2 6 0 60 2 6 0 61 2 6 0 64 2 6 0 65 2 6 0 74 2 6 0 75 2 6 0 81 2 6 0 82 2 6 0 84 2 6 0 85 2 6 0 87 2 6 0 88 2 6 0 90 2 6 0 91 2 6 0 99 0 83 0 100 2 6 0 101 0 87 0 102 2 6 0 103 2 6 0 105 5 37 0 218 2 6 0 255] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 41 0 217 5 41 0 225 5 41 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 45 0 217 5 45 0 225 5 45 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 49 0 217 5 49 0 225 5 49 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 53 0 217 5 53 0 225 5 53 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 57 0 217 5 57 0 225 5 57 0 226 1 129 0 227] 
#[0 2 18 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 22 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 26 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 30 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 34 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 38 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 42 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 46 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 50 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 54 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 58 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 62 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 2 117 0 22 2 66 0 24 5 61 0 30 2 66 0 99 5 65 0 200] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 5 69 0 131 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 5 69 0 228 1 137 0 231 5 69 0 251] 
#[1 2 70 0 3 2 70 0 5 0 21 0 6 2 70 0 8 2 70 0 9 0 25 0 10 2 70 0 11 0 29 0 13 2 70 0 14 0 33 0 17 2 70 0 20 2 70 0 21 2 70 0 22 2 70 0 24 2 70 0 27 2 70 0 30 2 70 0 35 2 70 0 38 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 2 70 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 70 0 99 0 161 0 100 2 70 0 101 0 165 0 102 2 70 0 103 0 169 0 104 2 70 0 105 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 81 0 217 5 81 0 225 5 81 0 226 1 129 0 227 5 81 0 231 2 70 0 255] 
#[0 2 74 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[1 1 82 0 3 1 82 0 5 1 82 0 8 1 82 0 9 1 82 0 11 5 85 0 12 1 82 0 14 1 82 0 20 1 82 0 21 1 82 0 22 1 82 0 24 1 82 0 27 1 82 0 30 1 82 0 35 1 82 0 38 1 82 0 75 1 82 0 99 1 82 0 101 1 82 0 103 1 82 0 105 5 89 0 224 5 93 0 229 1 82 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 24 5 97 0 34 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 5 101 0 228 1 137 0 231 5 101 0 232] 
#[1 5 105 0 99 2 78 0 255] 
#[0 2 82 0 77] 
#[1 4 249 0 6 4 253 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 86 0 101 0 165 0 102 0 169 0 104 5 109 0 113 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 5 0 217 5 5 0 225 5 5 0 226 1 129 0 227 5 113 0 241 5 13 0 243] 
#[0 5 117 0 99] 
#[1 2 90 0 12 3 177 0 16 2 90 0 24 2 90 0 41 2 90 0 59 2 90 0 99 2 90 0 100] 
#[0 2 94 0 77] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 209 0 217 1 209 0 225 1 209 0 226 1 129 0 227 5 121 0 250] 
#[0 2 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 125 0 217 5 125 0 225 5 125 0 226 1 129 0 227] 
#[1 3 221 0 100 5 129 0 118] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 5 133 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 5 137 0 63 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 5 141 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 153 0 217 5 153 0 225 5 153 0 226 1 129 0 227 5 149 0 237 5 153 0 240] 
#[1 2 41 0 6 2 45 0 7 2 49 0 77 2 53 0 100 0 38 0 101 5 157 0 119 2 61 0 120 2 65 0 124] 
#[1 5 161 0 15 2 102 0 22 5 165 0 117] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 2 106 0 24 0 41 0 39 0 53 0 44 2 106 0 60 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 106 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 169 0 223 1 89 0 227] 
#[0 2 110 0 24 0 60 0 99] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 5 173 0 160 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 221 0 217 1 221 0 225 1 221 0 226 1 129 0 227] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 5 177 0 228 1 137 0 231] 
#[1 5 181 0 6 5 185 0 77 5 189 0 100 5 193 0 148 5 197 0 149 5 201 0 151 5 205 0 152] 
#[0 2 114 0 16 0 59 0 77] 
#[0 2 118 0 59] 
#[0 5 209 0 77] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 5 213 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 1 193 0 77 5 217 0 150 2 37 0 154 1 201 0 155 1 205 0 156] 
#[0 5 221 0 77] 
#[1 1 126 0 12 0 91 0 22 1 126 0 101 5 225 0 121 5 229 0 200] 
#[1 5 233 0 12 1 82 0 22 1 82 0 101 5 237 0 122 5 241 0 224] 
#[1 5 253 0 12 0 71 0 22 1 82 0 101 5 249 0 200 5 253 0 224] 
#[1 6 1 0 12 1 82 0 101 6 5 0 224] 
#[0 6 9 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 13 0 217 6 13 0 225 6 13 0 226 1 129 0 227] 
#[1 2 41 0 6 2 45 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 6 17 0 120 2 65 0 124] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 21 0 217 6 21 0 225 6 21 0 226 1 129 0 227] 
#[1 6 25 0 12 1 82 0 22 1 82 0 101 6 29 0 224] 
#[1 6 33 0 12 1 82 0 22 4 45 0 30 1 82 0 101 6 37 0 123 6 41 0 224] 
#[0 2 122 0 22 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 45 0 217 6 45 0 225 6 45 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 49 0 217 6 49 0 225 6 49 0 226 1 129 0 227] 
#[0 2 126 0 24 0 99] 
#[0 6 53 0 253] 
#[0 2 130 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 6 57 0 52 6 61 0 54 6 65 0 172 6 69 0 176] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 6 73 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 77 0 175 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 2 101 0 217 2 101 0 225 2 101 0 226 1 129 0 227] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 6 81 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 85 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 2 134 0 22 0 24 0 30 0 99 0 101] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 89 0 223 1 89 0 227] 
#[0 2 146 0 101] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 93 0 223 1 89 0 227] 
#[0 2 158 0 103] 
#[0 2 162 0 12 0 105] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 97 0 217 6 97 0 225 6 97 0 226 1 129 0 227] 
#[0 2 166 0 105] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 2 161 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 106 0 105 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 101 0 217 6 101 0 225 6 101 0 226 1 129 0 227 6 105 0 234] 
#[0 2 174 0 105] 
#[0 2 178 0 105] 
#[0 2 182 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 2 186 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 6 109 0 51] 
#[0 2 190 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[0 2 194 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[0 2 198 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 202 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 206 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 2 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 3 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 113 0 217 6 113 0 225 6 113 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 6 117 0 217 6 117 0 225 6 117 0 226 1 129 0 227] 
#[0 3 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 3 10 0 12 6 121 0 30 4 113 0 55 3 10 0 101 6 125 0 248] 
#[0 6 129 0 101] 
#[1 6 133 0 12 1 82 0 101 6 137 0 224] 
#[0 6 141 0 16] 
#[0 6 145 0 103] 
#[1 6 149 0 12 1 82 0 103 6 153 0 224] 
#[0 6 157 0 22] 
#[1 3 14 0 12 3 18 0 22 3 14 0 103] 
#[0 3 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 3 26 0 81 3 26 0 82 6 161 0 204] 
#[1 3 30 0 84 3 30 0 85 6 165 0 206] 
#[1 3 34 0 87 3 34 0 88 6 169 0 208] 
#[1 3 38 0 90 3 38 0 91 6 173 0 210] 
#[0 3 42 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 177 0 131 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 6 177 0 228 1 137 0 231 6 177 0 251] 
#[0 6 181 0 30] 
#[0 3 46 0 24 0 99] 
#[0 3 50 0 22 0 24 0 30 0 99] 
#[0 3 54 0 22 0 24 0 30 0 99] 
#[0 3 58 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[1 2 106 0 3 2 106 0 5 0 21 0 6 2 106 0 8 2 106 0 9 0 25 0 10 2 106 0 11 0 29 0 13 2 106 0 14 0 33 0 17 2 106 0 20 2 106 0 21 2 106 0 22 2 106 0 24 2 106 0 27 2 106 0 30 2 106 0 35 2 106 0 38 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 2 106 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 106 0 99 0 161 0 100 2 106 0 101 0 165 0 102 2 106 0 103 0 169 0 104 2 106 0 105 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 81 0 217 5 81 0 225 5 81 0 226 1 129 0 227 5 81 0 231 2 106 0 255] 
#[0 3 62 0 3 0 5 0 8 0 9 0 11 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[0 3 66 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 6 185 0 228 1 137 0 231] 
#[0 3 70 0 24 0 99] 
#[0 3 74 0 99 0 255] 
#[0 6 189 0 101] 
#[0 3 78 0 101] 
#[0 3 82 0 36 0 43 0 46 0 48] 
#[0 3 86 0 39] 
#[0 3 90 0 24 0 99] 
#[1 5 161 0 15 2 102 0 22 6 193 0 117] 
#[0 3 94 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 6 197 0 30] 
#[0 6 201 0 22] 
#[0 3 98 0 12 0 101] 
#[0 6 205 0 101] 
#[1 3 102 0 12 3 102 0 101 6 209 0 239] 
#[0 6 213 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 217 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 6 221 0 22] 
#[0 3 106 0 24 0 60 0 99] 
#[0 3 110 0 24 0 99] 
#[0 6 225 0 22] 
#[0 3 114 0 24 0 99] 
#[1 3 118 0 12 3 118 0 24 6 229 0 41 3 118 0 99 3 118 0 101] 
#[1 5 185 0 77 5 197 0 149 6 233 0 151 5 205 0 152] 
#[0 3 122 0 24 0 99] 
#[0 3 126 0 12 0 24 0 99 0 101] 
#[0 3 130 0 24 0 99] 
#[1 6 237 0 12 1 82 0 24 1 82 0 99 1 82 0 101 6 241 0 224] 
#[0 3 134 0 12 0 24 0 99] 
#[1 3 138 0 6 3 138 0 10 3 138 0 13 3 138 0 17 3 138 0 36 3 138 0 39 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 46 3 138 0 47 3 138 0 48 3 138 0 49 3 138 0 50 3 138 0 51 3 138 0 53 3 138 0 55 3 138 0 56 3 138 0 57 3 138 0 58 3 138 0 59 3 138 0 62 3 138 0 64 3 138 0 66 3 138 0 68 3 138 0 69 3 138 0 70 3 138 0 71 3 138 0 72 3 138 0 73 3 138 0 76 3 138 0 77 3 138 0 78 3 138 0 79 3 138 0 80 3 138 0 83 3 138 0 86 3 138 0 89 3 138 0 92 3 138 0 99 3 138 0 100 3 138 0 102 3 138 0 104 6 245 0 165 3 138 0 252 3 138 0 254 3 138 0 255] 
#[0 3 142 0 12 0 24 0 99] 
#[0 3 146 0 12 0 24 0 99] 
#[1 6 249 0 12 1 82 0 22 1 82 0 101 5 237 0 122 6 253 0 224] 
#[1 1 126 0 12 1 126 0 22 1 126 0 101 7 1 0 121] 
#[1 7 5 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 7 9 0 124] 
#[0 3 150 0 12 0 22 0 101] 
#[0 3 154 0 22 0 101] 
#[0 2 106 0 22 0 101] 
#[1 7 13 0 12 1 82 0 22 1 82 0 101 7 13 0 224] 
#[0 3 158 0 22 0 101] 
#[1 2 49 0 77 2 53 0 100 2 106 0 101 4 29 0 124 7 17 0 125] 
#[0 3 162 0 101] 
#[0 3 166 0 12 0 22 0 30 0 101] 
#[0 3 170 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[0 3 174 0 22 0 101] 
#[0 3 178 0 12 0 22 0 101] 
#[1 2 41 0 6 2 45 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 7 21 0 120 2 65 0 124] 
#[0 3 182 0 22 0 101] 
#[1 2 41 0 6 2 45 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 7 25 0 120 2 65 0 124] 
#[1 7 29 0 12 1 82 0 22 1 82 0 101 7 33 0 224] 
#[0 3 186 0 22 0 101] 
#[1 7 37 0 12 3 190 0 24 3 190 0 99] 
#[0 3 194 0 24 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 7 41 0 115 7 41 0 116 7 41 0 126 7 41 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 7 41 0 163 7 41 0 164 7 41 0 168 7 41 0 169 7 41 0 170 7 41 0 173 7 45 0 178 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 7 41 0 236 1 145 0 251 1 149 0 254] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 3 198 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 7 49 0 217 7 49 0 225 7 49 0 226 1 129 0 227] 
#[0 7 53 0 22] 
#[1 3 202 0 6 3 202 0 10 3 202 0 13 3 202 0 17 3 202 0 36 3 202 0 39 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 49 7 57 0 51 6 57 0 52 3 202 0 53 3 202 0 54 3 202 0 55 3 202 0 56 3 202 0 57 3 202 0 58 3 202 0 59 3 202 0 62 3 202 0 64 3 202 0 66 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 71 3 202 0 72 3 202 0 73 3 202 0 76 3 202 0 77 3 202 0 78 3 202 0 79 3 202 0 80 3 202 0 83 3 202 0 86 3 202 0 89 3 202 0 92 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 104 7 61 0 167 7 65 0 176 3 202 0 252 3 202 0 254 3 202 0 255] 
#[0 7 69 0 22] 
#[1 3 202 0 6 3 202 0 10 3 202 0 13 3 202 0 17 3 202 0 36 3 202 0 39 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 49 7 57 0 51 3 202 0 53 3 202 0 55 3 202 0 56 3 202 0 57 3 202 0 58 3 202 0 59 3 202 0 62 3 202 0 64 3 202 0 66 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 71 3 202 0 72 3 202 0 73 3 202 0 76 3 202 0 77 3 202 0 78 3 202 0 79 3 202 0 80 3 202 0 83 3 202 0 86 3 202 0 89 3 202 0 92 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 104 7 73 0 167 3 202 0 252 3 202 0 254 3 202 0 255] 
#[0 3 206 0 12 0 22] 
#[0 3 210 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 3 214 0 12 0 22] 
#[0 7 77 0 60] 
#[0 7 81 0 60] 
#[1 4 153 0 12 4 113 0 55 1 82 0 105 4 157 0 224 7 85 0 235 7 89 0 248] 
#[0 7 93 0 22] 
#[1 4 153 0 12 1 82 0 105 4 157 0 224 7 97 0 235] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 7 101 0 217 7 101 0 225 7 101 0 226 1 129 0 227] 
#[1 0 95 0 12 3 218 0 101 7 109 0 242] 
#[1 7 113 0 12 1 82 0 101 7 113 0 224] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 7 117 0 217 7 117 0 225 7 117 0 226 1 129 0 227] 
#[0 3 222 0 12 0 101] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 4 249 0 6 4 253 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 106 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 5 0 217 5 5 0 225 5 5 0 226 1 129 0 227 7 121 0 241 5 13 0 243] 
#[0 3 230 0 101] 
#[0 7 125 0 16] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[1 0 25 0 10 0 29 0 13 5 17 0 16 0 33 0 17 2 2 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 106 0 103 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 33 0 217 7 129 0 219 5 25 0 220 5 29 0 221 5 33 0 225 5 33 0 226 1 129 0 227] 
#[0 3 238 0 103] 
#[1 0 25 0 10 2 2 0 12 0 29 0 13 0 33 0 17 2 2 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 2 0 103 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 7 133 0 217 7 133 0 221 7 133 0 225 7 133 0 226 1 129 0 227] 
#[1 7 141 0 81 7 145 0 82 7 149 0 203] 
#[1 7 153 0 84 7 157 0 85 7 161 0 205] 
#[1 7 165 0 87 7 169 0 88 7 173 0 207] 
#[1 7 177 0 90 7 181 0 91 7 185 0 209] 
#[0 3 242 0 22 0 24 0 30 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 7 189 0 131 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 7 189 0 228 1 137 0 231 7 189 0 251] 
#[0 3 246 0 24 0 99] 
#[0 3 250 0 99] 
#[0 7 193 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 7 197 0 217 7 197 0 225 7 197 0 226 1 129 0 227] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 7 201 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 7 205 0 22] 
#[1 7 209 0 12 1 82 0 101 7 213 0 224 7 217 0 238] 
#[0 3 254 0 15 0 22] 
#[0 4 2 0 22] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 7 221 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 7 225 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 7 229 0 77] 
#[0 7 233 0 101] 
#[1 2 106 0 24 5 185 0 77 2 106 0 99 2 106 0 101 7 237 0 149] 
#[0 4 6 0 24 0 99 0 101] 
#[1 3 202 0 6 3 202 0 10 3 202 0 13 3 202 0 17 3 202 0 36 3 202 0 39 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 49 7 241 0 50 7 57 0 51 3 202 0 53 3 202 0 55 3 202 0 56 3 202 0 57 3 202 0 58 3 202 0 59 3 202 0 62 3 202 0 64 3 202 0 66 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 71 3 202 0 72 3 202 0 73 3 202 0 76 3 202 0 77 3 202 0 78 3 202 0 79 3 202 0 80 3 202 0 83 3 202 0 86 3 202 0 89 3 202 0 92 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 104 7 245 0 166 7 249 0 167 3 202 0 252 3 202 0 254 3 202 0 255] 
#[1 7 253 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 7 9 0 124] 
#[0 4 10 0 22 0 101] 
#[1 8 1 0 12 1 82 0 22 1 82 0 101 5 237 0 122 8 5 0 224] 
#[0 8 9 0 77] 
#[1 4 14 0 12 0 99 0 22 4 45 0 30 4 14 0 101 8 13 0 123 8 17 0 200] 
#[0 4 18 0 22 0 101] 
#[0 4 22 0 101] 
#[0 4 26 0 22 0 101] 
#[0 4 30 0 22 0 101] 
#[1 2 41 0 6 2 45 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 8 21 0 120 2 65 0 124] 
#[0 4 34 0 22 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 25 0 217 8 25 0 225 8 25 0 226 1 129 0 227] 
#[0 4 38 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 0 252 0 254] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 8 29 0 115 8 29 0 116 8 29 0 126 8 29 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 29 0 163 8 29 0 164 8 29 0 168 8 29 0 169 8 29 0 170 8 29 0 173 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 8 29 0 236 1 145 0 251 8 33 0 252 1 149 0 254] 
#[1 8 37 0 12 4 42 0 22 8 41 0 41] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 45 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 8 49 0 22] 
#[1 4 46 0 6 4 46 0 10 4 46 0 13 4 46 0 17 4 46 0 36 4 46 0 39 4 46 0 42 4 46 0 43 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 47 4 46 0 48 4 46 0 49 4 46 0 53 8 53 0 54 4 46 0 55 4 46 0 56 4 46 0 57 4 46 0 58 4 46 0 59 4 46 0 62 4 46 0 64 4 46 0 66 4 46 0 68 4 46 0 69 4 46 0 70 4 46 0 71 4 46 0 72 4 46 0 73 4 46 0 76 4 46 0 77 4 46 0 78 4 46 0 79 4 46 0 80 4 46 0 83 4 46 0 86 4 46 0 89 4 46 0 92 4 46 0 99 4 46 0 100 4 46 0 102 4 46 0 104 8 57 0 171 4 46 0 252 4 46 0 254 4 46 0 255] 
#[0 8 61 0 22] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 65 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 4 50 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 8 69 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 8 77 0 179 8 81 0 181 8 81 0 182 8 81 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 4 54 0 105] 
#[0 4 58 0 105] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 93 0 217 8 93 0 225 8 93 0 226 1 129 0 227] 
#[0 4 62 0 105] 
#[0 4 66 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 255] 
#[1 8 97 0 6 8 101 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 5 5 0 217 5 5 0 225 5 5 0 226 1 129 0 227 8 105 0 243] 
#[1 8 109 0 12 1 82 0 101 8 109 0 224] 
#[0 4 70 0 101] 
#[0 4 74 0 12 0 101] 
#[0 4 78 0 101] 
#[0 4 82 0 12 0 103] 
#[0 4 86 0 103] 
#[1 4 90 0 12 8 113 0 22 4 90 0 103 8 117 0 222] 
#[0 3 18 0 12 0 22 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 121 0 217 8 121 0 225 8 121 0 226 1 129 0 227] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 98 0 81 0 82] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 125 0 217 8 125 0 225 8 125 0 226 1 129 0 227] 
#[0 4 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 106 0 84 0 85] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 129 0 217 8 129 0 225 8 129 0 226 1 129 0 227] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 114 0 87 0 88] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 133 0 217 8 133 0 225 8 133 0 226 1 129 0 227] 
#[0 4 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 255] 
#[0 4 122 0 90 0 91] 
#[0 4 126 0 22 0 24 0 30 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 137 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 4 130 0 12 0 101] 
#[0 4 134 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 141 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 5 137 0 63 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 106 0 101 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 145 0 217 8 145 0 225 8 145 0 226 1 129 0 227 8 145 0 240] 
#[0 4 138 0 101] 
#[0 4 142 0 12 0 101] 
#[0 4 146 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 3 202 0 6 3 202 0 10 3 202 0 13 3 202 0 17 3 202 0 36 3 202 0 39 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 49 7 57 0 51 3 202 0 53 3 202 0 55 3 202 0 56 3 202 0 57 3 202 0 58 3 202 0 59 3 202 0 62 3 202 0 64 3 202 0 66 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 71 3 202 0 72 3 202 0 73 3 202 0 76 3 202 0 77 3 202 0 78 3 202 0 79 3 202 0 80 3 202 0 83 3 202 0 86 3 202 0 89 3 202 0 92 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 104 8 149 0 167 3 202 0 252 3 202 0 254 3 202 0 255] 
#[0 4 150 0 12 0 24 0 99 0 101] 
#[0 4 154 0 24 0 99] 
#[0 4 158 0 12 0 24 0 99 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 153 0 217 8 153 0 225 8 153 0 226 1 129 0 227] 
#[0 4 162 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 4 166 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 8 157 0 77] 
#[1 8 161 0 7 2 106 0 22 2 49 0 77 2 53 0 100 2 106 0 101 7 9 0 124] 
#[0 4 170 0 22 0 101] 
#[1 8 169 0 12 0 71 0 22 1 82 0 101 8 165 0 200 8 169 0 224] 
#[0 4 174 0 12 0 22 0 101] 
#[1 4 178 0 12 4 178 0 22 4 45 0 30 4 178 0 101 8 173 0 123] 
#[0 4 182 0 22 0 101] 
#[0 4 186 0 24 0 99] 
#[0 4 190 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 0 252 0 254] 
#[0 4 194 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 177 0 217 8 177 0 225 8 177 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 181 0 217 8 181 0 225 8 181 0 226 1 129 0 227] 
#[0 4 198 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 185 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 8 189 0 22] 
#[0 4 202 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 8 193 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 4 206 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 4 210 0 12 4 113 0 55 8 197 0 58 4 210 0 101 4 210 0 105 8 201 0 247 8 201 0 248 8 201 0 249] 
#[1 2 41 0 6 2 45 0 7 0 38 0 22 2 49 0 77 2 53 0 100 8 213 0 119 2 61 0 120 2 65 0 124] 
#[1 4 129 0 55 8 217 0 58 4 214 0 103 8 221 0 244 8 221 0 245 8 221 0 246] 
#[1 8 233 0 12 4 218 0 55 4 218 0 58 4 218 0 103] 
#[0 4 222 0 12 0 55 0 58 0 101 0 103 0 105] 
#[0 4 226 0 12 0 55 0 58 0 101 0 103 0 105] 
#[1 4 153 0 12 1 82 0 105 4 157 0 224 8 237 0 235] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 241 0 217 8 241 0 225 8 241 0 226 1 129 0 227] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 245 0 217 8 245 0 225 8 245 0 226 1 129 0 227] 
#[1 0 95 0 12 3 218 0 101 8 249 0 242] 
#[0 4 230 0 101] 
#[1 0 25 0 10 2 2 0 12 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 2 0 103 0 169 0 104 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 8 253 0 217 8 253 0 221 8 253 0 225 8 253 0 226 1 129 0 227] 
#[0 4 234 0 12 0 103] 
#[0 4 238 0 81 0 82] 
#[0 4 242 0 84 0 85] 
#[0 4 246 0 87 0 88] 
#[0 4 250 0 90 0 91] 
#[0 4 254 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 5 2 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 5 6 0 12 0 101] 
#[0 5 10 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 9 1 0 22] 
#[1 9 9 0 12 0 71 0 22 1 82 0 101 9 5 0 200 9 9 0 224] 
#[0 9 13 0 77] 
#[1 9 17 0 12 1 82 0 22 1 82 0 101 9 17 0 224] 
#[0 5 14 0 22 0 101] 
#[0 5 18 0 12 0 22 0 101] 
#[0 5 22 0 22] 
#[0 5 26 0 22] 
#[0 5 30 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 9 21 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[0 5 34 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 25 0 181 9 25 0 182 9 25 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 5 38 0 12 0 101 0 105] 
#[0 5 42 0 12 0 101 0 105] 
#[0 5 46 0 12 0 101 0 105] 
#[0 9 29 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 33 0 181 9 33 0 182 9 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 5 50 0 103] 
#[0 5 54 0 103] 
#[0 5 58 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 37 0 180 9 41 0 181 9 41 0 182 9 41 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 5 62 0 105] 
#[0 5 66 0 12 0 101] 
#[0 5 70 0 12 0 101] 
#[0 5 74 0 12 0 101] 
#[0 5 78 0 12 0 103] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 73 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 77 0 127 1 5 0 129 1 5 0 133 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 143 1 5 0 144 1 5 0 145 1 5 0 157 1 5 0 159 1 5 0 161 1 5 0 162 9 45 0 177 1 33 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 137 0 217 1 137 0 225 1 137 0 226 1 129 0 227 1 133 0 228 1 137 0 231 1 145 0 251 1 149 0 254] 
#[1 9 49 0 12 1 82 0 22 1 82 0 101 9 49 0 224] 
#[0 5 82 0 22 0 101] 
#[1 9 57 0 12 0 71 0 22 1 82 0 101 9 53 0 200 9 57 0 224] 
#[0 5 86 0 22 0 101] 
#[0 5 90 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[1 5 94 0 12 4 113 0 55 8 197 0 58 5 94 0 101 5 94 0 105 9 61 0 247 9 61 0 248 9 61 0 249] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 65 0 181 9 65 0 182 9 65 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[1 4 129 0 55 8 217 0 58 5 98 0 103 9 69 0 244 9 69 0 245 9 69 0 246] 
#[1 9 73 0 12 1 82 0 55 1 82 0 58 1 82 0 103 9 77 0 224] 
#[0 5 102 0 12 0 55 0 58 0 103] 
#[0 5 106 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 254 0 255] 
#[0 5 110 0 22 0 101] 
#[1 9 81 0 12 1 82 0 22 1 82 0 101 9 81 0 224] 
#[0 5 114 0 22 0 101] 
#[0 5 118 0 12 0 101 0 105] 
#[0 5 122 0 12 0 55 0 58 0 101 0 103 0 105] 
#[0 5 126 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 2 106 0 55 2 106 0 58 8 73 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 106 0 103 0 169 0 104 9 85 0 181 9 85 0 182 9 85 0 183 1 37 0 184 1 41 0 185 1 41 0 186 1 49 0 188 1 53 0 189 1 57 0 190 1 61 0 191 1 65 0 192 1 69 0 193 1 73 0 194 1 73 0 195 1 81 0 196 1 81 0 197 1 89 0 199 1 89 0 201 1 97 0 202 1 101 0 211 1 105 0 212 1 109 0 213 1 113 0 214 1 89 0 227] 
#[0 5 130 0 55 0 58 0 103] 
#[0 5 134 0 22 0 101] 
#[0 5 138 0 12 0 55 0 58 0 103]
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
PythonParser >> reduceActionFor__fStringSingleMid___part__test__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor__name___name______1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor__name___name_______1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor__name___name_______2: nodes [
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
PythonParser >> reduceActionForarglist_opt1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument1: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument2: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForargument3: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result test2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertNode new.
	result assertToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result tests.
	result commaToken: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassign_after3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
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
PythonParser >> reduceActionForatom10: nodes [
	| result |
	result := PySymbolNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom11: nodes [
	| result |
	result := PyAnnotatedSymbolNode new.
	result nameToken: (nodes at: 1).
	result variableAnnotation: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom12: nodes [
	| result |
	result := PyNumberNode new.
	result numberToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom1: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom3: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom4: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result rbrackToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom5: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom6: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom7: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result rcurlyToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForatom8: nodes [
	| result |
	result := PyBackTickNode new.
	result addToken: (nodes at: 1) to: result _Tokens.
	result list: (nodes at: 2).
	result addToken: (nodes at: 3) to: result _Tokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForawait2: nodes [
	| result |
	result := PyAwaitNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForbreak_stmt1: nodes [
	| result |
	result := PyBreakNode new.
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
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassdef2: nodes [
	| result |
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result rparenToken: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForclassdef3: nodes [
	| result |
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result superClasses.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 7) at: 2).
	result iNDENTToken: ((nodes at: 7) at: 3).
	result dEDENTToken: ((nodes at: 7) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for1: nodes [
	| result |
	result := PyCompForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result _in: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_for2: nodes [
	| result |
	result := PyCompForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result _in: (nodes at: 4).
	result comp: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if1: nodes [
	| result |
	result := PyCompIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_if2: nodes [
	| result |
	result := PyCompIfNode new.
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
	result not: ((nodes at: 2) at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcontinue_stmt1: nodes [
	| result |
	result := PyContinueNode new.
	result continueToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorated1: nodes [
	| result |
	result := PyDecoratedNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result classdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorated2: nodes [
	| result |
	result := PyDecoratedNode new.
	result addNodes: (nodes at: 1) to: result decorators.
	result funcdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorator1: nodes [
	| result |
	result := PyDecoratorNode new.
	result _Token: (nodes at: 1).
	result dotted_name: (nodes at: 2).
	result lparenToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result commaTokens.
	result addTokens: ((nodes at: 3) at: 4) to: result timesTokens.
	result timesTimesToken: ((nodes at: 3) at: 5).
	result rparenToken: ((nodes at: 3) at: 6).
	result nEWLINEToken: (nodes at: 4).
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
	result := PyDelNode new.
	result delToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker1: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNode: (nodes at: 3) to: result values.
	result comp: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker2: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker3: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNode: (nodes at: 3) to: result values.
	result addTokens: ((nodes at: 4) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result objects.
	result addTokens: ((nodes at: 4) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker4: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result objects.
	result addTokens: ((nodes at: 2) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 2) at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker5: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result addNode: (nodes at: 1) to: result objects.
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result dots.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyRelativeNameNode new.
	result addTokens: (nodes at: 1) to: result dots.
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
PythonParser >> reduceActionFordotted_name1: nodes [
	| result |
	result := PyDottedNameNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result periodTokens.
	result addToken: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_name2: nodes [
	| result |
	result := PyNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelif1: nodes [
	| result |
	result := PyElifNode new.
	result elifToken: (nodes at: 1).
	result elif: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelse_opt2: nodes [
	| result |
	result := PyElseNode new.
	result elseToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 3) at: 2).
	result iNDENTToken: ((nodes at: 3) at: 3).
	result dEDENTToken: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForeval_input1: nodes [
	| result |
	result := PyEvalInputNode new.
	result testlist: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result nEWLINETokens.
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
	result except: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause3: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result asToken: (nodes at: 3).
	result another: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_clause4: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result commaToken: (nodes at: 3).
	result except2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self add: ((nodes at: 4) at: 2) to: (result at: 4).
	self add: ((nodes at: 4) at: 3) to: (result at: 5).
	self add: ((nodes at: 4) at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexcept_list2: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self add: ((nodes at: 3) at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 3) to: (result at: 5).
	self add: ((nodes at: 3) at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt1: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexec_stmt2: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
	result commaToken: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt1: nodes [
	| result |
	result := PyExprStmtNode new.
	result testlist: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result assigns.
	result addNodes: ((nodes at: 2) at: 2) to: result tos.
	result addNodes: ((nodes at: 2) at: 3) to: result typeAnnotations.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr_stmt2: nodes [
	| result |
	result := PyExprStmtNode new.
	result testlist: (nodes at: 1).
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
PythonParser >> reduceActionForexprlist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor2: nodes [
	| result |
	result := PyFactorNode new.
	result plusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor3: nodes [
	| result |
	result := PyFactorNode new.
	result minusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfactor4: nodes [
	| result |
	result := PyFactorNode new.
	result tildeToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input1: nodes [
	| result |
	result := PyFileInputNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfile_input2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result nEWLINETokens.
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
PythonParser >> reduceActionForfinally_opt2: nodes [
	| result |
	result := PyFinallyNode new.
	result finallyToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 3) at: 2).
	result iNDENTToken: ((nodes at: 3) at: 3).
	result dEDENTToken: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfor_stmt1: nodes [
	| result |
	result := PyForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result testlist: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	result else: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfpdef1: nodes [
	| result |
	result := PyFpdefNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfpdef2: nodes [
	| result |
	result := PyFpdefNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result fpdefs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef1: nodes [
	| result |
	result := PyFuncdefNode new.
	result defToken: (nodes at: 1).
	result fname: (nodes at: 2).
	result parameters: (nodes at: 3).
	result returnAnnotation: (nodes at: 4).
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForfuncdef2: nodes [
	| result |
	result := PyFuncdefNode new.
	result asyncToken: (nodes at: 1).
	result defToken: (nodes at: 2).
	result fname: (nodes at: 3).
	result parameters: (nodes at: 4).
	result returnAnnotation: (nodes at: 5).
	result colonToken: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 7) at: 2).
	result iNDENTToken: ((nodes at: 7) at: 3).
	result dEDENTToken: ((nodes at: 7) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForglobal_stmt1: nodes [
	| result |
	result := PyGlobalNode new.
	result globalToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForif_stmt1: nodes [
	| result |
	result := PyIfNode new.
	result ifToken: (nodes at: 1).
	result if: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	result addNodes: (nodes at: 5) to: result elsifs.
	result else: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_name2: nodes [
	| result |
	result := PyAsNameNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result rename: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_from1: nodes [
	| result |
	result := PyImportNode new.
	result fromToken: (nodes at: 1).
	result from: (nodes at: 2).
	result importToken: (nodes at: 3).
	result timesToken: ((nodes at: 4) at: 1).
	result lparenToken: ((nodes at: 4) at: 2).
	result addTokens: ((nodes at: 4) at: 3) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 4) to: result names.
	result rparenToken: ((nodes at: 4) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_name1: nodes [
	| result |
	result := PyImportNode new.
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
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForlambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result arguments: (nodes at: 2).
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
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
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
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
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
PythonParser >> reduceActionForlistmaker1: nodes [
	| result |
	result := PyListmakerNode new.
	result test: (nodes at: 1).
	result list_for: (nodes at: 2).
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
PythonParser >> reduceActionFormore_tests1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_tests2: nodes [
	| result |
	result := nodes at: 5.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	self addFirst: (nodes at: 4) to: (result at: 4).
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
PythonParser >> reduceActionFornewline_opts1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFornot_test1: nodes [
	| result |
	result := PyNotNode new.
	result notToken: (nodes at: 1).
	result negated: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForold_lambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result args: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
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
PythonParser >> reduceActionForparen_arglist_opt1: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForparen_arglist_opt2: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: ((nodes at: 2) at: 4).
	result at: 6 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForpass_stmt1: nodes [
	| result |
	result := PyPassNode new.
	result passToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt1: nodes [
	| result |
	result := PyPrintNode new.
	result python2Token: (nodes at: 1).
	result printToken: (nodes at: 2).
	result testlist: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForprint_stmt2: nodes [
	| result |
	result := PyPrintNode new.
	result python2Token: (nodes at: 1).
	result printToken: (nodes at: 2).
	result greaterThanGreaterThanToken: (nodes at: 3).
	result testlist: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt1: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt2: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt3: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt4: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commaTokens.
	result arg2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForraise_stmt5: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commaTokens.
	result arg2: (nodes at: 4).
	result addToken: (nodes at: 5) to: result commaTokens.
	result arg3: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_annotation_opt2: nodes [
	| result |
	result := PyReturnTypeAnnotationNode new.
	result minusGreaterThanToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForreturn_stmt1: nodes [
	| result |
	result := PyReturnNode new.
	result returnToken: (nodes at: 1).
	result testlist: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsimple_stmt1: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result stmts.
	result addFirstToken: (nodes at: 2) to: result semicolonTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsimple_stmt2: nodes [
	| result |
	result := PySimpleStmtNode new.
	result addNode: (nodes at: 1) to: result stmts.
	result addToken: (nodes at: 2) to: result semicolonTokens.
	result nEWLINEToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input1: nodes [
	| result |
	result := PySingleInputNode new.
	result nEWLINEToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input2: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsingle_input3: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	result nEWLINEToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsliceop2: nodes [
	| result |
	result := PySliceopNode new.
	result colonToken: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring1: nodes [
	| result |
	result := PyStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstring3: nodes [
	| result |
	result := PyInterpolatedStringNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addNode: (nodes at: 3) to: result expressions.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	result addToken: (nodes at: 5) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringsNode new.
	result addNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript1: nodes [
	| result |
	result := PySubscriptNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript2: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsubscript3: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result test2: (nodes at: 3).
	result slice: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuite1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuite2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	self addAll: (nodes at: 3) to: (result at: 1).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForsuperclasslist1: nodes [
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
PythonParser >> reduceActionFortest2: nodes [
	| result |
	result := PyIfTestNode new.
	result or: (nodes at: 1).
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
	result := PyTestlist1Node new.
	result test: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result tests: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist1: nodes [
	| result |
	result := PyTestlistNode new.
	result addNode: (nodes at: 1) to: result tests.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result tests.
	result addToken: (nodes at: 3) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist3: nodes [
	| result |
	result := PyTestlistNode new.
	result addNode: (nodes at: 1) to: result tests.
	result addToken: (nodes at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlistItem2: nodes [
	| result |
	result := PySpreadNode new.
	result operator: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_comp1: nodes [
	| result |
	result := PyTestlistCompNode new.
	result test: (nodes at: 1).
	result comp_for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortestlist_safe1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
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
PythonParser >> reduceActionFortrailer1: nodes [
	| result |
	result := PyTrailerNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer2: nodes [
	| result |
	result := PyTrailerNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 3) to: result timesTokens.
	result timesTimesToken: ((nodes at: 2) at: 4).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer3: nodes [
	| result |
	result := PyTrailerNode new.
	result lbrackToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result subscripts.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer4: nodes [
	| result |
	result := PyTrailerNode new.
	result periodToken: (nodes at: 1).
	result nameToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailers2: nodes [
	| result |
	result := PyTrailersNode new.
	result atom: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result trailers.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt1: nodes [
	| result |
	result := PyTryNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addToken: ((nodes at: 3) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 3) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 3) at: 4) to: result dEDENTTokens.
	result addNodes: ((nodes at: 4) at: 1) to: result clauses.
	result addTokens: ((nodes at: 4) at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result statements.
	result addTokens: ((nodes at: 4) at: 4) to: result nEWLINETokens.
	result addTokens: ((nodes at: 4) at: 5) to: result iNDENTTokens.
	result addTokens: ((nodes at: 4) at: 6) to: result dEDENTTokens.
	result else: (nodes at: 5).
	result finally: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortry_stmt2: nodes [
	| result |
	result := PyTryNode new.
	result tryToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result addToken: ((nodes at: 3) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 3) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 3) at: 4) to: result dEDENTTokens.
	result finallyToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result colonTokens.
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result addToken: ((nodes at: 6) at: 2) to: result nEWLINETokens.
	result addToken: ((nodes at: 6) at: 3) to: result iNDENTTokens.
	result addToken: ((nodes at: 6) at: 4) to: result dEDENTTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortype_annotation1: nodes [
	| result |
	result := PyTypeAnnotationNode new.
	result colonToken: (nodes at: 1).
	result typeExpression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg_1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarArg_2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist10: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 2).
	result at: 7 put: (nodes at: 5).
	result at: 8 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist11: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 2).
	result at: 7 put: (nodes at: 5).
	result at: 8 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 4).
	self add: (nodes at: 8) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist12: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 4).
	self add: (nodes at: 5) to: (result at: 2).
	result at: 7 put: (nodes at: 6).
	result at: 8 put: (nodes at: 7).
	self add: (nodes at: 8) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist13: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 4).
	self add: (nodes at: 5) to: (result at: 2).
	result at: 7 put: (nodes at: 6).
	result at: 8 put: (nodes at: 7).
	self add: (nodes at: 8) to: (result at: 4).
	self add: (nodes at: 9) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist14: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist15: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist16: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist17: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist18: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist19: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 3).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist2: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	self addFirst: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist3: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 4).
	self addFirst: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist4: nodes [
	| result |
	result := nodes at: 5.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 4).
	self addFirst: (nodes at: 3) to: (result at: 3).
	self addFirst: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist5: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist6: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist7: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 4).
	self add: (nodes at: 5) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist8: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	self add: (nodes at: 6) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist9: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	self add: (nodes at: 6) to: (result at: 4).
	self add: (nodes at: 7) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist_opt2: nodes [
	| result |
	result := PyVarArgListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result args.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	result addNodes: ((nodes at: 1) at: 3) to: result inits.
	result addNodes: ((nodes at: 1) at: 4) to: result parameterAnnotations.
	result timesToken: ((nodes at: 1) at: 5).
	result sname: ((nodes at: 1) at: 6).
	result timesTimesToken: ((nodes at: 1) at: 7).
	result ssname: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwhile_stmt1: nodes [
	| result |
	result := PyWhileNode new.
	result whileToken: (nodes at: 1).
	result test: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	result else: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item1: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_item2: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	result asToken: (nodes at: 2).
	result expr: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForwith_stmt1: nodes [
	| result |
	result := PyWithNode new.
	result withToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result withItems.
	result colonToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 4) at: 2).
	result iNDENTToken: ((nodes at: 4) at: 3).
	result dEDENTToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr1: nodes [
	| result |
	result := PyYieldNode new.
	result yieldToken: (nodes at: 1).
	result testlist: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_expr2: nodes [
	| result |
	result := PyYieldNode new.
	result yieldToken: (nodes at: 1).
	result fromToken: (nodes at: 2).
	result testlist: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForyield_stmt1: nodes [
	| result |
	result := nodes at: 1.
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
