Class {
	#name : #PythonParser2,
	#superclass : #SmaCCParser,
	#category : #'SmaCC_Python'
}

{ #category : #'generated-accessing' }
PythonParser2 class >> cacheId [
	^'2021-01-08T19:31:27.094778-06:00'
]

{ #category : #generated }
PythonParser2 class >> definitionComment [
"# Python Grammar and Lexer extracted from Python2 documentation on 16/04/2014 (Python 2.7.6)
# As seen from this grammar, the python doc and the implemented python scanner/parser diverge in several places
# https://docs.python.org/2/reference/index.html

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
	<string> 'string' strings {{Strings}}
	| <string> 'string'  {{Strings}}
	;
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

{ #category : #generated }
PythonParser2 class >> reduceTable [
^#(
	#(88 0 #reduceActionForfile_input1: 3107841 false ) 
	#(115 1 #reduceActionForbreak_stmt1: 5180417 false ) 
	#(116 1 #reduceActionForcontinue_stmt1: 5215233 false ) 
	#(99 0 #nil 3916801 false ) 
	#(113 1 #reduceActionForpass_stmt1: 5060609 false ) 
	#(185 0 #reduceActionFortestlist_opt1: 11464705 false ) 
	#(119 1 #reduceActionForraise_stmt1: 5348353 false ) 
	#(171 1 #reduceActionForatom9: 10129417 false ) 
	#(172 1 #reduceActionForstrings2: 10504194 false ) 
	#(171 1 #reduceActionForatom10: 10129418 false ) 
	#(89 1 #reduceActionForsingle_input1: 3195905 false ) 
	#(95 1 #reduceActionFordecorators2: 3579906 false ) 
	#(138 1 #liftFirstValue: 6899720 false ) 
	#(138 1 #liftFirstValue: 6899718 false ) 
	#(89 1 #reduceActionForsingle_input2: 3195906 false ) 
	#(137 1 #liftFirstValue: 6760449 false ) 
	#(137 1 #liftFirstValue: 6760450 false ) 
	#(137 1 #liftFirstValue: 6760451 false ) 
	#(137 1 #liftFirstValue: 6760452 false ) 
	#(137 1 #liftFirstValue: 6760453 false ) 
	#(114 1 #liftFirstValue: 5092353 false ) 
	#(114 1 #liftFirstValue: 5092354 false ) 
	#(114 1 #liftFirstValue: 5092355 false ) 
	#(114 1 #liftFirstValue: 5092357 false ) 
	#(114 1 #liftFirstValue: 5092356 false ) 
	#(137 1 #liftFirstValue: 6760454 false ) 
	#(120 1 #liftFirstValue: 5534721 false ) 
	#(120 1 #liftFirstValue: 5534722 false ) 
	#(137 1 #liftFirstValue: 6760455 false ) 
	#(137 1 #liftFirstValue: 6760456 false ) 
	#(137 1 #liftFirstValue: 6760457 false ) 
	#(106 0 #nil 4496385 false ) 
	#(138 1 #liftFirstValue: 6899713 false ) 
	#(138 1 #liftFirstValue: 6899714 false ) 
	#(138 1 #liftFirstValue: 6899715 false ) 
	#(138 1 #liftFirstValue: 6899716 false ) 
	#(138 1 #liftFirstValue: 6899717 false ) 
	#(183 1 #liftFirstValue: 11302913 false ) 
	#(157 1 #liftFirstValue: 8751105 false ) 
	#(158 1 #liftFirstValue: 8818689 false ) 
	#(159 1 #liftFirstValue: 8890370 false ) 
	#(160 1 #liftFirstValue: 8952833 false ) 
	#(162 1 #liftFirstValue: 9201665 false ) 
	#(163 1 #liftFirstValue: 9269249 false ) 
	#(164 1 #liftFirstValue: 9344001 false ) 
	#(165 1 #liftFirstValue: 9422849 false ) 
	#(166 1 #liftFirstValue: 9567233 false ) 
	#(167 1 #liftFirstValue: 9690113 false ) 
	#(168 1 #liftFirstValue: 9874433 false ) 
	#(170 0 #reduceActionFortrailers_opt1: 10077185 false ) 
	#(171 1 #liftFirstValue: 10129419 false ) 
	#(183 1 #liftFirstValue: 11302915 false ) 
	#(182 0 #nil 11280385 false ) 
	#(108 0 #reduceActionFortestlist_opt1: 4626433 false ) 
	#(138 1 #liftFirstValue: 6899719 false ) 
	#(118 1 #reduceActionForyield_stmt1: 5310465 false ) 
	#(91 0 #reduceActionFortrailers_opt1: 3354625 false ) 
	#(88 2 #reduceActionForfile_input2: 3107842 false ) 
	#(88 2 #reduceActionForfile_input3: 3107843 false ) 
	#(104 1 #liftFirstValue: 4332545 false ) 
	#(104 1 #liftFirstValue: 4332546 false ) 
	#(168 2 #reduceActionForfactor2: 9874434 false ) 
	#(168 2 #reduceActionForfactor3: 9874435 false ) 
	#(131 1 #reduceActionFordotted_name2: 6322178 false ) 
	#(93 0 #nil 3486721 false ) 
	#(198 1 #liftFirstValue: 12930050 false ) 
	#(136 2 #reduceActionForassert_stmt1: 6695937 false ) 
	#(135 1 #reduceActionFortest_test_opt1: 6619137 false ) 
	#(112 2 #reduceActionFordel_stmt1: 5022721 false ) 
	#(134 2 #reduceActionForexec_stmt1: 6510593 false ) 
	#(124 1 #reduceActionFordots2: 5833730 false ) 
	#(123 1 #reduceActionFordotopt_dotted_name2: 5724162 false ) 
	#(123 1 #reduceActionFordotopt_dotted_name1: 5724161 false ) 
	#(133 1 #reduceActionFornamelist2: 6465538 false ) 
	#(132 2 #reduceActionForglobal_stmt1: 6418433 false ) 
	#(130 1 #reduceActionFordotted_as_names2: 6246402 false ) 
	#(121 2 #reduceActionForimport_name1: 5579777 false ) 
	#(127 1 #reduceActionFordotted_as_name1: 6029313 false ) 
	#(102 1 #reduceActionForfpdef1: 4207617 false ) 
	#(99 1 #reduceActionForvarargslist_opt2: 3916802 false ) 
	#(101 0 #nil 4168705 false ) 
	#(159 2 #reduceActionFornot_test1: 8890369 false ) 
	#(185 1 #reduceActionForyield_stmt1: 11464706 false ) 
	#(111 2 #reduceActionForprint_stmt1: 4938753 false ) 
	#(119 2 #reduceActionForraise_stmt2: 5348354 false ) 
	#(117 2 #reduceActionForreturn_stmt1: 5259265 false ) 
	#(148 1 #reduceActionFornamelist2: 7718914 false ) 
	#(149 1 #reduceActionForwith_item1: 7796737 false ) 
	#(199 2 #reduceActionForyield_expr1: 13109249 false ) 
	#(168 2 #reduceActionForfactor4: 9874436 false ) 
	#(172 2 #reduceActionForstrings1: 10504193 false ) 
	#(171 2 #reduceActionForatom1: 10129409 false ) 
	#(174 1 #liftFirstValue: 10656770 false ) 
	#(171 2 #reduceActionForatom4: 10129412 false ) 
	#(173 1 #liftFirstValue: 10591234 false ) 
	#(171 2 #reduceActionForatom7: 10129415 false ) 
	#(186 1 #liftFirstValue: 11494404 false ) 
	#(95 2 #reduceActionFordecorators1: 3579905 false ) 
	#(96 2 #reduceActionFordecorated2: 3665922 false ) 
	#(96 2 #reduceActionFordecorated1: 3665921 false ) 
	#(106 1 #liftFirstValue: 4496386 false ) 
	#(89 2 #reduceActionForsingle_input3: 3195907 false ) 
	#(161 1 #reduceActionForcomp_op7: 9034759 false ) 
	#(161 1 #reduceActionForcomp_op1: 9034753 false ) 
	#(161 1 #reduceActionForcomp_op5: 9034757 false ) 
	#(161 1 #reduceActionForcomp_op6: 9034758 false ) 
	#(161 1 #reduceActionForcomp_op3: 9034755 false ) 
	#(161 1 #reduceActionForcomp_op2: 9034754 false ) 
	#(161 1 #reduceActionForcomp_op4: 9034756 false ) 
	#(161 1 #reduceActionForcomp_op8: 9034760 false ) 
	#(161 1 #reduceActionForcomp_op10: 9034762 false ) 
	#(169 2 #reduceActionForpower1: 9979905 false ) 
	#(182 1 #liftFirstValue: 11280386 false ) 
	#(184 2 #reduceActionFortestlist2: 11398146 false ) 
	#(110 1 #liftFirstValue: 4744197 false ) 
	#(110 1 #liftFirstValue: 4744198 false ) 
	#(110 1 #liftFirstValue: 4744203 false ) 
	#(110 1 #liftFirstValue: 4744195 false ) 
	#(110 1 #liftFirstValue: 4744193 false ) 
	#(110 1 #liftFirstValue: 4744194 false ) 
	#(110 1 #liftFirstValue: 4744204 false ) 
	#(110 1 #liftFirstValue: 4744196 false ) 
	#(110 1 #liftFirstValue: 4744201 false ) 
	#(110 1 #liftFirstValue: 4744202 false ) 
	#(110 1 #liftFirstValue: 4744200 false ) 
	#(110 1 #liftFirstValue: 4744199 false ) 
	#(107 2 #reduceActionForexpr_stmt1: 4521985 false ) 
	#(90 2 #reduceActionForeval_input1: 3309569 false ) 
	#(94 0 #nil 3551233 false ) 
	#(171 3 #reduceActionForatom8: 10129416 false ) 
	#(181 2 #reduceActionFortestlist2: 11214850 false ) 
	#(124 2 #reduceActionFordots1: 5833729 false ) 
	#(123 2 #reduceActionFordotopt_dotted_name3: 5724163 false ) 
	#(100 2 #reduceActionForvarargslist2: 3968002 false ) 
	#(100 2 #reduceActionForvarargslist4: 3968004 false ) 
	#(111 3 #reduceActionForprint_stmt2: 4938754 false ) 
	#(151 1 #reduceActionForsuite1: 8171521 false ) 
	#(171 3 #reduceActionForatom3: 10129411 false ) 
	#(174 2 #reduceActionFortestlist_comp1: 10656769 false ) 
	#(171 3 #reduceActionForatom3: 10129410 false ) 
	#(171 3 #reduceActionForatom5: 10129413 false ) 
	#(173 2 #reduceActionForlistmaker1: 10591233 false ) 
	#(186 2 #reduceActionFordictorsetmaker3: 11494403 false ) 
	#(171 3 #reduceActionForatom6: 10129414 false ) 
	#(105 3 #reduceActionForsimple_stmt1: 4387841 false ) 
	#(105 3 #reduceActionForsimple_stmt2: 4387842 false ) 
	#(157 3 #reduceActionForor_test2: 8751106 false ) 
	#(158 3 #reduceActionForand_test2: 8818690 false ) 
	#(161 2 #reduceActionForcomp_op11: 9034763 false ) 
	#(161 2 #reduceActionForcomp_op9: 9034761 false ) 
	#(160 3 #reduceActionForcomparison2: 8952834 false ) 
	#(162 3 #reduceActionForexpr2: 9201666 false ) 
	#(163 3 #reduceActionForxor_expr2: 9269250 false ) 
	#(164 3 #reduceActionForand_expr2: 9344002 false ) 
	#(165 3 #reduceActionForshift_expr2: 9422850 false ) 
	#(165 3 #reduceActionForshift_expr3: 9422851 false ) 
	#(166 3 #reduceActionForarith_expr2: 9567234 false ) 
	#(166 3 #reduceActionForarith_expr3: 9567235 false ) 
	#(167 3 #reduceActionForterm4: 9690116 false ) 
	#(167 3 #reduceActionForterm2: 9690114 false ) 
	#(167 3 #reduceActionForterm3: 9690115 false ) 
	#(167 3 #reduceActionForterm5: 9690117 false ) 
	#(179 0 #nil 11151361 false ) 
	#(170 2 #reduceActionFortrailers_opt2: 10077186 false ) 
	#(184 3 #reduceActionFortestlist1: 11398145 false ) 
	#(107 3 #reduceActionForexpr_stmt2: 4521986 false ) 
	#(109 1 #liftFirstValue: 4697090 false ) 
	#(109 1 #liftFirstValue: 4697089 false ) 
	#(91 2 #reduceActionFortrailers_opt2: 3354626 false ) 
	#(131 3 #reduceActionFordotted_name1: 6322177 false ) 
	#(191 1 #reduceActionForargument1: 12272641 false ) 
	#(94 1 #liftFirstValue: 3551234 false ) 
	#(92 4 #reduceActionFordecorator1: 3399681 false ) 
	#(198 3 #reduceActionFortestlist11: 12930049 false ) 
	#(135 3 #reduceActionFortest_test_opt2: 6619138 false ) 
	#(188 4 #reduceActionForclassdef1: 11765761 false ) 
	#(181 3 #reduceActionFortestlist1: 11214849 false ) 
	#(134 4 #reduceActionForexec_stmt2: 6510594 false ) 
	#(125 1 #reduceActionForimport_names_star1: 5870593 false ) 
	#(126 1 #reduceActionFordotted_as_name1: 5955585 false ) 
	#(122 4 #reduceActionForimport_from1: 5634049 false ) 
	#(129 1 #reduceActionFordotted_as_names2: 6164482 false ) 
	#(125 1 #reduceActionForimport_names_star3: 5870595 false ) 
	#(133 3 #reduceActionFornamelist1: 6465537 false ) 
	#(140 0 #nil 7099393 false ) 
	#(130 3 #reduceActionFordotted_as_names1: 6246401 false ) 
	#(127 3 #reduceActionFordotted_as_name2: 6029314 false ) 
	#(103 2 #reduceActionFortestlist2: 4265986 false ) 
	#(102 3 #reduceActionForfpdef2: 4207618 false ) 
	#(175 4 #reduceActionForlambdef1: 10726401 false ) 
	#(101 2 #reduceActionForinit_opt2: 4168706 false ) 
	#(100 3 #reduceActionForvarargslist5: 3968005 false ) 
	#(119 4 #reduceActionForraise_stmt3: 5348355 false ) 
	#(150 1 #reduceActionForexcept_clause1: 7951361 false ) 
	#(141 0 #nil 7178241 false ) 
	#(148 3 #reduceActionFornamelist1: 7718913 false ) 
	#(147 4 #reduceActionForwith_stmt1: 7665665 false ) 
	#(149 3 #reduceActionForwith_item2: 7796738 false ) 
	#(169 4 #reduceActionForpower2: 9979906 false ) 
	#(176 2 #reduceActionFortrailer4: 10805252 false ) 
	#(176 2 #reduceActionFortrailer1: 10805249 false ) 
	#(178 1 #reduceActionForsubscript2: 11035650 false ) 
	#(179 1 #liftFirstValue: 11151362 false ) 
	#(108 3 #reduceActionFornamelist1: 4626434 false ) 
	#(190 0 #reduceActionFormore_args1: 12048385 false ) 
	#(189 2 #reduceActionForarglist4: 11909124 false ) 
	#(93 3 #liftSecondValue: 3486722 false ) 
	#(191 2 #reduceActionForargument2: 12272642 false ) 
	#(189 2 #reduceActionForarglist2: 11909122 false ) 
	#(98 3 #liftSecondValue: 3857409 false ) 
	#(97 5 #reduceActionForfuncdef1: 3782657 false ) 
	#(128 2 #reduceActionForimport_as_names1: 6113281 false ) 
	#(103 3 #reduceActionFortestlist1: 4265985 false ) 
	#(100 4 #reduceActionForvarargslist1: 3968001 false ) 
	#(152 1 #reduceActionForstmts2: 8247298 false ) 
	#(150 2 #reduceActionForexcept_clause2: 7951362 false ) 
	#(145 0 #nil 7513089 false ) 
	#(142 5 #reduceActionForwhile_stmt1: 7222273 false ) 
	#(187 1 #liftFirstValue: 11672577 false ) 
	#(186 4 #reduceActionFordictorsetmaker2: 11494402 false ) 
	#(186 4 #reduceActionFordictorsetmaker1: 11494401 false ) 
	#(183 5 #reduceActionFortest2: 11302914 false ) 
	#(176 3 #reduceActionFortrailer2: 10805250 false ) 
	#(176 3 #reduceActionFortrailer3: 10805251 false ) 
	#(177 2 #reduceActionFortestlist2: 10939394 false ) 
	#(189 3 #reduceActionForarglist3: 11909123 false ) 
	#(191 3 #reduceActionForargument3: 12272643 false ) 
	#(189 3 #reduceActionFortestlist1: 11909121 false ) 
	#(126 3 #reduceActionFordotted_as_name2: 5955586 false ) 
	#(125 3 #reduceActionForimport_names_star2: 5870594 false ) 
	#(129 3 #reduceActionFordotted_as_names1: 6164481 false ) 
	#(139 6 #reduceActionForif_stmt1: 7018497 false ) 
	#(100 5 #reduceActionForvarargslist3: 3968003 false ) 
	#(119 6 #reduceActionForraise_stmt4: 5348356 false ) 
	#(152 2 #reduceActionFortrailers_opt2: 8247297 false ) 
	#(151 4 #reduceActionForsuite2: 8171522 false ) 
	#(144 6 #reduceActionFortry_stmt2: 7374850 false ) 
	#(144 6 #reduceActionFortry_stmt1: 7374849 false ) 
	#(146 3 #reduceActionForexcept_list2: 7565314 false ) 
	#(196 4 #reduceActionForcomp_for1: 12692481 false ) 
	#(193 4 #reduceActionForlist_for1: 12416001 false ) 
	#(153 1 #reduceActionFortestlist_safe1: 8485889 false ) 
	#(155 1 #liftFirstValue: 8631298 false ) 
	#(155 1 #liftFirstValue: 8631297 false ) 
	#(178 3 #reduceActionForsubscript1: 11035649 false ) 
	#(177 3 #reduceActionFortestlist1: 10939393 false ) 
	#(180 0 #nil 11172865 false ) 
	#(188 7 #reduceActionForclassdef2: 11765762 false ) 
	#(143 7 #reduceActionForfor_stmt1: 7296001 false ) 
	#(150 4 #reduceActionForexcept_clause4: 7951364 false ) 
	#(150 4 #reduceActionForexcept_clause3: 7951363 false ) 
	#(141 3 #reduceActionForelse_opt2: 7178242 false ) 
	#(146 4 #reduceActionForexcept_list1: 7565313 false ) 
	#(196 5 #reduceActionForcomp_for2: 12692482 false ) 
	#(195 1 #liftFirstValue: 12655617 false ) 
	#(195 1 #liftFirstValue: 12655618 false ) 
	#(193 5 #reduceActionForlist_for2: 12416002 false ) 
	#(192 1 #liftFirstValue: 12380161 false ) 
	#(192 1 #liftFirstValue: 12380162 false ) 
	#(178 4 #reduceActionForsubscript3: 11035651 false ) 
	#(190 3 #reduceActionFormore_args2: 12048386 false ) 
	#(190 3 #reduceActionFormore_args3: 12048387 false ) 
	#(145 3 #reduceActionForfinally_opt2: 7513090 false ) 
	#(197 2 #reduceActionForcomp_if1: 12819457 false ) 
	#(194 2 #reduceActionForlist_if1: 12545025 false ) 
	#(154 1 #reduceActionFornamelist2: 8565762 false ) 
	#(180 2 #reduceActionForsliceop2: 11172866 false ) 
	#(140 5 #reduceActionForelifs_opt2: 7099394 false ) 
	#(197 3 #reduceActionForcomp_if2: 12819458 false ) 
	#(156 4 #reduceActionForold_lambdef1: 8669185 false ) 
	#(194 3 #reduceActionForlist_if2: 12545026 false ) 
	#(153 4 #reduceActionFortestlist_safe2: 8485890 false ) 
	#(187 5 #reduceActionFormore_tests2: 11672578 false ) 
	#(154 3 #reduceActionFornamelist1: 8565761 false )
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
	^ #('"!="' '"%"' '"%="' '"&"' '"&="' '"*"' '"**"' '"**="' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"."' '"/"' '"//"' '"//="' '"/="' '":"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"<>"' '"="' '"=="' '">"' '">="' '">>"' '">>="' '"@"' '"^"' '"^="' '"`"' '"and"' '"as"' '"assert"' '"break"' '"class"' '"continue"' '"def"' '"del"' '"elif"' '"else"' '"except"' '"exec"' '"finally"' '"for"' '"from"' '"global"' '"if"' '"import"' '"in"' '"is"' '"lambda"' '"not"' '"or"' '"pass"' '"print"' '"raise"' '"return"' '"try"' '"while"' '"with"' '"yield"' '"|"' '"|="' '"~"' '<name>' '<string>' '<number>' '<emptyLine>' '<blankLine>' '<indent>' '<noindent>' '<comment>' '<whitespace>' '<NEWLINE>' '<lparen>' '<rparen>' '<lbrack>' '<rbrack>' '<lcurly>' '<rcurly>' 'B e g i n' 'file_input' 'single_input' 'eval_input' 'newline_opts' 'decorator' 'paren_arglist_opt' 'arglist_opt' 'decorators' 'decorated' 'funcdef' 'parameters' 'varargslist_opt' 'varargslist' 'init_opt' 'fpdef' 'fplist' 'stmt' 'simple_stmt' 'semicolon_opt' 'expr_stmt' 'assign_after' 'yield_or_testlist' 'augassign' 'print_stmt' 'del_stmt' 'pass_stmt' 'flow_stmt' 'break_stmt' 'continue_stmt' 'return_stmt' 'yield_stmt' 'raise_stmt' 'import_stmt' 'import_name' 'import_from' 'dotopt_dotted_name' 'dots' 'import_names_star' 'import_as_name' 'dotted_as_name' 'import_as_names' 'import_as_names_in' 'dotted_as_names' 'dotted_name' 'global_stmt' 'namelist' 'exec_stmt' 'test_test_opt' 'assert_stmt' 'small_stmt' 'compound_stmt' 'if_stmt' 'elifs_opt' 'else_opt' 'while_stmt' 'for_stmt' 'try_stmt' 'finally_opt' 'except_list' 'with_stmt' 'with_items' 'with_item' 'except_clause' 'suite' 'stmts' 'testlist_safe' 'old_tests' 'old_test' 'old_lambdef' 'or_test' 'and_test' 'not_test' 'comparison' 'comp_op' 'expr' 'xor_expr' 'and_expr' 'shift_expr' 'arith_expr' 'term' 'factor' 'power' 'trailers_opt' 'atom' 'strings' 'listmaker' 'testlist_comp' 'lambdef' 'trailer' 'subscriptlist' 'subscript' 'test_opt' 'sliceop' 'exprlist' 'comma_opt' 'test' 'testlist' 'testlist_opt' 'dictorsetmaker' 'more_tests' 'classdef' 'arglist' 'more_args' 'argument' 'list_iter' 'list_for' 'list_if' 'comp_iter' 'comp_for' 'comp_if' 'testlist1' 'yield_expr' '<DEDENT>' '<INDENT>' 'E O F' 'error')
]

{ #category : #generated }
PythonParser2 class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #PyFileInputNode #PyFileInputNode #PySingleInputNode #PyEvalInputNode #OrderedCollection #PyDecoratorNode #OrderedCollection #OrderedCollection #PyDecoratorsNode #PyDecoratedNode #PyFuncdefNode #PyVarArgListNode #PyVarArgListNode #OrderedCollection #PyInitOptNode #PyFpdefNode #OrderedCollection #PyRootNode #PySimpleStmtNode #SmaCCToken #PyExprStmtNode #OrderedCollection #Object #SmaCCToken #PyPrintNode #PyDelNode #PyPassNode #PyRootNode #PyBreakNode #PyContinueNode #PyReturnNode #PyYieldNode #PyRaiseNode #PyImportNode #PyImportNode #PyImportNode #PyDotoptDottedNameNode #PyDotsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyDottedNameNode #PyGlobalNode #OrderedCollection #PyExecNode #PyTestTestOptNode #PyAssertNode #PyRootNode #PyRootNode #PyIfNode #PyElifNode #PyElseNode #PyWhileNode #PyForNode #PyTryNode #PyFinallyNode #OrderedCollection #PyWithNode #OrderedCollection #PyWithItemNode #PyExceptClauseNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #PyRootNode #PyLambdaNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyCompOpNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyRootNode #PyPowerNode #OrderedCollection #PyRootNode #PyStringsNode #Object #Object #PyLambdaNode #PyTrailerNode #OrderedCollection #PySubscriptNode #PyRootNode #PySliceopNode #OrderedCollection #SmaCCToken #PyRootNode #OrderedCollection #OrderedCollection #Object #Object #PyClassdefNode #OrderedCollection #OrderedCollection #PyArgumentNode #PyRootNode #PyListForNode #PyListIfNode #PyRootNode #PyCompForNode #PyCompIfNode #PyRootNode #PyYieldNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
PythonParser2 class >> transitionTable [
^#(
#[1 0 6 0 10 0 6 0 13 0 6 0 33 0 6 0 36 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 48 0 6 0 50 0 6 0 51 0 6 0 52 0 6 0 53 0 6 0 54 0 6 0 57 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 62 0 6 0 63 0 6 0 64 0 6 0 65 0 6 0 66 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 73 0 6 0 80 0 6 0 81 0 6 0 83 0 6 0 85 0 17 0 88 0 6 0 202] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 141 0 80 0 145 0 81 0 149 0 83 0 153 0 85 0 157 0 89 0 161 0 92 0 165 0 95 0 249 0 96 0 249 0 97 0 177 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 0 249 0 138 0 249 0 139 0 249 0 142 0 249 0 143 0 249 0 144 0 249 0 147 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 0 249 0 188 1 89 0 199] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 93 0 90 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 97 0 184] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 1 101 0 80 0 145 0 81 0 149 0 83 0 153 0 85 0 161 0 92 0 165 0 95 1 105 0 96 1 105 0 97 1 105 0 104 1 105 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 1 105 0 138 1 105 0 139 1 105 0 142 1 105 0 143 1 105 0 144 1 105 0 147 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 105 0 188 1 89 0 199 0 0 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 117 0 168 1 117 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 121 0 168 1 121 0 169 1 65 0 171 1 65 0 172] 
#[1 1 125 0 71 1 129 0 131] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 133 0 175 1 133 0 183 1 137 0 198] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 141 0 135 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 145 0 175 1 145 0 183] 
#[0 0 10 0 21 0 80] 
#[0 1 149 0 71] 
#[0 0 14 0 21 0 80] 
#[0 1 153 0 71] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 157 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 161 0 181] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 165 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 157 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 169 0 181] 
#[1 1 173 0 15 1 125 0 71 1 177 0 123 1 181 0 124 1 185 0 131] 
#[1 1 189 0 71 1 193 0 133] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 197 0 175 1 197 0 183] 
#[1 1 125 0 71 1 201 0 127 1 205 0 130 1 209 0 131] 
#[1 1 213 0 6 1 217 0 7 0 18 0 20 1 221 0 71 1 225 0 81 1 229 0 99 1 233 0 100 1 237 0 102] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 241 0 159 1 241 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 0 22 0 21 0 80] 
#[1 0 21 0 10 0 25 0 13 0 26 0 21 1 245 0 31 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 26 0 80 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 249 0 184 1 253 0 185] 
#[1 0 21 0 10 0 25 0 13 0 30 0 21 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 30 0 80 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 1 0 175 2 1 0 183] 
#[1 0 21 0 10 0 25 0 13 0 26 0 21 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 26 0 80 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 249 0 184 2 5 0 185] 
#[0 2 9 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 13 0 175 2 13 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 2 17 0 148 2 21 0 149 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 25 0 175 2 25 0 183] 
#[1 0 21 0 10 0 25 0 13 0 26 0 21 0 26 0 27 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 26 0 80 0 145 0 81 0 26 0 82 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 249 0 184 2 29 0 185] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 2 33 0 168 2 33 0 169 1 65 0 171 1 65 0 172] 
#[0 0 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 0 38 0 1 0 38 0 2 0 38 0 3 0 38 0 4 0 38 0 5 0 38 0 6 0 38 0 7 0 38 0 8 0 38 0 9 0 38 0 10 0 38 0 11 0 38 0 12 0 38 0 13 0 38 0 14 0 38 0 15 0 38 0 16 0 38 0 17 0 38 0 18 0 38 0 19 0 38 0 20 0 38 0 21 0 38 0 22 0 38 0 23 0 38 0 24 0 38 0 25 0 38 0 26 0 38 0 27 0 38 0 28 0 38 0 29 0 38 0 30 0 38 0 31 0 38 0 32 0 38 0 34 0 38 0 35 0 38 0 36 0 38 0 37 0 38 0 38 0 38 0 46 0 38 0 50 0 38 0 53 0 38 0 55 0 38 0 56 0 38 0 58 0 38 0 59 0 38 0 68 0 38 0 69 0 133 0 72 0 38 0 80 0 38 0 81 0 38 0 82 0 38 0 83 0 38 0 84 0 38 0 86 2 37 0 172 0 38 0 202] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 0 46 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 2 41 0 82 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 45 0 174 2 49 0 175 2 49 0 183 2 45 0 184 2 57 0 199] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 2 61 0 84 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 65 0 173 2 69 0 175 2 69 0 183 2 65 0 184] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 2 77 0 86 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 81 0 175 2 81 0 183 2 89 0 184 2 89 0 186] 
#[0 0 0 0 202] 
#[0 0 50 0 33 0 41 0 43] 
#[1 0 29 0 33 0 45 0 41 0 53 0 43 2 93 0 92 2 97 0 97 2 101 0 188] 
#[0 0 54 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 58 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 62 0 202] 
#[0 0 66 0 21 0 80] 
#[0 0 70 0 21 0 80] 
#[0 0 74 0 21 0 80] 
#[0 0 78 0 21 0 80] 
#[0 0 82 0 21 0 80] 
#[0 0 86 0 21 0 80] 
#[0 0 90 0 21 0 80] 
#[0 0 94 0 21 0 80] 
#[0 0 98 0 21 0 80] 
#[0 0 102 0 21 0 80] 
#[0 0 106 0 21 0 80] 
#[0 0 110 0 21 0 80] 
#[0 0 114 0 21 0 80] 
#[0 0 118 0 21 0 80] 
#[0 0 122 0 21 0 80] 
#[0 0 126 0 21 0 80] 
#[1 2 105 0 21 0 130 0 80 2 109 0 106] 
#[0 2 113 0 80] 
#[0 0 134 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 138 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 142 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 146 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 150 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 154 0 3 0 154 0 5 0 154 0 8 0 154 0 9 0 154 0 11 0 154 0 12 0 154 0 14 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 24 0 154 0 27 0 154 0 32 0 154 0 35 0 154 0 36 0 154 0 38 0 154 0 50 2 117 0 53 0 154 0 69 0 154 0 80 0 154 0 82 0 154 0 84 0 154 0 86 0 154 0 202] 
#[1 0 158 0 3 0 158 0 5 0 158 0 8 0 158 0 9 0 158 0 11 0 158 0 12 0 158 0 14 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 24 0 158 0 27 0 158 0 32 0 158 0 35 0 158 0 36 0 158 0 38 0 158 0 46 0 158 0 50 0 158 0 53 2 121 0 59 0 158 0 69 0 158 0 80 0 158 0 82 0 158 0 84 0 158 0 86 0 158 0 202] 
#[1 0 162 0 3 0 162 0 5 0 162 0 8 0 162 0 9 0 162 0 11 0 162 0 12 0 162 0 14 0 162 0 18 0 162 0 19 0 162 0 20 0 162 0 21 0 162 0 24 0 162 0 27 0 162 0 32 0 162 0 35 0 162 0 36 2 125 0 37 0 162 0 38 0 162 0 46 0 162 0 50 0 162 0 53 0 162 0 59 0 162 0 69 0 162 0 80 0 162 0 82 0 162 0 84 0 162 0 86 0 162 0 202] 
#[0 0 166 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 2 129 0 1 0 170 0 3 0 170 0 5 0 170 0 8 0 170 0 9 0 170 0 11 0 170 0 12 0 170 0 14 0 170 0 18 0 170 0 19 0 170 0 20 0 170 0 21 2 133 0 22 0 170 0 24 2 137 0 25 2 141 0 26 0 170 0 27 2 145 0 28 2 149 0 29 2 153 0 30 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 46 0 170 0 50 0 170 0 53 2 157 0 55 2 161 0 56 2 165 0 58 0 170 0 59 0 170 0 69 0 170 0 80 0 170 0 82 0 170 0 84 0 170 0 86 2 169 0 161 0 170 0 202] 
#[1 0 174 0 1 0 174 0 3 0 174 0 5 0 174 0 8 0 174 0 9 0 174 0 11 0 174 0 12 0 174 0 14 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 174 0 24 0 174 0 25 0 174 0 26 0 174 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 32 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 46 0 174 0 50 0 174 0 53 0 174 0 55 0 174 0 56 0 174 0 58 0 174 0 59 2 173 0 68 0 174 0 69 0 174 0 80 0 174 0 82 0 174 0 84 0 174 0 86 0 174 0 202] 
#[1 0 178 0 1 0 178 0 3 0 178 0 5 0 178 0 8 0 178 0 9 0 178 0 11 0 178 0 12 0 178 0 14 0 178 0 18 0 178 0 19 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 24 0 178 0 25 0 178 0 26 0 178 0 27 0 178 0 28 0 178 0 29 0 178 0 30 0 178 0 32 2 177 0 34 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 46 0 178 0 50 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 68 0 178 0 69 0 178 0 80 0 178 0 82 0 178 0 84 0 178 0 86 0 178 0 202] 
#[1 0 182 0 1 0 182 0 3 2 181 0 4 0 182 0 5 0 182 0 8 0 182 0 9 0 182 0 11 0 182 0 12 0 182 0 14 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 32 0 182 0 34 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 46 0 182 0 50 0 182 0 53 0 182 0 55 0 182 0 56 0 182 0 58 0 182 0 59 0 182 0 68 0 182 0 69 0 182 0 80 0 182 0 82 0 182 0 84 0 182 0 86 0 182 0 202] 
#[1 0 186 0 1 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 8 0 186 0 9 0 186 0 11 0 186 0 12 0 186 0 14 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 21 0 186 0 22 2 185 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 29 0 186 0 30 2 189 0 31 0 186 0 32 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 46 0 186 0 50 0 186 0 53 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 59 0 186 0 68 0 186 0 69 0 186 0 80 0 186 0 82 0 186 0 84 0 186 0 86 0 186 0 202] 
#[1 0 190 0 1 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 8 0 190 0 9 2 193 0 10 0 190 0 11 0 190 0 12 2 197 0 13 0 190 0 14 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 21 0 190 0 22 0 190 0 23 0 190 0 24 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 46 0 190 0 50 0 190 0 53 0 190 0 55 0 190 0 56 0 190 0 58 0 190 0 59 0 190 0 68 0 190 0 69 0 190 0 80 0 190 0 82 0 190 0 84 0 190 0 86 0 190 0 202] 
#[1 0 194 0 1 2 201 0 2 0 194 0 3 0 194 0 4 0 194 0 5 2 205 0 6 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 2 209 0 16 2 213 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 27 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 34 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 46 0 194 0 50 0 194 0 53 0 194 0 55 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 68 0 194 0 69 0 194 0 80 0 194 0 82 0 194 0 84 0 194 0 86 0 194 0 202] 
#[0 0 198 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 0 202 0 1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 34 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 46 0 202 0 50 0 202 0 53 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 59 0 202 0 68 0 202 0 69 0 202 0 80 0 202 0 81 0 202 0 82 0 202 0 83 0 202 0 84 0 202 0 86 2 217 0 170 0 202 0 202] 
#[0 0 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 0 210 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 0 214 0 3 0 214 0 5 0 214 0 8 0 214 0 9 0 214 0 11 2 221 0 12 0 214 0 14 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 24 0 214 0 27 0 214 0 32 0 214 0 35 0 214 0 69 0 214 0 80 0 214 0 82 0 214 0 84 0 214 0 86 2 225 0 182 0 214 0 202] 
#[1 3 25 0 3 3 25 0 5 3 25 0 8 3 25 0 9 3 25 0 11 3 25 0 14 3 25 0 18 3 25 0 19 0 218 0 21 3 25 0 24 0 218 0 27 3 25 0 32 3 25 0 35 3 25 0 69 0 218 0 80 3 21 0 108 3 25 0 110] 
#[0 0 222 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 226 0 21 0 80] 
#[0 0 0 0 202] 
#[1 0 230 0 80 3 29 0 91 0 230 0 202] 
#[0 0 234 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 202] 
#[0 0 238 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 202] 
#[0 0 242 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 246 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 0 254 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 1 2 0 12 0 15 0 21 0 38 0 54 0 80 0 81] 
#[1 3 33 0 15 1 6 0 80 3 37 0 81 3 41 0 93] 
#[1 3 45 0 12 1 10 0 36] 
#[0 3 49 0 36] 
#[0 1 14 0 21 0 80] 
#[1 3 53 0 12 1 18 0 21 1 18 0 80] 
#[1 3 57 0 20 3 61 0 81] 
#[1 3 65 0 81 3 69 0 98] 
#[1 3 73 0 12 0 214 0 21 0 214 0 55 0 214 0 80 3 77 0 182] 
#[0 1 22 0 21 0 80] 
#[1 1 26 0 21 3 81 0 55 1 26 0 80] 
#[0 3 85 0 55] 
#[0 1 30 0 15 0 54 0 71] 
#[0 3 89 0 54] 
#[1 3 93 0 15 1 34 0 54 1 125 0 71 3 97 0 131] 
#[1 3 33 0 15 1 38 0 54] 
#[0 1 42 0 12 0 21 0 80] 
#[1 3 101 0 12 1 46 0 21 1 46 0 80] 
#[0 3 105 0 20] 
#[0 1 50 0 12 0 21 0 80] 
#[1 3 109 0 12 1 54 0 21 1 54 0 80] 
#[1 1 58 0 12 3 33 0 15 1 58 0 21 3 113 0 38 1 58 0 80] 
#[0 3 117 0 71] 
#[0 3 121 0 71] 
#[0 1 62 0 12 0 20 0 27 0 82] 
#[1 1 221 0 71 1 225 0 81 3 125 0 102 3 129 0 103] 
#[0 3 133 0 20] 
#[0 1 66 0 20 0 82] 
#[1 1 70 0 12 1 70 0 20 3 137 0 27 1 70 0 82 3 141 0 101] 
#[0 1 74 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 3 145 0 184] 
#[0 1 78 0 21 0 27 0 80 0 82] 
#[0 1 82 0 21 0 80] 
#[1 3 149 0 12 1 86 0 21 1 86 0 80] 
#[0 1 90 0 21 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 3 161 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 3 165 0 20] 
#[1 3 169 0 12 3 173 0 20] 
#[0 1 94 0 12 0 20] 
#[1 1 98 0 12 1 98 0 20 3 177 0 38] 
#[0 1 102 0 21 0 27 0 80 0 82] 
#[0 1 106 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 1 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 1 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 3 181 0 82] 
#[1 2 221 0 12 3 185 0 50 0 214 0 82 2 225 0 182 3 189 0 196] 
#[0 1 118 0 82] 
#[0 3 193 0 82] 
#[0 1 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 3 197 0 84] 
#[1 2 221 0 12 3 201 0 50 0 214 0 84 2 225 0 182 3 205 0 193] 
#[0 1 126 0 84] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 2 221 0 12 3 209 0 20 3 185 0 50 0 214 0 86 2 225 0 182 3 213 0 196] 
#[0 1 134 0 86] 
#[0 3 217 0 86] 
#[0 1 138 0 33 0 41 0 43] 
#[0 1 142 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 1 146 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 1 150 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 221 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 3 225 0 80] 
#[0 1 154 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 3 229 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 3 233 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 3 237 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 1 158 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 162 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 166 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 170 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 174 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 178 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 182 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 186 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[1 1 190 0 10 1 190 0 13 1 190 0 36 3 241 0 58 1 190 0 70 1 190 0 71 1 190 0 72 1 190 0 73 1 190 0 81 1 190 0 83 1 190 0 85] 
#[0 3 245 0 55] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 3 249 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 3 253 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 1 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 5 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 9 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 13 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 17 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 21 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 25 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 29 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 33 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 37 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 1 194 0 1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 5 1 194 0 6 4 41 0 7 1 194 0 8 1 194 0 9 1 194 0 10 1 194 0 11 1 194 0 12 1 194 0 13 1 194 0 14 4 45 0 15 1 194 0 16 1 194 0 17 1 194 0 18 1 194 0 19 1 194 0 20 1 194 0 21 1 194 0 22 1 194 0 23 1 194 0 24 1 194 0 25 1 194 0 26 1 194 0 27 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 34 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 46 1 194 0 50 1 194 0 53 1 194 0 55 1 194 0 56 1 194 0 58 1 194 0 59 1 194 0 68 1 194 0 69 1 194 0 80 4 49 0 81 1 194 0 82 4 53 0 83 1 194 0 84 1 194 0 86 4 57 0 176 1 194 0 202] 
#[1 1 198 0 3 1 198 0 5 1 198 0 8 1 198 0 9 0 21 0 10 1 198 0 11 0 25 0 13 1 198 0 14 1 198 0 18 1 198 0 19 1 198 0 20 1 198 0 21 1 198 0 24 1 198 0 27 1 198 0 32 1 198 0 35 0 33 0 36 0 85 0 57 0 89 0 58 1 198 0 69 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 1 198 0 80 0 145 0 81 1 198 0 82 0 149 0 83 1 198 0 84 0 153 0 85 1 198 0 86 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 4 61 0 184 1 198 0 202] 
#[0 1 202 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 1 206 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 210 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 214 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 218 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 222 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 226 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 230 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 234 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 238 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 242 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 246 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 1 250 0 10 0 13 0 36 0 57 0 58 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[1 1 254 0 21 4 65 0 27 1 254 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 69 0 109 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 4 69 0 184 4 69 0 199] 
#[1 4 81 0 80 2 2 0 202] 
#[0 4 85 0 71] 
#[1 4 89 0 6 4 93 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 2 6 0 82 0 149 0 83 0 153 0 85 4 97 0 94 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 101 0 175 4 101 0 183 4 97 0 189 4 109 0 191] 
#[0 4 113 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 133 0 175 1 133 0 183 4 117 0 198] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 121 0 175 4 121 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 4 125 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 26 0 82 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 249 0 184 4 129 0 185] 
#[1 1 213 0 6 1 217 0 7 1 221 0 71 1 225 0 81 0 18 0 82 4 133 0 99 1 233 0 100 1 237 0 102] 
#[0 4 137 0 20] 
#[1 0 21 0 10 0 25 0 13 1 198 0 21 0 33 0 36 1 198 0 55 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 1 198 0 80 0 145 0 81 0 149 0 83 0 153 0 85 1 157 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 141 0 181] 
#[0 2 14 0 21 0 55 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 4 145 0 135 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 145 0 175 1 145 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 4 149 0 184] 
#[1 4 153 0 6 4 157 0 71 4 161 0 81 4 165 0 125 4 169 0 126 4 173 0 128 4 177 0 129] 
#[0 2 18 0 15 0 54 0 71] 
#[1 3 33 0 15 2 22 0 54] 
#[0 4 181 0 71] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 4 185 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[1 1 125 0 71 4 189 0 127 1 209 0 131] 
#[0 4 193 0 71] 
#[1 4 197 0 12 2 26 0 20 2 26 0 82] 
#[0 2 30 0 20 0 82] 
#[1 4 201 0 12 0 214 0 82 4 205 0 182] 
#[0 4 209 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 213 0 175 4 213 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 217 0 175 4 217 0 183] 
#[1 4 221 0 12 0 214 0 20 0 214 0 82 4 225 0 182] 
#[0 2 34 0 21 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 229 0 175 4 229 0 183] 
#[0 4 233 0 201] 
#[0 2 38 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 4 237 0 47 4 241 0 49 4 245 0 146 4 249 0 150] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 4 253 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 5 1 0 149 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 2 25 0 175 2 25 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 5 5 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 5 9 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 2 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 157 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 13 0 181] 
#[0 2 46 0 82] 
#[0 2 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 2 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 157 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 17 0 181] 
#[0 2 58 0 84] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 21 0 175 5 21 0 183] 
#[0 2 62 0 86] 
#[0 2 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 2 70 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 2 74 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 5 25 0 46] 
#[0 2 78 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 46 0 50 0 53 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 82 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 46 0 50 0 53 0 59 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 86 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 2 90 0 10 0 13 0 36 0 70 0 71 0 72 0 73 0 81 0 83 0 85] 
#[0 2 94 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 59 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 98 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 102 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 106 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 110 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 114 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 118 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 122 0 1 0 3 0 4 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 126 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 130 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 134 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 138 0 1 0 3 0 4 0 5 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 5 29 0 168 5 29 0 169 1 65 0 171 1 65 0 172] 
#[0 5 33 0 71] 
#[1 4 89 0 6 4 93 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 5 37 0 82 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 101 0 175 4 101 0 183 5 41 0 189 4 109 0 191] 
#[1 0 21 0 10 0 25 0 13 5 45 0 15 2 142 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 61 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 183] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 2 150 0 3 0 5 0 8 0 9 0 11 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 69 0 80 0 82 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 5 65 0 109 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 5 65 0 184 5 65 0 199] 
#[0 2 154 0 21 0 80] 
#[0 2 158 0 21 0 27 0 80] 
#[0 2 162 0 21 0 27 0 80] 
#[0 2 166 0 80 0 202] 
#[0 2 170 0 12 0 15 0 21 0 38 0 54 0 80 0 81] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 69 0 175 5 69 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 73 0 175 5 73 0 183] 
#[0 5 77 0 82] 
#[1 2 174 0 12 5 81 0 27 3 185 0 50 2 174 0 82 5 85 0 196] 
#[0 2 178 0 82] 
#[1 5 89 0 12 0 214 0 82 5 93 0 182] 
#[0 2 182 0 33 0 41 0 43] 
#[0 2 186 0 36] 
#[0 2 190 0 21 0 80] 
#[0 2 194 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 5 97 0 82] 
#[0 5 101 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 5 105 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 2 198 0 21 0 55 0 80] 
#[0 2 202 0 21 0 80] 
#[0 5 109 0 20] 
#[0 2 206 0 21 0 80] 
#[1 2 210 0 12 2 210 0 21 5 113 0 38 2 210 0 80 2 210 0 82] 
#[1 4 157 0 71 4 169 0 126 5 117 0 128 4 177 0 129] 
#[0 2 214 0 21 0 80] 
#[0 2 218 0 12 0 21 0 80 0 82] 
#[0 2 222 0 21 0 80] 
#[1 5 121 0 12 0 214 0 21 0 214 0 80 0 214 0 82 5 125 0 182] 
#[0 2 226 0 12 0 21 0 80] 
#[1 2 230 0 10 2 230 0 13 2 230 0 33 2 230 0 36 2 230 0 39 2 230 0 40 2 230 0 41 2 230 0 42 2 230 0 43 2 230 0 44 2 230 0 45 2 230 0 46 2 230 0 48 2 230 0 50 2 230 0 51 2 230 0 52 2 230 0 53 2 230 0 54 2 230 0 57 2 230 0 58 2 230 0 60 2 230 0 61 2 230 0 62 2 230 0 63 2 230 0 64 2 230 0 65 2 230 0 66 2 230 0 67 2 230 0 70 2 230 0 71 2 230 0 72 2 230 0 73 2 230 0 80 2 230 0 81 2 230 0 83 2 230 0 85 5 129 0 140 2 230 0 200 2 230 0 202] 
#[0 2 234 0 12 0 21 0 80] 
#[0 2 238 0 12 0 21 0 80] 
#[0 5 133 0 7] 
#[1 1 221 0 71 1 225 0 81 1 198 0 82 3 125 0 102 5 137 0 103] 
#[0 2 242 0 82] 
#[0 2 246 0 12 0 20 0 27 0 82] 
#[0 2 250 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 2 254 0 12 0 20 0 82] 
#[1 1 213 0 6 1 217 0 7 1 198 0 20 1 221 0 71 1 225 0 81 1 198 0 82 5 141 0 100 1 237 0 102] 
#[0 3 2 0 20 0 82] 
#[1 5 145 0 12 3 6 0 21 3 6 0 80] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 0 161 0 92 0 165 0 95 5 149 0 96 5 149 0 97 5 149 0 104 5 149 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 5 149 0 138 5 149 0 139 5 149 0 142 5 149 0 143 5 149 0 144 5 149 0 147 5 153 0 152 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 5 149 0 188 1 89 0 199] 
#[1 0 21 0 10 0 25 0 13 3 10 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 157 0 175 5 157 0 183] 
#[0 5 161 0 20] 
#[1 3 14 0 10 3 14 0 13 3 14 0 33 3 14 0 36 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 5 165 0 46 4 237 0 47 3 14 0 48 3 14 0 49 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 54 3 14 0 57 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 70 3 14 0 71 3 14 0 72 3 14 0 73 3 14 0 80 3 14 0 81 3 14 0 83 3 14 0 85 5 169 0 141 5 173 0 150 3 14 0 200 3 14 0 202] 
#[0 5 177 0 20] 
#[1 3 14 0 10 3 14 0 13 3 14 0 33 3 14 0 36 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 5 165 0 46 3 14 0 48 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 54 3 14 0 57 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 70 3 14 0 71 3 14 0 72 3 14 0 73 3 14 0 80 3 14 0 81 3 14 0 83 3 14 0 85 5 181 0 141 3 14 0 200 3 14 0 202] 
#[0 3 18 0 12 0 20] 
#[0 3 22 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 3 26 0 12 0 20] 
#[0 5 185 0 55] 
#[0 5 189 0 55] 
#[1 5 193 0 12 3 185 0 50 0 214 0 86 5 201 0 182 5 201 0 187 5 205 0 196] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 209 0 175 5 209 0 183] 
#[0 3 30 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 3 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 3 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 5 213 0 82] 
#[0 5 217 0 15] 
#[0 5 221 0 84] 
#[1 5 225 0 12 0 214 0 84 5 229 0 182] 
#[0 5 233 0 20] 
#[1 3 42 0 12 3 46 0 20 3 42 0 84] 
#[0 3 50 0 21 0 27 0 80] 
#[1 5 237 0 12 3 54 0 82 5 241 0 190] 
#[0 3 58 0 82] 
#[0 3 62 0 80] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 245 0 175 5 245 0 183] 
#[0 3 66 0 12 0 82] 
#[1 4 89 0 6 4 93 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 1 198 0 82 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 101 0 175 4 101 0 183 5 249 0 189 4 109 0 191] 
#[0 3 70 0 82] 
#[0 5 253 0 20] 
#[0 3 74 0 20] 
#[0 3 78 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 1 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 6 5 0 71] 
#[0 6 9 0 82] 
#[1 1 198 0 21 4 157 0 71 1 198 0 80 1 198 0 82 6 13 0 126] 
#[0 3 82 0 21 0 80 0 82] 
#[1 3 14 0 10 3 14 0 13 3 14 0 33 3 14 0 36 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 6 17 0 45 5 165 0 46 3 14 0 48 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 54 3 14 0 57 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 70 3 14 0 71 3 14 0 72 3 14 0 73 3 14 0 80 3 14 0 81 3 14 0 83 3 14 0 85 6 21 0 141 3 14 0 200 3 14 0 202] 
#[0 6 25 0 71] 
#[0 3 86 0 82] 
#[0 3 90 0 20 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 29 0 175 6 29 0 183] 
#[0 3 94 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85 0 200] 
#[1 0 21 0 10 0 25 0 13 0 29 0 33 0 33 0 36 0 37 0 39 0 41 0 40 0 45 0 41 0 49 0 42 0 53 0 43 0 57 0 44 0 61 0 48 0 65 0 50 0 69 0 51 0 73 0 52 0 77 0 53 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 109 0 64 0 113 0 65 0 117 0 66 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 0 161 0 92 0 165 0 95 6 33 0 96 6 33 0 97 6 33 0 104 6 33 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 33 0 138 6 33 0 139 6 33 0 142 6 33 0 143 6 33 0 144 6 33 0 147 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 6 33 0 188 1 89 0 199 6 37 0 200] 
#[1 6 41 0 12 3 98 0 20 6 45 0 38] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 49 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 6 53 0 20] 
#[1 3 102 0 10 3 102 0 13 3 102 0 33 3 102 0 36 3 102 0 39 3 102 0 40 3 102 0 41 3 102 0 42 3 102 0 43 3 102 0 44 3 102 0 48 6 57 0 49 3 102 0 50 3 102 0 51 3 102 0 52 3 102 0 53 3 102 0 54 3 102 0 57 3 102 0 58 3 102 0 60 3 102 0 61 3 102 0 62 3 102 0 63 3 102 0 64 3 102 0 65 3 102 0 66 3 102 0 67 3 102 0 70 3 102 0 71 3 102 0 72 3 102 0 73 3 102 0 80 3 102 0 81 3 102 0 83 3 102 0 85 6 61 0 145 3 102 0 200 3 102 0 202] 
#[0 6 65 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 69 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 3 106 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 6 73 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 6 81 0 153 6 85 0 155 6 85 0 156 6 85 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 198 0 86 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 97 0 175 6 97 0 183] 
#[0 3 110 0 86] 
#[0 3 114 0 86] 
#[0 3 118 0 86] 
#[0 3 122 0 3 0 5 0 8 0 9 0 11 0 12 0 14 0 18 0 19 0 20 0 21 0 24 0 27 0 32 0 35 0 36 0 38 0 50 0 69 0 80 0 82 0 84 0 86 0 202] 
#[0 3 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[0 6 101 0 15] 
#[0 3 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 34 0 35 0 36 0 37 0 38 0 46 0 50 0 53 0 55 0 56 0 58 0 59 0 68 0 69 0 80 0 81 0 82 0 83 0 84 0 86 0 202] 
#[1 0 21 0 10 0 25 0 13 5 45 0 15 2 142 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 1 198 0 84 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 5 61 0 175 6 105 0 177 5 53 0 178 5 57 0 179 5 61 0 183] 
#[0 3 134 0 84] 
#[1 0 21 0 10 2 142 0 12 0 25 0 13 2 142 0 20 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 2 142 0 84 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 109 0 175 6 109 0 179 6 109 0 183] 
#[1 6 117 0 7 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 4 101 0 175 4 101 0 183 6 121 0 191] 
#[0 3 138 0 82] 
#[0 3 142 0 12 0 82] 
#[0 3 146 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 125 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[1 3 14 0 10 3 14 0 13 3 14 0 33 3 14 0 36 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 43 3 14 0 44 5 165 0 46 3 14 0 48 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 54 3 14 0 57 3 14 0 58 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 70 3 14 0 71 3 14 0 72 3 14 0 73 3 14 0 80 3 14 0 81 3 14 0 83 3 14 0 85 6 129 0 141 3 14 0 200 3 14 0 202] 
#[0 3 150 0 12 0 21 0 80 0 82] 
#[0 3 154 0 21 0 80] 
#[0 3 158 0 12 0 21 0 80 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 133 0 175 6 133 0 183] 
#[0 3 162 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 3 166 0 20 0 82] 
#[0 3 170 0 21 0 80] 
#[0 3 174 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 81 0 83 0 85 0 200] 
#[0 3 178 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 137 0 175 6 137 0 183] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 141 0 175 6 141 0 183] 
#[0 3 182 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 145 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 6 149 0 20] 
#[0 3 186 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 153 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 3 190 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 3 194 0 12 3 185 0 50 6 157 0 53 3 194 0 82 3 194 0 86 6 161 0 195 6 161 0 196 6 161 0 197] 
#[1 1 213 0 6 1 217 0 7 0 18 0 20 1 221 0 71 1 225 0 81 6 173 0 99 1 233 0 100 1 237 0 102] 
#[1 3 201 0 50 6 177 0 53 3 198 0 84 6 181 0 192 6 181 0 193 6 181 0 194] 
#[1 6 193 0 12 3 202 0 50 3 202 0 53 3 202 0 84] 
#[0 3 206 0 12 0 50 0 53 0 82 0 84 0 86] 
#[0 3 210 0 12 0 50 0 53 0 82 0 84 0 86] 
#[0 6 197 0 20] 
#[0 3 214 0 12 0 84] 
#[0 3 218 0 84] 
#[1 3 222 0 12 6 201 0 20 3 222 0 84 6 205 0 180] 
#[0 3 46 0 12 0 20 0 84] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 209 0 175 6 209 0 183] 
#[1 5 237 0 12 3 54 0 82 6 213 0 190] 
#[0 3 226 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 3 230 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 6 217 0 20] 
#[0 3 234 0 20] 
#[0 3 238 0 20] 
#[0 3 242 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 221 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 3 246 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 6 225 0 155 6 225 0 156 6 225 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 3 250 0 12 0 82 0 86] 
#[0 3 254 0 12 0 82 0 86] 
#[0 4 2 0 12 0 82 0 86] 
#[0 6 229 0 20] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 6 233 0 155 6 233 0 156 6 233 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 4 6 0 84] 
#[0 4 10 0 84] 
#[0 4 14 0 84] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 6 237 0 154 6 241 0 155 6 241 0 156 6 241 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 245 0 175 6 245 0 183] 
#[1 0 21 0 10 2 142 0 12 0 25 0 13 0 33 0 36 0 85 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 2 142 0 84 0 153 0 85 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 6 249 0 175 6 249 0 179 6 249 0 183] 
#[0 4 18 0 12 0 84] 
#[0 4 22 0 82] 
#[0 4 26 0 82] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 0 37 0 39 0 41 0 40 0 49 0 42 0 57 0 44 0 61 0 48 0 69 0 51 0 73 0 52 0 81 0 54 0 85 0 57 0 89 0 58 0 93 0 60 0 97 0 61 0 101 0 62 0 105 0 63 0 121 0 67 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 3 153 0 80 0 145 0 81 0 149 0 83 0 153 0 85 3 157 0 105 0 245 0 107 0 245 0 111 0 245 0 112 0 245 0 113 0 245 0 114 0 245 0 115 0 245 0 116 0 245 0 117 0 245 0 118 0 245 0 119 0 245 0 120 0 245 0 121 0 245 0 122 0 245 0 132 0 245 0 134 0 245 0 136 0 245 0 137 6 253 0 151 1 17 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172 1 77 0 175 1 77 0 183 1 81 0 184 1 89 0 199] 
#[0 4 30 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[1 4 34 0 12 3 185 0 50 6 157 0 53 4 34 0 82 4 34 0 86 7 1 0 195 7 1 0 196 7 1 0 197] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 0 153 0 85 7 5 0 155 7 5 0 156 7 5 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[1 3 201 0 50 6 177 0 53 4 38 0 84 7 9 0 192 7 9 0 193 7 9 0 194] 
#[1 7 13 0 12 0 214 0 50 0 214 0 53 0 214 0 84 7 17 0 182] 
#[0 4 42 0 12 0 50 0 53 0 84] 
#[1 5 193 0 12 0 214 0 86 7 21 0 182 7 21 0 187] 
#[0 4 46 0 12 0 84] 
#[0 4 50 0 10 0 13 0 33 0 36 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 48 0 50 0 51 0 52 0 53 0 54 0 57 0 58 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 70 0 71 0 72 0 73 0 80 0 81 0 83 0 85 0 200 0 202] 
#[0 4 54 0 12 0 82 0 86] 
#[0 4 58 0 12 0 50 0 53 0 82 0 84 0 86] 
#[0 4 62 0 84] 
#[1 0 21 0 10 0 25 0 13 0 33 0 36 1 198 0 50 1 198 0 53 6 77 0 57 0 89 0 58 0 125 0 70 0 129 0 71 0 133 0 72 0 137 0 73 0 145 0 81 0 149 0 83 1 198 0 84 0 153 0 85 7 25 0 155 7 25 0 156 7 25 0 157 1 21 0 158 1 25 0 159 1 25 0 160 1 33 0 162 1 37 0 163 1 41 0 164 1 45 0 165 1 49 0 166 1 53 0 167 1 57 0 168 1 57 0 169 1 65 0 171 1 65 0 172] 
#[0 4 66 0 50 0 53 0 84] 
#[0 4 70 0 86] 
#[0 4 74 0 12 0 50 0 53 0 84]
	).
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
PythonParser2 >> reduceActionForstrings1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result strings.
	^ result
]

{ #category : #'generated-reduction actions' }
PythonParser2 >> reduceActionForstrings2: nodes [
	| result |
	result := PyStringsNode new.
	result addToken: (nodes at: 1) to: result strings.
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
