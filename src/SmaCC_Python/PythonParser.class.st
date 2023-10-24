Class {
	#name : #PythonParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PythonParser class >> ambiguousTransitions [
^#(
#[ 0 54 2 97] 
#[ 0 198 2 237] 
#[ 0 202 2 241] 
#[ 0 206 2 245] 
#[ 0 210 2 249] 
#[ 0 210 2 253] 
#[ 0 214 3 1] 
#[ 0 214 3 5] 
#[ 0 218 3 9] 
#[ 0 218 3 13] 
#[ 0 218 3 17] 
#[ 0 218 3 21] 
#[ 0 226 3 25] 
#[ 0 234 3 29] 
#[ 0 234 3 33] 
#[ 0 234 3 37] 
#[ 1 122 2 97] 
#[ 1 246 3 29] 
#[ 1 246 3 33] 
#[ 1 246 3 37] 
#[ 1 70 2 97] 
#[ 3 162 6 249]
	).
]

{ #category : #'generated-accessing' }
PythonParser class >> cacheId [
	^'2023-10-24T09:36:32.201125-05:00'
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
<fStringSingleStart> : [fF] <stringprefix>? \' ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
<fStringFormat>
	: [\!\:\=] [^\}]*
	;
fStringSingle <fStringSingleMid> : <fStringFormat>? \} ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
fStringSingle <fStringSingleEnd> : <fStringFormat>? \} ( [^\\\n\r\'\{] | <escapeseq> )* \' ;
<fStringDoubleStart> : [fF] <stringprefix>? \"" ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleMid> : <fStringFormat>? \} ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleEnd> : <fStringFormat>? \} ( [^\\\n\r\""\{] | <escapeseq> )* \"" ;
<fLongStringSingleStart> : [fF] <stringprefix>? \'\'\' ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleMid> : <fStringFormat>? \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleEnd> : <fStringFormat>? \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\' ;
<fLongStringDoubleStart> : [fF] <stringprefix>? \""\""\"" ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleMid> : <fStringFormat>? \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleEnd> : <fStringFormat>? \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;

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
	fpdef 'arg' type_annotation 'parameterAnnotation'? init_opt 'init' "","" varargslist
	| ""*"" (<name> 'sname' type_annotation 'parameterAnnotation'?)? comma_opt
	| ""*"" (<name> 'sname' type_annotation 'parameterAnnotation'?)? "","" ""**"" <name> 'ssname' type_annotation 'parameterAnnotation'? comma_opt
	| ""**"" <name>  'sname'  type_annotation 'parameterAnnotation'? comma_opt
	| fpdef 'arg' type_annotation 'parameterAnnotation'? init_opt 'init' comma_opt
	;
init_opt:
	| ""="" test 'test' {{}}
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
orOrLambdaTest
	: or_test
	| or_test 'or' ""if"" or_test 'if' ""else"" test 'else' {{IfTest}}
	| lambdef
	;
assignment_expression
	: Symbol 'variable' "":="" 'assign' test 'value' {{AssignmentExpression}}
	;
Symbol
	: <name> {{}}
	;
testlist: 
	test 'test' ("","" test 'test')+ comma_opt {{}}
	| test
	| test 'test' "","" {{}}
	;
testlist_opt:
	| testlist 'testlist'
	;
dictorsetmaker: 
	test 'object' "":"" test 'value' comp_for 'comp' {{}}
	| test 'object' "":"" test 'value' more_tests {{}}
	| test 'object' comp_for 'comp' {{}}
	| testlist
	;
more_tests:
	comma_opt
	| "","" test 'object' "":"" test 'value' more_tests
	;
classdef:
	""class"" <name> 'cname' "":"" suite {{Classdef}}
	| ""class"" <name> 'cname' <lparen> testlist_opt<rparen> "":"" suite {{Classdef}}
	;

arglist: 
	argument 'argument' "","" arglist
	| argument 'argument' comma_opt
	| ""*"" test 'argument' more_args comma_opt
	| ""**"" test 'argument' comma_opt
	;
more_args:
	| "","" ""**"" test 'argument'
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
	#(106 0 #reduceActionForfile_input1: 4797441 false) 
	#(205 0 #reduceActionForStartFStringSingle1: 13806593 true) 
	#(206 0 #reduceActionForStartFStringDouble1: 13879297 true) 
	#(207 0 #reduceActionForStartFLongStringSingle1: 13952001 true) 
	#(208 0 #reduceActionForStartFLongStringDouble1: 14032897 true) 
	#(193 1 #reduceActionForatom10: 12407818 false) 
	#(134 1 #reduceActionForbreak_stmt1: 7383041 false) 
	#(135 1 #reduceActionForcontinue_stmt1: 7417857 false) 
	#(118 0 #nil 5753857 false) 
	#(132 1 #reduceActionForpass_stmt1: 7263233 false) 
	#(138 1 #reduceActionForraise_stmt1: 7550977 false) 
	#(226 0 #nil 15272961 false) 
	#(222 1 #reduceActionForatom10: 15152129 false) 
	#(196 1 #reduceActionForstring1: 13023233 false) 
	#(196 1 #reduceActionForstring1: 13023234 false) 
	#(193 1 #reduceActionForatom12: 12407820 false) 
	#(107 1 #reduceActionForsingle_input1: 4885505 false) 
	#(113 1 #reduceActionFordecorators2: 5280770 false) 
	#(158 1 #liftFirstValue: 9152520 false) 
	#(158 1 #liftFirstValue: 9152518 false) 
	#(107 1 #reduceActionForsingle_input2: 4885506 false) 
	#(157 1 #liftFirstValue: 9013249 false) 
	#(157 1 #liftFirstValue: 9013250 false) 
	#(157 1 #liftFirstValue: 9013251 false) 
	#(157 1 #liftFirstValue: 9013252 false) 
	#(157 1 #liftFirstValue: 9013253 false) 
	#(133 1 #liftFirstValue: 7294977 false) 
	#(133 1 #liftFirstValue: 7294978 false) 
	#(133 1 #liftFirstValue: 7294979 false) 
	#(133 1 #liftFirstValue: 7294981 false) 
	#(133 1 #liftFirstValue: 7294980 false) 
	#(157 1 #liftFirstValue: 9013254 false) 
	#(140 1 #liftFirstValue: 7787521 false) 
	#(140 1 #liftFirstValue: 7787522 false) 
	#(157 1 #liftFirstValue: 9013255 false) 
	#(157 1 #liftFirstValue: 9013256 false) 
	#(157 1 #liftFirstValue: 9013257 false) 
	#(125 0 #nil 6609921 false) 
	#(158 1 #liftFirstValue: 9152513 false) 
	#(158 1 #liftFirstValue: 9152514 false) 
	#(158 1 #liftFirstValue: 9152515 false) 
	#(158 1 #liftFirstValue: 9152516 false) 
	#(158 1 #liftFirstValue: 9152517 false) 
	#(219 1 #liftFirstValue: 14825473 false) 
	#(177 1 #liftFirstValue: 11015169 false) 
	#(178 1 #liftFirstValue: 11082753 false) 
	#(179 1 #liftFirstValue: 11154434 false) 
	#(180 1 #liftFirstValue: 11216897 false) 
	#(182 1 #liftFirstValue: 11465729 false) 
	#(183 1 #liftFirstValue: 11533313 false) 
	#(184 1 #liftFirstValue: 11608065 false) 
	#(185 1 #liftFirstValue: 11686913 false) 
	#(186 1 #liftFirstValue: 11831297 false) 
	#(187 1 #liftFirstValue: 11954177 false) 
	#(188 1 #liftFirstValue: 12138497 false) 
	#(189 1 #liftFirstValue: 12243969 false) 
	#(190 1 #liftFirstValue: 12300289 false) 
	#(191 1 #liftFirstValue: 12347393 false) 
	#(193 1 #liftFirstValue: 12407821 false) 
	#(195 1 #reduceActionForstrings2: 12940290 false) 
	#(219 1 #liftFirstValue: 14825475 false) 
	#(223 1 #liftFirstValue: 15177730 false) 
	#(219 1 #liftFirstValue: 14825476 false) 
	#(193 1 #liftFirstValue: 12407817 false) 
	#(127 0 #reduceActionForassign_after1: 6762497 false) 
	#(158 1 #liftFirstValue: 9152519 false) 
	#(137 1 #reduceActionForyield_stmt1: 7513089 false) 
	#(109 0 #reduceActionFornewline_opts1: 5055489 false) 
	#(106 2 #reduceActionForfile_input2: 4797442 false) 
	#(106 2 #reduceActionForfile_input3: 4797443 false) 
	#(123 1 #liftFirstValue: 6446081 false) 
	#(123 1 #liftFirstValue: 6446082 false) 
	#(188 2 #reduceActionForfactor2: 12138498 false) 
	#(188 2 #reduceActionForfactor3: 12138499 false) 
	#(151 1 #reduceActionFordotted_name2: 8574978 false) 
	#(111 0 #nil 5187585 false) 
	#(239 1 #liftFirstValue: 16752642 false) 
	#(156 2 #reduceActionForassert_stmt1: 8948737 false) 
	#(155 1 #reduceActionFortest_test_opt1: 8871937 false) 
	#(190 2 #reduceActionForawait2: 12300290 false) 
	#(218 0 #nil 14802945 false) 
	#(131 2 #reduceActionFordel_stmt1: 7225345 false) 
	#(154 2 #reduceActionForexec_stmt1: 8763393 false) 
	#(144 1 #reduceActionFordots2: 8086530 false) 
	#(143 1 #reduceActionFordotopt_dotted_name2: 7976962 false) 
	#(143 1 #reduceActionFordotopt_dotted_name1: 7976961 false) 
	#(153 1 #reduceActionFornamelist2: 8718338 false) 
	#(152 2 #reduceActionForglobal_stmt1: 8671233 false) 
	#(150 1 #reduceActionFordotted_as_names2: 8499202 false) 
	#(141 2 #reduceActionForimport_name1: 7832577 false) 
	#(147 1 #reduceActionFordotted_as_name1: 8282113 false) 
	#(121 1 #reduceActionForfpdef1: 6321153 false) 
	#(118 1 #reduceActionForvarargslist_opt2: 5753858 false) 
	#(120 0 #nil 6282241 false) 
	#(179 2 #reduceActionFornot_test1: 11154433 false) 
	#(138 2 #reduceActionForraise_stmt2: 7550978 false) 
	#(226 1 #liftFirstValue: 15272962 false) 
	#(136 2 #reduceActionForreturn_stmt1: 7461889 false) 
	#(168 1 #reduceActionFornamelist2: 9982978 false) 
	#(169 1 #reduceActionForwith_item1: 10060801 false) 
	#(240 2 #reduceActionForyield_expr1: 16931841 false) 
	#(188 2 #reduceActionForfactor4: 12138500 false) 
	#(193 2 #reduceActionForatom11: 12407819 false) 
	#(193 2 #reduceActionForatom1: 12407809 false) 
	#(210 1 #liftFirstValue: 14179330 false) 
	#(193 2 #reduceActionForatom4: 12407812 false) 
	#(209 1 #liftFirstValue: 14113794 false) 
	#(193 2 #reduceActionForatom7: 12407815 false) 
	#(227 1 #liftFirstValue: 15313924 false) 
	#(113 2 #reduceActionFordecorators1: 5280769 false) 
	#(114 2 #reduceActionFordecorated2: 5366786 false) 
	#(114 2 #reduceActionFordecorated1: 5366785 false) 
	#(125 1 #liftFirstValue: 6609922 false) 
	#(107 2 #reduceActionForsingle_input3: 4885507 false) 
	#(181 1 #reduceActionForcomp_op7: 11298823 false) 
	#(181 1 #reduceActionForcomp_op1: 11298817 false) 
	#(181 1 #reduceActionForcomp_op5: 11298821 false) 
	#(181 1 #reduceActionForcomp_op6: 11298822 false) 
	#(181 1 #reduceActionForcomp_op3: 11298819 false) 
	#(181 1 #reduceActionForcomp_op2: 11298818 false) 
	#(181 1 #reduceActionForcomp_op4: 11298820 false) 
	#(181 1 #reduceActionForcomp_op8: 11298824 false) 
	#(181 1 #reduceActionForcomp_op10: 11298826 false) 
	#(215 0 #nil 14673921 false) 
	#(191 2 #reduceActionFortrailers2: 12347394 false) 
	#(192 1 #reduceActionFortrailer__trailer__1: 12380161 false) 
	#(195 2 #reduceActionForstrings1: 12940289 false) 
	#(223 2 #reduceActionFortestlist3: 15177731 false) 
	#(225 1 #reduceActionFor_____test__test___1: 15202305 false) 
	#(129 1 #liftFirstValue: 6915077 false) 
	#(129 1 #liftFirstValue: 6915078 false) 
	#(129 1 #liftFirstValue: 6915083 false) 
	#(129 1 #liftFirstValue: 6915075 false) 
	#(129 1 #liftFirstValue: 6915073 false) 
	#(129 1 #liftFirstValue: 6915074 false) 
	#(129 1 #liftFirstValue: 6915084 false) 
	#(129 1 #liftFirstValue: 6915076 false) 
	#(129 1 #liftFirstValue: 6915081 false) 
	#(129 1 #liftFirstValue: 6915082 false) 
	#(129 1 #liftFirstValue: 6915080 false) 
	#(129 1 #liftFirstValue: 6915079 false) 
	#(126 2 #reduceActionForexpr_stmt1: 6635521 false) 
	#(108 2 #reduceActionForeval_input1: 4999169 false) 
	#(112 0 #nil 5252097 false) 
	#(193 3 #reduceActionForatom8: 12407816 false) 
	#(116 0 #nil 5609473 false) 
	#(218 1 #liftFirstValue: 14802946 false) 
	#(217 2 #reduceActionForexprlist2: 14737410 false) 
	#(144 2 #reduceActionFordots1: 8086529 false) 
	#(143 2 #reduceActionFordotopt_dotted_name3: 7976963 false) 
	#(119 2 #reduceActionForvarargslist3: 5805059 false) 
	#(138 3 #reduceActionForraise_stmt3: 7550979 false) 
	#(171 1 #reduceActionForsuite1: 10435585 false) 
	#(240 3 #reduceActionForyield_expr2: 16931842 false) 
	#(194 2 #reduceActionFortype_annotation1: 12871681 false) 
	#(193 3 #reduceActionForatom3: 12407811 false) 
	#(210 2 #reduceActionFortestlist_comp1: 14179329 false) 
	#(193 3 #reduceActionForatom3: 12407810 false) 
	#(193 3 #reduceActionForatom5: 12407813 false) 
	#(209 2 #reduceActionForlistmaker1: 14113793 false) 
	#(227 2 #reduceActionFordictorsetmaker3: 15313923 false) 
	#(193 3 #reduceActionForatom6: 12407814 false) 
	#(124 3 #reduceActionForsimple_stmt1: 6501377 false) 
	#(124 3 #reduceActionForsimple_stmt2: 6501378 false) 
	#(177 3 #reduceActionForor_test2: 11015170 false) 
	#(178 3 #reduceActionForand_test2: 11082754 false) 
	#(181 2 #reduceActionForcomp_op11: 11298827 false) 
	#(181 2 #reduceActionForcomp_op9: 11298825 false) 
	#(180 3 #reduceActionForcomparison2: 11216898 false) 
	#(182 3 #reduceActionForexpr2: 11465730 false) 
	#(183 3 #reduceActionForxor_expr2: 11533314 false) 
	#(184 3 #reduceActionForand_expr2: 11608066 false) 
	#(185 3 #reduceActionForshift_expr2: 11686914 false) 
	#(185 3 #reduceActionForshift_expr3: 11686915 false) 
	#(186 3 #reduceActionForarith_expr2: 11831298 false) 
	#(186 3 #reduceActionForarith_expr3: 11831299 false) 
	#(187 3 #reduceActionForterm4: 11954180 false) 
	#(187 3 #reduceActionForterm2: 11954178 false) 
	#(187 3 #reduceActionForterm3: 11954179 false) 
	#(187 3 #reduceActionForterm5: 11954181 false) 
	#(189 3 #reduceActionForpower2: 12243970 false) 
	#(212 2 #reduceActionFortrailer4: 14327812 false) 
	#(212 2 #reduceActionFortrailer1: 14327809 false) 
	#(232 1 #reduceActionForargument1: 16095233 false) 
	#(214 1 #reduceActionForsubscript2: 14558210 false) 
	#(215 1 #liftFirstValue: 14673922 false) 
	#(192 2 #reduceActionFortrailer__trailer__2: 12380162 false) 
	#(198 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13168641 false) 
	#(200 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13336577 false) 
	#(202 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13512705 false) 
	#(204 0 #reduceActionFor__fStringSingleMid___part__test__expression___1: 13697025 false) 
	#(224 2 #reduceActionFor_____test__test__1: 15202305 false) 
	#(223 3 #reduceActionFortestlist1: 15177729 false) 
	#(225 2 #reduceActionFor_____test__test___2: 15202306 false) 
	#(221 3 #reduceActionForassignment_expression1: 15051777 false) 
	#(126 3 #reduceActionForexpr_stmt2: 6635522 false) 
	#(128 1 #liftFirstValue: 6867970 false) 
	#(128 1 #liftFirstValue: 6867969 false) 
	#(130 3 #reduceActionForprint_stmt1: 7109633 false) 
	#(109 2 #reduceActionFortrailer__trailer__2: 5055490 false) 
	#(151 3 #reduceActionFordotted_name1: 8574977 false) 
	#(112 1 #liftFirstValue: 5252098 false) 
	#(110 4 #reduceActionFordecorator1: 5100545 false) 
	#(239 3 #reduceActionFortestlist11: 16752641 false) 
	#(155 3 #reduceActionFortest_test_opt2: 8871938 false) 
	#(229 4 #reduceActionForclassdef1: 15567873 false) 
	#(217 3 #reduceActionForexprlist1: 14737409 false) 
	#(154 4 #reduceActionForexec_stmt2: 8763394 false) 
	#(145 1 #reduceActionForimport_names_star1: 8123393 false) 
	#(146 1 #reduceActionFordotted_as_name1: 8208385 false) 
	#(142 4 #reduceActionForimport_from1: 7886849 false) 
	#(149 1 #reduceActionFordotted_as_names2: 8417282 false) 
	#(145 1 #reduceActionForimport_names_star3: 8123395 false) 
	#(153 3 #reduceActionFornamelist1: 8718337 false) 
	#(160 0 #nil 9352193 false) 
	#(150 3 #reduceActionFordotted_as_names1: 8499201 false) 
	#(147 3 #reduceActionFordotted_as_name2: 8282114 false) 
	#(119 3 #reduceActionForvarargslist4: 5805060 false) 
	#(119 3 #reduceActionForvarargslist12: 5805068 false) 
	#(122 2 #reduceActionForexprlist2: 6379522 false) 
	#(121 3 #reduceActionForfpdef2: 6321154 false) 
	#(211 4 #reduceActionForlambdef1: 14248961 false) 
	#(120 2 #reduceActionForinit_opt2: 6282242 false) 
	#(119 3 #reduceActionForvarargslist14: 5805070 false) 
	#(138 4 #reduceActionForraise_stmt4: 7550980 false) 
	#(139 2 #reduceActionFor_____test__test__1: 7749633 false) 
	#(170 1 #reduceActionForexcept_clause1: 10215425 false) 
	#(161 0 #nil 9431041 false) 
	#(168 3 #reduceActionFornamelist1: 9982977 false) 
	#(167 4 #reduceActionForwith_stmt1: 9929729 false) 
	#(169 3 #reduceActionForwith_item2: 10060802 false) 
	#(231 0 #reduceActionFormore_args1: 15870977 false) 
	#(232 2 #reduceActionForargument2: 16095234 false) 
	#(212 3 #reduceActionFortrailer2: 14327810 false) 
	#(230 2 #reduceActionForarglist2: 15711234 false) 
	#(212 3 #reduceActionFortrailer3: 14327811 false) 
	#(213 2 #reduceActionForexprlist2: 14461954 false) 
	#(127 3 #reduceActionFornamelist1: 6762498 false) 
	#(130 4 #reduceActionForprint_stmt2: 7109634 false) 
	#(111 3 #liftSecondValue: 5187586 false) 
	#(117 3 #liftSecondValue: 5694465 false) 
	#(116 2 #reduceActionForreturn_annotation_opt2: 5609474 false) 
	#(148 2 #reduceActionForimport_as_names1: 8366081 false) 
	#(119 4 #reduceActionForvarargslist5: 5805061 false) 
	#(119 4 #reduceActionForvarargslist13: 5805069 false) 
	#(122 3 #reduceActionForexprlist1: 6379521 false) 
	#(119 4 #reduceActionForvarargslist1: 5805057 false) 
	#(119 4 #reduceActionForvarargslist15: 5805071 false) 
	#(172 1 #reduceActionFortrailer__trailer__1: 10511362 false) 
	#(170 2 #reduceActionForexcept_clause2: 10215426 false) 
	#(165 0 #nil 9777153 false) 
	#(162 5 #reduceActionForwhile_stmt1: 9475073 false) 
	#(228 1 #reduceActionFormore_tests1: 15491073 false) 
	#(227 4 #reduceActionFordictorsetmaker2: 15313922 false) 
	#(227 4 #reduceActionFordictorsetmaker1: 15313921 false) 
	#(219 5 #reduceActionFortest2: 14825474 false) 
	#(230 3 #reduceActionForarglist4: 15711236 false) 
	#(232 3 #reduceActionForargument3: 16095235 false) 
	#(230 3 #reduceActionForexprlist1: 15711233 false) 
	#(214 3 #reduceActionForsubscript1: 14558209 false) 
	#(213 3 #reduceActionForexprlist1: 14461953 false) 
	#(216 0 #nil 14695425 false) 
	#(196 5 #reduceActionForstring3: 13023235 false) 
	#(198 2 #reduceActionFor_____test__test___2: 13168642 false) 
	#(196 5 #reduceActionForstring3: 13023236 false) 
	#(200 2 #reduceActionFor_____test__test___2: 13336578 false) 
	#(196 5 #reduceActionForstring3: 13023237 false) 
	#(202 2 #reduceActionFor_____test__test___2: 13512706 false) 
	#(196 5 #reduceActionForstring3: 13023238 false) 
	#(204 2 #reduceActionFor_____test__test___2: 13697026 false) 
	#(127 4 #reduceActionForassign_after3: 6762499 false) 
	#(115 6 #reduceActionForfuncdef1: 5483521 false) 
	#(146 3 #reduceActionFordotted_as_name2: 8208386 false) 
	#(145 3 #reduceActionForimport_names_star2: 8123394 false) 
	#(149 3 #reduceActionFordotted_as_names1: 8417281 false) 
	#(159 6 #reduceActionForif_stmt1: 9271297 false) 
	#(119 5 #reduceActionForvarargslist6: 5805062 false) 
	#(119 5 #reduceActionForvarargslist2: 5805058 false) 
	#(138 6 #reduceActionForraise_stmt5: 7550981 false) 
	#(172 2 #reduceActionFortrailer__trailer__2: 10511361 false) 
	#(171 4 #reduceActionForsuite2: 10435586 false) 
	#(164 6 #reduceActionFortry_stmt2: 9638914 false) 
	#(164 6 #reduceActionFortry_stmt1: 9638913 false) 
	#(166 3 #reduceActionForexcept_list2: 9829378 false) 
	#(237 4 #reduceActionForcomp_for1: 16515073 false) 
	#(234 4 #reduceActionForlist_for1: 16238593 false) 
	#(173 1 #reduceActionFortestlist_safe1: 10749953 false) 
	#(175 1 #liftFirstValue: 10895362 false) 
	#(175 1 #liftFirstValue: 10895361 false) 
	#(230 4 #reduceActionForarglist3: 15711235 false) 
	#(214 4 #reduceActionForsubscript3: 14558211 false) 
	#(197 2 #reduceActionFor_____test__test__1: 13168641 false) 
	#(199 2 #reduceActionFor_____test__test__1: 13336577 false) 
	#(201 2 #reduceActionFor_____test__test__1: 13512705 false) 
	#(203 2 #reduceActionFor_____test__test__1: 13697025 false) 
	#(115 7 #reduceActionForfuncdef2: 5483522 false) 
	#(229 7 #reduceActionForclassdef2: 15567874 false) 
	#(163 7 #reduceActionForfor_stmt1: 9548801 false) 
	#(119 6 #reduceActionForvarargslist7: 5805063 false) 
	#(119 6 #reduceActionForvarargslist8: 5805064 false) 
	#(170 4 #reduceActionForexcept_clause4: 10215428 false) 
	#(170 4 #reduceActionForexcept_clause3: 10215427 false) 
	#(161 3 #reduceActionForelse_opt2: 9431042 false) 
	#(166 4 #reduceActionForexcept_list1: 9829377 false) 
	#(237 5 #reduceActionForcomp_for2: 16515074 false) 
	#(236 1 #liftFirstValue: 16478209 false) 
	#(236 1 #liftFirstValue: 16478210 false) 
	#(234 5 #reduceActionForlist_for2: 16238594 false) 
	#(233 1 #liftFirstValue: 16202753 false) 
	#(233 1 #liftFirstValue: 16202754 false) 
	#(231 3 #reduceActionFormore_args2: 15870978 false) 
	#(231 3 #reduceActionFormore_args3: 15870979 false) 
	#(216 2 #reduceActionForsliceop2: 14695426 false) 
	#(119 7 #reduceActionForvarargslist9: 5805065 false) 
	#(119 7 #reduceActionForvarargslist10: 5805066 false) 
	#(165 3 #reduceActionForfinally_opt2: 9777154 false) 
	#(238 2 #reduceActionForcomp_if1: 16642049 false) 
	#(235 2 #reduceActionForlist_if1: 16367617 false) 
	#(174 1 #reduceActionFornamelist2: 10829826 false) 
	#(160 5 #reduceActionForelifs_opt2: 9352194 false) 
	#(119 8 #reduceActionForvarargslist11: 5805067 false) 
	#(238 3 #reduceActionForcomp_if2: 16642050 false) 
	#(176 4 #reduceActionForold_lambdef1: 10933249 false) 
	#(235 3 #reduceActionForlist_if2: 16367618 false) 
	#(173 4 #reduceActionFortestlist_safe2: 10749954 false) 
	#(228 5 #reduceActionFormore_tests2: 15491074 false) 
	#(174 3 #reduceActionFornamelist1: 10829825 false)
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
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '"..."' '"/"' '"//"' '"//="' '"/="' '":"' '":="' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"async"' '"await"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'return_annotation_opt' 'parameters' 'varargslist_opt' 'varargslist' 'init_opt' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'raise_from' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' 'dots' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elifs_opt' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'await' 'trailers' 'trailer ''trailer''+' 'atom' 'type_annotation' 'strings' 'string' '(<fStringSingleMid> ''part'' test ''expression'')' '(<fStringSingleMid> ''part'' test ''expression'')*' '(<fStringDoubleMid> ''part'' test ''expression'')' '(<fStringDoubleMid> ''part'' test ''expression'')*' '(<fLongStringSingleMid> ''part'' test ''expression'')' '(<fLongStringSingleMid> ''part'' test ''expression'')*' '(<fLongStringDoubleMid> ''part'' test ''expression'')' '(<fLongStringDoubleMid> ''part'' test ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'orOrLambdaTest' 'assignment_expression' 'Symbol' 'testlist' '("," test ''test'')' '("," test ''test'')+' 'testlist_opt' 'dictorsetmaker' 'more_tests' 'classdef' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' '<Python2>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #PyDecoratorsNode #PyDecoratedNode #PyFuncdefNode #PyReturnTypeAnnotationNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #PyInitOptNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #PyRootNode #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #OrderedCollection #PyImportNode #PyImportNode #PyImportNode #PyDotoptDottedNameNode #PyDotsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyDottedNameNode #PyGlobalNode #OrderedCollection #PyExecNode #PyTestTestOptNode #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyCompOpNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #OrderedCollection #PyRootNode #PyTypeAnnotationNode #PyStringsNode #PyRootNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Array #Array #Array #Array #PyRootNode #PyRootNode #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #PyRootNode #PyAssignmentExpressionNode #PySymbolNode #PyRootNode #OrderedCollection #OrderedCollection #PyRootNode #PyRootNode #OrderedCollection #PyClassdefNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser class >> transitionTable [
^#(
#[1 0 6 0 10 0 6 0 13 0 6 0 17 0 6 0 36 0 6 0 39 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 53 0 6 0 55 0 6 0 56 0 6 0 57 0 6 0 58 0 6 0 59 0 6 0 62 0 6 0 63 0 6 0 65 0 6 0 67 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 0 6 0 76 0 6 0 77 0 6 0 78 0 6 0 79 0 6 0 82 0 6 0 85 0 6 0 88 0 6 0 91 0 6 0 98 0 6 0 99 0 6 0 101 0 6 0 103 0 17 0 106 0 6 0 243 0 6 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 33 0 36 0 37 0 39 0 41 0 42 0 45 0 43 0 49 0 44 0 53 0 45 0 57 0 46 0 61 0 47 0 65 0 48 0 69 0 49 0 73 0 53 0 77 0 55 0 81 0 56 0 85 0 57 0 89 0 58 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 153 0 98 0 157 0 99 0 161 0 101 0 165 0 103 0 169 0 107 0 173 0 110 0 177 0 113 1 5 0 114 1 5 0 115 0 189 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 1 5 0 158 1 5 0 159 1 5 0 162 1 5 0 163 1 5 0 164 1 5 0 167 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 5 0 229 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 145 0 108 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 149 0 223] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 33 0 36 0 37 0 39 0 41 0 42 0 45 0 43 0 49 0 44 0 53 0 45 0 57 0 46 0 61 0 47 0 65 0 48 0 69 0 49 0 73 0 53 0 77 0 55 0 81 0 56 0 85 0 57 0 89 0 58 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 1 153 0 98 0 157 0 99 0 161 0 101 0 165 0 103 0 173 0 110 0 177 0 113 1 157 0 114 1 157 0 115 1 157 0 123 1 157 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 1 157 0 158 1 157 0 159 1 157 0 162 1 157 0 163 1 157 0 164 1 157 0 167 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 157 0 229 1 137 0 240 1 141 0 243 0 0 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 169 0 188 1 169 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 177 0 188 1 177 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 0 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 1 181 0 76 1 185 0 151] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 189 0 211 1 189 0 219 1 189 0 221 1 125 0 222 1 193 0 239] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 197 0 155 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 201 0 211 1 201 0 219 1 201 0 221 1 125 0 222] 
#[0 1 205 0 48] 
#[1 0 29 0 17 0 37 0 39 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 209 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 0 30 0 24 0 98] 
#[0 1 213 0 76] 
#[0 0 34 0 24 0 98] 
#[0 1 217 0 76] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 221 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 225 0 217 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 229 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 221 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 233 0 217 1 85 0 222] 
#[1 1 237 0 16 1 181 0 76 1 241 0 143 1 245 0 144 1 249 0 151] 
#[1 1 253 0 76 2 1 0 153] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 5 0 211 2 5 0 219 2 5 0 221 1 125 0 222] 
#[1 1 181 0 76 2 9 0 147 2 13 0 150 2 17 0 151] 
#[1 2 21 0 6 2 25 0 7 0 38 0 22 2 29 0 76 2 33 0 99 2 37 0 118 2 41 0 119 2 45 0 121] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 2 49 0 179 2 49 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 0 42 0 24 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 46 0 24 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 46 0 98 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 53 0 211 2 53 0 219 2 53 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 50 0 24 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 50 0 98 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 2 61 0 223 2 61 0 226] 
#[0 2 65 0 22] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 69 0 211 2 69 0 219 2 69 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 2 73 0 168 2 77 0 169 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 81 0 211 2 81 0 219 2 81 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 37 0 39 0 49 0 44 2 85 0 56 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 50 0 98 0 157 0 99 0 50 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 2 89 0 223 2 89 0 226] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 2 93 0 188 2 93 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 54 0 1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 16 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 7 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 54 0 27 0 54 0 28 0 54 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 51 0 54 0 55 0 54 0 56 0 54 0 58 0 54 0 60 0 54 0 61 0 54 0 63 0 54 0 64 0 54 0 73 0 54 0 74 0 54 0 80 0 54 0 81 0 54 0 83 0 54 0 84 0 54 0 86 0 54 0 87 0 54 0 89 0 54 0 90 0 54 0 98 0 54 0 99 0 54 0 100 0 54 0 101 0 54 0 102 0 54 0 104 2 101 0 194 0 54 0 244] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 0 70 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 2 105 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 109 0 210 2 113 0 211 2 113 0 219 2 113 0 221 1 125 0 222 2 109 0 223 2 121 0 240] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 2 125 0 102 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 129 0 209 2 133 0 211 2 133 0 219 2 133 0 221 1 125 0 222 2 129 0 223] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 2 141 0 104 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 145 0 211 2 145 0 219 2 145 0 221 1 125 0 222 2 153 0 223 2 153 0 227] 
#[0 0 0 0 244] 
#[0 0 74 0 36 0 43 0 46 0 48] 
#[1 0 33 0 36 0 45 0 43 0 57 0 46 0 65 0 48 2 157 0 110 2 161 0 115 2 165 0 229] 
#[0 0 78 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 82 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 86 0 244] 
#[0 0 90 0 24 0 98] 
#[0 0 94 0 24 0 98] 
#[0 0 98 0 24 0 98] 
#[0 0 102 0 24 0 98] 
#[0 0 106 0 24 0 98] 
#[0 0 110 0 24 0 98] 
#[0 0 114 0 24 0 98] 
#[0 0 118 0 24 0 98] 
#[0 0 122 0 24 0 98] 
#[0 0 126 0 24 0 98] 
#[0 0 130 0 24 0 98] 
#[0 0 134 0 24 0 98] 
#[0 0 138 0 24 0 98] 
#[0 0 142 0 24 0 98] 
#[0 0 146 0 24 0 98] 
#[0 0 150 0 24 0 98] 
#[1 2 169 0 24 0 154 0 98 2 173 0 125] 
#[0 2 177 0 98] 
#[0 0 158 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 162 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 166 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 170 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 0 174 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 24 0 178 0 27 0 178 0 30 0 178 0 35 0 178 0 38 0 178 0 39 0 178 0 41 0 178 0 55 0 178 0 56 2 181 0 58 0 178 0 74 0 178 0 80 0 178 0 81 0 178 0 83 0 178 0 84 0 178 0 86 0 178 0 87 0 178 0 89 0 178 0 90 0 178 0 98 0 178 0 100 0 178 0 102 0 178 0 104 0 178 0 244] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 24 0 182 0 27 0 182 0 30 0 182 0 35 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 51 0 182 0 55 0 182 0 56 0 182 0 58 2 185 0 64 0 182 0 74 0 182 0 80 0 182 0 81 0 182 0 83 0 182 0 84 0 182 0 86 0 182 0 87 0 182 0 89 0 182 0 90 0 182 0 98 0 182 0 100 0 182 0 102 0 182 0 104 0 182 0 244] 
#[1 0 186 0 3 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 24 0 186 0 27 0 186 0 30 0 186 0 35 0 186 0 38 0 186 0 39 2 189 0 40 0 186 0 41 0 186 0 51 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 64 0 186 0 74 0 186 0 80 0 186 0 81 0 186 0 83 0 186 0 84 0 186 0 86 0 186 0 87 0 186 0 89 0 186 0 90 0 186 0 98 0 186 0 100 0 186 0 102 0 186 0 104 0 186 0 244] 
#[0 0 190 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 64 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 2 193 0 1 0 194 0 3 0 194 0 5 0 194 0 8 0 194 0 9 0 194 0 11 0 194 0 12 0 194 0 14 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 24 2 197 0 25 0 194 0 27 2 201 0 28 2 205 0 29 0 194 0 30 2 209 0 31 2 213 0 32 2 217 0 33 0 194 0 35 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 51 0 194 0 55 0 194 0 56 0 194 0 58 2 221 0 60 2 225 0 61 2 229 0 63 0 194 0 64 0 194 0 74 0 194 0 80 0 194 0 81 0 194 0 83 0 194 0 84 0 194 0 86 0 194 0 87 0 194 0 89 0 194 0 90 0 194 0 98 0 194 0 100 0 194 0 102 0 194 0 104 2 233 0 181 0 194 0 244] 
#[1 0 198 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 16 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 51 0 198 0 55 0 198 0 56 0 198 0 58 0 198 0 60 0 198 0 61 0 198 0 63 0 198 0 64 0 11 0 73 0 198 0 74 0 198 0 80 0 198 0 81 0 198 0 83 0 198 0 84 0 198 0 86 0 198 0 87 0 198 0 89 0 198 0 90 0 198 0 98 0 198 0 99 0 198 0 100 0 198 0 101 0 198 0 102 0 198 0 104 0 198 0 244] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 15 0 37 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 51 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 60 0 202 0 61 0 202 0 63 0 202 0 64 0 202 0 73 0 202 0 74 0 202 0 80 0 202 0 81 0 202 0 83 0 202 0 84 0 202 0 86 0 202 0 87 0 202 0 89 0 202 0 90 0 202 0 98 0 202 0 99 0 202 0 100 0 202 0 101 0 202 0 102 0 202 0 104 0 202 0 244] 
#[1 0 206 0 1 0 206 0 2 0 206 0 3 0 19 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 51 0 206 0 55 0 206 0 56 0 206 0 58 0 206 0 60 0 206 0 61 0 206 0 63 0 206 0 64 0 206 0 73 0 206 0 74 0 206 0 80 0 206 0 81 0 206 0 83 0 206 0 84 0 206 0 86 0 206 0 87 0 206 0 89 0 206 0 90 0 206 0 98 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 102 0 206 0 104 0 206 0 244] 
#[1 0 210 0 1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 12 0 210 0 13 0 210 0 14 0 210 0 16 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 24 0 210 0 25 0 23 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 33 0 27 0 34 0 210 0 35 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 51 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 63 0 210 0 64 0 210 0 73 0 210 0 74 0 210 0 80 0 210 0 81 0 210 0 83 0 210 0 84 0 210 0 86 0 210 0 87 0 210 0 89 0 210 0 90 0 210 0 98 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 102 0 210 0 104 0 210 0 244] 
#[1 0 214 0 1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 31 0 10 0 214 0 11 0 214 0 12 0 35 0 13 0 214 0 14 0 214 0 16 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 51 0 214 0 55 0 214 0 56 0 214 0 58 0 214 0 60 0 214 0 61 0 214 0 63 0 214 0 64 0 214 0 73 0 214 0 74 0 214 0 80 0 214 0 81 0 214 0 83 0 214 0 84 0 214 0 86 0 214 0 87 0 214 0 89 0 214 0 90 0 214 0 98 0 214 0 99 0 214 0 100 0 214 0 101 0 214 0 102 0 214 0 104 0 214 0 244] 
#[1 0 218 0 1 0 39 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 43 0 6 0 218 0 7 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 16 0 47 0 18 0 51 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 24 0 218 0 25 0 218 0 26 0 218 0 27 0 218 0 28 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 51 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 60 0 218 0 61 0 218 0 63 0 218 0 64 0 218 0 73 0 218 0 74 0 218 0 80 0 218 0 81 0 218 0 83 0 218 0 84 0 218 0 86 0 218 0 87 0 218 0 89 0 218 0 90 0 218 0 98 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 104 0 218 0 244] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 226 0 1 0 226 0 2 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 6 0 55 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 16 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 27 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 51 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 60 0 226 0 61 0 226 0 63 0 226 0 64 0 226 0 73 0 226 0 74 0 226 0 80 0 226 0 81 0 226 0 83 0 226 0 84 0 226 0 86 0 226 0 87 0 226 0 89 0 226 0 90 0 226 0 98 0 226 0 99 0 226 0 100 0 226 0 101 0 226 0 102 0 226 0 104 0 226 0 244] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 234 0 1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 59 0 16 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 24 0 234 0 25 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 40 0 234 0 41 0 234 0 51 0 234 0 55 0 234 0 56 0 234 0 58 0 234 0 60 0 234 0 61 0 234 0 63 0 234 0 64 0 234 0 73 0 234 0 74 0 234 0 80 0 234 0 81 0 234 0 83 0 234 0 84 0 234 0 86 0 234 0 87 0 234 0 89 0 234 0 90 0 234 0 98 0 63 0 99 0 234 0 100 0 67 0 101 0 234 0 102 0 234 0 104 3 41 0 192 3 45 0 212 0 234 0 244] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 242 0 1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 0 242 0 7 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 11 0 242 0 12 0 242 0 13 0 242 0 14 0 242 0 16 0 242 0 18 0 242 0 19 0 242 0 20 0 242 0 21 0 242 0 22 0 242 0 24 0 242 0 25 0 242 0 26 0 242 0 27 0 242 0 28 0 242 0 29 0 242 0 30 0 242 0 31 0 242 0 32 0 242 0 33 0 242 0 34 0 242 0 35 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 40 0 242 0 41 0 242 0 51 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 60 0 242 0 61 0 242 0 63 0 242 0 64 0 242 0 73 0 242 0 74 0 141 0 77 0 145 0 78 0 10 0 79 0 242 0 80 0 242 0 81 0 14 0 82 0 242 0 83 0 242 0 84 0 18 0 85 0 242 0 86 0 242 0 87 0 22 0 88 0 242 0 89 0 242 0 90 0 242 0 98 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 102 0 242 0 104 3 49 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 0 242 0 244] 
#[0 3 53 0 79] 
#[0 3 57 0 82] 
#[0 3 61 0 85] 
#[0 3 65 0 88] 
#[0 0 246 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 0 250 0 3 0 250 0 5 0 250 0 8 0 250 0 9 0 250 0 11 3 69 0 12 0 250 0 14 0 250 0 20 0 250 0 21 0 250 0 22 0 250 0 24 0 250 0 27 0 250 0 30 0 250 0 35 0 250 0 38 0 250 0 74 0 250 0 98 0 250 0 100 3 73 0 224 3 77 0 225 0 250 0 244] 
#[0 0 254 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 1 2 0 1 1 2 0 2 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 11 1 2 0 12 1 2 0 13 1 2 0 14 1 2 0 16 1 2 0 18 1 2 0 19 1 2 0 20 1 2 0 21 1 2 0 22 3 81 0 23 1 2 0 24 1 2 0 25 1 2 0 26 1 2 0 27 1 2 0 28 1 2 0 29 1 2 0 30 1 2 0 31 1 2 0 32 1 2 0 33 1 2 0 34 1 2 0 35 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 41 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 60 1 2 0 61 1 2 0 63 1 2 0 64 1 2 0 73 1 2 0 74 1 2 0 80 1 2 0 81 1 2 0 83 1 2 0 84 1 2 0 86 1 2 0 87 1 2 0 89 1 2 0 90 1 2 0 98 1 2 0 99 1 2 0 100 1 2 0 101 1 2 0 102 1 2 0 104 1 2 0 244] 
#[1 3 137 0 3 3 137 0 5 3 137 0 8 3 137 0 9 3 137 0 11 3 137 0 14 3 137 0 20 3 137 0 21 1 6 0 22 1 6 0 24 3 137 0 27 1 6 0 30 3 137 0 35 3 137 0 38 3 137 0 74 1 6 0 98 3 133 0 127 3 137 0 129] 
#[0 1 10 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 1 14 0 24 0 98] 
#[0 3 141 0 66] 
#[0 0 0 0 244] 
#[1 1 18 0 98 3 145 0 109 1 18 0 244] 
#[0 1 22 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 243 0 244] 
#[0 1 26 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 243 0 244] 
#[0 1 30 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 1 34 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 1 46 0 12 0 16 0 24 0 41 0 59 0 98 0 99] 
#[1 3 149 0 16 1 50 0 98 3 153 0 99 3 157 0 111] 
#[1 3 161 0 12 1 54 0 39] 
#[0 3 165 0 39] 
#[0 1 58 0 24 0 98] 
#[1 3 169 0 12 1 62 0 24 1 62 0 98] 
#[0 3 173 0 76] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 3 177 0 22 3 181 0 99] 
#[1 3 185 0 99 3 189 0 117] 
#[1 3 193 0 12 1 70 0 24 1 70 0 60 1 70 0 98 3 197 0 218] 
#[0 1 74 0 24 0 98] 
#[1 1 78 0 24 3 201 0 60 1 78 0 98] 
#[0 3 205 0 60] 
#[0 1 82 0 16 0 59 0 76] 
#[0 3 209 0 59] 
#[1 3 213 0 16 1 86 0 59 1 181 0 76 3 217 0 151] 
#[1 3 149 0 16 1 90 0 59] 
#[0 1 94 0 12 0 24 0 98] 
#[1 3 221 0 12 1 98 0 24 1 98 0 98] 
#[0 3 225 0 22] 
#[0 1 102 0 12 0 24 0 98] 
#[1 3 229 0 12 1 106 0 24 1 106 0 98] 
#[1 1 110 0 12 3 149 0 16 1 110 0 24 3 233 0 41 1 110 0 98] 
#[1 3 237 0 12 1 70 0 22 3 241 0 76 1 70 0 100 3 245 0 218] 
#[0 3 249 0 76] 
#[0 1 114 0 12 0 22 0 30 0 100] 
#[1 2 29 0 76 2 33 0 99 3 253 0 121 4 1 0 122] 
#[0 4 5 0 22] 
#[0 1 118 0 22 0 100] 
#[1 1 122 0 12 0 71 0 22 4 9 0 30 1 122 0 100 4 13 0 120 4 17 0 194] 
#[0 1 126 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 64 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 4 21 0 12 1 130 0 24 4 25 0 56 1 130 0 98 4 29 0 139] 
#[0 1 134 0 22 0 24 0 30 0 98 0 100] 
#[0 1 138 0 24 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 4 41 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 45 0 22] 
#[1 4 49 0 12 4 53 0 22] 
#[0 1 142 0 12 0 22] 
#[1 1 146 0 12 1 146 0 22 4 57 0 41] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 50 0 22 0 50 0 24 0 50 0 30 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 50 0 98 0 157 0 99 0 50 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 4 61 0 223 4 61 0 226] 
#[0 1 150 0 22 0 24 0 30 0 98 0 100] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 65 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 69 0 100] 
#[1 3 69 0 12 4 73 0 55 0 250 0 100 3 73 0 224 3 77 0 225 4 77 0 237] 
#[0 1 166 0 100] 
#[0 4 81 0 100] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 85 0 102] 
#[1 3 69 0 12 4 89 0 55 0 250 0 102 3 73 0 224 3 77 0 225 4 93 0 234] 
#[0 1 174 0 102] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 3 69 0 12 4 97 0 22 4 73 0 55 0 250 0 104 3 73 0 224 3 77 0 225 4 101 0 237] 
#[0 1 182 0 104] 
#[0 4 105 0 104] 
#[0 1 186 0 36 0 43 0 46 0 48] 
#[0 1 190 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 1 194 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 1 198 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 109 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 113 0 98] 
#[0 1 202 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 117 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 121 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 125 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 1 206 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 210 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 214 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 218 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 222 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 226 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 230 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 1 234 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[1 1 238 0 10 1 238 0 13 1 238 0 17 1 238 0 39 1 238 0 44 4 129 0 63 1 238 0 75 1 238 0 76 1 238 0 77 1 238 0 78 1 238 0 79 1 238 0 82 1 238 0 85 1 238 0 88 1 238 0 91 1 238 0 99 1 238 0 101 1 238 0 103] 
#[0 4 133 0 60] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 137 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 141 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 145 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 149 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 153 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 157 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 161 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 165 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 169 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 173 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 177 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 181 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 4 185 0 188 4 185 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 4 189 0 76] 
#[1 4 193 0 6 4 197 0 7 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 4 201 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 205 0 211 4 205 0 219 4 205 0 221 1 125 0 222 4 209 0 230 4 213 0 232] 
#[1 0 21 0 10 0 25 0 13 4 217 0 16 0 29 0 17 1 242 0 22 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 233 0 211 4 221 0 213 4 225 0 214 4 229 0 215 4 233 0 219 4 233 0 221 1 125 0 222] 
#[1 1 246 0 1 1 246 0 2 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 10 1 246 0 11 1 246 0 12 1 246 0 13 1 246 0 14 0 75 0 16 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 22 1 246 0 24 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 29 1 246 0 30 1 246 0 31 1 246 0 32 1 246 0 33 1 246 0 34 1 246 0 35 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 40 1 246 0 41 1 246 0 51 1 246 0 55 1 246 0 56 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 63 1 246 0 64 1 246 0 73 1 246 0 74 1 246 0 80 1 246 0 81 1 246 0 83 1 246 0 84 1 246 0 86 1 246 0 87 1 246 0 89 1 246 0 90 1 246 0 98 0 79 0 99 1 246 0 100 0 83 0 101 1 246 0 102 1 246 0 104 4 237 0 212 1 246 0 244] 
#[0 1 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 1 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 241 0 211 4 241 0 219 4 241 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 245 0 211 4 245 0 219 4 245 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 249 0 211 4 249 0 219 4 249 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 253 0 211 4 253 0 219 4 253 0 221 1 125 0 222] 
#[1 2 2 0 3 2 2 0 5 2 2 0 8 2 2 0 9 0 21 0 10 2 2 0 11 0 25 0 13 2 2 0 14 0 29 0 17 2 2 0 20 2 2 0 21 2 2 0 22 2 2 0 24 2 2 0 27 2 2 0 30 2 2 0 35 2 2 0 38 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 2 2 0 74 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 2 2 0 98 0 157 0 99 2 2 0 100 0 161 0 101 2 2 0 102 0 165 0 103 2 2 0 104 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 1 0 211 5 1 0 219 5 1 0 221 1 125 0 222 2 2 0 244] 
#[0 2 6 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 74 0 98 0 100 0 102 0 104 0 244] 
#[1 1 70 0 3 1 70 0 5 1 70 0 8 1 70 0 9 1 70 0 11 5 5 0 12 1 70 0 14 1 70 0 20 1 70 0 21 1 70 0 22 1 70 0 24 1 70 0 27 1 70 0 30 1 70 0 35 1 70 0 38 1 70 0 74 1 70 0 98 1 70 0 100 1 70 0 102 1 70 0 104 5 9 0 218 5 13 0 224 1 70 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 17 0 211 5 17 0 219 5 17 0 221 1 125 0 222] 
#[0 2 10 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 14 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 18 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 22 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 26 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 30 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 34 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 38 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 42 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 46 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 50 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 54 0 10 0 13 0 17 0 39 0 44 0 62 0 63 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[1 2 97 0 22 2 58 0 24 5 21 0 30 2 58 0 98 5 25 0 194] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 5 29 0 128 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 5 29 0 223 5 29 0 240] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 50 0 24 5 41 0 34 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 50 0 98 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 5 45 0 223 5 45 0 226] 
#[1 5 49 0 98 2 62 0 244] 
#[0 5 53 0 76] 
#[1 4 193 0 6 4 197 0 7 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 2 66 0 100 0 161 0 101 0 165 0 103 5 57 0 112 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 205 0 211 4 205 0 219 4 205 0 221 1 125 0 222 5 57 0 230 4 213 0 232] 
#[0 5 65 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 189 0 211 1 189 0 219 1 189 0 221 1 125 0 222 5 69 0 239] 
#[0 2 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 73 0 211 5 73 0 219 5 73 0 221 1 125 0 222] 
#[1 3 185 0 99 5 77 0 117] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 5 81 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 50 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 5 85 0 223 5 85 0 226] 
#[1 2 21 0 6 2 25 0 7 2 29 0 76 2 33 0 99 0 38 0 100 5 89 0 118 2 41 0 119 2 45 0 121] 
#[1 5 93 0 15 2 74 0 22 5 97 0 116] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 2 78 0 24 0 37 0 39 0 49 0 44 2 78 0 60 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 2 78 0 98 0 157 0 99 0 161 0 101 0 165 0 103 1 221 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 101 0 217 1 85 0 222] 
#[0 2 82 0 24 0 60 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 5 105 0 155 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 201 0 211 1 201 0 219 1 201 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 5 109 0 223] 
#[1 5 113 0 6 5 117 0 76 5 121 0 99 5 125 0 145 5 129 0 146 5 133 0 148 5 137 0 149] 
#[0 2 86 0 16 0 59 0 76] 
#[1 3 149 0 16 2 90 0 59] 
#[0 5 141 0 76] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 5 145 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 1 181 0 76 5 149 0 147 2 17 0 151] 
#[0 5 153 0 76] 
#[1 5 157 0 7 2 78 0 22 2 78 0 100] 
#[1 5 161 0 12 0 87 0 22 1 70 0 100 5 165 0 194 5 169 0 218] 
#[0 2 94 0 22 0 100] 
#[1 5 181 0 12 0 87 0 22 1 70 0 100 5 177 0 194 5 181 0 218] 
#[1 5 185 0 12 1 70 0 100 5 189 0 218] 
#[0 5 193 0 100] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 197 0 211 5 197 0 219 5 197 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 201 0 211 5 201 0 219 5 201 0 221 1 125 0 222] 
#[1 5 205 0 12 1 70 0 22 1 70 0 100 5 209 0 218] 
#[1 1 122 0 12 1 122 0 22 4 9 0 30 1 122 0 100 5 213 0 120] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 217 0 211 5 217 0 219 5 217 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 221 0 211 5 221 0 219 5 221 0 221 1 125 0 222] 
#[0 2 98 0 24 0 98] 
#[0 5 225 0 242] 
#[0 2 102 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 5 229 0 52 5 233 0 54 5 237 0 166 5 241 0 170] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 5 245 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 5 249 0 169 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 2 81 0 211 2 81 0 219 2 81 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 5 253 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 6 1 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 2 106 0 22 0 24 0 30 0 98 0 100] 
#[0 2 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 221 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 5 0 217 1 85 0 222] 
#[0 2 118 0 100] 
#[0 2 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 221 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 9 0 217 1 85 0 222] 
#[0 2 130 0 102] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 13 0 211 6 13 0 219 6 13 0 221 1 125 0 222] 
#[0 2 134 0 104] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 142 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 2 146 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 6 17 0 51] 
#[0 2 150 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[0 2 154 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 51 0 55 0 56 0 58 0 64 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[0 2 158 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 162 0 10 0 13 0 17 0 39 0 44 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103] 
#[0 2 166 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 64 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 2 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 21 0 211 6 21 0 219 6 21 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 25 0 211 6 25 0 219 6 25 0 221 1 125 0 222] 
#[0 2 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 2 226 0 12 6 29 0 30 4 73 0 55 2 226 0 100 6 33 0 237] 
#[0 6 37 0 100] 
#[1 6 41 0 12 1 70 0 100 6 45 0 218] 
#[0 6 49 0 16] 
#[0 6 53 0 102] 
#[1 6 57 0 12 1 70 0 102 6 61 0 218] 
#[0 6 65 0 22] 
#[1 2 230 0 12 2 234 0 22 2 230 0 102] 
#[0 2 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 2 242 0 80 2 242 0 81 6 69 0 198] 
#[1 2 246 0 83 2 246 0 84 6 73 0 200] 
#[1 2 250 0 86 2 250 0 87 6 77 0 202] 
#[1 2 254 0 89 2 254 0 90 6 81 0 204] 
#[0 3 2 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 74 0 98 0 100 0 102 0 104 0 244] 
#[1 2 78 0 3 2 78 0 5 2 78 0 8 2 78 0 9 0 21 0 10 2 78 0 11 0 25 0 13 2 78 0 14 0 29 0 17 2 78 0 20 2 78 0 21 2 78 0 22 2 78 0 24 2 78 0 27 2 78 0 30 2 78 0 35 2 78 0 38 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 2 78 0 74 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 2 78 0 98 0 157 0 99 2 78 0 100 0 161 0 101 2 78 0 102 0 165 0 103 2 78 0 104 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 5 1 0 211 5 1 0 219 5 1 0 221 1 125 0 222 2 78 0 244] 
#[0 3 6 0 3 0 5 0 8 0 9 0 11 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 74 0 98 0 100 0 102 0 104 0 244] 
#[0 3 10 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 74 0 98 0 100 0 102 0 104 0 244] 
#[0 3 14 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 6 85 0 128 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 6 85 0 223 6 85 0 240] 
#[0 6 89 0 30] 
#[0 3 18 0 24 0 98] 
#[0 3 22 0 22 0 24 0 30 0 98] 
#[0 3 26 0 22 0 24 0 30 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 6 93 0 223] 
#[0 3 30 0 24 0 98] 
#[0 3 34 0 98 0 244] 
#[0 3 38 0 12 0 16 0 24 0 41 0 59 0 98 0 99] 
#[0 6 97 0 100] 
#[0 3 42 0 100] 
#[0 3 46 0 36 0 43 0 46 0 48] 
#[0 3 50 0 39] 
#[0 3 54 0 24 0 98] 
#[1 5 93 0 15 2 74 0 22 6 101 0 116] 
#[0 3 58 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 6 105 0 100] 
#[0 6 109 0 100] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 6 113 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 6 117 0 22] 
#[0 3 62 0 24 0 60 0 98] 
#[0 3 66 0 24 0 98] 
#[0 6 121 0 22] 
#[0 3 70 0 24 0 98] 
#[1 3 74 0 12 3 74 0 24 6 125 0 41 3 74 0 98 3 74 0 100] 
#[1 5 117 0 76 5 129 0 146 6 129 0 148 5 137 0 149] 
#[0 3 78 0 24 0 98] 
#[0 3 82 0 12 0 24 0 98 0 100] 
#[0 3 86 0 24 0 98] 
#[1 6 133 0 12 1 70 0 24 1 70 0 98 1 70 0 100 6 137 0 218] 
#[0 3 90 0 12 0 24 0 98] 
#[1 3 94 0 10 3 94 0 13 3 94 0 17 3 94 0 36 3 94 0 39 3 94 0 42 3 94 0 43 3 94 0 44 3 94 0 45 3 94 0 46 3 94 0 47 3 94 0 48 3 94 0 49 3 94 0 50 3 94 0 51 3 94 0 53 3 94 0 55 3 94 0 56 3 94 0 57 3 94 0 58 3 94 0 59 3 94 0 62 3 94 0 63 3 94 0 65 3 94 0 67 3 94 0 68 3 94 0 69 3 94 0 70 3 94 0 71 3 94 0 72 3 94 0 75 3 94 0 76 3 94 0 77 3 94 0 78 3 94 0 79 3 94 0 82 3 94 0 85 3 94 0 88 3 94 0 91 3 94 0 98 3 94 0 99 3 94 0 101 3 94 0 103 6 141 0 160 3 94 0 241 3 94 0 243 3 94 0 244] 
#[0 3 98 0 12 0 24 0 98] 
#[0 3 102 0 12 0 24 0 98] 
#[0 6 145 0 76] 
#[1 6 149 0 7 2 78 0 22 2 78 0 100] 
#[1 6 153 0 12 1 70 0 22 1 70 0 100 6 157 0 218] 
#[0 3 106 0 22 0 100] 
#[0 2 78 0 22 0 100] 
#[1 6 161 0 12 1 70 0 22 1 70 0 100 6 161 0 218] 
#[0 3 110 0 22 0 100] 
#[1 2 29 0 76 2 33 0 99 2 78 0 100 3 253 0 121 6 165 0 122] 
#[0 3 114 0 100] 
#[0 3 118 0 12 0 22 0 30 0 100] 
#[0 3 122 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[0 3 126 0 12 0 22 0 100] 
#[1 2 21 0 6 2 25 0 7 2 78 0 22 2 29 0 76 2 33 0 99 2 78 0 100 6 169 0 119 2 45 0 121] 
#[0 3 130 0 22 0 100] 
#[1 6 173 0 12 1 70 0 22 1 70 0 100 6 177 0 218] 
#[1 6 181 0 12 3 134 0 24 3 134 0 98] 
#[0 3 138 0 24 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 33 0 36 0 37 0 39 0 41 0 42 0 45 0 43 0 49 0 44 0 53 0 45 0 57 0 46 0 61 0 47 0 65 0 48 0 69 0 49 0 73 0 53 0 77 0 55 0 81 0 56 0 85 0 57 0 89 0 58 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 0 173 0 110 0 177 0 113 6 185 0 114 6 185 0 115 6 185 0 123 6 185 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 6 185 0 158 6 185 0 159 6 185 0 162 6 185 0 163 6 185 0 164 6 185 0 167 6 189 0 172 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 6 185 0 229 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 3 142 0 22 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 193 0 211 6 193 0 219 6 193 0 221 1 125 0 222] 
#[0 6 197 0 22] 
#[1 3 146 0 10 3 146 0 13 3 146 0 17 3 146 0 36 3 146 0 39 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 46 3 146 0 47 3 146 0 48 3 146 0 49 6 201 0 51 5 229 0 52 3 146 0 53 3 146 0 54 3 146 0 55 3 146 0 56 3 146 0 57 3 146 0 58 3 146 0 59 3 146 0 62 3 146 0 63 3 146 0 65 3 146 0 67 3 146 0 68 3 146 0 69 3 146 0 70 3 146 0 71 3 146 0 72 3 146 0 75 3 146 0 76 3 146 0 77 3 146 0 78 3 146 0 79 3 146 0 82 3 146 0 85 3 146 0 88 3 146 0 91 3 146 0 98 3 146 0 99 3 146 0 101 3 146 0 103 6 205 0 161 6 209 0 170 3 146 0 241 3 146 0 243 3 146 0 244] 
#[0 6 213 0 22] 
#[1 3 146 0 10 3 146 0 13 3 146 0 17 3 146 0 36 3 146 0 39 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 46 3 146 0 47 3 146 0 48 3 146 0 49 6 201 0 51 3 146 0 53 3 146 0 55 3 146 0 56 3 146 0 57 3 146 0 58 3 146 0 59 3 146 0 62 3 146 0 63 3 146 0 65 3 146 0 67 3 146 0 68 3 146 0 69 3 146 0 70 3 146 0 71 3 146 0 72 3 146 0 75 3 146 0 76 3 146 0 77 3 146 0 78 3 146 0 79 3 146 0 82 3 146 0 85 3 146 0 88 3 146 0 91 3 146 0 98 3 146 0 99 3 146 0 101 3 146 0 103 6 217 0 161 3 146 0 241 3 146 0 243 3 146 0 244] 
#[0 3 150 0 12 0 22] 
#[0 3 154 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 3 158 0 12 0 22] 
#[0 6 221 0 60] 
#[0 6 225 0 60] 
#[1 6 229 0 12 4 73 0 55 1 70 0 104 6 233 0 218 6 237 0 228 6 241 0 237] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 6 245 0 211 6 245 0 219 6 245 0 221 1 125 0 222] 
#[1 0 91 0 12 3 162 0 100 6 253 0 231] 
#[1 7 1 0 12 1 70 0 100 7 1 0 218] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 5 0 211 7 5 0 219 7 5 0 221 1 125 0 222] 
#[0 3 166 0 12 0 100] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 4 193 0 6 4 197 0 7 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 2 78 0 100 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 205 0 211 4 205 0 219 4 205 0 221 1 125 0 222 7 9 0 230 4 213 0 232] 
#[0 3 174 0 100] 
#[0 7 13 0 16] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[1 0 21 0 10 0 25 0 13 4 217 0 16 0 29 0 17 1 242 0 22 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 2 78 0 102 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 233 0 211 7 17 0 213 4 225 0 214 4 229 0 215 4 233 0 219 4 233 0 221 1 125 0 222] 
#[0 3 182 0 102] 
#[1 0 21 0 10 1 242 0 12 0 25 0 13 0 29 0 17 1 242 0 22 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 1 242 0 102 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 21 0 211 7 21 0 215 7 21 0 219 7 21 0 221 1 125 0 222] 
#[1 7 29 0 80 7 33 0 81 7 37 0 197] 
#[1 7 41 0 83 7 45 0 84 7 49 0 199] 
#[1 7 53 0 86 7 57 0 87 7 61 0 201] 
#[1 7 65 0 89 7 69 0 90 7 73 0 203] 
#[0 3 186 0 22 0 24 0 30 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 7 77 0 128 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 7 77 0 223 7 77 0 240] 
#[0 3 190 0 24 0 98] 
#[0 3 194 0 98] 
#[0 7 81 0 22] 
#[0 7 85 0 22] 
#[0 3 198 0 15 0 22] 
#[0 3 202 0 22] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 89 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 93 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 7 97 0 76] 
#[0 7 101 0 100] 
#[1 2 78 0 24 5 117 0 76 2 78 0 98 2 78 0 100 7 105 0 146] 
#[0 3 206 0 24 0 98 0 100] 
#[1 3 146 0 10 3 146 0 13 3 146 0 17 3 146 0 36 3 146 0 39 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 46 3 146 0 47 3 146 0 48 3 146 0 49 7 109 0 50 6 201 0 51 3 146 0 53 3 146 0 55 3 146 0 56 3 146 0 57 3 146 0 58 3 146 0 59 3 146 0 62 3 146 0 63 3 146 0 65 3 146 0 67 3 146 0 68 3 146 0 69 3 146 0 70 3 146 0 71 3 146 0 72 3 146 0 75 3 146 0 76 3 146 0 77 3 146 0 78 3 146 0 79 3 146 0 82 3 146 0 85 3 146 0 88 3 146 0 91 3 146 0 98 3 146 0 99 3 146 0 101 3 146 0 103 7 113 0 161 3 146 0 241 3 146 0 243 3 146 0 244] 
#[1 7 121 0 12 0 87 0 22 1 70 0 100 7 117 0 194 7 121 0 218] 
#[0 7 125 0 76] 
#[1 7 129 0 7 2 78 0 22 2 78 0 100] 
#[0 3 210 0 22 0 100] 
#[0 3 214 0 22 0 100] 
#[0 3 218 0 100] 
#[0 3 222 0 22 0 100] 
#[1 2 21 0 6 2 25 0 7 2 78 0 22 2 29 0 76 2 33 0 99 2 78 0 100 7 133 0 119 2 45 0 121] 
#[0 3 226 0 22 0 100] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 137 0 211 7 137 0 219 7 137 0 221 1 125 0 222] 
#[0 3 230 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103 0 241 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 33 0 36 0 37 0 39 0 41 0 42 0 45 0 43 0 49 0 44 0 53 0 45 0 57 0 46 0 61 0 47 0 65 0 48 0 69 0 49 0 73 0 53 0 77 0 55 0 81 0 56 0 85 0 57 0 89 0 58 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 117 0 69 0 121 0 70 0 125 0 71 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 0 173 0 110 0 177 0 113 7 141 0 114 7 141 0 115 7 141 0 123 7 141 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 141 0 158 7 141 0 159 7 141 0 162 7 141 0 163 7 141 0 164 7 141 0 167 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 7 141 0 229 1 137 0 240 7 145 0 241 1 141 0 243] 
#[1 7 149 0 12 3 234 0 22 7 153 0 41] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 157 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 7 161 0 22] 
#[1 3 238 0 10 3 238 0 13 3 238 0 17 3 238 0 36 3 238 0 39 3 238 0 42 3 238 0 43 3 238 0 44 3 238 0 45 3 238 0 46 3 238 0 47 3 238 0 48 3 238 0 49 3 238 0 53 7 165 0 54 3 238 0 55 3 238 0 56 3 238 0 57 3 238 0 58 3 238 0 59 3 238 0 62 3 238 0 63 3 238 0 65 3 238 0 67 3 238 0 68 3 238 0 69 3 238 0 70 3 238 0 71 3 238 0 72 3 238 0 75 3 238 0 76 3 238 0 77 3 238 0 78 3 238 0 79 3 238 0 82 3 238 0 85 3 238 0 88 3 238 0 91 3 238 0 98 3 238 0 99 3 238 0 101 3 238 0 103 7 169 0 165 3 238 0 241 3 238 0 243 3 238 0 244] 
#[0 7 173 0 22] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 177 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 3 242 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 7 181 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 7 189 0 173 7 193 0 175 7 193 0 176 7 193 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 2 78 0 104 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 205 0 211 7 205 0 219 7 205 0 221 1 125 0 222] 
#[0 3 246 0 104] 
#[0 3 250 0 104] 
#[0 3 254 0 104] 
#[0 4 2 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 20 0 21 0 22 0 24 0 27 0 30 0 35 0 38 0 39 0 41 0 55 0 56 0 74 0 80 0 81 0 83 0 84 0 86 0 87 0 89 0 90 0 98 0 100 0 102 0 104 0 244] 
#[1 7 209 0 7 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 4 205 0 211 4 205 0 219 4 205 0 221 1 125 0 222 7 213 0 232] 
#[1 7 217 0 12 1 70 0 100 7 217 0 218] 
#[0 4 6 0 100] 
#[0 4 10 0 12 0 100] 
#[0 4 14 0 100] 
#[0 4 18 0 12 0 102] 
#[0 4 22 0 102] 
#[1 4 26 0 12 7 221 0 22 4 26 0 102 7 225 0 216] 
#[0 2 234 0 12 0 22 0 102] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 229 0 211 7 229 0 219 7 229 0 221 1 125 0 222] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 34 0 80 0 81] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 233 0 211 7 233 0 219 7 233 0 221 1 125 0 222] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 42 0 83 0 84] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 237 0 211 7 237 0 219 7 237 0 221 1 125 0 222] 
#[0 4 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 50 0 86 0 87] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 7 241 0 211 7 241 0 219 7 241 0 221 1 125 0 222] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 41 0 51 0 55 0 56 0 58 0 60 0 61 0 63 0 64 0 73 0 74 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 98 0 99 0 100 0 101 0 102 0 104 0 244] 
#[0 4 58 0 89 0 90] 
#[0 4 62 0 22 0 24 0 30 0 98] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 245 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 7 249 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 66 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 3 146 0 10 3 146 0 13 3 146 0 17 3 146 0 36 3 146 0 39 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 46 3 146 0 47 3 146 0 48 3 146 0 49 6 201 0 51 3 146 0 53 3 146 0 55 3 146 0 56 3 146 0 57 3 146 0 58 3 146 0 59 3 146 0 62 3 146 0 63 3 146 0 65 3 146 0 67 3 146 0 68 3 146 0 69 3 146 0 70 3 146 0 71 3 146 0 72 3 146 0 75 3 146 0 76 3 146 0 77 3 146 0 78 3 146 0 79 3 146 0 82 3 146 0 85 3 146 0 88 3 146 0 91 3 146 0 98 3 146 0 99 3 146 0 101 3 146 0 103 7 253 0 161 3 146 0 241 3 146 0 243 3 146 0 244] 
#[0 4 70 0 12 0 24 0 98 0 100] 
#[0 4 74 0 24 0 98] 
#[0 4 78 0 12 0 24 0 98 0 100] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 1 0 211 8 1 0 219 8 1 0 221 1 125 0 222] 
#[0 4 82 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 8 5 0 12 1 70 0 22 1 70 0 100 8 5 0 218] 
#[0 4 86 0 22 0 100] 
#[1 8 13 0 12 0 87 0 22 1 70 0 100 8 9 0 194 8 13 0 218] 
#[0 8 17 0 76] 
#[0 4 90 0 22 0 100] 
#[0 4 94 0 24 0 98] 
#[0 4 98 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 99 0 101 0 103 0 241 0 243] 
#[0 4 102 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 21 0 211 8 21 0 219 8 21 0 221 1 125 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 25 0 211 8 25 0 219 8 25 0 221 1 125 0 222] 
#[0 4 106 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 8 29 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 8 33 0 22] 
#[0 4 110 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 8 37 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 114 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 4 118 0 12 4 73 0 55 8 41 0 58 4 118 0 100 4 118 0 104 8 45 0 236 8 45 0 237 8 45 0 238] 
#[1 2 21 0 6 2 25 0 7 0 38 0 22 2 29 0 76 2 33 0 99 8 57 0 118 2 41 0 119 2 45 0 121] 
#[1 4 89 0 55 8 61 0 58 4 122 0 102 8 65 0 233 8 65 0 234 8 65 0 235] 
#[1 8 77 0 12 4 126 0 55 4 126 0 58 4 126 0 102] 
#[0 4 130 0 12 0 55 0 58 0 100 0 102 0 104] 
#[0 4 134 0 12 0 55 0 58 0 100 0 102 0 104] 
#[0 8 81 0 22] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 85 0 211 8 85 0 219 8 85 0 221 1 125 0 222] 
#[1 0 91 0 12 3 162 0 100 8 89 0 231] 
#[0 4 138 0 100] 
#[1 0 21 0 10 1 242 0 12 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 1 242 0 102 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 93 0 211 8 93 0 215 8 93 0 219 8 93 0 221 1 125 0 222] 
#[0 4 142 0 12 0 102] 
#[0 4 146 0 80 0 81] 
#[0 4 150 0 83 0 84] 
#[0 4 154 0 86 0 87] 
#[0 4 158 0 89 0 90] 
#[0 4 162 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 4 166 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 4 170 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 8 97 0 22] 
#[0 4 174 0 22 0 100] 
#[1 8 101 0 12 1 70 0 22 1 70 0 100 8 101 0 218] 
#[0 4 178 0 22 0 100] 
#[1 8 109 0 12 0 87 0 22 1 70 0 100 8 105 0 194 8 109 0 218] 
#[0 4 182 0 22] 
#[0 4 186 0 22] 
#[0 4 190 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 8 113 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 194 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 8 117 0 175 8 117 0 176 8 117 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 4 198 0 12 0 100 0 104] 
#[0 4 202 0 12 0 100 0 104] 
#[0 4 206 0 12 0 100 0 104] 
#[0 8 121 0 22] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 8 125 0 175 8 125 0 176 8 125 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 4 210 0 102] 
#[0 4 214 0 102] 
#[0 4 218 0 102] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 8 129 0 174 8 133 0 175 8 133 0 176 8 133 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 0 97 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 8 137 0 211 8 137 0 219 8 137 0 221 1 125 0 222] 
#[0 4 222 0 12 0 100] 
#[0 4 226 0 12 0 100] 
#[0 4 230 0 12 0 102] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 41 0 42 0 49 0 44 0 53 0 45 0 61 0 47 0 69 0 49 0 73 0 53 0 81 0 56 0 85 0 57 0 93 0 59 0 97 0 62 0 101 0 63 0 105 0 65 0 109 0 67 0 113 0 68 0 129 0 72 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 4 33 0 98 0 157 0 99 0 161 0 101 0 165 0 103 4 37 0 124 1 1 0 126 1 1 0 130 1 1 0 131 1 1 0 132 1 1 0 133 1 1 0 134 1 1 0 135 1 1 0 136 1 1 0 137 1 1 0 138 1 1 0 140 1 1 0 141 1 1 0 142 1 1 0 152 1 1 0 154 1 1 0 156 1 1 0 157 8 141 0 171 1 29 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 117 0 211 1 117 0 219 1 117 0 221 1 125 0 222 1 129 0 223 1 137 0 240 1 141 0 243] 
#[0 4 234 0 22 0 100] 
#[1 8 145 0 12 1 70 0 22 1 70 0 100 8 145 0 218] 
#[0 4 238 0 22 0 100] 
#[0 4 242 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[1 4 246 0 12 4 73 0 55 8 41 0 58 4 246 0 100 4 246 0 104 8 149 0 236 8 149 0 237 8 149 0 238] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 0 165 0 103 8 153 0 175 8 153 0 176 8 153 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[1 4 89 0 55 8 61 0 58 4 250 0 102 8 157 0 233 8 157 0 234 8 157 0 235] 
#[1 8 161 0 12 1 70 0 55 1 70 0 58 1 70 0 102 8 165 0 218] 
#[0 4 254 0 12 0 55 0 58 0 102] 
#[1 6 229 0 12 1 70 0 104 6 233 0 218 8 169 0 228] 
#[0 5 2 0 10 0 13 0 17 0 36 0 39 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 53 0 55 0 56 0 57 0 58 0 59 0 62 0 63 0 65 0 67 0 68 0 69 0 70 0 71 0 72 0 75 0 76 0 77 0 78 0 79 0 82 0 85 0 88 0 91 0 98 0 99 0 101 0 103 0 241 0 243 0 244] 
#[0 5 6 0 22 0 100] 
#[0 5 10 0 12 0 100 0 104] 
#[0 5 14 0 12 0 55 0 58 0 100 0 102 0 104] 
#[0 5 18 0 102] 
#[1 0 21 0 10 0 25 0 13 0 29 0 17 0 37 0 39 0 49 0 44 2 78 0 55 2 78 0 58 7 185 0 62 0 101 0 63 0 133 0 75 0 137 0 76 0 141 0 77 0 145 0 78 0 10 0 79 0 14 0 82 0 18 0 85 0 22 0 88 0 149 0 91 0 157 0 99 0 161 0 101 2 78 0 102 0 165 0 103 8 173 0 175 8 173 0 176 8 173 0 177 1 33 0 178 1 37 0 179 1 37 0 180 1 45 0 182 1 49 0 183 1 53 0 184 1 57 0 185 1 61 0 186 1 65 0 187 1 69 0 188 1 69 0 189 1 77 0 190 1 77 0 191 1 85 0 193 1 85 0 195 1 93 0 196 1 97 0 205 1 101 0 206 1 105 0 207 1 109 0 208 1 85 0 222] 
#[0 5 22 0 55 0 58 0 102] 
#[0 5 26 0 104] 
#[0 5 30 0 12 0 55 0 58 0 102]
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
	(actions isEmpty and: [ currentToken source = '}' ])
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
PythonParser >> reduceActionFor_____test__test__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____test__test___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFor_____test__test___2: nodes [
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
	result at: 3 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	result at: 4 put: ((nodes at: 3) at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForarglist4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
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
	result testlist: (nodes at: 4).
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
	result addToken: (nodes at: 2) to: result colonTokens.
	result addNode: (nodes at: 3) to: result values.
	result addTokens: ((nodes at: 4) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result objects.
	result addTokens: ((nodes at: 4) at: 3) to: result colonTokens.
	result addNodes: ((nodes at: 4) at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFordictorsetmaker3: nodes [
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
PythonParser >> reduceActionForinit_opt2: nodes [
	| result |
	result := PyInitOptNode new.
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
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionFormore_args2: nodes [
	| result |
	result := Array new: 3.
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
	result timesToken: ((nodes at: 2) at: 3).
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
PythonParser >> reduceActionForvarargslist10: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 3).
	result at: 7 put: (nodes at: 5).
	result at: 8 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 3).
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
	self add: (nodes at: 3) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 3).
	result at: 7 put: (nodes at: 5).
	result at: 8 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 4).
	self add: (nodes at: 8) to: (result at: 3).
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
	result at: 7 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
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
	result at: 7 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 3).
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
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
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
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist1: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist2: nodes [
	| result |
	result := nodes at: 5.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 4).
	self addFirst: (nodes at: 3) to: (result at: 2).
	self addFirst: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist3: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist4: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
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
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 4).
	self add: (nodes at: 4) to: (result at: 3).
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
	self add: (nodes at: 2) to: (result at: 3).
	result at: 7 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	self add: (nodes at: 5) to: (result at: 3).
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
	self add: (nodes at: 2) to: (result at: 3).
	result at: 7 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	self add: (nodes at: 5) to: (result at: 4).
	self add: (nodes at: 6) to: (result at: 3).
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
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	self add: (nodes at: 6) to: (result at: 3).
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
	result at: 6 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	self add: (nodes at: 6) to: (result at: 4).
	self add: (nodes at: 7) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser >> reduceActionForvarargslist_opt2: nodes [
	| result |
	result := PyVarArgListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result args.
	result addNodes: ((nodes at: 1) at: 2) to: result inits.
	result addTokens: ((nodes at: 1) at: 3) to: result commaTokens.
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
