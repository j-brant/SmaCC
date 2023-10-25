Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 54 2 109] 
#[ 0 198 3 1] 
#[ 0 202 3 5] 
#[ 0 206 3 9] 
#[ 0 210 3 13] 
#[ 0 210 3 17] 
#[ 0 214 3 21] 
#[ 0 214 3 25] 
#[ 0 218 3 29] 
#[ 0 218 3 33] 
#[ 0 218 3 37] 
#[ 0 218 3 41] 
#[ 0 226 3 45] 
#[ 0 234 3 49] 
#[ 0 234 3 53] 
#[ 0 234 3 57] 
#[ 1 78 2 109] 
#[ 1 78 1 194] 
#[ 2 2 3 49] 
#[ 2 2 3 53] 
#[ 2 2 3 57] 
#[ 1 122 2 109] 
#[ 3 206 7 93] 
#[ 2 109 4 2]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2023-10-24T14:25:14.314631-05:00'
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
	""@"" dotted_name 'dotted_name' paren_arglist_opt 'args' <NEWLINE> {{}}
	;
paren_arglist_opt:
	| <lparen> arglist_opt <rparen> { '2' }
	;
arglist_opt:
	| arglist
	;

decorators:
	decorators decorator 'decorator' {{}}
	| decorator 'decorator' {{}}
	;
decorated:
	decorators 'decorators' classdef 'classdef' {{}}
	| decorators 'decorators' funcdef 'funcdef' {{}}
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
init_opt:
	| init
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
	dotted_name 'name' {{}}
	| dots 'dots' {{}}
	| dots 'dots' dotted_name 'name' {{}}
	;
dots:
	dots ""."" {{}}
	| ""."" {{}}
	;
import_names_star:
	""*""
	| <lparen> import_as_names <rparen>
	| import_as_names
	;
import_as_name:
	<name> 'name'
	| <name> 'name' ""as"" <name> 'rename'
	;
dotted_as_name:
	dotted_name 'name'
	| dotted_name 'name' ""as"" <name> 'rename'
	;
import_as_names:
	import_as_names_in comma_opt
	;
import_as_names_in:
	import_as_names_in "","" import_as_name
	| import_as_name
	;
dotted_as_names:
	dotted_as_names "","" dotted_as_name
	| dotted_as_name
	;
dotted_name:
	dotted_name ""."" <name> 'name' {{DottedName}}
	| <name> 'name' {{DottedName}}
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
	| ""exec"" expr 'expr' ""in"" test_test_opt 'tests_opt' {{Exec}}
	;

test_test_opt:
	test 'test1' {{}}
	| test 'test1' "","" test 'test2' {{}}
	;
assert_stmt:
	""assert"" test_test_opt 'condition' {{Assert}}
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
	""if"" test 'if' "":"" suite elifs_opt 'elsif' else_opt 'else' {{If}}
	;
elifs_opt:
	| elifs_opt 'elifs_opt' ""elif"" test 'elif' "":"" suite {{Elif}}
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
	| and_test 'one' ""or"" or_test 'two' {{Or}}
	;
and_test:
	not_test
	| not_test 'one' ""and"" and_test 'two' {{And}}
	;
not_test:
	""not"" not_test 'negated' {{Not}}
	| comparison
	;
comparison:
	expr
	| expr 'one' comp_op 'op' comparison 'two' {{Comparison}}
	;
comp_op:
	""<"" {{}}
	| "">"" {{}}
	| ""=="" {{}}
	| "">="" {{}}
	| ""<="" {{}}
	| ""<>"" {{}}
	| ""!="" {{}}
	| ""in"" {{}}
	| ""not"" ""in"" {{}}
	| ""is"" {{}}
	| ""is"" ""not"" {{}}
	;
expr:
	xor_expr 
	| xor_expr 'one' ""|"" expr 'two' {{VBarExpr}}
	;
xor_expr:
	and_expr
	| and_expr 'one' ""^"" xor_expr  'two' {{XorExpr}}
	;
and_expr:
	shift_expr
	| shift_expr 'one' ""&"" and_expr 'two'  {{AndExpr}}
	;
shift_expr:
	arith_expr
	| arith_expr 'one' ""<<"" shift_expr 'two' {{LShiftExpr}}
	| arith_expr 'one' "">>"" shift_expr 'two' {{RShiftExpr}}
	;
arith_expr:
	term
	| term 'one' ""+"" arith_expr 'two'  {{PlusExpr}}
	| term 'one' ""-"" arith_expr 'two'  {{MinusExpr}}
	;
term:
	factor
	| factor 'factor' ""*"" term 'term'  {{}}
	| factor 'factor' ""/"" term 'term'  {{}}
	| factor 'factor' ""%"" term 'term' {{}}
	| factor 'factor' ""//"" term 'term' {{}}
	;
factor:
	power
	| ""+"" factor 'factor' {{}}
	| ""-"" factor 'factor' {{}}
	| ""~"" factor 'factor' {{}}
	;

power:
    await
	| await ""**"" factor 'factor' {{}}
	;
await
	: trailers
	| ""await"" trailers {{}}
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
	#(107 0 #reduceActionForfile_input1: 4909057 false) 
	#(209 0 #reduceActionForStartFStringSingle1: 14028801 true) 
	#(210 0 #reduceActionForStartFStringDouble1: 14101505 true) 
	#(211 0 #reduceActionForStartFLongStringSingle1: 14174209 true) 
	#(212 0 #reduceActionForStartFLongStringDouble1: 14255105 true) 
	#(197 1 #reduceActionForatom10: 12630026 false) 
	#(138 1 #reduceActionForbreak_stmt1: 7605249 false) 
	#(139 1 #reduceActionForcontinue_stmt1: 7640065 false) 
	#(119 0 #nil 5865473 false) 
	#(136 1 #reduceActionForpass_stmt1: 7485441 false) 
	#(142 1 #reduceActionForraise_stmt1: 7773185 false) 
	#(230 0 #nil 15488001 false) 
	#(225 1 #reduceActionForatom10: 15267841 false) 
	#(200 1 #reduceActionForstring1: 13245441 false) 
	#(200 1 #reduceActionForstring1: 13245442 false) 
	#(197 1 #reduceActionForatom12: 12630028 false) 
	#(108 1 #reduceActionForsingle_input1: 4997121 false) 
	#(114 1 #reduceActionFordecorators2: 5392386 false) 
	#(162 1 #liftFirstValue: 9374728 false) 
	#(162 1 #liftFirstValue: 9374726 false) 
	#(108 1 #reduceActionForsingle_input2: 4997122 false) 
	#(161 1 #liftFirstValue: 9235457 false) 
	#(161 1 #liftFirstValue: 9235458 false) 
	#(161 1 #liftFirstValue: 9235459 false) 
	#(161 1 #liftFirstValue: 9235460 false) 
	#(161 1 #liftFirstValue: 9235461 false) 
	#(137 1 #liftFirstValue: 7517185 false) 
	#(137 1 #liftFirstValue: 7517186 false) 
	#(137 1 #liftFirstValue: 7517187 false) 
	#(137 1 #liftFirstValue: 7517189 false) 
	#(137 1 #liftFirstValue: 7517188 false) 
	#(161 1 #liftFirstValue: 9235462 false) 
	#(144 1 #liftFirstValue: 8009729 false) 
	#(144 1 #liftFirstValue: 8009730 false) 
	#(161 1 #liftFirstValue: 9235463 false) 
	#(161 1 #liftFirstValue: 9235464 false) 
	#(161 1 #liftFirstValue: 9235465 false) 
	#(129 0 #nil 6832129 false) 
	#(162 1 #liftFirstValue: 9374721 false) 
	#(162 1 #liftFirstValue: 9374722 false) 
	#(162 1 #liftFirstValue: 9374723 false) 
	#(162 1 #liftFirstValue: 9374724 false) 
	#(162 1 #liftFirstValue: 9374725 false) 
	#(223 1 #liftFirstValue: 15047681 false) 
	#(181 1 #liftFirstValue: 11237377 false) 
	#(182 1 #liftFirstValue: 11304961 false) 
	#(183 1 #liftFirstValue: 11376642 false) 
	#(184 1 #liftFirstValue: 11439105 false) 
	#(186 1 #liftFirstValue: 11687937 false) 
	#(187 1 #liftFirstValue: 11755521 false) 
	#(188 1 #liftFirstValue: 11830273 false) 
	#(189 1 #liftFirstValue: 11909121 false) 
	#(190 1 #liftFirstValue: 12053505 false) 
	#(191 1 #liftFirstValue: 12176385 false) 
	#(192 1 #liftFirstValue: 12360705 false) 
	#(193 1 #liftFirstValue: 12466177 false) 
	#(194 1 #liftFirstValue: 12522497 false) 
	#(195 1 #liftFirstValue: 12569601 false) 
	#(197 1 #liftFirstValue: 12630029 false) 
	#(199 1 #reduceActionForstrings2: 13162498 false) 
	#(223 1 #liftFirstValue: 15047683 false) 
	#(229 1 #liftFirstValue: 15421441 false) 
	#(223 1 #liftFirstValue: 15047684 false) 
	#(197 1 #liftFirstValue: 12630025 false) 
	#(131 0 #reduceActionForassign_after1: 6984705 false) 
	#(226 1 #liftFirstValue: 15293442 false) 
	#(162 1 #liftFirstValue: 9374727 false) 
	#(141 1 #reduceActionForyield_stmt1: 7735297 false) 
	#(110 0 #reduceActionFornewline_opts1: 5167105 false) 
	#(107 2 #reduceActionForfile_input2: 4909058 false) 
	#(107 2 #reduceActionForfile_input3: 4909059 false) 
	#(127 1 #liftFirstValue: 6668289 false) 
	#(127 1 #liftFirstValue: 6668290 false) 
	#(229 2 #reduceActionFortestlistItem2: 15421442 false) 
	#(192 2 #reduceActionForfactor2: 12360706 false) 
	#(192 2 #reduceActionForfactor3: 12360707 false) 
	#(155 1 #reduceActionFordotted_name2: 8797186 false) 
	#(112 0 #nil 5299201 false) 
	#(248 1 #liftFirstValue: 17336322 false) 
	#(160 2 #reduceActionForassert_stmt1: 9170945 false) 
	#(159 1 #reduceActionFortest_test_opt1: 9094145 false) 
	#(194 2 #reduceActionForawait2: 12522498 false) 
	#(222 0 #nil 15025153 false) 
	#(135 2 #reduceActionFordel_stmt1: 7447553 false) 
	#(158 2 #reduceActionForexec_stmt1: 8985601 false) 
	#(148 1 #reduceActionFordots2: 8308738 false) 
	#(147 1 #reduceActionFordotopt_dotted_name2: 8199170 false) 
	#(147 1 #reduceActionFordotopt_dotted_name1: 8199169 false) 
	#(157 1 #reduceActionFornamelist2: 8940546 false) 
	#(156 2 #reduceActionForglobal_stmt1: 8893441 false) 
	#(154 1 #reduceActionFordotted_as_names2: 8721410 false) 
	#(145 2 #reduceActionForimport_name1: 8054785 false) 
	#(151 1 #reduceActionFordotted_as_name1: 8504321 false) 
	#(121 0 #reduceActionForvarArg_1: 6078465 false) 
	#(125 1 #reduceActionForfpdef1: 6543361 false) 
	#(119 1 #reduceActionForvarargslist_opt2: 5865474 false) 
	#(183 2 #reduceActionFornot_test1: 11376641 false) 
	#(142 2 #reduceActionForraise_stmt2: 7773186 false) 
	#(230 1 #liftFirstValue: 15488002 false) 
	#(140 2 #reduceActionForreturn_stmt1: 7684097 false) 
	#(172 1 #reduceActionFornamelist2: 10205186 false) 
	#(173 1 #reduceActionForwith_item1: 10283009 false) 
	#(249 2 #reduceActionForyield_expr1: 17515521 false) 
	#(192 2 #reduceActionForfactor4: 12360708 false) 
	#(197 2 #reduceActionForatom11: 12630027 false) 
	#(197 2 #reduceActionForatom1: 12630017 false) 
	#(214 1 #liftFirstValue: 14401538 false) 
	#(197 2 #reduceActionForatom4: 12630020 false) 
	#(213 1 #liftFirstValue: 14336002 false) 
	#(197 2 #reduceActionForatom7: 12630023 false) 
	#(231 1 #liftFirstValue: 15528966 false) 
	#(231 1 #reduceActionFordictorsetmaker2: 15528962 false) 
	#(114 2 #reduceActionFordecorators1: 5392385 false) 
	#(115 2 #reduceActionFordecorated2: 5478402 false) 
	#(115 2 #reduceActionFordecorated1: 5478401 false) 
	#(129 1 #liftFirstValue: 6832130 false) 
	#(108 2 #reduceActionForsingle_input3: 4997123 false) 
	#(185 1 #reduceActionForcomp_op7: 11521031 false) 
	#(185 1 #reduceActionForcomp_op1: 11521025 false) 
	#(185 1 #reduceActionForcomp_op5: 11521029 false) 
	#(185 1 #reduceActionForcomp_op6: 11521030 false) 
	#(185 1 #reduceActionForcomp_op3: 11521027 false) 
	#(185 1 #reduceActionForcomp_op2: 11521026 false) 
	#(185 1 #reduceActionForcomp_op4: 11521028 false) 
	#(185 1 #reduceActionForcomp_op8: 11521032 false) 
	#(185 1 #reduceActionForcomp_op10: 11521034 false) 
	#(219 0 #nil 14896129 false) 
	#(195 2 #reduceActionFortrailers2: 12569602 false) 
	#(196 1 #reduceActionFortrailer__trailer__1: 12602369 false) 
	#(199 2 #reduceActionForstrings1: 13162497 false) 
	#(133 1 #liftFirstValue: 7137285 false) 
	#(133 1 #liftFirstValue: 7137286 false) 
	#(133 1 #liftFirstValue: 7137291 false) 
	#(133 1 #liftFirstValue: 7137283 false) 
	#(133 1 #liftFirstValue: 7137281 false) 
	#(133 1 #liftFirstValue: 7137282 false) 
	#(133 1 #liftFirstValue: 7137292 false) 
	#(133 1 #liftFirstValue: 7137284 false) 
	#(133 1 #liftFirstValue: 7137289 false) 
	#(133 1 #liftFirstValue: 7137290 false) 
	#(133 1 #liftFirstValue: 7137288 false) 
	#(133 1 #liftFirstValue: 7137287 false) 
	#(130 2 #reduceActionForexpr_stmt1: 6857729 false) 
	#(226 2 #reduceActionFortestlist3: 15293443 false) 
	#(228 1 #reduceActionFor_____testlistItem__test___1: 15326209 false) 
	#(109 2 #reduceActionForeval_input1: 5110785 false) 
	#(113 0 #nil 5363713 false) 
	#(197 3 #reduceActionForatom8: 12630024 false) 
	#(117 0 #nil 5721089 false) 
	#(222 1 #liftFirstValue: 15025154 false) 
	#(221 2 #reduceActionForexprlist2: 14959618 false) 
	#(148 2 #reduceActionFordots1: 8308737 false) 
	#(147 2 #reduceActionFordotopt_dotted_name3: 8199171 false) 
	#(120 2 #reduceActionForvarargslist16: 5916688 false) 
	#(142 3 #reduceActionForraise_stmt3: 7773187 false) 
	#(175 1 #reduceActionForsuite1: 10657793 false) 
	#(249 3 #reduceActionForyield_expr2: 17515522 false) 
	#(198 2 #reduceActionFortype_annotation1: 13093889 false) 
	#(197 3 #reduceActionForatom3: 12630019 false) 
	#(214 2 #reduceActionFortestlist_comp1: 14401537 false) 
	#(197 3 #reduceActionForatom3: 12630018 false) 
	#(197 3 #reduceActionForatom5: 12630021 false) 
	#(213 2 #reduceActionForlistmaker1: 14336001 false) 
	#(232 2 #reduceActionFortestlistItem2: 15774721 false) 
	#(231 2 #reduceActionFordictorsetmaker5: 15528965 false) 
	#(197 3 #reduceActionForatom6: 12630022 false) 
	#(233 1 #reduceActionFormore_tests1: 15832065 false) 
	#(231 2 #reduceActionFordictorsetmaker4: 15528964 false) 
	#(128 3 #reduceActionForsimple_stmt1: 6723585 false) 
	#(128 3 #reduceActionForsimple_stmt2: 6723586 false) 
	#(181 3 #reduceActionForor_test2: 11237378 false) 
	#(182 3 #reduceActionForand_test2: 11304962 false) 
	#(185 2 #reduceActionForcomp_op11: 11521035 false) 
	#(185 2 #reduceActionForcomp_op9: 11521033 false) 
	#(184 3 #reduceActionForcomparison2: 11439106 false) 
	#(186 3 #reduceActionForexpr2: 11687938 false) 
	#(187 3 #reduceActionForxor_expr2: 11755522 false) 
	#(188 3 #reduceActionForand_expr2: 11830274 false) 
	#(189 3 #reduceActionForshift_expr2: 11909122 false) 
	#(189 3 #reduceActionForshift_expr3: 11909123 false) 
	#(190 3 #reduceActionForarith_expr2: 12053506 false) 
	#(190 3 #reduceActionForarith_expr3: 12053507 false) 
	#(191 3 #reduceActionForterm4: 12176388 false) 
	#(191 3 #reduceActionForterm2: 12176386 false) 
	#(191 3 #reduceActionForterm3: 12176387 false) 
	#(191 3 #reduceActionForterm5: 12176389 false) 
	#(193 3 #reduceActionForpower2: 12466178 false) 
	#(216 2 #reduceActionFortrailer4: 14550020 false) 
	#(216 2 #reduceActionFortrailer1: 14550017 false) 
	#(241 1 #reduceActionForargument1: 16678913 false) 
	#(218 1 #reduceActionForsubscript2: 14780418 false) 
	#(219 1 #liftFirstValue: 14896130 false) 
	#(196 2 #reduceActionFortrailer__trailer__2: 12602370 false) 
	#(202 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13390849 false) 
	#(204 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13558785 false) 
	#(206 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13734913 false) 
	#(208 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13919233 false) 
	#(224 3 #reduceActionForassignment_expression1: 15167489 false) 
	#(130 3 #reduceActionForexpr_stmt2: 6857730 false) 
	#(132 1 #liftFirstValue: 7090178 false) 
	#(132 1 #liftFirstValue: 7090177 false) 
	#(227 2 #reduceActionFor_____testlistItem__test__1: 15326209 false) 
	#(226 3 #reduceActionFortestlist1: 15293441 false) 
	#(228 2 #reduceActionFor_____testlistItem__test___2: 15326210 false) 
	#(134 3 #reduceActionForprint_stmt1: 7331841 false) 
	#(110 2 #reduceActionFortrailer__trailer__2: 5167106 false) 
	#(155 3 #reduceActionFordotted_name1: 8797185 false) 
	#(113 1 #liftFirstValue: 5363714 false) 
	#(111 4 #reduceActionFordecorator1: 5212161 false) 
	#(248 3 #reduceActionFortestlist11: 17336321 false) 
	#(159 3 #reduceActionFortest_test_opt2: 9094146 false) 
	#(234 4 #reduceActionForclassdef1: 15947777 false) 
	#(238 1 #liftFirstValue: 16188417 false) 
	#(237 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 16140289 false) 
	#(221 3 #reduceActionForexprlist1: 14959617 false) 
	#(158 4 #reduceActionForexec_stmt2: 8985602 false) 
	#(149 1 #reduceActionForimport_names_star1: 8345601 false) 
	#(150 1 #reduceActionFordotted_as_name1: 8430593 false) 
	#(146 4 #reduceActionForimport_from1: 8109057 false) 
	#(153 1 #reduceActionFordotted_as_names2: 8639490 false) 
	#(149 1 #reduceActionForimport_names_star3: 8345603 false) 
	#(157 3 #reduceActionFornamelist1: 8940545 false) 
	#(164 0 #nil 9574401 false) 
	#(154 3 #reduceActionFordotted_as_names1: 8721409 false) 
	#(151 3 #reduceActionFordotted_as_name2: 8504322 false) 
	#(121 2 #reduceActionForvarArg_2: 6078466 false) 
	#(120 3 #reduceActionForvarargslist5: 5916677 false) 
	#(120 3 #reduceActionForvarargslist14: 5916686 false) 
	#(126 2 #reduceActionForexprlist2: 6601730 false) 
	#(125 3 #reduceActionForfpdef2: 6543362 false) 
	#(215 4 #reduceActionForlambdef1: 14471169 false) 
	#(120 3 #reduceActionForexprlist1: 5916673 false) 
	#(124 2 #reduceActionForinit1: 6509569 false) 
	#(120 3 #reduceActionForvarargslist17: 5916689 false) 
	#(120 3 #reduceActionForvarargslist18: 5916690 false) 
	#(142 4 #reduceActionForraise_stmt4: 7773188 false) 
	#(143 2 #reduceActionFor_____testlistItem__test__1: 7971841 false) 
	#(174 1 #reduceActionForexcept_clause1: 10437633 false) 
	#(165 0 #nil 9653249 false) 
	#(172 3 #reduceActionFornamelist1: 10205185 false) 
	#(171 4 #reduceActionForwith_stmt1: 10151937 false) 
	#(173 3 #reduceActionForwith_item2: 10283010 false) 
	#(240 0 #reduceActionFormore_args1: 16427009 false) 
	#(241 2 #reduceActionForargument2: 16678914 false) 
	#(216 3 #reduceActionFortrailer2: 14550018 false) 
	#(239 2 #reduceActionForarglist2: 16267266 false) 
	#(216 3 #reduceActionFortrailer3: 14550019 false) 
	#(217 2 #reduceActionForexprlist2: 14684162 false) 
	#(131 3 #reduceActionFornamelist1: 6984706 false) 
	#(134 4 #reduceActionForprint_stmt2: 7331842 false) 
	#(112 3 #liftSecondValue: 5299202 false) 
	#(118 3 #liftSecondValue: 5806081 false) 
	#(117 2 #reduceActionForreturn_annotation_opt2: 5721090 false) 
	#(152 2 #reduceActionForimport_as_names1: 8588289 false) 
	#(120 4 #reduceActionForvarargslist6: 5916678 false) 
	#(122 2 #reduceActionForvarArg1: 6405121 false) 
	#(120 4 #reduceActionForvarargslist15: 5916687 false) 
	#(126 3 #reduceActionForexprlist1: 6601729 false) 
	#(120 4 #reduceActionForvarargslist2: 5916674 false) 
	#(120 4 #reduceActionForvarargslist3: 5916675 false) 
	#(120 4 #reduceActionForvarargslist19: 5916691 false) 
	#(176 1 #reduceActionFortrailer__trailer__1: 10733570 false) 
	#(174 2 #reduceActionForexcept_clause2: 10437634 false) 
	#(169 0 #nil 9999361 false) 
	#(166 5 #reduceActionForwhile_stmt1: 9697281 false) 
	#(231 4 #reduceActionFordictorsetmaker3: 15528963 false) 
	#(231 4 #reduceActionFordictorsetmaker1: 15528961 false) 
	#(233 3 #reduceActionForexprlist1: 15832067 false) 
	#(223 5 #reduceActionFortest2: 15047682 false) 
	#(239 3 #reduceActionForarglist4: 16267268 false) 
	#(241 3 #reduceActionForargument3: 16678915 false) 
	#(239 3 #reduceActionForexprlist1: 16267265 false) 
	#(218 3 #reduceActionForsubscript1: 14780417 false) 
	#(217 3 #reduceActionForexprlist1: 14684161 false) 
	#(220 0 #nil 14917633 false) 
	#(200 5 #reduceActionForstring3: 13245443 false) 
	#(202 2 #reduceActionFor_____testlistItem__test___2: 13390850 false) 
	#(200 5 #reduceActionForstring3: 13245444 false) 
	#(204 2 #reduceActionFor_____testlistItem__test___2: 13558786 false) 
	#(200 5 #reduceActionForstring3: 13245445 false) 
	#(206 2 #reduceActionFor_____testlistItem__test___2: 13734914 false) 
	#(200 5 #reduceActionForstring3: 13245446 false) 
	#(208 2 #reduceActionFor_____testlistItem__test___2: 13919234 false) 
	#(131 4 #reduceActionForassign_after3: 6984707 false) 
	#(238 3 #reduceActionForclassListItem2: 16188418 false) 
	#(234 6 #reduceActionForclassdef2: 15947778 false) 
	#(235 3 #reduceActionForsuperclasslist1: 16094209 false) 
	#(237 2 #reduceActionFor_____testlistItem__test___2: 16140290 false) 
	#(116 6 #reduceActionForfuncdef1: 5595137 false) 
	#(150 3 #reduceActionFordotted_as_name2: 8430594 false) 
	#(149 3 #reduceActionForimport_names_star2: 8345602 false) 
	#(153 3 #reduceActionFordotted_as_names1: 8639489 false) 
	#(163 6 #reduceActionForif_stmt1: 9493505 false) 
	#(120 5 #reduceActionForvarargslist7: 5916679 false) 
	#(122 3 #reduceActionForvarArg2: 6405122 false) 
	#(122 3 #reduceActionForvarArg3: 6405123 false) 
	#(120 5 #reduceActionForvarargslist4: 5916676 false) 
	#(142 6 #reduceActionForraise_stmt5: 7773189 false) 
	#(176 2 #reduceActionFortrailer__trailer__2: 10733569 false) 
	#(175 4 #reduceActionForsuite2: 10657794 false) 
	#(168 6 #reduceActionFortry_stmt2: 9861122 false) 
	#(168 6 #reduceActionFortry_stmt1: 9861121 false) 
	#(170 3 #reduceActionForexcept_list2: 10051586 false) 
	#(246 4 #reduceActionForcomp_for1: 17098753 false) 
	#(243 4 #reduceActionForlist_for1: 16822273 false) 
	#(177 1 #reduceActionFortestlist_safe1: 10972161 false) 
	#(179 1 #liftFirstValue: 11117570 false) 
	#(179 1 #liftFirstValue: 11117569 false) 
	#(239 4 #reduceActionForarglist3: 16267267 false) 
	#(218 4 #reduceActionForsubscript3: 14780419 false) 
	#(201 2 #reduceActionFor_____testlistItem__test__1: 13390849 false) 
	#(203 2 #reduceActionFor_____testlistItem__test__1: 13558785 false) 
	#(205 2 #reduceActionFor_____testlistItem__test__1: 13734913 false) 
	#(207 2 #reduceActionFor_____testlistItem__test__1: 13919233 false) 
	#(116 7 #reduceActionForfuncdef2: 5595138 false) 
	#(234 7 #reduceActionForclassdef3: 15947779 false) 
	#(236 2 #reduceActionFor_____testlistItem__test__1: 16140289 false) 
	#(167 7 #reduceActionForfor_stmt1: 9771009 false) 
	#(120 6 #reduceActionForvarargslist8: 5916680 false) 
	#(122 4 #reduceActionForvarArg4: 6405124 false) 
	#(174 4 #reduceActionForexcept_clause4: 10437636 false) 
	#(174 4 #reduceActionForexcept_clause3: 10437635 false) 
	#(165 3 #reduceActionForelse_opt2: 9653250 false) 
	#(170 4 #reduceActionForexcept_list1: 10051585 false) 
	#(246 5 #reduceActionForcomp_for2: 17098754 false) 
	#(245 1 #liftFirstValue: 17061889 false) 
	#(245 1 #liftFirstValue: 17061890 false) 
	#(243 5 #reduceActionForlist_for2: 16822274 false) 
	#(242 1 #liftFirstValue: 16786433 false) 
	#(242 1 #liftFirstValue: 16786434 false) 
	#(233 5 #reduceActionFormore_tests2: 15832066 false) 
	#(240 3 #reduceActionFormore_args3: 16427011 false) 
	#(240 3 #reduceActionFormore_args2: 16427010 false) 
	#(240 3 #reduceActionFormore_args4: 16427012 false) 
	#(220 2 #reduceActionForsliceop2: 14917634 false) 
	#(120 7 #reduceActionForvarargslist10: 5916682 false) 
	#(120 7 #reduceActionForvarargslist9: 5916681 false) 
	#(169 3 #reduceActionForfinally_opt2: 9999362 false) 
	#(247 2 #reduceActionForcomp_if1: 17225729 false) 
	#(244 2 #reduceActionForlist_if1: 16951297 false) 
	#(178 1 #reduceActionFornamelist2: 11052034 false) 
	#(164 5 #reduceActionForelifs_opt2: 9574402 false) 
	#(120 8 #reduceActionForvarargslist11: 5916683 false) 
	#(120 8 #reduceActionForvarargslist12: 5916684 false) 
	#(247 3 #reduceActionForcomp_if2: 17225730 false) 
	#(180 4 #reduceActionForold_lambdef1: 11155457 false) 
	#(244 3 #reduceActionForlist_if2: 16951298 false) 
	#(177 4 #reduceActionFortestlist_safe2: 10972162 false) 
	#(120 9 #reduceActionForvarargslist13: 5916685 false) 
	#(178 3 #reduceActionFornamelist1: 11052033 false)
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
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '"..."' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"metaclass"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'varArg*' 'varArg' 'init_opt' 'init' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' 'dots' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elifs_opt' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'trailer ''trailer''+' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'assignment_expression' 'Symbol' 'testlist' '("," testlistItem ''test'')' '("," testlistItem ''test'')+' 'testlistItem' 'testlist_opt' 'dictorsetmaker' 'dictSpread' 'more_tests' 'classdef' 'superclasslist' '("," classListItem ''superClass'')' '("," classListItem ''superClass'')*' 'classListItem' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #PyDecoratorsNode #PyDecoratedNode #PyFuncdefNode #PyReturnTypeAnnotationNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #OrderedCollection #OrderedCollection #PyInitNode #PyInitNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #PyRootNode #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #OrderedCollection #PyImportNode #PyImportNode #PyImportNode #PyDotoptDottedNameNode #PyDotsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyDottedNameNode #PyGlobalNode #OrderedCollection #PyExecNode #PyTestTestOptNode #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyCompOpNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #OrderedCollection #PyRootNode #PyTypeAnnotationNode #PyStringsNode #PyRootNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #PyRootNode #PyRootNode #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #PyAssignmentExpressionNode #PySymbolNode #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #PyRootNode #PySpreadNode #OrderedCollection #PyClassdefNode #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 6 0 6 0 10 0 6 0 13 0 6 0 17 0 6 0 36 0 6 0 39 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 53 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 6 0 64 0 6 0 66 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 73 0 6 0 76 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 89 0 6 0 92 0 6 0 99 0 6 0 100 0 6 0 102 0 6 0 104 0 17 0 107 0 6 0 252 0 6 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 157 0 99 0 161 0 100 0 165 0 102 0 169 0 104 0 173 0 108 0 177 0 111 0 181 0 114 1 9 0 115 1 9 0 116 0 193 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 1 9 0 162 1 9 0 163 1 9 0 166 1 9 0 167 1 9 0 168 1 9 0 171 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 9 0 234 1 145 0 249 1 149 0 252] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 153 0 109 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 157 0 226 1 137 0 229] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 1 161 0 99 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 1 165 0 115 1 165 0 116 1 165 0 127 1 165 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 1 165 0 162 1 165 0 163 1 165 0 166 1 165 0 167 1 165 0 168 1 165 0 171 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 165 0 234 1 145 0 249 1 149 0 252 0 0 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 177 0 215 1 177 0 223 1 177 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 181 0 192 1 181 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 189 0 192 1 189 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 0 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 1 193 0 77 1 197 0 155] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 201 0 215 1 201 0 223 1 201 0 224 1 129 0 225 1 205 0 248] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 209 0 159 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 213 0 215 1 213 0 223 1 213 0 224 1 129 0 225] 
#[0 1 217 0 48] 
#[1 0 33 0 17 0 41 0 39 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 221 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 0 30 0 24 0 99] 
#[0 1 225 0 77] 
#[0 0 34 0 24 0 99] 
#[0 1 229 0 77] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 233 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 237 0 221 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 241 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 233 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 245 0 221 1 89 0 225] 
#[1 1 249 0 16 1 193 0 77 1 253 0 147 2 1 0 148 2 5 0 155] 
#[1 2 9 0 77 2 13 0 157] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 17 0 215 2 17 0 223 2 17 0 224 1 129 0 225] 
#[1 1 193 0 77 2 21 0 151 2 25 0 154 2 29 0 155] 
#[1 2 33 0 6 2 37 0 7 0 38 0 22 2 41 0 77 2 45 0 100 2 49 0 119 2 53 0 120 2 57 0 125] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 61 0 183 2 61 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 0 42 0 24 0 99] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 46 0 24 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 46 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 65 0 215 2 65 0 223 2 65 0 224 1 129 0 225] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 24 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 2 73 0 226 1 137 0 229 2 73 0 230] 
#[0 2 77 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 81 0 215 2 81 0 223 2 81 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 85 0 172 2 89 0 173 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 93 0 215 2 93 0 223 2 93 0 224 1 129 0 225] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 41 0 39 0 53 0 44 2 97 0 56 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 50 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 2 101 0 226 1 137 0 229 2 101 0 230] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 105 0 192 2 105 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 54 0 1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 16 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 7 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 54 0 27 0 54 0 28 0 54 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 51 0 54 0 55 0 54 0 56 0 54 0 58 0 54 0 60 0 54 0 61 0 54 0 64 0 54 0 65 0 54 0 74 0 54 0 75 0 54 0 81 0 54 0 82 0 54 0 84 0 54 0 85 0 54 0 87 0 54 0 88 0 54 0 90 0 54 0 91 0 54 0 99 0 54 0 100 0 54 0 101 0 54 0 102 0 54 0 103 0 54 0 105 2 113 0 198 0 54 0 253] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 0 70 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 117 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 121 0 214 2 125 0 215 2 125 0 223 2 125 0 224 1 129 0 225 2 121 0 226 1 137 0 229 2 133 0 249] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 137 0 103 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 141 0 213 2 145 0 215 2 145 0 223 2 145 0 224 1 129 0 225 2 141 0 226 1 137 0 229] 
#[1 0 21 0 6 2 153 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 157 0 105 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 161 0 215 2 161 0 223 2 161 0 224 1 129 0 225 2 169 0 226 1 137 0 229 2 169 0 231 2 173 0 232] 
#[0 0 0 0 253] 
#[0 0 74 0 36 0 43 0 46 0 48] 
#[1 0 37 0 36 0 49 0 43 0 61 0 46 0 69 0 48 2 177 0 111 2 181 0 116 2 185 0 234] 
#[0 0 78 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 82 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 86 0 253] 
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
#[1 2 189 0 24 0 154 0 99 2 193 0 129] 
#[0 2 197 0 99] 
#[0 0 158 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 162 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 166 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 170 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 0 174 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 24 0 178 0 27 0 178 0 30 0 178 0 35 0 178 0 38 0 178 0 39 0 178 0 41 0 178 0 55 0 178 0 56 2 201 0 58 0 178 0 75 0 178 0 81 0 178 0 82 0 178 0 84 0 178 0 85 0 178 0 87 0 178 0 88 0 178 0 90 0 178 0 91 0 178 0 99 0 178 0 101 0 178 0 103 0 178 0 105 0 178 0 253] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 24 0 182 0 27 0 182 0 30 0 182 0 35 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 51 0 182 0 55 0 182 0 56 0 182 0 58 2 205 0 65 0 182 0 75 0 182 0 81 0 182 0 82 0 182 0 84 0 182 0 85 0 182 0 87 0 182 0 88 0 182 0 90 0 182 0 91 0 182 0 99 0 182 0 101 0 182 0 103 0 182 0 105 0 182 0 253] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 24 0 186 0 27 0 186 0 30 0 186 0 35 0 186 0 38 0 186 0 39 2 209 0 40 0 186 0 41 0 186 0 51 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 65 0 186 0 75 0 186 0 81 0 186 0 82 0 186 0 84 0 186 0 85 0 186 0 87 0 186 0 88 0 186 0 90 0 186 0 91 0 186 0 99 0 186 0 101 0 186 0 103 0 186 0 105 0 186 0 253] 
#[0 0 190 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[1 2 213 0 1 0 194 0 3 0 194 0 5 0 194 0 8 0 194 0 9 0 194 0 11 0 194 0 12 0 194 0 14 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 24 2 217 0 25 0 194 0 27 2 221 0 28 2 225 0 29 0 194 0 30 2 229 0 31 2 233 0 32 2 237 0 33 0 194 0 35 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 51 0 194 0 55 0 194 0 56 0 194 0 58 2 241 0 60 2 245 0 61 2 249 0 64 0 194 0 65 0 194 0 75 0 194 0 81 0 194 0 82 0 194 0 84 0 194 0 85 0 194 0 87 0 194 0 88 0 194 0 90 0 194 0 91 0 194 0 99 0 194 0 101 0 194 0 103 0 194 0 105 2 253 0 185 0 194 0 253] 
#[1 0 198 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 16 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 51 0 198 0 55 0 198 0 56 0 198 0 58 0 198 0 60 0 198 0 61 0 198 0 64 0 198 0 65 0 11 0 74 0 198 0 75 0 198 0 81 0 198 0 82 0 198 0 84 0 198 0 85 0 198 0 87 0 198 0 88 0 198 0 90 0 198 0 91 0 198 0 99 0 198 0 100 0 198 0 101 0 198 0 102 0 198 0 103 0 198 0 105 0 198 0 253] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 15 0 37 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 51 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 60 0 202 0 61 0 202 0 64 0 202 0 65 0 202 0 74 0 202 0 75 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 87 0 202 0 88 0 202 0 90 0 202 0 91 0 202 0 99 0 202 0 100 0 202 0 101 0 202 0 102 0 202 0 103 0 202 0 105 0 202 0 253] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 19 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 51 0 206 0 55 0 206 0 56 0 206 0 58 0 206 0 60 0 206 0 61 0 206 0 64 0 206 0 65 0 206 0 74 0 206 0 75 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 87 0 206 0 88 0 206 0 90 0 206 0 91 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 102 0 206 0 103 0 206 0 105 0 206 0 253] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 16 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 24 0 210 0 25 0 23 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 27 0 34 0 210 0 35 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 51 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 64 0 210 0 65 0 210 0 74 0 210 0 75 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 91 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 102 0 210 0 103 0 210 0 105 0 210 0 253] 
#[1 0 214 0 1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 31 0 10 0 214 0 11 0 214 0 12 0 35 0 13 0 214 0 14 0 214 0 16 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 51 0 214 0 55 0 214 0 56 0 214 0 58 0 214 0 60 0 214 0 61 0 214 0 64 0 214 0 65 0 214 0 74 0 214 0 75 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 87 0 214 0 88 0 214 0 90 0 214 0 91 0 214 0 99 0 214 0 100 0 214 0 101 0 214 0 102 0 214 0 103 0 214 0 105 0 214 0 253] 
#[1 0 218 0 1 0 39 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 43 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 16 0 47 0 18 0 51 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 24 0 218 0 25 0 218 0 26 0 218 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 51 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 60 0 218 0 61 0 218 0 64 0 218 0 65 0 218 0 74 0 218 0 75 0 218 0 81 0 218 0 82 0 218 0 84 0 218 0 85 0 218 0 87 0 218 0 88 0 218 0 90 0 218 0 91 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 103 0 218 0 105 0 218 0 253] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 226 0 1 0 226 0 2 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 6 0 55 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 16 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 27 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 51 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 60 0 226 0 61 0 226 0 64 0 226 0 65 0 226 0 74 0 226 0 75 0 226 0 81 0 226 0 82 0 226 0 84 0 226 0 85 0 226 0 87 0 226 0 88 0 226 0 90 0 226 0 91 0 226 0 99 0 226 0 100 0 226 0 101 0 226 0 102 0 226 0 103 0 226 0 105 0 226 0 253] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 234 0 1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 59 0 16 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 24 0 234 0 25 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 40 0 234 0 41 0 234 0 51 0 234 0 55 0 234 0 56 0 234 0 58 0 234 0 60 0 234 0 61 0 234 0 64 0 234 0 65 0 234 0 74 0 234 0 75 0 234 0 81 0 234 0 82 0 234 0 84 0 234 0 85 0 234 0 87 0 234 0 88 0 234 0 90 0 234 0 91 0 234 0 99 0 63 0 100 0 234 0 101 0 67 0 102 0 234 0 103 0 234 0 105 3 61 0 196 3 65 0 216 0 234 0 253] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 242 0 1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 0 242 0 7 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 16 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 21 0 242 0 22 0 242 0 24 0 242 0 25 0 242 0 26 0 242 0 27 0 242 0 28 0 242 0 29 0 242 0 30 0 242 0 31 0 242 0 32 0 242 0 33 0 242 0 34 0 242 0 35 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 40 0 242 0 41 0 242 0 51 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 60 0 242 0 61 0 242 0 64 0 242 0 65 0 242 0 74 0 242 0 75 0 145 0 78 0 149 0 79 0 10 0 80 0 242 0 81 0 242 0 82 0 14 0 83 0 242 0 84 0 242 0 85 0 18 0 86 0 242 0 87 0 242 0 88 0 22 0 89 0 242 0 90 0 242 0 91 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 102 0 242 0 103 0 242 0 105 3 69 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 0 242 0 253] 
#[0 3 73 0 80] 
#[0 3 77 0 83] 
#[0 3 81 0 86] 
#[0 3 85 0 89] 
#[0 0 246 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[0 0 250 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[0 0 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[1 1 2 0 1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 16 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 3 89 0 23 1 2 0 24 1 2 0 25 1 2 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 32 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 41 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 60 1 2 0 61 1 2 0 64 1 2 0 65 1 2 0 74 1 2 0 75 1 2 0 81 1 2 0 82 1 2 0 84 1 2 0 85 1 2 0 87 1 2 0 88 1 2 0 90 1 2 0 91 1 2 0 99 1 2 0 100 1 2 0 101 1 2 0 102 1 2 0 103 1 2 0 105 1 2 0 253] 
#[1 3 145 0 3 3 145 0 5 3 145 0 8 3 145 0 9 3 145 0 11 3 145 0 14 3 145 0 20 3 145 0 21 1 6 0 22 1 6 0 24 3 145 0 27 1 6 0 30 3 145 0 35 3 145 0 38 3 145 0 75 1 6 0 99 3 141 0 131 3 145 0 133] 
#[1 1 10 0 3 1 10 0 5 1 10 0 8 1 10 0 9 1 10 0 11 3 149 0 12 1 10 0 14 1 10 0 20 1 10 0 21 1 10 0 22 1 10 0 24 1 10 0 27 1 10 0 30 1 10 0 35 1 10 0 38 1 10 0 75 1 10 0 99 1 10 0 101 1 10 0 103 1 10 0 105 3 153 0 227 3 157 0 228 1 10 0 253] 
#[0 1 14 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 1 18 0 24 0 99] 
#[0 3 161 0 67] 
#[0 0 0 0 253] 
#[1 1 22 0 99 3 165 0 110 1 22 0 253] 
#[0 1 26 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 253] 
#[0 1 30 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 252 0 253] 
#[0 1 34 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 1 38 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 1 42 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 1 54 0 12 0 16 0 24 0 41 0 59 0 99 0 100] 
#[1 3 169 0 16 1 58 0 99 3 173 0 100 3 177 0 112] 
#[1 3 181 0 12 1 62 0 39] 
#[0 3 185 0 39] 
#[0 1 66 0 24 0 99] 
#[1 3 189 0 12 1 70 0 24 1 70 0 99] 
#[0 3 193 0 77] 
#[0 1 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 3 197 0 22 3 201 0 100] 
#[1 3 205 0 100 3 209 0 118] 
#[1 3 213 0 12 1 78 0 24 1 78 0 60 1 78 0 99 3 217 0 222] 
#[0 1 82 0 24 0 99] 
#[1 1 86 0 24 3 221 0 60 1 86 0 99] 
#[0 3 225 0 60] 
#[0 1 90 0 16 0 59 0 77] 
#[0 3 229 0 59] 
#[1 3 233 0 16 1 94 0 59 1 193 0 77 3 237 0 155] 
#[1 3 169 0 16 1 98 0 59] 
#[0 1 102 0 12 0 24 0 99] 
#[1 3 241 0 12 1 106 0 24 1 106 0 99] 
#[0 3 245 0 22] 
#[0 1 110 0 12 0 24 0 99] 
#[1 3 249 0 12 1 114 0 24 1 114 0 99] 
#[1 1 118 0 12 3 169 0 16 1 118 0 24 3 253 0 41 1 118 0 99] 
#[1 1 122 0 12 1 122 0 22 4 1 0 77 1 122 0 101 4 5 0 121] 
#[0 4 9 0 77] 
#[0 1 126 0 12 0 22 0 30 0 101] 
#[1 2 41 0 77 2 45 0 100 4 13 0 125 4 17 0 126] 
#[0 4 21 0 22] 
#[0 1 130 0 22 0 101] 
#[1 4 25 0 12 0 71 0 22 4 29 0 30 1 78 0 101 4 33 0 124 4 37 0 198 4 41 0 222] 
#[0 1 134 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[1 4 45 0 12 1 138 0 24 4 49 0 56 1 138 0 99 4 53 0 143] 
#[0 1 142 0 22 0 24 0 30 0 99 0 101] 
#[0 1 146 0 24 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 4 65 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 4 69 0 22] 
#[1 4 73 0 12 4 77 0 22] 
#[0 1 150 0 12 0 22] 
#[1 1 154 0 12 1 154 0 22 4 81 0 41] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 50 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 4 85 0 226 1 137 0 229 4 85 0 230] 
#[0 1 158 0 22 0 24 0 30 0 99 0 101] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 89 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 93 0 101] 
#[1 0 250 0 12 4 97 0 55 0 250 0 101 4 101 0 246] 
#[0 1 174 0 101] 
#[0 4 105 0 101] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 109 0 103] 
#[1 0 250 0 12 4 113 0 55 0 250 0 103 4 117 0 243] 
#[0 1 182 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 4 121 0 215 4 121 0 223 4 121 0 224 1 129 0 225] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 250 0 12 4 125 0 22 4 97 0 55 0 250 0 105 4 129 0 246] 
#[0 1 190 0 105] 
#[0 4 133 0 105] 
#[1 4 137 0 12 0 75 0 105 4 141 0 222 4 145 0 233] 
#[0 1 198 0 36 0 43 0 46 0 48] 
#[0 1 202 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 1 206 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 1 210 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 149 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 4 153 0 99] 
#[0 1 214 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 157 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 161 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 165 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 1 218 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 222 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 226 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 230 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 234 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 238 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 242 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 1 246 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[1 1 250 0 10 1 250 0 13 1 250 0 17 1 250 0 39 1 250 0 44 4 169 0 64 1 250 0 76 1 250 0 77 1 250 0 78 1 250 0 79 1 250 0 80 1 250 0 83 1 250 0 86 1 250 0 89 1 250 0 92 1 250 0 100 1 250 0 102 1 250 0 104] 
#[0 4 173 0 60] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 177 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 181 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 185 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 189 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 193 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 197 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 201 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 205 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 209 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 213 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 217 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 221 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 4 225 0 192 4 225 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 4 229 0 77] 
#[1 4 233 0 6 4 237 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 4 241 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 4 245 0 215 4 245 0 223 4 245 0 224 1 129 0 225 4 249 0 239 4 253 0 241] 
#[1 0 25 0 10 0 29 0 13 5 1 0 16 0 33 0 17 1 254 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 17 0 215 5 5 0 217 5 9 0 218 5 13 0 219 5 17 0 223 5 17 0 224 1 129 0 225] 
#[1 2 2 0 1 2 2 0 2 2 2 0 3 2 2 0 4 2 2 0 5 2 2 0 6 2 2 0 7 2 2 0 8 2 2 0 9 2 2 0 10 2 2 0 11 2 2 0 12 2 2 0 13 2 2 0 14 0 79 0 16 2 2 0 18 2 2 0 19 2 2 0 20 2 2 0 21 2 2 0 22 2 2 0 24 2 2 0 25 2 2 0 26 2 2 0 27 2 2 0 28 2 2 0 29 2 2 0 30 2 2 0 31 2 2 0 32 2 2 0 33 2 2 0 34 2 2 0 35 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 40 2 2 0 41 2 2 0 51 2 2 0 55 2 2 0 56 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 64 2 2 0 65 2 2 0 74 2 2 0 75 2 2 0 81 2 2 0 82 2 2 0 84 2 2 0 85 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 91 2 2 0 99 0 83 0 100 2 2 0 101 0 87 0 102 2 2 0 103 2 2 0 105 5 21 0 216 2 2 0 253] 
#[0 2 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 25 0 215 5 25 0 223 5 25 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 29 0 215 5 29 0 223 5 29 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 33 0 215 5 33 0 223 5 33 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 37 0 215 5 37 0 223 5 37 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 41 0 215 5 41 0 223 5 41 0 224 1 129 0 225] 
#[0 2 14 0 6 0 10 0 13 0 17 0 39 0 44 0 62 0 64 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
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
#[1 2 109 0 22 2 62 0 24 5 45 0 30 2 62 0 99 5 49 0 198] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 5 53 0 132 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 5 53 0 226 1 137 0 229 5 53 0 249] 
#[1 2 66 0 3 2 66 0 5 0 21 0 6 2 66 0 8 2 66 0 9 0 25 0 10 2 66 0 11 0 29 0 13 2 66 0 14 0 33 0 17 2 66 0 20 2 66 0 21 2 66 0 22 2 66 0 24 2 66 0 27 2 66 0 30 2 66 0 35 2 66 0 38 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 2 66 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 66 0 99 0 161 0 100 2 66 0 101 0 165 0 102 2 66 0 103 0 169 0 104 2 66 0 105 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 65 0 215 5 65 0 223 5 65 0 224 1 129 0 225 5 65 0 229 2 66 0 253] 
#[0 2 70 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[1 1 78 0 3 1 78 0 5 1 78 0 8 1 78 0 9 1 78 0 11 5 69 0 12 1 78 0 14 1 78 0 20 1 78 0 21 1 78 0 22 1 78 0 24 1 78 0 27 1 78 0 30 1 78 0 35 1 78 0 38 1 78 0 75 1 78 0 99 1 78 0 101 1 78 0 103 1 78 0 105 5 73 0 222 5 77 0 227 1 78 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 50 0 24 5 81 0 34 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 50 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 5 85 0 226 1 137 0 229 5 85 0 230] 
#[1 5 89 0 99 2 74 0 253] 
#[0 5 93 0 77] 
#[1 4 233 0 6 4 237 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 78 0 101 0 165 0 102 0 169 0 104 5 97 0 113 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 4 245 0 215 4 245 0 223 4 245 0 224 1 129 0 225 5 97 0 239 4 253 0 241] 
#[0 5 105 0 99] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 201 0 215 1 201 0 223 1 201 0 224 1 129 0 225 5 109 0 248] 
#[0 2 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 113 0 215 5 113 0 223 5 113 0 224 1 129 0 225] 
#[1 3 205 0 100 5 117 0 118] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 5 121 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 5 125 0 63 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 5 129 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 141 0 215 5 141 0 223 5 141 0 224 1 129 0 225 5 137 0 235 5 141 0 238] 
#[1 2 33 0 6 2 37 0 7 2 41 0 77 2 45 0 100 0 38 0 101 5 145 0 119 2 53 0 120 2 57 0 125] 
#[1 5 149 0 15 2 86 0 22 5 153 0 117] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 2 90 0 24 0 41 0 39 0 53 0 44 2 90 0 60 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 90 0 99 0 161 0 100 0 165 0 102 0 169 0 104 1 233 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 157 0 221 1 89 0 225] 
#[0 2 94 0 24 0 60 0 99] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 5 161 0 159 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 213 0 215 1 213 0 223 1 213 0 224 1 129 0 225] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 5 165 0 226 1 137 0 229] 
#[1 5 169 0 6 5 173 0 77 5 177 0 100 5 181 0 149 5 185 0 150 5 189 0 152 5 193 0 153] 
#[0 2 98 0 16 0 59 0 77] 
#[1 3 169 0 16 2 102 0 59] 
#[0 5 197 0 77] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 5 201 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 1 193 0 77 5 205 0 151 2 29 0 155] 
#[0 5 209 0 77] 
#[1 1 122 0 12 0 91 0 22 1 122 0 101 5 213 0 121 5 217 0 198] 
#[1 5 221 0 12 1 78 0 22 1 78 0 101 5 225 0 122 5 229 0 222] 
#[1 5 241 0 12 0 71 0 22 1 78 0 101 5 237 0 198 5 241 0 222] 
#[1 5 245 0 12 1 78 0 101 5 249 0 222] 
#[0 5 253 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 1 0 215 6 1 0 223 6 1 0 224 1 129 0 225] 
#[1 2 33 0 6 2 37 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 6 5 0 120 2 57 0 125] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 9 0 215 6 9 0 223 6 9 0 224 1 129 0 225] 
#[1 6 13 0 12 1 78 0 22 1 78 0 101 6 17 0 222] 
#[1 6 21 0 12 1 78 0 22 4 29 0 30 1 78 0 101 6 25 0 124 6 29 0 222] 
#[0 2 106 0 22 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 33 0 215 6 33 0 223 6 33 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 37 0 215 6 37 0 223 6 37 0 224 1 129 0 225] 
#[0 2 110 0 24 0 99] 
#[0 6 41 0 251] 
#[0 2 114 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 6 45 0 52 6 49 0 54 6 53 0 170 6 57 0 174] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 6 61 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 65 0 173 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 2 93 0 215 2 93 0 223 2 93 0 224 1 129 0 225] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 6 69 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 73 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 2 118 0 22 0 24 0 30 0 99 0 101] 
#[0 2 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 233 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 77 0 221 1 89 0 225] 
#[0 2 130 0 101] 
#[0 2 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 233 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 81 0 221 1 89 0 225] 
#[0 2 142 0 103] 
#[0 2 146 0 12 0 105] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 85 0 215 6 85 0 223 6 85 0 224 1 129 0 225] 
#[0 2 150 0 105] 
#[0 2 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 2 153 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 2 90 0 105 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 89 0 215 6 89 0 223 6 89 0 224 1 129 0 225 6 93 0 232] 
#[0 2 158 0 105] 
#[0 2 162 0 105] 
#[0 2 166 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 2 170 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 6 97 0 51] 
#[0 2 174 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[0 2 178 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[0 2 182 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 186 0 10 0 13 0 17 0 39 0 44 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104] 
#[0 2 190 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 65 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 101 0 215 6 101 0 223 6 101 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 6 105 0 215 6 105 0 223 6 105 0 224 1 129 0 225] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 2 250 0 12 6 109 0 30 4 97 0 55 2 250 0 101 6 113 0 246] 
#[0 6 117 0 101] 
#[1 6 121 0 12 1 78 0 101 6 125 0 222] 
#[0 6 129 0 16] 
#[0 6 133 0 103] 
#[1 6 137 0 12 1 78 0 103 6 141 0 222] 
#[0 6 145 0 22] 
#[1 2 254 0 12 3 2 0 22 2 254 0 103] 
#[0 3 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 3 10 0 81 3 10 0 82 6 149 0 202] 
#[1 3 14 0 84 3 14 0 85 6 153 0 204] 
#[1 3 18 0 87 3 18 0 88 6 157 0 206] 
#[1 3 22 0 90 3 22 0 91 6 161 0 208] 
#[0 3 26 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 165 0 132 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 6 165 0 226 1 137 0 229 6 165 0 249] 
#[0 6 169 0 30] 
#[0 3 30 0 24 0 99] 
#[0 3 34 0 22 0 24 0 30 0 99] 
#[0 3 38 0 22 0 24 0 30 0 99] 
#[0 3 42 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[1 2 90 0 3 2 90 0 5 0 21 0 6 2 90 0 8 2 90 0 9 0 25 0 10 2 90 0 11 0 29 0 13 2 90 0 14 0 33 0 17 2 90 0 20 2 90 0 21 2 90 0 22 2 90 0 24 2 90 0 27 2 90 0 30 2 90 0 35 2 90 0 38 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 2 90 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 2 90 0 99 0 161 0 100 2 90 0 101 0 165 0 102 2 90 0 103 0 169 0 104 2 90 0 105 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 65 0 215 5 65 0 223 5 65 0 224 1 129 0 225 5 65 0 229 2 90 0 253] 
#[0 3 46 0 3 0 5 0 8 0 9 0 11 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[0 3 50 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 75 0 99 0 101 0 103 0 105 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 6 173 0 226 1 137 0 229] 
#[0 3 54 0 24 0 99] 
#[0 3 58 0 99 0 253] 
#[0 3 62 0 12 0 16 0 24 0 41 0 59 0 99 0 100] 
#[0 6 177 0 101] 
#[0 3 66 0 101] 
#[0 3 70 0 36 0 43 0 46 0 48] 
#[0 3 74 0 39] 
#[0 3 78 0 24 0 99] 
#[1 5 149 0 15 2 86 0 22 6 181 0 117] 
#[0 3 82 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 6 185 0 30] 
#[0 6 189 0 22] 
#[0 3 86 0 12 0 101] 
#[0 6 193 0 101] 
#[1 3 90 0 12 3 90 0 101 6 197 0 237] 
#[0 6 201 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 6 205 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 6 209 0 22] 
#[0 3 94 0 24 0 60 0 99] 
#[0 3 98 0 24 0 99] 
#[0 6 213 0 22] 
#[0 3 102 0 24 0 99] 
#[1 3 106 0 12 3 106 0 24 6 217 0 41 3 106 0 99 3 106 0 101] 
#[1 5 173 0 77 5 185 0 150 6 221 0 152 5 193 0 153] 
#[0 3 110 0 24 0 99] 
#[0 3 114 0 12 0 24 0 99 0 101] 
#[0 3 118 0 24 0 99] 
#[1 6 225 0 12 1 78 0 24 1 78 0 99 1 78 0 101 6 229 0 222] 
#[0 3 122 0 12 0 24 0 99] 
#[1 3 126 0 6 3 126 0 10 3 126 0 13 3 126 0 17 3 126 0 36 3 126 0 39 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 46 3 126 0 47 3 126 0 48 3 126 0 49 3 126 0 50 3 126 0 51 3 126 0 53 3 126 0 55 3 126 0 56 3 126 0 57 3 126 0 58 3 126 0 59 3 126 0 62 3 126 0 64 3 126 0 66 3 126 0 68 3 126 0 69 3 126 0 70 3 126 0 71 3 126 0 72 3 126 0 73 3 126 0 76 3 126 0 77 3 126 0 78 3 126 0 79 3 126 0 80 3 126 0 83 3 126 0 86 3 126 0 89 3 126 0 92 3 126 0 99 3 126 0 100 3 126 0 102 3 126 0 104 6 233 0 164 3 126 0 250 3 126 0 252 3 126 0 253] 
#[0 3 130 0 12 0 24 0 99] 
#[0 3 134 0 12 0 24 0 99] 
#[1 6 237 0 12 1 78 0 22 1 78 0 101 5 225 0 122 6 241 0 222] 
#[1 1 122 0 12 1 122 0 22 1 122 0 101 6 245 0 121] 
#[1 6 249 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 6 253 0 125] 
#[0 3 138 0 12 0 22 0 101] 
#[0 3 142 0 22 0 101] 
#[0 2 90 0 22 0 101] 
#[1 7 1 0 12 1 78 0 22 1 78 0 101 7 1 0 222] 
#[0 3 146 0 22 0 101] 
#[1 2 41 0 77 2 45 0 100 2 90 0 101 4 13 0 125 7 5 0 126] 
#[0 3 150 0 101] 
#[0 3 154 0 12 0 22 0 30 0 101] 
#[0 3 158 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[0 3 162 0 22 0 101] 
#[0 3 166 0 12 0 22 0 101] 
#[1 2 33 0 6 2 37 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 7 9 0 120 2 57 0 125] 
#[0 3 170 0 22 0 101] 
#[1 2 33 0 6 2 37 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 7 13 0 120 2 57 0 125] 
#[1 7 17 0 12 1 78 0 22 1 78 0 101 7 21 0 222] 
#[0 3 174 0 22 0 101] 
#[1 7 25 0 12 3 178 0 24 3 178 0 99] 
#[0 3 182 0 24 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 7 29 0 115 7 29 0 116 7 29 0 127 7 29 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 7 29 0 162 7 29 0 163 7 29 0 166 7 29 0 167 7 29 0 168 7 29 0 171 7 33 0 176 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 7 29 0 234 1 145 0 249 1 149 0 252] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 3 186 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 7 37 0 215 7 37 0 223 7 37 0 224 1 129 0 225] 
#[0 7 41 0 22] 
#[1 3 190 0 6 3 190 0 10 3 190 0 13 3 190 0 17 3 190 0 36 3 190 0 39 3 190 0 42 3 190 0 43 3 190 0 44 3 190 0 45 3 190 0 46 3 190 0 47 3 190 0 48 3 190 0 49 7 45 0 51 6 45 0 52 3 190 0 53 3 190 0 54 3 190 0 55 3 190 0 56 3 190 0 57 3 190 0 58 3 190 0 59 3 190 0 62 3 190 0 64 3 190 0 66 3 190 0 68 3 190 0 69 3 190 0 70 3 190 0 71 3 190 0 72 3 190 0 73 3 190 0 76 3 190 0 77 3 190 0 78 3 190 0 79 3 190 0 80 3 190 0 83 3 190 0 86 3 190 0 89 3 190 0 92 3 190 0 99 3 190 0 100 3 190 0 102 3 190 0 104 7 49 0 165 7 53 0 174 3 190 0 250 3 190 0 252 3 190 0 253] 
#[0 7 57 0 22] 
#[1 3 190 0 6 3 190 0 10 3 190 0 13 3 190 0 17 3 190 0 36 3 190 0 39 3 190 0 42 3 190 0 43 3 190 0 44 3 190 0 45 3 190 0 46 3 190 0 47 3 190 0 48 3 190 0 49 7 45 0 51 3 190 0 53 3 190 0 55 3 190 0 56 3 190 0 57 3 190 0 58 3 190 0 59 3 190 0 62 3 190 0 64 3 190 0 66 3 190 0 68 3 190 0 69 3 190 0 70 3 190 0 71 3 190 0 72 3 190 0 73 3 190 0 76 3 190 0 77 3 190 0 78 3 190 0 79 3 190 0 80 3 190 0 83 3 190 0 86 3 190 0 89 3 190 0 92 3 190 0 99 3 190 0 100 3 190 0 102 3 190 0 104 7 61 0 165 3 190 0 250 3 190 0 252 3 190 0 253] 
#[0 3 194 0 12 0 22] 
#[0 3 198 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 3 202 0 12 0 22] 
#[0 7 65 0 60] 
#[0 7 69 0 60] 
#[1 4 137 0 12 4 97 0 55 1 78 0 105 4 141 0 222 7 73 0 233 7 77 0 246] 
#[0 7 81 0 22] 
#[1 4 137 0 12 1 78 0 105 4 141 0 222 7 85 0 233] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 7 89 0 215 7 89 0 223 7 89 0 224 1 129 0 225] 
#[1 0 95 0 12 3 206 0 101 7 97 0 240] 
#[1 7 101 0 12 1 78 0 101 7 101 0 222] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 7 105 0 215 7 105 0 223 7 105 0 224 1 129 0 225] 
#[0 3 210 0 12 0 101] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 4 233 0 6 4 237 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 90 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 4 245 0 215 4 245 0 223 4 245 0 224 1 129 0 225 7 109 0 239 4 253 0 241] 
#[0 3 218 0 101] 
#[0 7 113 0 16] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[1 0 25 0 10 0 29 0 13 5 1 0 16 0 33 0 17 1 254 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 90 0 103 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 5 17 0 215 7 117 0 217 5 9 0 218 5 13 0 219 5 17 0 223 5 17 0 224 1 129 0 225] 
#[0 3 226 0 103] 
#[1 0 25 0 10 1 254 0 12 0 29 0 13 0 33 0 17 1 254 0 22 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 1 254 0 103 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 7 121 0 215 7 121 0 219 7 121 0 223 7 121 0 224 1 129 0 225] 
#[1 7 129 0 81 7 133 0 82 7 137 0 201] 
#[1 7 141 0 84 7 145 0 85 7 149 0 203] 
#[1 7 153 0 87 7 157 0 88 7 161 0 205] 
#[1 7 165 0 90 7 169 0 91 7 173 0 207] 
#[0 3 230 0 22 0 24 0 30 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 7 177 0 132 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 7 177 0 226 1 137 0 229 7 177 0 249] 
#[0 3 234 0 24 0 99] 
#[0 3 238 0 99] 
#[0 7 181 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 7 185 0 215 7 185 0 223 7 185 0 224 1 129 0 225] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 7 189 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 7 193 0 22] 
#[1 7 197 0 12 1 78 0 101 7 201 0 222 7 205 0 236] 
#[0 3 242 0 15 0 22] 
#[0 3 246 0 22] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 7 209 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 7 213 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 7 217 0 77] 
#[0 7 221 0 101] 
#[1 2 90 0 24 5 173 0 77 2 90 0 99 2 90 0 101 7 225 0 150] 
#[0 3 250 0 24 0 99 0 101] 
#[1 3 190 0 6 3 190 0 10 3 190 0 13 3 190 0 17 3 190 0 36 3 190 0 39 3 190 0 42 3 190 0 43 3 190 0 44 3 190 0 45 3 190 0 46 3 190 0 47 3 190 0 48 3 190 0 49 7 229 0 50 7 45 0 51 3 190 0 53 3 190 0 55 3 190 0 56 3 190 0 57 3 190 0 58 3 190 0 59 3 190 0 62 3 190 0 64 3 190 0 66 3 190 0 68 3 190 0 69 3 190 0 70 3 190 0 71 3 190 0 72 3 190 0 73 3 190 0 76 3 190 0 77 3 190 0 78 3 190 0 79 3 190 0 80 3 190 0 83 3 190 0 86 3 190 0 89 3 190 0 92 3 190 0 99 3 190 0 100 3 190 0 102 3 190 0 104 7 233 0 165 3 190 0 250 3 190 0 252 3 190 0 253] 
#[1 7 237 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 6 253 0 125] 
#[0 3 254 0 22 0 101] 
#[1 7 241 0 12 1 78 0 22 1 78 0 101 5 225 0 122 7 245 0 222] 
#[0 7 249 0 77] 
#[1 4 2 0 12 0 99 0 22 4 29 0 30 4 2 0 101 7 253 0 124 8 1 0 198] 
#[0 4 6 0 22 0 101] 
#[0 4 10 0 101] 
#[0 4 14 0 22 0 101] 
#[0 4 18 0 22 0 101] 
#[1 2 33 0 6 2 37 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 8 5 0 120 2 57 0 125] 
#[0 4 22 0 22 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 9 0 215 8 9 0 223 8 9 0 224 1 129 0 225] 
#[0 4 26 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 0 250 0 252] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 37 0 36 0 41 0 39 0 45 0 42 0 49 0 43 0 53 0 44 0 57 0 45 0 61 0 46 0 65 0 47 0 69 0 48 0 73 0 49 0 77 0 53 0 81 0 55 0 85 0 56 0 89 0 57 0 93 0 58 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 0 177 0 111 0 181 0 114 8 13 0 115 8 13 0 116 8 13 0 127 8 13 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 13 0 162 8 13 0 163 8 13 0 166 8 13 0 167 8 13 0 168 8 13 0 171 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 8 13 0 234 1 145 0 249 8 17 0 250 1 149 0 252] 
#[1 8 21 0 12 4 30 0 22 8 25 0 41] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 29 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 8 33 0 22] 
#[1 4 34 0 6 4 34 0 10 4 34 0 13 4 34 0 17 4 34 0 36 4 34 0 39 4 34 0 42 4 34 0 43 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 47 4 34 0 48 4 34 0 49 4 34 0 53 8 37 0 54 4 34 0 55 4 34 0 56 4 34 0 57 4 34 0 58 4 34 0 59 4 34 0 62 4 34 0 64 4 34 0 66 4 34 0 68 4 34 0 69 4 34 0 70 4 34 0 71 4 34 0 72 4 34 0 73 4 34 0 76 4 34 0 77 4 34 0 78 4 34 0 79 4 34 0 80 4 34 0 83 4 34 0 86 4 34 0 89 4 34 0 92 4 34 0 99 4 34 0 100 4 34 0 102 4 34 0 104 8 41 0 169 4 34 0 250 4 34 0 252 4 34 0 253] 
#[0 8 45 0 22] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 49 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 4 38 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 8 53 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 8 61 0 177 8 65 0 179 8 65 0 180 8 65 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 4 42 0 105] 
#[0 4 46 0 105] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 77 0 215 8 77 0 223 8 77 0 224 1 129 0 225] 
#[0 4 50 0 105] 
#[0 4 54 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 75 0 81 0 82 0 84 0 85 0 87 0 88 0 90 0 91 0 99 0 101 0 103 0 105 0 253] 
#[1 8 81 0 6 8 85 0 7 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 4 245 0 215 4 245 0 223 4 245 0 224 1 129 0 225 8 89 0 241] 
#[1 8 93 0 12 1 78 0 101 8 93 0 222] 
#[0 4 58 0 101] 
#[0 4 62 0 12 0 101] 
#[0 4 66 0 101] 
#[0 4 70 0 12 0 103] 
#[0 4 74 0 103] 
#[1 4 78 0 12 8 97 0 22 4 78 0 103 8 101 0 220] 
#[0 3 2 0 12 0 22 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 105 0 215 8 105 0 223 8 105 0 224 1 129 0 225] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 86 0 81 0 82] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 109 0 215 8 109 0 223 8 109 0 224 1 129 0 225] 
#[0 4 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 94 0 84 0 85] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 113 0 215 8 113 0 223 8 113 0 224 1 129 0 225] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 102 0 87 0 88] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 117 0 215 8 117 0 223 8 117 0 224 1 129 0 225] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 64 0 65 0 74 0 75 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 99 0 100 0 101 0 102 0 103 0 105 0 253] 
#[0 4 110 0 90 0 91] 
#[0 4 114 0 22 0 24 0 30 0 99] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 121 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 4 118 0 12 0 101] 
#[0 4 122 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 125 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 5 125 0 63 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 2 90 0 101 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 129 0 215 8 129 0 223 8 129 0 224 1 129 0 225 8 129 0 238] 
#[0 4 126 0 101] 
#[0 4 130 0 12 0 101] 
#[0 4 134 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 3 190 0 6 3 190 0 10 3 190 0 13 3 190 0 17 3 190 0 36 3 190 0 39 3 190 0 42 3 190 0 43 3 190 0 44 3 190 0 45 3 190 0 46 3 190 0 47 3 190 0 48 3 190 0 49 7 45 0 51 3 190 0 53 3 190 0 55 3 190 0 56 3 190 0 57 3 190 0 58 3 190 0 59 3 190 0 62 3 190 0 64 3 190 0 66 3 190 0 68 3 190 0 69 3 190 0 70 3 190 0 71 3 190 0 72 3 190 0 73 3 190 0 76 3 190 0 77 3 190 0 78 3 190 0 79 3 190 0 80 3 190 0 83 3 190 0 86 3 190 0 89 3 190 0 92 3 190 0 99 3 190 0 100 3 190 0 102 3 190 0 104 8 133 0 165 3 190 0 250 3 190 0 252 3 190 0 253] 
#[0 4 138 0 12 0 24 0 99 0 101] 
#[0 4 142 0 24 0 99] 
#[0 4 146 0 12 0 24 0 99 0 101] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 137 0 215 8 137 0 223 8 137 0 224 1 129 0 225] 
#[0 4 150 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 8 141 0 77] 
#[1 8 145 0 7 2 90 0 22 2 41 0 77 2 45 0 100 2 90 0 101 6 253 0 125] 
#[0 4 154 0 22 0 101] 
#[1 8 153 0 12 0 71 0 22 1 78 0 101 8 149 0 198 8 153 0 222] 
#[0 4 158 0 12 0 22 0 101] 
#[1 4 162 0 12 4 162 0 22 4 29 0 30 4 162 0 101 8 157 0 124] 
#[0 4 166 0 22 0 101] 
#[0 4 170 0 24 0 99] 
#[0 4 174 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 100 0 102 0 104 0 250 0 252] 
#[0 4 178 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 161 0 215 8 161 0 223 8 161 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 165 0 215 8 165 0 223 8 165 0 224 1 129 0 225] 
#[0 4 182 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 169 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 8 173 0 22] 
#[0 4 186 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 8 177 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 4 190 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 4 194 0 12 4 97 0 55 8 181 0 58 4 194 0 101 4 194 0 105 8 185 0 245 8 185 0 246 8 185 0 247] 
#[1 2 33 0 6 2 37 0 7 0 38 0 22 2 41 0 77 2 45 0 100 8 197 0 119 2 53 0 120 2 57 0 125] 
#[1 4 113 0 55 8 201 0 58 4 198 0 103 8 205 0 242 8 205 0 243 8 205 0 244] 
#[1 8 217 0 12 4 202 0 55 4 202 0 58 4 202 0 103] 
#[0 4 206 0 12 0 55 0 58 0 101 0 103 0 105] 
#[0 4 210 0 12 0 55 0 58 0 101 0 103 0 105] 
#[1 4 137 0 12 1 78 0 105 4 141 0 222 8 221 0 233] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 225 0 215 8 225 0 223 8 225 0 224 1 129 0 225] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 229 0 215 8 229 0 223 8 229 0 224 1 129 0 225] 
#[1 0 95 0 12 3 206 0 101 8 233 0 240] 
#[0 4 214 0 101] 
#[1 0 25 0 10 1 254 0 12 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 0 101 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 1 254 0 103 0 169 0 104 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 8 237 0 215 8 237 0 219 8 237 0 223 8 237 0 224 1 129 0 225] 
#[0 4 218 0 12 0 103] 
#[0 4 222 0 81 0 82] 
#[0 4 226 0 84 0 85] 
#[0 4 230 0 87 0 88] 
#[0 4 234 0 90 0 91] 
#[0 4 238 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 4 242 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 4 246 0 12 0 101] 
#[0 4 250 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 8 241 0 22] 
#[1 8 249 0 12 0 71 0 22 1 78 0 101 8 245 0 198 8 249 0 222] 
#[0 8 253 0 77] 
#[1 9 1 0 12 1 78 0 22 1 78 0 101 9 1 0 222] 
#[0 4 254 0 22 0 101] 
#[0 5 2 0 12 0 22 0 101] 
#[0 5 6 0 22] 
#[0 5 10 0 22] 
#[0 5 14 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 9 5 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[0 5 18 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 9 0 179 9 9 0 180 9 9 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 5 22 0 12 0 101 0 105] 
#[0 5 26 0 12 0 101 0 105] 
#[0 5 30 0 12 0 101 0 105] 
#[0 9 13 0 22] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 17 0 179 9 17 0 180 9 17 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 5 34 0 103] 
#[0 5 38 0 103] 
#[0 5 42 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 21 0 178 9 25 0 179 9 25 0 180 9 25 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 5 46 0 105] 
#[0 5 50 0 12 0 101] 
#[0 5 54 0 12 0 101] 
#[0 5 58 0 12 0 101] 
#[0 5 62 0 12 0 103] 
#[1 0 21 0 6 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 45 0 42 0 53 0 44 0 57 0 45 0 65 0 47 0 73 0 49 0 77 0 53 0 85 0 56 0 89 0 57 0 97 0 59 0 101 0 62 0 105 0 64 0 109 0 66 0 113 0 68 0 117 0 69 0 133 0 73 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 4 57 0 99 0 161 0 100 0 165 0 102 0 169 0 104 4 61 0 128 1 5 0 130 1 5 0 134 1 5 0 135 1 5 0 136 1 5 0 137 1 5 0 138 1 5 0 139 1 5 0 140 1 5 0 141 1 5 0 142 1 5 0 144 1 5 0 145 1 5 0 146 1 5 0 156 1 5 0 158 1 5 0 160 1 5 0 161 9 29 0 175 1 33 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 137 0 215 1 137 0 223 1 137 0 224 1 129 0 225 1 133 0 226 1 137 0 229 1 145 0 249 1 149 0 252] 
#[1 9 33 0 12 1 78 0 22 1 78 0 101 9 33 0 222] 
#[0 5 66 0 22 0 101] 
#[1 9 41 0 12 0 71 0 22 1 78 0 101 9 37 0 198 9 41 0 222] 
#[0 5 70 0 22 0 101] 
#[0 5 74 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[1 5 78 0 12 4 97 0 55 8 181 0 58 5 78 0 101 5 78 0 105 9 45 0 245 9 45 0 246 9 45 0 247] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 0 169 0 104 9 49 0 179 9 49 0 180 9 49 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[1 4 113 0 55 8 201 0 58 5 82 0 103 9 53 0 242 9 53 0 243 9 53 0 244] 
#[1 9 57 0 12 1 78 0 55 1 78 0 58 1 78 0 103 9 61 0 222] 
#[0 5 86 0 12 0 55 0 58 0 103] 
#[0 5 90 0 6 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 64 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 76 0 77 0 78 0 79 0 80 0 83 0 86 0 89 0 92 0 99 0 100 0 102 0 104 0 250 0 252 0 253] 
#[0 5 94 0 22 0 101] 
#[1 9 65 0 12 1 78 0 22 1 78 0 101 9 65 0 222] 
#[0 5 98 0 22 0 101] 
#[0 5 102 0 12 0 101 0 105] 
#[0 5 106 0 12 0 55 0 58 0 101 0 103 0 105] 
#[0 5 110 0 103] 
#[1 0 25 0 10 0 29 0 13 0 33 0 17 0 41 0 39 0 53 0 44 2 90 0 55 2 90 0 58 8 57 0 62 0 105 0 64 0 137 0 76 0 141 0 77 0 145 0 78 0 149 0 79 0 10 0 80 0 14 0 83 0 18 0 86 0 22 0 89 0 153 0 92 0 161 0 100 0 165 0 102 2 90 0 103 0 169 0 104 9 69 0 179 9 69 0 180 9 69 0 181 1 37 0 182 1 41 0 183 1 41 0 184 1 49 0 186 1 53 0 187 1 57 0 188 1 61 0 189 1 65 0 190 1 69 0 191 1 73 0 192 1 73 0 193 1 81 0 194 1 81 0 195 1 89 0 197 1 89 0 199 1 97 0 200 1 101 0 209 1 105 0 210 1 109 0 211 1 113 0 212 1 89 0 225] 
#[0 5 114 0 55 0 58 0 103] 
#[0 5 118 0 22 0 101] 
#[0 5 122 0 12 0 55 0 58 0 103]
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
									start: currentToken position
									ids: {scanner DEDENTId}.
							^ actions ].
					self addActionsFor: scanner NEWLINEId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: currentToken position
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
PythonParser >> reduceActionFor_____testlistItem__test__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____testlistItem__test___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____testlistItem__test___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
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
PythonParser >> reduceActionForand_expr2: nodes [
	| result |
	result := PyAndExprNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForand_test2: nodes [
	| result |
	result := PyAndNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
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
PythonParser >> reduceActionForarith_expr2: nodes [
	| result |
	result := PyPlusExprNode new.
	result one: (nodes at: 1).
	result plusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarith_expr3: nodes [
	| result |
	result := PyMinusExprNode new.
	result one: (nodes at: 1).
	result minusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertNode new.
	result assertToken: (nodes at: 1).
	result condition: (nodes at: 2).
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
PythonParser >> reduceActionForcomp_op10: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op11: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	result notToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op1: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op2: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op3: nodes [
	| result |
	result := PyCompOpNode new.
	result equalEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op4: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op5: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op6: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanGreaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op7: nodes [
	| result |
	result := PyCompOpNode new.
	result bangEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op8: nodes [
	| result |
	result := PyCompOpNode new.
	result inToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomp_op9: nodes [
	| result |
	result := PyCompOpNode new.
	result notToken: (nodes at: 1).
	result inToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForcomparison2: nodes [
	| result |
	result := PyComparisonNode new.
	result one: (nodes at: 1).
	result op: (nodes at: 2).
	result two: (nodes at: 3).
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
	result decorators: (nodes at: 1).
	result classdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorated2: nodes [
	| result |
	result := PyDecoratedNode new.
	result decorators: (nodes at: 1).
	result funcdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorator1: nodes [
	| result |
	result := PyDecoratorNode new.
	result _Token: (nodes at: 1).
	result dotted_name: (nodes at: 2).
	result args: (nodes at: 3).
	result nEWLINEToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result decorators.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordecorators2: nodes [
	| result |
	result := PyDecoratorsNode new.
	result addNode: (nodes at: 1) to: result decorators.
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
PythonParser >> reduceActionFordotopt_dotted_name1: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordots1: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordots2: nodes [
	| result |
	result := PyDotsNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
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
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordotted_name2: nodes [
	| result |
	result := PyDottedNameNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForelifs_opt2: nodes [
	| result |
	result := PyElifNode new.
	result elifs_opt: (nodes at: 1).
	result elifToken: (nodes at: 2).
	result elif: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 5) at: 2).
	result iNDENTToken: ((nodes at: 5) at: 3).
	result dEDENTToken: ((nodes at: 5) at: 4).
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
	result tests_opt: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForexpr2: nodes [
	| result |
	result := PyVBarExprNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
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
	result elsif: (nodes at: 5).
	result else: (nodes at: 6).
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
	result addObjects: ((nodes at: 4) at: 4) to: result names.
	result addTokens: ((nodes at: 4) at: 5) to: result asTokens.
	result addTokens: ((nodes at: 4) at: 6) to: result renames.
	result rparenToken: ((nodes at: 4) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_name1: nodes [
	| result |
	result := PyImportNode new.
	result importToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addObjects: ((nodes at: 2) at: 2) to: result names.
	result addTokens: ((nodes at: 2) at: 3) to: result asTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result renames.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star1: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star2: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForimport_names_star3: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 6).
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
	result := PyOrNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
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
PythonParser >> reduceActionForpower2: nodes [
	| result |
	result := PyPowerNode new.
	result timesTimesToken: (nodes at: 2).
	result factor: (nodes at: 3).
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
PythonParser >> reduceActionForshift_expr2: nodes [
	| result |
	result := PyLShiftExprNode new.
	result one: (nodes at: 1).
	result lessThanLessThanToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForshift_expr3: nodes [
	| result |
	result := PyRShiftExprNode new.
	result one: (nodes at: 1).
	result greaterThanGreaterThanToken: (nodes at: 2).
	result two: (nodes at: 3).
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
PythonParser >> reduceActionForterm2: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result timesToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm3: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm4: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result percentToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForterm5: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideDivideToken: (nodes at: 2).
	result term: (nodes at: 3).
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
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortest_test_opt2: nodes [
	| result |
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result test2: (nodes at: 3).
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
PythonParser >> reduceActionFortrailer__trailer__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFortrailer__trailer__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
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
PythonParser >> reduceActionForxor_expr2: nodes [
	| result |
	result := PyXorExprNode new.
	result one: (nodes at: 1).
	result upArrowToken: (nodes at: 2).
	result two: (nodes at: 3).
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
