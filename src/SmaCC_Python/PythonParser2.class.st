Class {
	#name : #PythonParser2,
	#superclass : #SmaCCParser,
	#category : #'SmaCC_Python'
}

{ #category : #'generated-accessing' }
PythonParser2 class >> cacheId [
	^'2021-08-09T19:23:19.589396-05:00'
]

{ #category : #generated }
PythonParser2 class >> definitionComment [
"# Python Grammar and Lexer extracted from Python2 documentation on 16/04/2014 (Python 2.7.6)
# As seen from this grammar, the python doc and the implemented python scanner/parser diverge in several places
# https://docs.python.org/2/reference/index.html

# added f string support from Python 3

#Identifiers
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
<fStringSingleStart> : f <stringprefix>? \' ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
fStringSingle <fStringSingleMid> : \} ( [^\\\n\r\'\{] | <escapeseq> )* \{ ;
fStringSingle <fStringSingleEnd> : \} ( [^\\\n\r\'\{] | <escapeseq> )* \' ;
<fStringDoubleStart> : f <stringprefix>? \"" ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleMid> : \} ( [^\\\n\r\""\{] | <escapeseq> )* \{ ;
fStringDouble <fStringDoubleEnd> : \} ( [^\\\n\r\""\{] | <escapeseq> )* \"" ;
<fLongStringSingleStart> : f <stringprefix>? \'\'\' ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleMid> : \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \{ ;
fLongStringSingle <fLongStringSingleEnd> : \} ( [^\\\'\{] | <escapeseq> | \'[^\'] | \'\'[^\'] )* \'\'\' ;
<fLongStringDoubleStart> : f <stringprefix>? \""\""\"" ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleMid> : \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \{ ;
fLongStringDouble <fLongStringDoubleEnd> : \} ( [^\\\""\{] | <escapeseq> | \""[^\""] | \""\""[^\""] )* \""\""\"" ;

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

%id <INDENT> <DEDENT> <NEWLINE> <lbrack> <lcurly> <lparen> <rbrack> <rcurly> <rparen> ;

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
	testlist newline_opts {{}}
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
	""def"" <name> 'fname' parameters 'parameters' "":"" suite {{}}
	;
parameters:
	<lparen> varargslist_opt <rparen> { '2' }
	;
varargslist_opt:
	| varargslist {{VarArgList}}
	;
varargslist:
	fpdef 'arg' init_opt 'init' "","" varargslist
	| ""*"" <name> 'sname'
	| ""*"" <name> 'sname' "","" ""**"" <name> 'ssname'
	| ""**"" <name>  'sname'
	| fpdef 'arg' init_opt 'init' comma_opt
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
	testlist assign_after {{}}
	| testlist augassign 'assign' yield_or_testlist 'to' {{}}
	;
assign_after:
	| assign_after ""="" 'assign' yield_or_testlist 'to'
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
	""print"" testlist_opt {{Print}}
	| ""print"" "">>"" testlist {{Print}}
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
	| ""raise"" test 'arg1' {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2'  {{Raise}}
	| ""raise"" test 'arg1' "","" test 'arg2' "","" test 'arg3' {{Raise}}
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
	""for"" exprlist ""in"" testlist "":"" suite else_opt 'else' {{For}}
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
	atom 'atom' trailers_opt {{}}
	| atom 'atom' trailers_opt ""**"" factor 'factor' {{}}
	;
trailers_opt:
	| trailers_opt trailer 'trailer'
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
	| <name>  {{Symbol}}
	| <number> {{Number}}
	| strings
	;
strings:
	string 'string' strings {{Strings}}
	| string 'string'  {{Strings}}
	;
string:
	<string> 'value' {{String}}
	| <fStringWhole> 'value' {{String}}
	| StartFStringSingle <fStringSingleStart> 'part' expr 'expression' (<fStringSingleMid> 'part' expr 'expression')* <fStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFStringDouble <fStringDoubleStart> 'part' expr 'expression' (<fStringDoubleMid> 'part' expr 'expression')* <fStringDoubleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringSingle <fLongStringSingleStart> 'part' expr 'expression' (<fLongStringSingleMid> 'part' expr 'expression')* <fLongStringSingleEnd> 'part' {{InterpolatedString}}
	| StartFLongStringDouble <fLongStringDoubleStart> 'part' expr 'expression' (<fLongStringDoubleMid> 'part' expr 'expression')* <fLongStringDoubleEnd> 'part' {{InterpolatedString}}
	;
StartFStringSingle: [{#fStringSingle. scanner lineJoiningStack}];
StartFStringDouble: [{#fStringDouble. scanner lineJoiningStack}];
StartFLongStringSingle: [{#fLongStringSingle. scanner lineJoiningStack}];
StartFLongStringDouble: [{#fLongStringDouble. scanner lineJoiningStack}];
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

test:
	or_test
	| or_test 'or' ""if"" or_test 'if' ""else"" test 'else' {{IfTest}}
	| lambdef
	;
testlist:
	test 'test' "","" testlist
	| test 'test' comma_opt
	;

testlist_opt:
	| testlist
	;
dictorsetmaker: 
	test 'test' "":"" test 'test2' comp_for 'comp' {{}}
	| test 'test' "":"" test 'test2' more_tests 'more' {{}}
	| test 'test' comp_for 'comp' {{}}
	| testlist
	;
more_tests:
	comma_opt
	| "","" test 'test' "":"" test 'test2' more_tests 'more_tests' {{}}
	;
classdef:
	""class"" <name> 'cname' "":"" suite {{Classdef}}
	| ""class"" <name> 'cname' <lparen> testlist_opt<rparen> "":"" suite {{Classdef}}
	;

arglist: 
	argument 'argument' "","" arglist
	| argument 'argument' comma_opt
	| ""*"" test 'argument' more_args
	| ""**"" test 'argument'
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
	""yield"" testlist_opt {{Yield}}
	;"
]

{ #category : #accessing }
PythonParser2 class >> eval: aString [
	^self parse: aString startingAt: self startingStateForeval_input
]

{ #category : #'file types' }
PythonParser2 class >> fileExtension [
	^ '.py'
]

{ #category : #generated }
PythonParser2 class >> reduceTable [
^#(
	#(101 0 #reduceActionForfile_input1: 4539393 false ) 
	#(195 0 #reduceActionForStartFStringSingle1: 12802049 true ) 
	#(196 0 #reduceActionForStartFStringDouble1: 12869633 true ) 
	#(197 0 #reduceActionForStartFLongStringSingle1: 12937217 true ) 
	#(198 0 #reduceActionForStartFLongStringDouble1: 13012993 true ) 
	#(128 1 #reduceActionForbreak_stmt1: 6611969 false ) 
	#(129 1 #reduceActionForcontinue_stmt1: 6646785 false ) 
	#(112 0 #nil 5348353 false ) 
	#(126 1 #reduceActionForpass_stmt1: 6492161 false ) 
	#(211 0 #reduceActionFortestlist_opt1: 13962241 false ) 
	#(132 1 #reduceActionForraise_stmt1: 6779905 false ) 
	#(184 1 #reduceActionForatom9: 11560969 false ) 
	#(186 1 #reduceActionForstring1: 12018689 false ) 
	#(186 1 #reduceActionForstring1: 12018690 false ) 
	#(184 1 #reduceActionForatom10: 11560970 false ) 
	#(102 1 #reduceActionForsingle_input1: 4627457 false ) 
	#(108 1 #reduceActionFordecorators2: 5011458 false ) 
	#(151 1 #liftFirstValue: 8331272 false ) 
	#(151 1 #liftFirstValue: 8331270 false ) 
	#(102 1 #reduceActionForsingle_input2: 4627458 false ) 
	#(150 1 #liftFirstValue: 8192001 false ) 
	#(150 1 #liftFirstValue: 8192002 false ) 
	#(150 1 #liftFirstValue: 8192003 false ) 
	#(150 1 #liftFirstValue: 8192004 false ) 
	#(150 1 #liftFirstValue: 8192005 false ) 
	#(127 1 #liftFirstValue: 6523905 false ) 
	#(127 1 #liftFirstValue: 6523906 false ) 
	#(127 1 #liftFirstValue: 6523907 false ) 
	#(127 1 #liftFirstValue: 6523909 false ) 
	#(127 1 #liftFirstValue: 6523908 false ) 
	#(150 1 #liftFirstValue: 8192006 false ) 
	#(133 1 #liftFirstValue: 6966273 false ) 
	#(133 1 #liftFirstValue: 6966274 false ) 
	#(150 1 #liftFirstValue: 8192007 false ) 
	#(150 1 #liftFirstValue: 8192008 false ) 
	#(150 1 #liftFirstValue: 8192009 false ) 
	#(119 0 #nil 5927937 false ) 
	#(151 1 #liftFirstValue: 8331265 false ) 
	#(151 1 #liftFirstValue: 8331266 false ) 
	#(151 1 #liftFirstValue: 8331267 false ) 
	#(151 1 #liftFirstValue: 8331268 false ) 
	#(151 1 #liftFirstValue: 8331269 false ) 
	#(209 1 #liftFirstValue: 13800449 false ) 
	#(170 1 #liftFirstValue: 10182657 false ) 
	#(171 1 #liftFirstValue: 10250241 false ) 
	#(172 1 #liftFirstValue: 10321922 false ) 
	#(173 1 #liftFirstValue: 10384385 false ) 
	#(175 1 #liftFirstValue: 10633217 false ) 
	#(176 1 #liftFirstValue: 10700801 false ) 
	#(177 1 #liftFirstValue: 10775553 false ) 
	#(178 1 #liftFirstValue: 10854401 false ) 
	#(179 1 #liftFirstValue: 10998785 false ) 
	#(180 1 #liftFirstValue: 11121665 false ) 
	#(181 1 #liftFirstValue: 11305985 false ) 
	#(183 0 #reduceActionFortrailers_opt1: 11508737 false ) 
	#(184 1 #liftFirstValue: 11560971 false ) 
	#(185 1 #reduceActionForstrings2: 11935746 false ) 
	#(209 1 #liftFirstValue: 13800451 false ) 
	#(208 0 #nil 13777921 false ) 
	#(121 0 #reduceActionFortestlist_opt1: 6057985 false ) 
	#(151 1 #liftFirstValue: 8331271 false ) 
	#(131 1 #reduceActionForyield_stmt1: 6742017 false ) 
	#(104 0 #reduceActionFortrailers_opt1: 4786177 false ) 
	#(101 2 #reduceActionForfile_input2: 4539394 false ) 
	#(101 2 #reduceActionForfile_input3: 4539395 false ) 
	#(117 1 #liftFirstValue: 5764097 false ) 
	#(117 1 #liftFirstValue: 5764098 false ) 
	#(181 2 #reduceActionForfactor2: 11305986 false ) 
	#(181 2 #reduceActionForfactor3: 11305987 false ) 
	#(144 1 #reduceActionFordotted_name2: 7753730 false ) 
	#(106 0 #nil 4918273 false ) 
	#(224 1 #liftFirstValue: 15427586 false ) 
	#(149 2 #reduceActionForassert_stmt1: 8127489 false ) 
	#(148 1 #reduceActionFortest_test_opt1: 8050689 false ) 
	#(125 2 #reduceActionFordel_stmt1: 6454273 false ) 
	#(147 2 #reduceActionForexec_stmt1: 7942145 false ) 
	#(137 1 #reduceActionFordots2: 7265282 false ) 
	#(136 1 #reduceActionFordotopt_dotted_name2: 7155714 false ) 
	#(136 1 #reduceActionFordotopt_dotted_name1: 7155713 false ) 
	#(146 1 #reduceActionFornamelist2: 7897090 false ) 
	#(145 2 #reduceActionForglobal_stmt1: 7849985 false ) 
	#(143 1 #reduceActionFordotted_as_names2: 7677954 false ) 
	#(134 2 #reduceActionForimport_name1: 7011329 false ) 
	#(140 1 #reduceActionFordotted_as_name1: 7460865 false ) 
	#(115 1 #reduceActionForfpdef1: 5639169 false ) 
	#(112 1 #reduceActionForvarargslist_opt2: 5348354 false ) 
	#(114 0 #nil 5600257 false ) 
	#(172 2 #reduceActionFornot_test1: 10321921 false ) 
	#(211 1 #reduceActionForyield_stmt1: 13962242 false ) 
	#(124 2 #reduceActionForprint_stmt1: 6370305 false ) 
	#(132 2 #reduceActionForraise_stmt2: 6779906 false ) 
	#(130 2 #reduceActionForreturn_stmt1: 6690817 false ) 
	#(161 1 #reduceActionFornamelist2: 9150466 false ) 
	#(162 1 #reduceActionForwith_item1: 9228289 false ) 
	#(225 2 #reduceActionForyield_expr1: 15606785 false ) 
	#(181 2 #reduceActionForfactor4: 11305988 false ) 
	#(184 2 #reduceActionForatom1: 11560961 false ) 
	#(200 1 #liftFirstValue: 13154306 false ) 
	#(184 2 #reduceActionForatom4: 11560964 false ) 
	#(199 1 #liftFirstValue: 13088770 false ) 
	#(184 2 #reduceActionForatom7: 11560967 false ) 
	#(212 1 #liftFirstValue: 13991940 false ) 
	#(108 2 #reduceActionFordecorators1: 5011457 false ) 
	#(109 2 #reduceActionFordecorated2: 5097474 false ) 
	#(109 2 #reduceActionFordecorated1: 5097473 false ) 
	#(119 1 #liftFirstValue: 5927938 false ) 
	#(102 2 #reduceActionForsingle_input3: 4627459 false ) 
	#(174 1 #reduceActionForcomp_op7: 10466311 false ) 
	#(174 1 #reduceActionForcomp_op1: 10466305 false ) 
	#(174 1 #reduceActionForcomp_op5: 10466309 false ) 
	#(174 1 #reduceActionForcomp_op6: 10466310 false ) 
	#(174 1 #reduceActionForcomp_op3: 10466307 false ) 
	#(174 1 #reduceActionForcomp_op2: 10466306 false ) 
	#(174 1 #reduceActionForcomp_op4: 10466308 false ) 
	#(174 1 #reduceActionForcomp_op8: 10466312 false ) 
	#(174 1 #reduceActionForcomp_op10: 10466314 false ) 
	#(182 2 #reduceActionForpower1: 11411457 false ) 
	#(185 2 #reduceActionForstrings1: 11935745 false ) 
	#(208 1 #liftFirstValue: 13777922 false ) 
	#(210 2 #reduceActionFortestlist2: 13895682 false ) 
	#(123 1 #liftFirstValue: 6175749 false ) 
	#(123 1 #liftFirstValue: 6175750 false ) 
	#(123 1 #liftFirstValue: 6175755 false ) 
	#(123 1 #liftFirstValue: 6175747 false ) 
	#(123 1 #liftFirstValue: 6175745 false ) 
	#(123 1 #liftFirstValue: 6175746 false ) 
	#(123 1 #liftFirstValue: 6175756 false ) 
	#(123 1 #liftFirstValue: 6175748 false ) 
	#(123 1 #liftFirstValue: 6175753 false ) 
	#(123 1 #liftFirstValue: 6175754 false ) 
	#(123 1 #liftFirstValue: 6175752 false ) 
	#(123 1 #liftFirstValue: 6175751 false ) 
	#(120 2 #reduceActionForexpr_stmt1: 5953537 false ) 
	#(103 2 #reduceActionForeval_input1: 4741121 false ) 
	#(107 0 #nil 4982785 false ) 
	#(184 3 #reduceActionForatom8: 11560968 false ) 
	#(207 2 #reduceActionFortestlist2: 13712386 false ) 
	#(137 2 #reduceActionFordots1: 7265281 false ) 
	#(136 2 #reduceActionFordotopt_dotted_name3: 7155715 false ) 
	#(113 2 #reduceActionForvarargslist2: 5399554 false ) 
	#(113 2 #reduceActionForvarargslist4: 5399556 false ) 
	#(124 3 #reduceActionForprint_stmt2: 6370306 false ) 
	#(164 1 #reduceActionForsuite1: 9603073 false ) 
	#(184 3 #reduceActionForatom3: 11560963 false ) 
	#(200 2 #reduceActionFortestlist_comp1: 13154305 false ) 
	#(184 3 #reduceActionForatom3: 11560962 false ) 
	#(184 3 #reduceActionForatom5: 11560965 false ) 
	#(199 2 #reduceActionForlistmaker1: 13088769 false ) 
	#(212 2 #reduceActionFordictorsetmaker3: 13991939 false ) 
	#(184 3 #reduceActionForatom6: 11560966 false ) 
	#(118 3 #reduceActionForsimple_stmt1: 5819393 false ) 
	#(118 3 #reduceActionForsimple_stmt2: 5819394 false ) 
	#(170 3 #reduceActionForor_test2: 10182658 false ) 
	#(171 3 #reduceActionForand_test2: 10250242 false ) 
	#(174 2 #reduceActionForcomp_op11: 10466315 false ) 
	#(174 2 #reduceActionForcomp_op9: 10466313 false ) 
	#(173 3 #reduceActionForcomparison2: 10384386 false ) 
	#(175 3 #reduceActionForexpr2: 10633218 false ) 
	#(176 3 #reduceActionForxor_expr2: 10700802 false ) 
	#(177 3 #reduceActionForand_expr2: 10775554 false ) 
	#(178 3 #reduceActionForshift_expr2: 10854402 false ) 
	#(178 3 #reduceActionForshift_expr3: 10854403 false ) 
	#(179 3 #reduceActionForarith_expr2: 10998786 false ) 
	#(179 3 #reduceActionForarith_expr3: 10998787 false ) 
	#(180 3 #reduceActionForterm4: 11121668 false ) 
	#(180 3 #reduceActionForterm2: 11121666 false ) 
	#(180 3 #reduceActionForterm3: 11121667 false ) 
	#(180 3 #reduceActionForterm5: 11121669 false ) 
	#(205 0 #nil 13648897 false ) 
	#(183 2 #reduceActionFortrailers_opt2: 11508738 false ) 
	#(188 0 #reduceActionFortestlist_opt1: 12164097 false ) 
	#(190 0 #reduceActionFortestlist_opt1: 12332033 false ) 
	#(192 0 #reduceActionFortestlist_opt1: 12508161 false ) 
	#(194 0 #reduceActionFortestlist_opt1: 12692481 false ) 
	#(210 3 #reduceActionFortestlist1: 13895681 false ) 
	#(120 3 #reduceActionForexpr_stmt2: 5953538 false ) 
	#(122 1 #liftFirstValue: 6128642 false ) 
	#(122 1 #liftFirstValue: 6128641 false ) 
	#(104 2 #reduceActionFortrailers_opt2: 4786178 false ) 
	#(144 3 #reduceActionFordotted_name1: 7753729 false ) 
	#(217 1 #reduceActionForargument1: 14770177 false ) 
	#(107 1 #liftFirstValue: 4982786 false ) 
	#(105 4 #reduceActionFordecorator1: 4831233 false ) 
	#(224 3 #reduceActionFortestlist11: 15427585 false ) 
	#(148 3 #reduceActionFortest_test_opt2: 8050690 false ) 
	#(214 4 #reduceActionForclassdef1: 14263297 false ) 
	#(207 3 #reduceActionFortestlist1: 13712385 false ) 
	#(147 4 #reduceActionForexec_stmt2: 7942146 false ) 
	#(138 1 #reduceActionForimport_names_star1: 7302145 false ) 
	#(139 1 #reduceActionFordotted_as_name1: 7387137 false ) 
	#(135 4 #reduceActionForimport_from1: 7065601 false ) 
	#(142 1 #reduceActionFordotted_as_names2: 7596034 false ) 
	#(138 1 #reduceActionForimport_names_star3: 7302147 false ) 
	#(146 3 #reduceActionFornamelist1: 7897089 false ) 
	#(153 0 #nil 8530945 false ) 
	#(143 3 #reduceActionFordotted_as_names1: 7677953 false ) 
	#(140 3 #reduceActionFordotted_as_name2: 7460866 false ) 
	#(116 2 #reduceActionFortestlist2: 5697538 false ) 
	#(115 3 #reduceActionForfpdef2: 5639170 false ) 
	#(201 4 #reduceActionForlambdef1: 13223937 false ) 
	#(114 2 #reduceActionForinit_opt2: 5600258 false ) 
	#(113 3 #reduceActionForvarargslist5: 5399557 false ) 
	#(132 4 #reduceActionForraise_stmt3: 6779907 false ) 
	#(163 1 #reduceActionForexcept_clause1: 9382913 false ) 
	#(154 0 #nil 8609793 false ) 
	#(161 3 #reduceActionFornamelist1: 9150465 false ) 
	#(160 4 #reduceActionForwith_stmt1: 9097217 false ) 
	#(162 3 #reduceActionForwith_item2: 9228290 false ) 
	#(182 4 #reduceActionForpower2: 11411458 false ) 
	#(202 2 #reduceActionFortrailer4: 13302788 false ) 
	#(202 2 #reduceActionFortrailer1: 13302785 false ) 
	#(204 1 #reduceActionForsubscript2: 13533186 false ) 
	#(205 1 #liftFirstValue: 13648898 false ) 
	#(121 3 #reduceActionFornamelist1: 6057986 false ) 
	#(216 0 #reduceActionFormore_args1: 14545921 false ) 
	#(215 2 #reduceActionForarglist4: 14406660 false ) 
	#(106 3 #liftSecondValue: 4918274 false ) 
	#(217 2 #reduceActionForargument2: 14770178 false ) 
	#(215 2 #reduceActionForarglist2: 14406658 false ) 
	#(111 3 #liftSecondValue: 5288961 false ) 
	#(110 5 #reduceActionForfuncdef1: 5214209 false ) 
	#(141 2 #reduceActionForimport_as_names1: 7544833 false ) 
	#(116 3 #reduceActionFortestlist1: 5697537 false ) 
	#(113 4 #reduceActionForvarargslist1: 5399553 false ) 
	#(165 1 #reduceActionForstmts2: 9678850 false ) 
	#(163 2 #reduceActionForexcept_clause2: 9382914 false ) 
	#(158 0 #nil 8944641 false ) 
	#(155 5 #reduceActionForwhile_stmt1: 8653825 false ) 
	#(213 1 #liftFirstValue: 14170113 false ) 
	#(212 4 #reduceActionFordictorsetmaker2: 13991938 false ) 
	#(212 4 #reduceActionFordictorsetmaker1: 13991937 false ) 
	#(209 5 #reduceActionFortest2: 13800450 false ) 
	#(202 3 #reduceActionFortrailer2: 13302786 false ) 
	#(202 3 #reduceActionFortrailer3: 13302787 false ) 
	#(203 2 #reduceActionFortestlist2: 13436930 false ) 
	#(186 5 #reduceActionForstring3: 12018691 false ) 
	#(188 2 #reduceActionFor__fStringSingleMid___part__expr__expression___2: 12164098 false ) 
	#(186 5 #reduceActionForstring3: 12018692 false ) 
	#(190 2 #reduceActionFor__fStringSingleMid___part__expr__expression___2: 12332034 false ) 
	#(186 5 #reduceActionForstring3: 12018693 false ) 
	#(192 2 #reduceActionFor__fStringSingleMid___part__expr__expression___2: 12508162 false ) 
	#(186 5 #reduceActionForstring3: 12018694 false ) 
	#(194 2 #reduceActionFor__fStringSingleMid___part__expr__expression___2: 12692482 false ) 
	#(215 3 #reduceActionForarglist3: 14406659 false ) 
	#(217 3 #reduceActionForargument3: 14770179 false ) 
	#(215 3 #reduceActionFortestlist1: 14406657 false ) 
	#(139 3 #reduceActionFordotted_as_name2: 7387138 false ) 
	#(138 3 #reduceActionForimport_names_star2: 7302146 false ) 
	#(142 3 #reduceActionFordotted_as_names1: 7596033 false ) 
	#(152 6 #reduceActionForif_stmt1: 8450049 false ) 
	#(113 5 #reduceActionForvarargslist3: 5399555 false ) 
	#(132 6 #reduceActionForraise_stmt4: 6779908 false ) 
	#(165 2 #reduceActionFortrailers_opt2: 9678849 false ) 
	#(164 4 #reduceActionForsuite2: 9603074 false ) 
	#(157 6 #reduceActionFortry_stmt2: 8806402 false ) 
	#(157 6 #reduceActionFortry_stmt1: 8806401 false ) 
	#(159 3 #reduceActionForexcept_list2: 8996866 false ) 
	#(222 4 #reduceActionForcomp_for1: 15190017 false ) 
	#(219 4 #reduceActionForlist_for1: 14913537 false ) 
	#(166 1 #reduceActionFortestlist_safe1: 9917441 false ) 
	#(168 1 #liftFirstValue: 10062850 false ) 
	#(168 1 #liftFirstValue: 10062849 false ) 
	#(204 3 #reduceActionForsubscript1: 13533185 false ) 
	#(203 3 #reduceActionFortestlist1: 13436929 false ) 
	#(206 0 #nil 13670401 false ) 
	#(187 2 #reduceActionFor__fStringSingleMid___part__expr__expression__1: 12164097 false ) 
	#(189 2 #reduceActionFor__fStringSingleMid___part__expr__expression__1: 12332033 false ) 
	#(191 2 #reduceActionFor__fStringSingleMid___part__expr__expression__1: 12508161 false ) 
	#(193 2 #reduceActionFor__fStringSingleMid___part__expr__expression__1: 12692481 false ) 
	#(214 7 #reduceActionForclassdef2: 14263298 false ) 
	#(156 7 #reduceActionForfor_stmt1: 8727553 false ) 
	#(163 4 #reduceActionForexcept_clause4: 9382916 false ) 
	#(163 4 #reduceActionForexcept_clause3: 9382915 false ) 
	#(154 3 #reduceActionForelse_opt2: 8609794 false ) 
	#(159 4 #reduceActionForexcept_list1: 8996865 false ) 
	#(222 5 #reduceActionForcomp_for2: 15190018 false ) 
	#(221 1 #liftFirstValue: 15153153 false ) 
	#(221 1 #liftFirstValue: 15153154 false ) 
	#(219 5 #reduceActionForlist_for2: 14913538 false ) 
	#(218 1 #liftFirstValue: 14877697 false ) 
	#(218 1 #liftFirstValue: 14877698 false ) 
	#(204 4 #reduceActionForsubscript3: 13533187 false ) 
	#(216 3 #reduceActionFormore_args2: 14545922 false ) 
	#(216 3 #reduceActionFormore_args3: 14545923 false ) 
	#(158 3 #reduceActionForfinally_opt2: 8944642 false ) 
	#(223 2 #reduceActionForcomp_if1: 15316993 false ) 
	#(220 2 #reduceActionForlist_if1: 15042561 false ) 
	#(167 1 #reduceActionFornamelist2: 9997314 false ) 
	#(206 2 #reduceActionForsliceop2: 13670402 false ) 
	#(153 5 #reduceActionForelifs_opt2: 8530946 false ) 
	#(223 3 #reduceActionForcomp_if2: 15316994 false ) 
	#(169 4 #reduceActionForold_lambdef1: 10100737 false ) 
	#(220 3 #reduceActionForlist_if2: 15042562 false ) 
	#(166 4 #reduceActionFortestlist_safe2: 9917442 false ) 
	#(213 5 #reduceActionFormore_tests2: 14170114 false ) 
	#(167 3 #reduceActionFornamelist1: 9997313 false )
	).
]

{ #category : #'generated-accessing' }
PythonParser2 class >> scannerClass [
	^PythonScanner2
]

{ #category : #generated }
PythonParser2 class >> startingStateForeval_input [
	^ 3
]

{ #category : #generated }
PythonParser2 class >> startingStateForfile_input [
	^ 1
]

{ #category : #generated }
PythonParser2 class >> startingStateForsingle_input [
	^ 2
]

{ #category : #generated }
PythonParser2 class >> symbolNames [
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"."' '"/"' '"//"' '"//="' '"/="' '":"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<fStringWhole>' '<fStringSingleStart>' '<fStringSingleMid>' '<fStringSingleEnd>' '<fStringDoubleStart>' '<fStringDoubleMid>' '<fStringDoubleEnd>' '<fLongStringSingleStart>' '<fLongStringSingleMid>' '<fLongStringSingleEnd>' '<fLongStringDoubleStart>' '<fLongStringDoubleMid>' '<fLongStringDoubleEnd>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'parameters' 'varargslist_opt' 'varargslist' 'init_opt' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' 'dots' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elifs_opt' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'trailers_opt' 'atom' 'strings' 'string' '(<fStringSingleMid> ''part'' expr ''expression'')' '(<fStringSingleMid> ''part'' expr ''expression'')*' '(<fStringDoubleMid> ''part'' expr ''expression'')' '(<fStringDoubleMid> ''part'' expr ''expression'')*' '(<fLongStringSingleMid> ''part'' expr ''expression'')' '(<fLongStringSingleMid> ''part'' expr ''expression'')*' '(<fLongStringDoubleMid> ''part'' expr ''expression'')' '(<fLongStringDoubleMid> ''part'' expr ''expression'')*' 'StartFStringSingle' 'StartFStringDouble' 'StartFLongStringSingle' 'StartFLongStringDouble' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'testlist' 'testlist_opt' 'dictorsetmaker' 'more_tests' 'classdef' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser2 class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #PyDecoratorsNode #PyDecoratedNode #PyFuncdefNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #PyInitOptNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #Object #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #PyImportNode #PyImportNode #PyImportNode #PyDotoptDottedNameNode #PyDotsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyDottedNameNode #PyGlobalNode #OrderedCollection #PyExecNode #PyTestTestOptNode #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyCompOpNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyPowerNode #OrderedCollection #PyRootNode #PyStringsNode #PyRootNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Object #Object #Object #Object #Object #Object #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #OrderedCollection #OrderedCollection #Object #Object #PyClassdefNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser2 class >> transitionTable [
^#(
#[1 0 6 0 10 0 6 0 13 0 6 0 33 0 6 0 36 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 48 0 6 0 50 0 6 0 51 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 62 0 6 0 63 0 6 0 64 0 6 0 65 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 73 0 6 0 74 0 6 0 77 0 6 0 80 0 6 0 83 0 6 0 86 0 6 0 93 0 6 0 94 0 6 0 96 0 6 0 98 0 17 0 101 0 6 0 228] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 145 0 93 0 149 0 94 0 153 0 96 0 157 0 98 0 161 0 102 0 165 0 105 0 169 0 108 0 253 0 109 0 253 0 110 0 181 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 0 253 0 151 0 253 0 152 0 253 0 155 0 253 0 156 0 253 0 157 0 253 0 160 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 0 253 0 214 1 113 0 225] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 117 0 103 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 121 0 210] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 1 125 0 93 0 149 0 94 0 153 0 96 0 157 0 98 0 165 0 105 0 169 0 108 1 129 0 109 1 129 0 110 1 129 0 117 1 129 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 1 129 0 151 1 129 0 152 1 129 0 155 1 129 0 156 1 129 0 157 1 129 0 160 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 129 0 214 1 113 0 225 0 0 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 141 0 181 1 141 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 145 0 181 1 145 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 1 149 0 71 1 153 0 144] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 157 0 201 1 157 0 209 1 161 0 224] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 165 0 148 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 169 0 201 1 169 0 209] 
#[0 0 26 0 21 0 93] 
#[0 1 173 0 71] 
#[0 0 30 0 21 0 93] 
#[0 1 177 0 71] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 181 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 185 0 207] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 189 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 181 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 193 0 207] 
#[1 1 197 0 15 1 149 0 71 1 201 0 136 1 205 0 137 1 209 0 144] 
#[1 1 213 0 71 1 217 0 146] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 221 0 201 1 221 0 209] 
#[1 1 149 0 71 1 225 0 140 1 229 0 143 1 233 0 144] 
#[1 1 237 0 6 1 241 0 7 0 34 0 20 1 245 0 71 1 249 0 94 1 253 0 112 2 1 0 113 2 5 0 115] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 2 9 0 172 2 9 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 0 38 0 21 0 93] 
#[1 0 21 0 10 0 25 0 13 0 42 0 21 2 13 0 31 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 42 0 93 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 2 17 0 210 2 21 0 211] 
#[1 0 21 0 10 0 25 0 13 0 46 0 21 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 46 0 93 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 25 0 201 2 25 0 209] 
#[1 0 21 0 10 0 25 0 13 0 42 0 21 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 42 0 93 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 2 17 0 210 2 29 0 211] 
#[0 2 33 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 37 0 201 2 37 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 2 41 0 161 2 45 0 162 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 49 0 201 2 49 0 209] 
#[1 0 21 0 10 0 25 0 13 0 42 0 21 0 42 0 27 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 42 0 93 0 149 0 94 0 42 0 95 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 2 17 0 210 2 53 0 211] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 2 57 0 181 2 57 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 0 66 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 2 61 0 95 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 65 0 200 2 69 0 201 2 69 0 209 2 65 0 210 2 77 0 225] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 2 81 0 97 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 85 0 199 2 89 0 201 2 89 0 209 2 85 0 210] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 2 97 0 99 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 101 0 201 2 101 0 209 2 109 0 210 2 109 0 212] 
#[0 0 0 0 228] 
#[0 0 70 0 33 0 41 0 43] 
#[1 0 29 0 33 0 45 0 41 0 53 0 43 2 113 0 105 2 117 0 110 2 121 0 214] 
#[0 0 74 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 78 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 82 0 228] 
#[0 0 86 0 21 0 93] 
#[0 0 90 0 21 0 93] 
#[0 0 94 0 21 0 93] 
#[0 0 98 0 21 0 93] 
#[0 0 102 0 21 0 93] 
#[0 0 106 0 21 0 93] 
#[0 0 110 0 21 0 93] 
#[0 0 114 0 21 0 93] 
#[0 0 118 0 21 0 93] 
#[0 0 122 0 21 0 93] 
#[0 0 126 0 21 0 93] 
#[0 0 130 0 21 0 93] 
#[0 0 134 0 21 0 93] 
#[0 0 138 0 21 0 93] 
#[0 0 142 0 21 0 93] 
#[0 0 146 0 21 0 93] 
#[1 2 125 0 21 0 150 0 93 2 129 0 119] 
#[0 2 133 0 93] 
#[0 0 154 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 158 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 162 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 166 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 170 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 174 0 3 0 174 0 5 0 174 0 8 0 174 0 9 0 174 0 11 0 174 0 12 0 174 0 14 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 24 0 174 0 27 0 174 0 32 0 174 0 35 0 174 0 36 0 174 0 38 0 174 0 50 2 137 0 53 0 174 0 69 0 174 0 93 0 174 0 95 0 174 0 97 0 174 0 99 0 174 0 228] 
#[1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 18 0 178 0 19 0 178 0 20 0 178 0 21 0 178 0 24 0 178 0 27 0 178 0 32 0 178 0 35 0 178 0 36 0 178 0 38 0 178 0 46 0 178 0 50 0 178 0 53 2 141 0 59 0 178 0 69 0 178 0 93 0 178 0 95 0 178 0 97 0 178 0 99 0 178 0 228] 
#[1 0 182 0 3 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 24 0 182 0 27 0 182 0 32 0 182 0 35 0 182 0 36 2 145 0 37 0 182 0 38 0 182 0 46 0 182 0 50 0 182 0 53 0 182 0 59 0 182 0 69 0 182 0 93 0 182 0 95 0 182 0 97 0 182 0 99 0 182 0 228] 
#[0 0 186 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 93 0 95 0 97 0 99 0 228] 
#[1 2 149 0 1 0 190 0 3 0 190 0 5 0 190 0 8 0 190 0 9 0 190 0 11 0 190 0 12 0 190 0 14 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 21 2 153 0 22 0 190 0 24 2 157 0 25 2 161 0 26 0 190 0 27 2 165 0 28 2 169 0 29 2 173 0 30 0 190 0 32 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 46 0 190 0 50 0 190 0 53 2 177 0 55 2 181 0 56 2 185 0 58 0 190 0 59 0 190 0 69 0 190 0 93 0 190 0 95 0 190 0 97 0 190 0 99 2 189 0 174 0 190 0 228] 
#[1 0 194 0 1 0 194 0 3 0 194 0 5 0 194 0 8 0 194 0 9 0 194 0 11 0 194 0 12 0 194 0 14 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 46 0 194 0 50 0 194 0 53 0 194 0 55 0 194 0 56 0 194 0 58 0 194 0 59 2 193 0 68 0 194 0 69 0 194 0 75 0 194 0 76 0 194 0 78 0 194 0 79 0 194 0 81 0 194 0 82 0 194 0 84 0 194 0 85 0 194 0 93 0 194 0 95 0 194 0 97 0 194 0 99 0 194 0 228] 
#[1 0 198 0 1 0 198 0 3 0 198 0 5 0 198 0 8 0 198 0 9 0 198 0 11 0 198 0 12 0 198 0 14 0 198 0 18 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 24 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 32 2 197 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 46 0 198 0 50 0 198 0 53 0 198 0 55 0 198 0 56 0 198 0 58 0 198 0 59 0 198 0 68 0 198 0 69 0 198 0 75 0 198 0 76 0 198 0 78 0 198 0 79 0 198 0 81 0 198 0 82 0 198 0 84 0 198 0 85 0 198 0 93 0 198 0 95 0 198 0 97 0 198 0 99 0 198 0 228] 
#[1 0 202 0 1 0 202 0 3 2 201 0 4 0 202 0 5 0 202 0 8 0 202 0 9 0 202 0 11 0 202 0 12 0 202 0 14 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 32 0 202 0 34 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 46 0 202 0 50 0 202 0 53 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 59 0 202 0 68 0 202 0 69 0 202 0 75 0 202 0 76 0 202 0 78 0 202 0 79 0 202 0 81 0 202 0 82 0 202 0 84 0 202 0 85 0 202 0 93 0 202 0 95 0 202 0 97 0 202 0 99 0 202 0 228] 
#[1 0 206 0 1 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 8 0 206 0 9 0 206 0 11 0 206 0 12 0 206 0 14 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 2 205 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 206 0 27 0 206 0 28 0 206 0 29 0 206 0 30 2 209 0 31 0 206 0 32 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 46 0 206 0 50 0 206 0 53 0 206 0 55 0 206 0 56 0 206 0 58 0 206 0 59 0 206 0 68 0 206 0 69 0 206 0 75 0 206 0 76 0 206 0 78 0 206 0 79 0 206 0 81 0 206 0 82 0 206 0 84 0 206 0 85 0 206 0 93 0 206 0 95 0 206 0 97 0 206 0 99 0 206 0 228] 
#[1 0 210 0 1 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 8 0 210 0 9 2 213 0 10 0 210 0 11 0 210 0 12 2 217 0 13 0 210 0 14 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 22 0 210 0 23 0 210 0 24 0 210 0 25 0 210 0 26 0 210 0 27 0 210 0 28 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 32 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 46 0 210 0 50 0 210 0 53 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 68 0 210 0 69 0 210 0 75 0 210 0 76 0 210 0 78 0 210 0 79 0 210 0 81 0 210 0 82 0 210 0 84 0 210 0 85 0 210 0 93 0 210 0 95 0 210 0 97 0 210 0 99 0 210 0 228] 
#[1 0 214 0 1 2 221 0 2 0 214 0 3 0 214 0 4 0 214 0 5 2 225 0 6 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 2 229 0 16 2 233 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 214 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 34 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 46 0 214 0 50 0 214 0 53 0 214 0 55 0 214 0 56 0 214 0 58 0 214 0 59 0 214 0 68 0 214 0 69 0 214 0 75 0 214 0 76 0 214 0 78 0 214 0 79 0 214 0 81 0 214 0 82 0 214 0 84 0 214 0 85 0 214 0 93 0 214 0 95 0 214 0 97 0 214 0 99 0 214 0 228] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[1 0 222 0 1 0 222 0 2 0 222 0 3 0 222 0 4 0 222 0 5 0 222 0 6 0 222 0 7 0 222 0 8 0 222 0 9 0 222 0 10 0 222 0 11 0 222 0 12 0 222 0 13 0 222 0 14 0 222 0 15 0 222 0 16 0 222 0 17 0 222 0 18 0 222 0 19 0 222 0 20 0 222 0 21 0 222 0 22 0 222 0 23 0 222 0 24 0 222 0 25 0 222 0 26 0 222 0 27 0 222 0 28 0 222 0 29 0 222 0 30 0 222 0 31 0 222 0 32 0 222 0 34 0 222 0 35 0 222 0 36 0 222 0 37 0 222 0 38 0 222 0 46 0 222 0 50 0 222 0 53 0 222 0 55 0 222 0 56 0 222 0 58 0 222 0 59 0 222 0 68 0 222 0 69 0 222 0 75 0 222 0 76 0 222 0 78 0 222 0 79 0 222 0 81 0 222 0 82 0 222 0 84 0 222 0 85 0 222 0 93 0 222 0 94 0 222 0 95 0 222 0 96 0 222 0 97 0 222 0 99 2 237 0 183 0 222 0 228] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 230 0 1 0 230 0 2 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 22 0 230 0 23 0 230 0 24 0 230 0 25 0 230 0 26 0 230 0 27 0 230 0 28 0 230 0 29 0 230 0 30 0 230 0 31 0 230 0 32 0 230 0 34 0 230 0 35 0 230 0 36 0 230 0 37 0 230 0 38 0 230 0 46 0 230 0 50 0 230 0 53 0 230 0 55 0 230 0 56 0 230 0 58 0 230 0 59 0 230 0 68 0 230 0 69 0 133 0 72 0 137 0 73 0 10 0 74 0 230 0 75 0 230 0 76 0 14 0 77 0 230 0 78 0 230 0 79 0 18 0 80 0 230 0 81 0 230 0 82 0 22 0 83 0 230 0 84 0 230 0 85 0 230 0 93 0 230 0 94 0 230 0 95 0 230 0 96 0 230 0 97 0 230 0 99 2 241 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 0 230 0 228] 
#[0 2 245 0 74] 
#[0 2 249 0 77] 
#[0 2 253 0 80] 
#[0 3 1 0 83] 
#[0 0 234 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 93 0 95 0 97 0 99 0 228] 
#[1 0 238 0 3 0 238 0 5 0 238 0 8 0 238 0 9 0 238 0 11 3 5 0 12 0 238 0 14 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 21 0 238 0 24 0 238 0 27 0 238 0 32 0 238 0 35 0 238 0 69 0 238 0 93 0 238 0 95 0 238 0 97 0 238 0 99 3 9 0 208 0 238 0 228] 
#[1 3 65 0 3 3 65 0 5 3 65 0 8 3 65 0 9 3 65 0 11 3 65 0 14 3 65 0 18 3 65 0 19 0 242 0 21 3 65 0 24 0 242 0 27 3 65 0 32 3 65 0 35 3 65 0 69 0 242 0 93 3 61 0 121 3 65 0 123] 
#[0 0 246 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 0 250 0 21 0 93] 
#[0 0 0 0 228] 
#[1 0 254 0 93 3 69 0 104 0 254 0 228] 
#[0 1 2 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 228] 
#[0 1 6 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 228] 
#[0 1 10 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 1 14 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 1 18 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 1 26 0 12 0 15 0 21 0 38 0 54 0 93 0 94] 
#[1 3 73 0 15 1 30 0 93 3 77 0 94 3 81 0 106] 
#[1 3 85 0 12 1 34 0 36] 
#[0 3 89 0 36] 
#[0 1 38 0 21 0 93] 
#[1 3 93 0 12 1 42 0 21 1 42 0 93] 
#[1 3 97 0 20 3 101 0 94] 
#[1 3 105 0 94 3 109 0 111] 
#[1 3 113 0 12 0 238 0 21 0 238 0 55 0 238 0 93 3 117 0 208] 
#[0 1 46 0 21 0 93] 
#[1 1 50 0 21 3 121 0 55 1 50 0 93] 
#[0 3 125 0 55] 
#[0 1 54 0 15 0 54 0 71] 
#[0 3 129 0 54] 
#[1 3 133 0 15 1 58 0 54 1 149 0 71 3 137 0 144] 
#[1 3 73 0 15 1 62 0 54] 
#[0 1 66 0 12 0 21 0 93] 
#[1 3 141 0 12 1 70 0 21 1 70 0 93] 
#[0 3 145 0 20] 
#[0 1 74 0 12 0 21 0 93] 
#[1 3 149 0 12 1 78 0 21 1 78 0 93] 
#[1 1 82 0 12 3 73 0 15 1 82 0 21 3 153 0 38 1 82 0 93] 
#[0 3 157 0 71] 
#[0 3 161 0 71] 
#[0 1 86 0 12 0 20 0 27 0 95] 
#[1 1 245 0 71 1 249 0 94 3 165 0 115 3 169 0 116] 
#[0 3 173 0 20] 
#[0 1 90 0 20 0 95] 
#[1 1 94 0 12 1 94 0 20 3 177 0 27 1 94 0 95 3 181 0 114] 
#[0 1 98 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 93 0 95 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 3 185 0 210] 
#[0 1 102 0 21 0 27 0 93 0 95] 
#[0 1 106 0 21 0 93] 
#[1 3 189 0 12 1 110 0 21 1 110 0 93] 
#[0 1 114 0 21 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 3 201 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 3 205 0 20] 
#[1 3 209 0 12 3 213 0 20] 
#[0 1 118 0 12 0 20] 
#[1 1 122 0 12 1 122 0 20 3 217 0 38] 
#[0 1 126 0 21 0 27 0 93 0 95] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 221 0 95] 
#[1 3 5 0 12 3 225 0 50 0 238 0 95 3 9 0 208 3 229 0 222] 
#[0 1 138 0 95] 
#[0 3 233 0 95] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 237 0 97] 
#[1 3 5 0 12 3 241 0 50 0 238 0 97 3 9 0 208 3 245 0 219] 
#[0 1 146 0 97] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 3 5 0 12 3 249 0 20 3 225 0 50 0 238 0 99 3 9 0 208 3 253 0 222] 
#[0 1 154 0 99] 
#[0 4 1 0 99] 
#[0 1 158 0 33 0 41 0 43] 
#[0 1 162 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 1 166 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 1 170 0 93 0 149 0 94 0 153 0 96 0 157 0 98 4 5 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 4 9 0 93] 
#[0 1 174 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 13 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 17 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 21 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 1 178 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 182 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 186 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 190 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 194 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 198 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 202 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 206 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[1 1 210 0 10 1 210 0 13 1 210 0 36 4 25 0 58 1 210 0 70 1 210 0 71 1 210 0 72 1 210 0 73 1 210 0 74 1 210 0 77 1 210 0 80 1 210 0 83 1 210 0 86 1 210 0 94 1 210 0 96 1 210 0 98] 
#[0 4 29 0 55] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 33 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 53 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 57 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 61 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 65 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 69 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 73 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 77 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 1 214 0 1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 4 81 0 7 1 214 0 8 1 214 0 9 1 214 0 10 1 214 0 11 1 214 0 12 1 214 0 13 1 214 0 14 4 85 0 15 1 214 0 16 1 214 0 17 1 214 0 18 1 214 0 19 1 214 0 20 1 214 0 21 1 214 0 22 1 214 0 23 1 214 0 24 1 214 0 25 1 214 0 26 1 214 0 27 1 214 0 28 1 214 0 29 1 214 0 30 1 214 0 31 1 214 0 32 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 46 1 214 0 50 1 214 0 53 1 214 0 55 1 214 0 56 1 214 0 58 1 214 0 59 1 214 0 68 1 214 0 69 1 214 0 75 1 214 0 76 1 214 0 78 1 214 0 79 1 214 0 81 1 214 0 82 1 214 0 84 1 214 0 85 1 214 0 93 4 89 0 94 1 214 0 95 4 93 0 96 1 214 0 97 1 214 0 99 4 97 0 202 1 214 0 228] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 101 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 105 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 109 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 113 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 1 222 0 3 1 222 0 5 1 222 0 8 1 222 0 9 0 21 0 10 1 222 0 11 0 25 0 13 1 222 0 14 1 222 0 18 1 222 0 19 1 222 0 20 1 222 0 21 1 222 0 24 1 222 0 27 1 222 0 32 1 222 0 35 0 33 0 36 0 85 0 57 0 89 0 58 1 222 0 69 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 1 222 0 93 0 149 0 94 1 222 0 95 0 153 0 96 1 222 0 97 0 157 0 98 1 222 0 99 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 4 117 0 210 1 222 0 228] 
#[0 1 226 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 1 230 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 234 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 238 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 242 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 246 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 250 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 1 254 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 2 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 6 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 10 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 14 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 18 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[1 2 22 0 21 4 121 0 27 2 22 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 125 0 122 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 4 125 0 210 4 125 0 225] 
#[1 4 137 0 93 2 26 0 228] 
#[0 4 141 0 71] 
#[1 4 145 0 6 4 149 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 2 30 0 95 0 153 0 96 0 157 0 98 4 153 0 107 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 157 0 201 4 157 0 209 4 153 0 215 4 165 0 217] 
#[0 4 169 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 157 0 201 1 157 0 209 4 173 0 224] 
#[0 2 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 177 0 201 4 177 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 4 181 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 42 0 95 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 2 17 0 210 4 185 0 211] 
#[1 1 237 0 6 1 241 0 7 1 245 0 71 1 249 0 94 0 34 0 95 4 189 0 112 2 1 0 113 2 5 0 115] 
#[0 4 193 0 20] 
#[1 0 21 0 10 0 25 0 13 1 222 0 21 0 33 0 36 1 222 0 55 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 1 222 0 93 0 149 0 94 0 153 0 96 0 157 0 98 1 181 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 197 0 207] 
#[0 2 38 0 21 0 55 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 4 201 0 148 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 169 0 201 1 169 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 4 205 0 210] 
#[1 4 209 0 6 4 213 0 71 4 217 0 94 4 221 0 138 4 225 0 139 4 229 0 141 4 233 0 142] 
#[0 2 42 0 15 0 54 0 71] 
#[1 3 73 0 15 2 46 0 54] 
#[0 4 237 0 71] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 4 241 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[1 1 149 0 71 4 245 0 140 1 233 0 144] 
#[0 4 249 0 71] 
#[1 4 253 0 12 2 50 0 20 2 50 0 95] 
#[0 2 54 0 20 0 95] 
#[1 5 1 0 12 0 238 0 95 5 5 0 208] 
#[0 5 9 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 13 0 201 5 13 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 17 0 201 5 17 0 209] 
#[1 5 21 0 12 0 238 0 20 0 238 0 95 5 25 0 208] 
#[0 2 58 0 21 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 29 0 201 5 29 0 209] 
#[0 5 33 0 227] 
#[0 2 62 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 5 37 0 47 5 41 0 49 5 45 0 159 5 49 0 163] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 5 53 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 5 57 0 162 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 2 49 0 201 2 49 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 5 61 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 5 65 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 2 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 181 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 69 0 207] 
#[0 2 70 0 95] 
#[0 2 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 2 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 181 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 73 0 207] 
#[0 2 82 0 97] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 77 0 201 5 77 0 209] 
#[0 2 86 0 99] 
#[0 2 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 2 94 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 2 98 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 5 81 0 46] 
#[0 2 102 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 46 0 50 0 53 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 2 106 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 46 0 50 0 53 0 59 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 2 110 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 114 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98] 
#[0 2 118 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 2 122 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 126 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 130 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 134 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 138 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 142 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 146 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 150 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 154 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 158 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 2 162 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 5 85 0 181 5 85 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 5 89 0 71] 
#[1 4 145 0 6 4 149 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 5 93 0 95 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 157 0 201 4 157 0 209 5 97 0 215 4 165 0 217] 
#[1 0 21 0 10 0 25 0 13 5 101 0 15 2 166 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 117 0 201 5 105 0 203 5 109 0 204 5 113 0 205 5 117 0 209] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 2 174 0 75 2 174 0 76 5 121 0 188] 
#[1 2 178 0 78 2 178 0 79 5 125 0 190] 
#[1 2 182 0 81 2 182 0 82 5 129 0 192] 
#[1 2 186 0 84 2 186 0 85 5 133 0 194] 
#[0 2 190 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 69 0 93 0 95 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 5 137 0 122 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 5 137 0 210 5 137 0 225] 
#[0 2 194 0 21 0 93] 
#[0 2 198 0 21 0 27 0 93] 
#[0 2 202 0 21 0 27 0 93] 
#[0 2 206 0 93 0 228] 
#[0 2 210 0 12 0 15 0 21 0 38 0 54 0 93 0 94] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 141 0 201 5 141 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 145 0 201 5 145 0 209] 
#[0 5 149 0 95] 
#[1 2 214 0 12 5 153 0 27 3 225 0 50 2 214 0 95 5 157 0 222] 
#[0 2 218 0 95] 
#[1 5 161 0 12 0 238 0 95 5 165 0 208] 
#[0 2 222 0 33 0 41 0 43] 
#[0 2 226 0 36] 
#[0 2 230 0 21 0 93] 
#[0 2 234 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 5 169 0 95] 
#[0 5 173 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 5 177 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 2 238 0 21 0 55 0 93] 
#[0 2 242 0 21 0 93] 
#[0 5 181 0 20] 
#[0 2 246 0 21 0 93] 
#[1 2 250 0 12 2 250 0 21 5 185 0 38 2 250 0 93 2 250 0 95] 
#[1 4 213 0 71 4 225 0 139 5 189 0 141 4 233 0 142] 
#[0 2 254 0 21 0 93] 
#[0 3 2 0 12 0 21 0 93 0 95] 
#[0 3 6 0 21 0 93] 
#[1 5 193 0 12 0 238 0 21 0 238 0 93 0 238 0 95 5 197 0 208] 
#[0 3 10 0 12 0 21 0 93] 
#[1 3 14 0 10 3 14 0 13 3 14 0 33 3 14 0 36 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 3 14 0 45 3 14 0 46 3 14 0 48 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 54 3 14 0 57 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 70 3 14 0 71 3 14 0 72 3 14 0 73 3 14 0 74 3 14 0 77 3 14 0 80 3 14 0 83 3 14 0 86 3 14 0 93 3 14 0 94 3 14 0 96 3 14 0 98 5 201 0 153 3 14 0 226 3 14 0 228] 
#[0 3 18 0 12 0 21 0 93] 
#[0 3 22 0 12 0 21 0 93] 
#[0 5 205 0 7] 
#[1 1 245 0 71 1 249 0 94 1 222 0 95 3 165 0 115 5 209 0 116] 
#[0 3 26 0 95] 
#[0 3 30 0 12 0 20 0 27 0 95] 
#[0 3 34 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 3 38 0 12 0 20 0 95] 
#[1 1 237 0 6 1 241 0 7 1 222 0 20 1 245 0 71 1 249 0 94 1 222 0 95 5 213 0 113 2 5 0 115] 
#[0 3 42 0 20 0 95] 
#[1 5 217 0 12 3 46 0 21 3 46 0 93] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 0 165 0 105 0 169 0 108 5 221 0 109 5 221 0 110 5 221 0 117 5 221 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 5 221 0 151 5 221 0 152 5 221 0 155 5 221 0 156 5 221 0 157 5 221 0 160 5 225 0 165 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 5 221 0 214 1 113 0 225] 
#[1 0 21 0 10 0 25 0 13 3 50 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 229 0 201 5 229 0 209] 
#[0 5 233 0 20] 
#[1 3 54 0 10 3 54 0 13 3 54 0 33 3 54 0 36 3 54 0 39 3 54 0 40 3 54 0 41 3 54 0 42 3 54 0 43 3 54 0 44 5 237 0 46 5 37 0 47 3 54 0 48 3 54 0 49 3 54 0 50 3 54 0 51 3 54 0 52 3 54 0 53 3 54 0 54 3 54 0 57 3 54 0 58 3 54 0 60 3 54 0 61 3 54 0 62 3 54 0 63 3 54 0 64 3 54 0 65 3 54 0 66 3 54 0 67 3 54 0 70 3 54 0 71 3 54 0 72 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 80 3 54 0 83 3 54 0 86 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 98 5 241 0 154 5 245 0 163 3 54 0 226 3 54 0 228] 
#[0 5 249 0 20] 
#[1 3 54 0 10 3 54 0 13 3 54 0 33 3 54 0 36 3 54 0 39 3 54 0 40 3 54 0 41 3 54 0 42 3 54 0 43 3 54 0 44 5 237 0 46 3 54 0 48 3 54 0 50 3 54 0 51 3 54 0 52 3 54 0 53 3 54 0 54 3 54 0 57 3 54 0 58 3 54 0 60 3 54 0 61 3 54 0 62 3 54 0 63 3 54 0 64 3 54 0 65 3 54 0 66 3 54 0 67 3 54 0 70 3 54 0 71 3 54 0 72 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 80 3 54 0 83 3 54 0 86 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 98 5 253 0 154 3 54 0 226 3 54 0 228] 
#[0 3 58 0 12 0 20] 
#[0 3 62 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 3 66 0 12 0 20] 
#[0 6 1 0 55] 
#[0 6 5 0 55] 
#[1 6 9 0 12 3 225 0 50 0 238 0 99 6 17 0 208 6 17 0 213 6 21 0 222] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 6 25 0 201 6 25 0 209] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 95 0 97 0 99 0 228] 
#[0 3 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 6 29 0 95] 
#[0 6 33 0 15] 
#[0 6 37 0 97] 
#[1 6 41 0 12 0 238 0 97 6 45 0 208] 
#[0 6 49 0 20] 
#[1 3 82 0 12 3 86 0 20 3 82 0 97] 
#[1 6 53 0 75 6 57 0 76 6 61 0 187] 
#[1 6 65 0 78 6 69 0 79 6 73 0 189] 
#[1 6 77 0 81 6 81 0 82 6 85 0 191] 
#[1 6 89 0 84 6 93 0 85 6 97 0 193] 
#[0 3 90 0 21 0 27 0 93] 
#[1 6 101 0 12 3 94 0 95 6 105 0 216] 
#[0 3 98 0 95] 
#[0 3 102 0 93] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 6 109 0 201 6 109 0 209] 
#[0 3 106 0 12 0 95] 
#[1 4 145 0 6 4 149 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 1 222 0 95 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 157 0 201 4 157 0 209 6 113 0 215 4 165 0 217] 
#[0 3 110 0 95] 
#[0 6 117 0 20] 
#[0 3 114 0 20] 
#[0 3 118 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 6 121 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 6 125 0 71] 
#[0 6 129 0 95] 
#[1 1 222 0 21 4 213 0 71 1 222 0 93 1 222 0 95 6 133 0 139] 
#[0 3 122 0 21 0 93 0 95] 
#[1 3 54 0 10 3 54 0 13 3 54 0 33 3 54 0 36 3 54 0 39 3 54 0 40 3 54 0 41 3 54 0 42 3 54 0 43 3 54 0 44 6 137 0 45 5 237 0 46 3 54 0 48 3 54 0 50 3 54 0 51 3 54 0 52 3 54 0 53 3 54 0 54 3 54 0 57 3 54 0 58 3 54 0 60 3 54 0 61 3 54 0 62 3 54 0 63 3 54 0 64 3 54 0 65 3 54 0 66 3 54 0 67 3 54 0 70 3 54 0 71 3 54 0 72 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 80 3 54 0 83 3 54 0 86 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 98 6 141 0 154 3 54 0 226 3 54 0 228] 
#[0 6 145 0 71] 
#[0 3 126 0 95] 
#[0 3 130 0 20 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 6 149 0 201 6 149 0 209] 
#[0 3 134 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98 0 226] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 0 165 0 105 0 169 0 108 6 153 0 109 6 153 0 110 6 153 0 117 6 153 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 6 153 0 151 6 153 0 152 6 153 0 155 6 153 0 156 6 153 0 157 6 153 0 160 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 6 153 0 214 1 113 0 225 6 157 0 226] 
#[1 6 161 0 12 3 138 0 20 6 165 0 38] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 6 169 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 6 173 0 20] 
#[1 3 142 0 10 3 142 0 13 3 142 0 33 3 142 0 36 3 142 0 39 3 142 0 40 3 142 0 41 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 48 6 177 0 49 3 142 0 50 3 142 0 51 3 142 0 52 3 142 0 53 3 142 0 54 3 142 0 57 3 142 0 58 3 142 0 60 3 142 0 61 3 142 0 62 3 142 0 63 3 142 0 64 3 142 0 65 3 142 0 66 3 142 0 67 3 142 0 70 3 142 0 71 3 142 0 72 3 142 0 73 3 142 0 74 3 142 0 77 3 142 0 80 3 142 0 83 3 142 0 86 3 142 0 93 3 142 0 94 3 142 0 96 3 142 0 98 6 181 0 158 3 142 0 226 3 142 0 228] 
#[0 6 185 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 6 189 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 3 146 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 193 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 201 0 166 6 205 0 168 6 205 0 169 6 205 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 222 0 99 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 6 217 0 201 6 217 0 209] 
#[0 3 150 0 99] 
#[0 3 154 0 99] 
#[0 3 158 0 99] 
#[0 3 162 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 93 0 95 0 97 0 99 0 228] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 6 221 0 15] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 75 0 76 0 78 0 79 0 81 0 82 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[1 0 21 0 10 0 25 0 13 5 101 0 15 2 166 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 1 222 0 97 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 5 117 0 201 6 225 0 203 5 109 0 204 5 113 0 205 5 117 0 209] 
#[0 3 174 0 97] 
#[1 0 21 0 10 2 166 0 12 0 25 0 13 2 166 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 2 166 0 97 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 6 229 0 201 6 229 0 205 6 229 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 237 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 182 0 75 0 76] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 241 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 190 0 78 0 79] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 245 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 198 0 81 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 6 249 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 93 0 94 0 95 0 96 0 97 0 99 0 228] 
#[0 3 206 0 84 0 85] 
#[1 6 253 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 4 157 0 201 4 157 0 209 7 1 0 217] 
#[0 3 210 0 95] 
#[0 3 214 0 12 0 95] 
#[0 3 218 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 7 5 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[1 3 54 0 10 3 54 0 13 3 54 0 33 3 54 0 36 3 54 0 39 3 54 0 40 3 54 0 41 3 54 0 42 3 54 0 43 3 54 0 44 5 237 0 46 3 54 0 48 3 54 0 50 3 54 0 51 3 54 0 52 3 54 0 53 3 54 0 54 3 54 0 57 3 54 0 58 3 54 0 60 3 54 0 61 3 54 0 62 3 54 0 63 3 54 0 64 3 54 0 65 3 54 0 66 3 54 0 67 3 54 0 70 3 54 0 71 3 54 0 72 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 80 3 54 0 83 3 54 0 86 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 98 7 9 0 154 3 54 0 226 3 54 0 228] 
#[0 3 222 0 12 0 21 0 93 0 95] 
#[0 3 226 0 21 0 93] 
#[0 3 230 0 12 0 21 0 93 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 13 0 201 7 13 0 209] 
#[0 3 234 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 3 238 0 20 0 95] 
#[0 3 242 0 21 0 93] 
#[0 3 246 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 94 0 96 0 98 0 226] 
#[0 3 250 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 17 0 201 7 17 0 209] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 21 0 201 7 21 0 209] 
#[0 3 254 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 7 25 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 7 29 0 20] 
#[0 4 2 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 7 33 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 4 6 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 4 10 0 12 3 225 0 50 7 37 0 53 4 10 0 95 4 10 0 99 7 41 0 221 7 41 0 222 7 41 0 223] 
#[1 1 237 0 6 1 241 0 7 0 34 0 20 1 245 0 71 1 249 0 94 7 53 0 112 2 1 0 113 2 5 0 115] 
#[1 3 241 0 50 7 57 0 53 4 14 0 97 7 61 0 218 7 61 0 219 7 61 0 220] 
#[1 7 73 0 12 4 18 0 50 4 18 0 53 4 18 0 97] 
#[0 4 22 0 12 0 50 0 53 0 95 0 97 0 99] 
#[0 4 26 0 12 0 50 0 53 0 95 0 97 0 99] 
#[0 7 77 0 20] 
#[0 4 30 0 12 0 97] 
#[0 4 34 0 97] 
#[1 4 38 0 12 7 81 0 20 4 38 0 97 7 85 0 206] 
#[0 3 86 0 12 0 20 0 97] 
#[0 4 42 0 75 0 76] 
#[0 4 46 0 78 0 79] 
#[0 4 50 0 81 0 82] 
#[0 4 54 0 84 0 85] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 89 0 201 7 89 0 209] 
#[1 6 101 0 12 3 94 0 95 7 93 0 216] 
#[0 4 58 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 4 62 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 7 97 0 20] 
#[0 4 66 0 20] 
#[0 4 70 0 20] 
#[0 4 74 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 7 101 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 4 78 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 7 105 0 168 7 105 0 169 7 105 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 4 82 0 12 0 95 0 99] 
#[0 4 86 0 12 0 95 0 99] 
#[0 4 90 0 12 0 95 0 99] 
#[0 7 109 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 7 113 0 168 7 113 0 169 7 113 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 4 94 0 97] 
#[0 4 98 0 97] 
#[0 4 102 0 97] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 7 117 0 167 7 121 0 168 7 121 0 169 7 121 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 125 0 201 7 125 0 209] 
#[1 0 21 0 10 2 166 0 12 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 2 166 0 97 0 157 0 98 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 7 129 0 201 7 129 0 205 7 129 0 209] 
#[0 4 106 0 12 0 97] 
#[0 4 110 0 95] 
#[0 4 114 0 95] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 3 193 0 93 0 149 0 94 0 153 0 96 0 157 0 98 3 197 0 118 0 249 0 120 0 249 0 124 0 249 0 125 0 249 0 126 0 249 0 127 0 249 0 128 0 249 0 129 0 249 0 130 0 249 0 131 0 249 0 132 0 249 0 133 0 249 0 134 0 249 0 135 0 249 0 145 0 249 0 147 0 249 0 149 0 249 0 150 7 133 0 164 1 21 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198 1 101 0 201 1 101 0 209 1 105 0 210 1 113 0 225] 
#[0 4 118 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[1 4 122 0 12 3 225 0 50 7 37 0 53 4 122 0 95 4 122 0 99 7 137 0 221 7 137 0 222 7 137 0 223] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 0 157 0 98 7 141 0 168 7 141 0 169 7 141 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[1 3 241 0 50 7 57 0 53 4 126 0 97 7 145 0 218 7 145 0 219 7 145 0 220] 
#[1 7 149 0 12 0 238 0 50 0 238 0 53 0 238 0 97 7 153 0 208] 
#[0 4 130 0 12 0 50 0 53 0 97] 
#[1 6 9 0 12 0 238 0 99 7 157 0 208 7 157 0 213] 
#[0 4 134 0 12 0 97] 
#[0 4 138 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 74 0 77 0 80 0 83 0 86 0 93 0 94 0 96 0 98 0 226 0 228] 
#[0 4 142 0 12 0 95 0 99] 
#[0 4 146 0 12 0 50 0 53 0 95 0 97 0 99] 
#[0 4 150 0 97] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 1 222 0 50 1 222 0 53 6 197 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 10 0 74 0 14 0 77 0 18 0 80 0 22 0 83 0 141 0 86 0 149 0 94 0 153 0 96 1 222 0 97 0 157 0 98 7 161 0 168 7 161 0 169 7 161 0 170 1 25 0 171 1 29 0 172 1 29 0 173 1 37 0 175 1 41 0 176 1 45 0 177 1 49 0 178 1 53 0 179 1 57 0 180 1 61 0 181 1 61 0 182 1 69 0 184 1 69 0 185 1 77 0 186 1 81 0 195 1 85 0 196 1 89 0 197 1 93 0 198] 
#[0 4 154 0 50 0 53 0 97] 
#[0 4 158 0 99] 
#[0 4 162 0 12 0 50 0 53 0 97]
	).
]

{ #category : #private }
PythonParser2 >> actionForCurrentToken [
	| action |
	action := super actionForCurrentToken.
	(action = self errorAction and: [ currentToken source = '}' ])
		ifTrue: [ | i scannerState stackItem |
			i := nodeStack size.
			scannerState := nil.
			[ i > 0 and: [ scannerState isNil ] ]
				whileTrue: [ stackItem := nodeStack at: i.
					(stackItem class = Array
						and: [ stackItem size = 2 and: [ stackItem first isSymbol ] ])
						ifTrue: [ scannerState := stackItem ].
					i := i - 1 ].
			scannerState notNil
				ifTrue: [ self scope: scannerState first.
					scanner lineJoiningStack: scannerState second.
					self position: currentToken startPosition - 1.
					currentToken := nil.
					self getNextToken.
					self scope: #default.
					currentToken source = '}'
						ifTrue: [ ^ action ].
					^ self actionForCurrentToken ] ].
	^ action
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForStartFLongStringDouble1: nodes [
	^ {#fLongStringDouble.
	scanner lineJoiningStack}
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForStartFLongStringSingle1: nodes [
	^ {#fLongStringSingle.
	scanner lineJoiningStack}
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForStartFStringDouble1: nodes [
	^ {#fStringDouble.
	scanner lineJoiningStack}
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForStartFStringSingle1: nodes [
	^ {#fStringSingle.
	scanner lineJoiningStack}
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFor__fStringSingleMid___part__expr__expression__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFor__fStringSingleMid___part__expr__expression___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForand_expr2: nodes [
	| result |
	result := PyAndExprNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForand_test2: nodes [
	| result |
	result := PyAndNode new.
	result one: (nodes at: 1).
	result andToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForarglist2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForarglist3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	result at: 4 put: ((nodes at: 3) at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForarglist4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForargument1: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForargument2: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForargument3: nodes [
	| result |
	result := PyArgumentNode new.
	result test: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result test2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForarith_expr2: nodes [
	| result |
	result := PyPlusExprNode new.
	result one: (nodes at: 1).
	result plusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForarith_expr3: nodes [
	| result |
	result := PyMinusExprNode new.
	result one: (nodes at: 1).
	result minusToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForassert_stmt1: nodes [
	| result |
	result := PyAssertNode new.
	result assertToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom10: nodes [
	| result |
	result := PyNumberNode new.
	result numberToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom1: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom3: nodes [
	| result |
	result := PyAtomNode new.
	result lparenToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom4: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result rbrackToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom5: nodes [
	| result |
	result := PyAtomNode new.
	result lbrackToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom6: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result list: (nodes at: 2).
	result rcurlyToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom7: nodes [
	| result |
	result := PyAtomNode new.
	result lcurlyToken: (nodes at: 1).
	result rcurlyToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom8: nodes [
	| result |
	result := PyBackTickNode new.
	result addToken: (nodes at: 1) to: result _Tokens.
	result list: (nodes at: 2).
	result addToken: (nodes at: 3) to: result _Tokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForatom9: nodes [
	| result |
	result := PySymbolNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForbreak_stmt1: nodes [
	| result |
	result := PyBreakNode new.
	result breakToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForclassdef1: nodes [
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
PythonParser2 >> reduceActionForclassdef2: nodes [
	| result |
	result := PyClassdefNode new.
	result classToken: (nodes at: 1).
	result cname: (nodes at: 2).
	result lparenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
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
PythonParser2 >> reduceActionForcomp_for1: nodes [
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
PythonParser2 >> reduceActionForcomp_for2: nodes [
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
PythonParser2 >> reduceActionForcomp_if1: nodes [
	| result |
	result := PyCompIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_if2: nodes [
	| result |
	result := PyCompIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op10: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op11: nodes [
	| result |
	result := PyCompOpNode new.
	result _isToken: (nodes at: 1).
	result notToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op1: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op2: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op3: nodes [
	| result |
	result := PyCompOpNode new.
	result equalEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op4: nodes [
	| result |
	result := PyCompOpNode new.
	result greaterThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op5: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op6: nodes [
	| result |
	result := PyCompOpNode new.
	result lessThanGreaterThanToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op7: nodes [
	| result |
	result := PyCompOpNode new.
	result bangEqualToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op8: nodes [
	| result |
	result := PyCompOpNode new.
	result inToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomp_op9: nodes [
	| result |
	result := PyCompOpNode new.
	result notToken: (nodes at: 1).
	result inToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcomparison2: nodes [
	| result |
	result := PyComparisonNode new.
	result one: (nodes at: 1).
	result op: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForcontinue_stmt1: nodes [
	| result |
	result := PyContinueNode new.
	result continueToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordecorated1: nodes [
	| result |
	result := PyDecoratedNode new.
	result decorators: (nodes at: 1).
	result classdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordecorated2: nodes [
	| result |
	result := PyDecoratedNode new.
	result decorators: (nodes at: 1).
	result funcdef: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordecorator1: nodes [
	| result |
	result := PyDecoratorNode new.
	result _Token: (nodes at: 1).
	result dotted_name: (nodes at: 2).
	result args: (nodes at: 3).
	result nEWLINEToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordecorators1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result decorators.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordecorators2: nodes [
	| result |
	result := PyDecoratorsNode new.
	result addNode: (nodes at: 1) to: result decorators.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordel_stmt1: nodes [
	| result |
	result := PyDelNode new.
	result delToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordictorsetmaker1: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result test: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result test2: (nodes at: 3).
	result comp: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordictorsetmaker2: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result test: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result test2: (nodes at: 3).
	result more: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordictorsetmaker3: nodes [
	| result |
	result := PyDictorsetmakerNode new.
	result test: (nodes at: 1).
	result comp: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotopt_dotted_name1: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotopt_dotted_name2: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotopt_dotted_name3: nodes [
	| result |
	result := PyDotoptDottedNameNode new.
	result dots: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordots1: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordots2: nodes [
	| result |
	result := PyDotsNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotted_as_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotted_as_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotted_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: ((nodes at: 3) at: 1) to: (result at: 2).
	self add: ((nodes at: 3) at: 2) to: (result at: 3).
	self add: ((nodes at: 3) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotted_as_names2: nodes [
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
PythonParser2 >> reduceActionFordotted_name1: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFordotted_name2: nodes [
	| result |
	result := PyDottedNameNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForelifs_opt2: nodes [
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
PythonParser2 >> reduceActionForelse_opt2: nodes [
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
PythonParser2 >> reduceActionForeval_input1: nodes [
	| result |
	result := PyEvalInputNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result tests.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	result addTokens: (nodes at: 2) to: result nEWLINETokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexcept_clause1: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexcept_clause2: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexcept_clause3: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result asToken: (nodes at: 3).
	result another: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexcept_clause4: nodes [
	| result |
	result := PyExceptClauseNode new.
	result exceptToken: (nodes at: 1).
	result except: (nodes at: 2).
	result commaToken: (nodes at: 3).
	result except2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexcept_list1: nodes [
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
PythonParser2 >> reduceActionForexcept_list2: nodes [
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
PythonParser2 >> reduceActionForexec_stmt1: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexec_stmt2: nodes [
	| result |
	result := PyExecNode new.
	result execToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result inToken: (nodes at: 3).
	result tests_opt: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexpr2: nodes [
	| result |
	result := PyVBarExprNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexpr_stmt1: nodes [
	| result |
	result := PyExprStmtNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result tests.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 1) to: result assigns.
	result addObjects: ((nodes at: 2) at: 2) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForexpr_stmt2: nodes [
	| result |
	result := PyExprStmtNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result tests.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	result addToken: (nodes at: 2) to: result assigns.
	result addObject: (nodes at: 3) to: result tos.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfactor2: nodes [
	| result |
	result := PyFactorNode new.
	result plusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfactor3: nodes [
	| result |
	result := PyFactorNode new.
	result minusToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfactor4: nodes [
	| result |
	result := PyFactorNode new.
	result tildeToken: (nodes at: 1).
	result factor: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfile_input1: nodes [
	| result |
	result := PyFileInputNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfile_input2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result nEWLINETokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfile_input3: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfinally_opt2: nodes [
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
PythonParser2 >> reduceActionForfor_stmt1: nodes [
	| result |
	result := PyForNode new.
	result forToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result inToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result tests.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result colonToken: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 6) at: 2).
	result iNDENTToken: ((nodes at: 6) at: 3).
	result dEDENTToken: ((nodes at: 6) at: 4).
	result else: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfpdef1: nodes [
	| result |
	result := PyFpdefNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfpdef2: nodes [
	| result |
	result := PyFpdefNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result fpdefs.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForfuncdef1: nodes [
	| result |
	result := PyFuncdefNode new.
	result defToken: (nodes at: 1).
	result fname: (nodes at: 2).
	result parameters: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result statements.
	result nEWLINEToken: ((nodes at: 5) at: 2).
	result iNDENTToken: ((nodes at: 5) at: 3).
	result dEDENTToken: ((nodes at: 5) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForglobal_stmt1: nodes [
	| result |
	result := PyGlobalNode new.
	result globalToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForif_stmt1: nodes [
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
PythonParser2 >> reduceActionForimport_as_names1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForimport_from1: nodes [
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
PythonParser2 >> reduceActionForimport_name1: nodes [
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
PythonParser2 >> reduceActionForimport_names_star1: nodes [
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
PythonParser2 >> reduceActionForimport_names_star2: nodes [
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
PythonParser2 >> reduceActionForimport_names_star3: nodes [
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
PythonParser2 >> reduceActionForinit_opt2: nodes [
	| result |
	result := PyInitOptNode new.
	result equalToken: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForlambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result arguments: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForlist_for1: nodes [
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
PythonParser2 >> reduceActionForlist_for2: nodes [
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
PythonParser2 >> reduceActionForlist_if1: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForlist_if2: nodes [
	| result |
	result := PyListIfNode new.
	result ifToken: (nodes at: 1).
	result condition: (nodes at: 2).
	result iter: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForlistmaker1: nodes [
	| result |
	result := PyListmakerNode new.
	result test: (nodes at: 1).
	result list_for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFormore_args1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFormore_args2: nodes [
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
PythonParser2 >> reduceActionFormore_args3: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFormore_tests2: nodes [
	| result |
	result := PyMoreTestsNode new.
	result commaToken: (nodes at: 1).
	result test: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result test2: (nodes at: 4).
	result more_tests: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFornamelist1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFornamelist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFornot_test1: nodes [
	| result |
	result := PyNotNode new.
	result notToken: (nodes at: 1).
	result negated: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForold_lambdef1: nodes [
	| result |
	result := PyLambdaNode new.
	result lambdaToken: (nodes at: 1).
	result args: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForor_test2: nodes [
	| result |
	result := PyOrNode new.
	result one: (nodes at: 1).
	result orToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForpass_stmt1: nodes [
	| result |
	result := PyPassNode new.
	result passToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForpower1: nodes [
	| result |
	result := PyPowerNode new.
	result atom: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result trailers.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForpower2: nodes [
	| result |
	result := PyPowerNode new.
	result atom: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result trailers.
	result timesTimesToken: (nodes at: 3).
	result factor: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForprint_stmt1: nodes [
	| result |
	result := PyPrintNode new.
	result printToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result tests.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForprint_stmt2: nodes [
	| result |
	result := PyPrintNode new.
	result printToken: (nodes at: 1).
	result greaterThanGreaterThanToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result tests.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForraise_stmt1: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForraise_stmt2: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForraise_stmt3: nodes [
	| result |
	result := PyRaiseNode new.
	result raiseToken: (nodes at: 1).
	result arg1: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commaTokens.
	result arg2: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForraise_stmt4: nodes [
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
PythonParser2 >> reduceActionForreturn_stmt1: nodes [
	| result |
	result := PyReturnNode new.
	result returnToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result tests.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForshift_expr2: nodes [
	| result |
	result := PyLShiftExprNode new.
	result one: (nodes at: 1).
	result lessThanLessThanToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForshift_expr3: nodes [
	| result |
	result := PyRShiftExprNode new.
	result one: (nodes at: 1).
	result greaterThanGreaterThanToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsimple_stmt1: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result stmts.
	result addFirstToken: (nodes at: 2) to: result semicolonTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsimple_stmt2: nodes [
	| result |
	result := PySimpleStmtNode new.
	result addNode: (nodes at: 1) to: result stmts.
	result addToken: (nodes at: 2) to: result semicolonTokens.
	result nEWLINEToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsingle_input1: nodes [
	| result |
	result := PySingleInputNode new.
	result nEWLINEToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsingle_input2: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsingle_input3: nodes [
	| result |
	result := PySingleInputNode new.
	result statement: (nodes at: 1).
	result nEWLINEToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsliceop2: nodes [
	| result |
	result := PySliceopNode new.
	result colonToken: (nodes at: 1).
	result test: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForstmts2: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForstring1: nodes [
	| result |
	result := PyStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForstring3: nodes [
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
PythonParser2 >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringsNode new.
	result addNode: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsubscript1: nodes [
	| result |
	result := PySubscriptNode new.
	result addToken: (nodes at: 1) to: result periodTokens.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result periodTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsubscript2: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsubscript3: nodes [
	| result |
	result := PySubscriptNode new.
	result test: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result test2: (nodes at: 3).
	result slice: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsuite1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForsuite2: nodes [
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
PythonParser2 >> reduceActionForterm2: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result timesToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForterm3: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForterm4: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result percentToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForterm5: nodes [
	| result |
	result := PyTermNode new.
	result factor: (nodes at: 1).
	result divideDivideToken: (nodes at: 2).
	result term: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortest2: nodes [
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
PythonParser2 >> reduceActionFortest_test_opt1: nodes [
	| result |
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortest_test_opt2: nodes [
	| result |
	result := PyTestTestOptNode new.
	result test1: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result test2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist11: nodes [
	| result |
	result := PyTestlist1Node new.
	result test: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result tests: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist1: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist_comp1: nodes [
	| result |
	result := PyTestlistCompNode new.
	result test: (nodes at: 1).
	result comp_for: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist_opt1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist_safe1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortestlist_safe2: nodes [
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
PythonParser2 >> reduceActionFortrailer1: nodes [
	| result |
	result := PyTrailerNode new.
	result lparenToken: (nodes at: 1).
	result rparenToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortrailer2: nodes [
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
PythonParser2 >> reduceActionFortrailer3: nodes [
	| result |
	result := PyTrailerNode new.
	result lbrackToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result subscripts.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rbrackToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortrailer4: nodes [
	| result |
	result := PyTrailerNode new.
	result periodToken: (nodes at: 1).
	result nameToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortrailers_opt1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortrailers_opt2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionFortry_stmt1: nodes [
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
PythonParser2 >> reduceActionFortry_stmt2: nodes [
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
PythonParser2 >> reduceActionForvarargslist1: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForvarargslist2: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForvarargslist3: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 6 put: (nodes at: 4).
	result at: 7 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForvarargslist4: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 6 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForvarargslist5: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForvarargslist_opt2: nodes [
	| result |
	result := PyVarArgListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result args.
	result addNodes: ((nodes at: 1) at: 2) to: result inits.
	result addTokens: ((nodes at: 1) at: 3) to: result commaTokens.
	result timesToken: ((nodes at: 1) at: 4).
	result sname: ((nodes at: 1) at: 5).
	result timesTimesToken: ((nodes at: 1) at: 6).
	result ssname: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForwhile_stmt1: nodes [
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
PythonParser2 >> reduceActionForwith_item1: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForwith_item2: nodes [
	| result |
	result := PyWithItemNode new.
	result test: (nodes at: 1).
	result asToken: (nodes at: 2).
	result expr: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForwith_stmt1: nodes [
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
PythonParser2 >> reduceActionForxor_expr2: nodes [
	| result |
	result := PyXorExprNode new.
	result one: (nodes at: 1).
	result upArrowToken: (nodes at: 2).
	result two: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForyield_expr1: nodes [
	| result |
	result := PyYieldNode new.
	result yieldToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result tests.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForyield_stmt1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]
