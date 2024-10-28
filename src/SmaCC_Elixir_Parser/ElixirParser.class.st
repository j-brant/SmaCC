Class {
	#name : #ElixirParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 37 0 246] 
#[ 0 38 1 2] 
#[ 0 110 1 10] 
#[ 0 110 1 10 1 137] 
#[ 0 110 1 10 1 141] 
#[ 0 110 1 10 1 145] 
#[ 0 110 1 10 1 149] 
#[ 0 110 1 10 1 153] 
#[ 0 110 1 10 1 157] 
#[ 0 110 1 10 1 161] 
#[ 0 110 1 10 1 165] 
#[ 0 110 1 10 1 169] 
#[ 0 110 1 10 1 173] 
#[ 0 110 1 10 1 177] 
#[ 0 110 1 10 1 181] 
#[ 0 110 1 10 1 185] 
#[ 0 110 1 10 1 189] 
#[ 0 110 1 10 1 193] 
#[ 0 118 1 14] 
#[ 0 110 1 22] 
#[ 0 110 1 22 1 137] 
#[ 0 110 1 22 1 141] 
#[ 0 110 1 22 1 145] 
#[ 0 110 1 22 1 149] 
#[ 0 110 1 22 1 153] 
#[ 0 110 1 22 1 157] 
#[ 0 110 1 22 1 161] 
#[ 0 110 1 22 1 165] 
#[ 0 110 1 22 1 169] 
#[ 0 110 1 22 1 173] 
#[ 0 110 1 22 1 177] 
#[ 0 110 1 22 1 181] 
#[ 0 110 1 22 1 185] 
#[ 0 110 1 22 1 189] 
#[ 0 110 1 22 1 193] 
#[ 0 118 1 26] 
#[ 0 110 1 178] 
#[ 0 110 1 137 1 178] 
#[ 0 110 1 141 1 178] 
#[ 0 110 1 145 1 178] 
#[ 0 110 1 149 1 178] 
#[ 0 110 1 153 1 178] 
#[ 0 110 1 157 1 178] 
#[ 0 110 1 161 1 178] 
#[ 0 110 1 165 1 178] 
#[ 0 110 1 169 1 178] 
#[ 0 110 1 173 1 178] 
#[ 0 110 1 177 1 178] 
#[ 0 110 1 178 1 181] 
#[ 0 110 1 178 1 185] 
#[ 0 110 1 178 1 189] 
#[ 0 110 1 178 1 193] 
#[ 0 118 1 182] 
#[ 1 170 1 238] 
#[ 0 166 1 242] 
#[ 0 186 1 246] 
#[ 1 66 2 14] 
#[ 1 222 2 18] 
#[ 0 126 2 138] 
#[ 0 130 2 142] 
#[ 0 134 2 146] 
#[ 3 138 4 229]
	).
]

{ #category : #'generated-accessing' }
ElixirParser class >> cacheId [
	^'2024-10-28T11:09:53.211208+08:00'
]

{ #category : #generated }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE

%glr;

%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string>;

<decimal>
	: [0-9]+ (_ [0-9]+)*
	;
<octal>
	:  0 o [0-7]+
	;
<hex>
	: 0 x [0-9a-fA-F]+
	;
<binary>
	: 0 b [0-1]+
	;
<int>
	: <decimal>
	| <octal>
	| <hex>
	| <binary>
	;
<atomName>
	: (_ | <isLetter>) (_ | <isLetter> | <isDigit> | \@)* [?!]?
	| ' [^']+ '
	| \: "" [^""]+ ""
	| [+\-*/!\^<>=&]	#operators
	| \+\+ 
	| \-\- 
	| \.\.
	| <>
	| ^^^
	| \|>
	| <<[~<]
	| [~>]>>
	| <[~=]
	| ~>
	| <~>
	| <\|>
	| >=
	| ===?
	| !=
	| =~
	| !==
	| &&&?
	| \|{1,3}
	| \:\:
	| <\-
	| \\\\
	;
<atom>
	: \: <atomName>
	| \: <string>
	;
<string>
	: "" ([^\\""] | \\.)* ""
	;
<string_heredoc_line>
	: [\t ]* ("" ([^""\r\n][^\r\n]*)? | """" ([^""\r\n][^\r\n]*)? | [^""\r\n\t ][^\r\n]*)? [\r\n]+
	;
<string_heredoc_endline>
	: [\t ]* """"""
	;
<string_heredoc>	
	: """""" [\t ]* (\r\n?|\n) <string_heredoc_line>+ <string_heredoc_endline>
	;
<charlist>
	: ' ([^\\'] | \\.)* '
	;
<charlist_heredoc_line>
	: [\t ]* (' ([^'\r\n][^\r\n]*)? | '' ([^'\r\n][^\r\n]*)? | [^'\r\n\t ][^\r\n]*)? [\r\n]+
	;
<scharlist_heredoc_endline>
	: [\t ]* '''
	;
<charlist_heredoc>
	: ''' [\t ]* (\r\n?|\n) <charlist_heredoc_line>+ <scharlist_heredoc_endline>
	;
<variable>
	: (_ | <isLowercase>) (_ | <isLetter> | <isDigit>) [?!]?
	;
<whitespace>
	: [ \t]+
	;
<comment>
	: \# [^\r\n]*
	;
<eol>
	: \r\n? 
	| \n
	;
<struct_op> 
	: \% 
	;
<map_op>
	: \%\{\}
	;
<stab_op>
	: \-\>
	;
<comp_op>
	: ={2,3}
	| \!={1,2}
	| =~
	;
<when_op>
	: when
	;
<type_op>
	: \:\:
	;
<pipe_op>
	: \|>?
	;
<assoc_op>
	: =>
	;
<capture_op>
	: \&
	;
<match_op>
	: =
	;
<or_op>
	: \|{2,3}
	| or
	;
<and_op>
	: \&{2,3}
	| and
	;
<rel_op>
	: [<>]=?
	;
<arrow_op>
	: \|\>
	| \<\<\<
	| \>\>\>
	| \<\<?~
	| ~\>?\>
	| \<[\~\|]\>
	;
<in_op>
	: (not\s+)? in
	;
<three_op>
	: ^^^
	;
<two_op>
	: \+\+
	| \-\-
	| \.\.
	| \<\>
	;
<dual_op>
	: \+
	| \-
	;
<mult_op>
	: \*
	| /
	;
<unary_op>
	: \+
	| \-
	|\!
	| \^
	| not
	| \~\~\~
	;
<at_op>
	: \@
	;
<flt>
	: <decimal>\. <decimal> ([eE] [\+\-]? <decimal>)?
	| <decimal> [eE] [\+\-]? <decimal>
	;
<char>
	: \? ([^\\] | \\.)
	;
<in_match_op>
	: \<\-
	| \\\\
	;
#<dot_call_op>
#	: \.
#	;
<dot_op>
	: \.
	;
<sigilValue>
	: \/ [^\/]* \/
	| \| [^\|]* \|
	| \"" [^\""]* \""
	| \' [^\']* \'
	| \( [^\)]* \)
	| \[ [^\]]* \]
	| \{ [^\}]* \}
	| \< [^\>]* \>
	| <string_heredoc>
	| <charlist_heredoc>
	;
<sigilEscape>
	: \\ ([^xu] | (x [0-9a-fA-F]{2,2}) | (u [0-9a-fA-F]{4,4}))
	;
<sigilEscapedValue>
	: \/ ([^\/\\]|<sigilEscape>)* \/
	| \| ([^\|\\]|<sigilEscape>)* \|
	| \"" ([^\""\\]|<sigilEscape>)* \""
	| \' ([^\'\\]|<sigilEscape>)* \'
	| \( ([^\)\\]|<sigilEscape>)* \)
	| \[ ([^\]\\]|<sigilEscape>)* \]
	| \{ ([^\}\\]|<sigilEscape>)* \}
	| \< ([^\>\\]|<sigilEscape>)* \>
	| <string_heredoc>
	;
<sigilModifier>
	: [a-zA-Z]*		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>
	| \~ [A-Z] <sigilValue> <sigilModifier>
	;
	
<identifier>
	: (_ | <isLowercase>) (<isLetter> | <isDigit> |  _)* [\?\!]?
	;
<kw_identifier>
	: <identifier> \:
	| <alias> \:
	| <string> \:
	;
<alias>
	: <isUppercase> (<isLetter> | <isDigit> |  _)* [\?\!]?
	;
<semicolon>
	: \;
	;
/* 

Terminals
  identifier kw_identifier kw_identifier_safe kw_identifier_unsafe bracket_identifier
  paren_identifier do_identifier block_identifier
  fn ""end"" alias
  atom atom_safe atom_unsafe bin_string list_string sigil
  bin_heredoc list_heredoc
  dot_call_op op_identifier
  comp_op at_op unary_op and_op or_op arrow_op match_op in_op in_match_op
  type_op dual_op mult_op two_op three_op pipe_op stab_op when_op assoc_op
  capture_op rel_op
  ""true"" ""false"" ""nil"" ""do"" eol "";"" "","" "".""
  ""("" "")"" ""["" ""]"" ""{"" ""}"" ""<<"" "">>"" ""%{}"" ""%""
  int flt char
  .

Rootsymbol grammar.
*/
## Two shift/reduce conflicts coming from call_args_parens and
## one coming from empty_paren on stab.
#Expect 3.

## Changes in ops and precedence should be reflected on lib/elixir/lib/code/identifier.ex
## and lib/elixir/pages/Operators.md
## Note though the operator => in practice has lower precedence than all others,
## its entry in the table is only to support the %{user | foo => bar} syntax.
%left      ""do"";
%right     <stab_op>;     ## ->
%left      "","";
%left      <in_match_op>; ## <-, \\ (allowed in matches along =)
%right     <when_op>;     ## when
%right     <type_op>;     ## ::
%right     <pipe_op>;     ## |
%right     <assoc_op>;    ## =>
%nonassoc <capture_op>;  ## &
%right    <match_op>;    ## =
%left     <or_op>;       ## ||, |||, or
%left     <and_op>;      ## &&, &&&, and
%left     <comp_op>;     ## ==, !=, =~, ===, !==
%left     <rel_op>;      ## <, >, <=, >=
%left     <arrow_op>;    ## |>, <<<, >>>, <<~, ~>>, <~, ~>, <~>, <|>
%left     <in_op>;       ## in, not in
%left     <three_op>;    ## ^^^
%right    <two_op>;      ## ++, --, .., <>
%left     <dual_op>;     ## +, -
%left     <mult_op>;     ## *, /
%nonassoc <unary_op>;    ## +, -, !, ^, not, ~~~
%left     <dot_call_op>;
%left     <dot_op>;          ## .
%nonassoc <at_op>;
%prefix Elixir;
%suffix Node;
%root Program;
%start grammar;       ## @
#%nonassoc dot_identifier;

### MAIN FLOW OF EXPRESSIONS

grammar 
	: eoe'eoe' {{}}
	| expr_list'expressions' {{}}
	|  eoe'eoe' expr_list'expressions' {{}}
	|  expr_list'expressions' eoe'eoe' {{}}
	| eoe'eoe' expr_list 'expressions' eoe 'eoe' {{}}
	;

# Note expressions are on reverse order
expr_list 
	: expr 'expression' {{}}
	| expr_list eoe 'eoe' expr 'expression' {{}}
	;

expr 
	: matched_expr
	|  no_parens_expr
	|  unmatched_expr
	;

## In Elixir we have three main call syntaxes;
## without parentheses and with do blocks. They are represented
## in the AST as matched, no_parens and unmatched.
##
## Calls without parentheses are further divided according to how
## problematic they are:
##
## (a) no_parens_one: a call with one unproblematic argument
## (e.g. `f a` or `f g a` and similar) (includes unary operators)
##
## (b) no_parens_many: a call with several arguments (e.g. `f a, b`)
##
## (c) no_parens_one_ambig: a call with one argument which is
## itself a no_parens_many or no_parens_one_ambig (e.g. `f g a, b`
## or `f g h a, b` and similar)
##
## Note, in particular, that no_parens_one_ambig expressions are
## ambiguous and are interpreted such that the outer function has
## arity 1 (e.g. `f g a, b` is interpreted as `f(g(a, b))` rather
## than `f(g(a), b)`). Hence the name, no_parens_one_ambig.
##
## The distinction is required because we can't, for example, have
## a function call with a do block as argument inside another do
## block call, unless there are parentheses:
##
##   if if true do true else false end do  #=> invalid
##   if(if true do true else false end) do #=> valid
##
## Similarly, it is not possible to nest calls without parentheses
## if their arity is more than 1:
##
##   foo a, bar b, c  #=> invalid
##   foo(a, bar b, c) #=> invalid
##   foo bar a, b     #=> valid
##   foo a, bar(b, c) #=> valid
##
## So the different grammar rules need to take into account
## if calls without parentheses are do blocks in particular
## segments and act accordingly.
matched_expr 
	: matched_expr matched_op_expr'expression' {{}}
	| unary_op_eol matched_expr {{}}
	| <at_op> 'op' matched_expr  {{}}
	| <capture_op> 'op' matched_expr {{}} 
	| no_parens_one_expr 'expression' {{}}
	| no_parens_zero_expr 'expression' {{}}
	| access_expr 'expression' {{}}
	| access_expr 'expression' <kw_identifier> 'identifier' {{}}
	;

unmatched_expr 
	: matched_expr 'matched' unmatched_op_expr'expression' {{}}
	| unmatched_expr matched_op_expr'expression'{{}}
	| unmatched_expr unmatched_op_expr'expression' {{}}
	| unmatched_expr no_parens_op_expr'expression' {{}}
	| unary_op_eol expr 'expression' {{}}
	| <at_op> 'op' expr 'expression' {{}}
	| <capture_op> 'op' expr 'expression' {{}} 
	| block_expr 'expression' {{}}
	;

no_parens_expr 
	: matched_expr'expression' no_parens_op_expr'expressoin' {{}}
	| unary_op_eol no_parens_expr {{}}
	| <at_op>'op' no_parens_expr {{}}
	| <capture_op> 'op' no_parens_expr {{}}
	| no_parens_one_ambig_expr 'expression'{{}}
	| no_parens_many_expr 'expression' {{}}
	;

block_expr 
	: dot_call_identifier'identifier' call_args_parens'call' do_block 'do_block' {{}}
	| dot_call_identifier'identifier' call_args_parens'call' call_args_parens 'call2' do_block 'do_block' {{}}
	| dot_do_identifier'identifier' do_block 'do_block' {{}}
	| dot_op_identifier'identifier' call_args_no_parens_all'call' do_block 'do_block' {{}}
	| dot_identifier'identifier' call_args_no_parens_all'call' do_block 'do_block' {{}}
	;

matched_op_expr 
	: <match_op> 'op' matched_expr'expression' {{}}
	| <dual_op> 'op' matched_expr'expression' {{}}
	| <mult_op> 'op' matched_expr'expression' {{}}
	| <two_op> 'op' matched_expr'expression' {{}}
	| <three_op> 'op' matched_expr'expression' {{}}
	| <and_op> 'op' matched_expr'expression' {{}}
	| <or_op> 'op' matched_expr'expression' {{}}
	| <in_op> 'op' matched_expr'expression' {{}}
	| <in_match_op> 'op' matched_expr'expression' {{}}
	| <type_op> 'op' matched_expr'expression' {{}}
	| <when_op> 'op' matched_expr'expression' {{}}
	| <pipe_op> 'op' matched_expr'expression' {{}}
	| <rel_op> 'op' matched_expr'expression' {{}}
	| <comp_op> 'op' matched_expr'expression' {{}}
	| <arrow_op> 'op' matched_expr'expression' {{}}
## Warn for no parens subset
	| <arrow_op> 'op' no_parens_one_expr'expression' {{}}
	;

unmatched_op_expr 
	: <match_op> 'op' unmatched_expr'expression' {{}}
	| <dual_op> 'op' unmatched_expr'expression' {{}}
	| <mult_op> 'op' unmatched_expr'expression' {{}}
	| <two_op> 'op' unmatched_expr'expression' {{}}
	| <three_op> 'op' unmatched_expr'expression' {{}}
	| <and_op> 'op' unmatched_expr'expression' {{}}
	| <or_op> 'op' unmatched_expr'expression' {{}}
	| <in_op> 'op' unmatched_expr'expression' {{}}
	| <in_match_op> 'op' unmatched_expr'expression' {{}}
	| <type_op> 'op' unmatched_expr'expression' {{}}
	| <when_op> 'op' unmatched_expr'expression' {{}}
	| <pipe_op> 'op' unmatched_expr'expression' {{}}
	| <comp_op> 'op' unmatched_expr'expression' {{}}
	| <rel_op> 'op' unmatched_expr'expression' {{}}
	| <arrow_op> 'op' unmatched_expr'expression' {{}}
	;

no_parens_op_expr 
	: <match_op> 'op' no_parens_expr'expression' {{}}
	| <dual_op> 'op' no_parens_expr'expression' {{}}
	| <mult_op> 'op' no_parens_expr'expression' {{}}
	| <two_op> 'op' no_parens_expr'expression' {{}}
	| <three_op> 'op' no_parens_expr'expression' {{}}
	| <and_op> 'op' no_parens_expr'expression' {{}}
	| <or_op> 'op' no_parens_expr'expression' {{}}
	| <in_op> 'op' no_parens_expr'expression' {{}}
	| <in_match_op> 'op' no_parens_expr'expression' {{}}
	| <type_op> 'op' no_parens_expr'expression' {{}}
	| <when_op> 'op' no_parens_expr'expression' {{}}
	| <pipe_op> 'op' no_parens_expr'expression' {{}}
	| <comp_op> 'op' no_parens_expr'expression' {{}}
	| <rel_op> 'op' no_parens_expr'expression' {{}}
	| <arrow_op> 'op' no_parens_expr'expression' {{}}
## Warn for no parens subset
	| <arrow_op> 'op' no_parens_one_ambig_expr'expression' {{}}
	| <arrow_op> 'op' no_parens_many_expr'expression' {{}}
## Allow when (and only when) with keywords
	| <when_op> 'op' call_args_no_parens_kw'expression' {{}}
	;

no_parens_one_ambig_expr 
	: dot_op_identifier'identifier' call_args_no_parens_ambig'expression'{{}}
	| dot_identifier'identifier' call_args_no_parens_ambig'expression' {{}}
	;

no_parens_many_expr 
	: dot_op_identifier'identifier' call_args_no_parens_many_strict'expression' {{}}
	| dot_identifier'identifier' call_args_no_parens_many_strict'expression' {{}}
	;

no_parens_one_expr 
	: dot_op_identifier'identifier' call_args_no_parens_one'call' {{}}
	| dot_identifier'identifier' call_args_no_parens_one'call' {{}}
	;
no_parens_zero_expr 
	: dot_do_identifier 
	| dot_identifier 
	;

## From this point on, we just have constructs that can be
## used with the access syntax. Notice that (dot_)identifier
## is not included in this list simply because the tokenizer
## marks identifiers followed by brackets as bracket_identifier.
access_expr 
	: bracket_at_expr 
	| bracket_expr 
	| <capture_op> 'op' <int> 'int' {{Capture}}
	| fn_eoe'fn' stab'stab' end_eoe'end' {{Lambda}}
	| open_paren 'leftParen' stab'stab' close_paren'rightParen' {{}}
	| open_paren 'leftParen' stab'stab' "";"" close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab'"";"" close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab' close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' close_paren'rightParen' {{}}
	| empty_paren 
	| number 
	| list 
	| map 
	| tuple 
	| ""true"" 'true' {{True}}
	| ""false"" 'false' {{False}}
	| ""nil"" 'nil' {{Nil}}
	| bin_string 
	| list_string 
	| bin_heredoc 
	| list_heredoc 
	| bit_string 
	| <sigil> 'sigil' {{Sigil}}
	| <atom> 'atom' {{Atom}}
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
	
bin_string
	: <string> 'string' {{}}
	;
	
list_string
	: <charlist> 'string' {{}}
	;
	
bin_heredoc
	: <string_heredoc> 'string' {{}}
	;
	
list_heredoc
	: <charlist_heredoc> 'string' {{}}
	;

number 
	: <int> 'int'  {{}}
	| <flt> 'float' {{}}
	| <char> 'char' {{}}
	;
## Also used by maps and structs
parens_call 
	: dot_call_identifier'identifier' call_args_parens'call' {{}}
	| dot_call_identifier'identifier' call_args_parens'call' call_args_parens'call2' {{}}
	;
	
bracket_value	# added
	: kw_base
	| container_expr
	;
bracket_values	# added
	: bracket_value#'value'{{}}
	| bracket_values "","" 'com' bracket_value#'value' {{}}
	;

bracket_arg 
#	: open_bracket kw close_bracket 
#	| open_bracket container_expr close_bracket 
#	| open_bracket container_expr "","" close_bracket 
	: open_bracket 'leftBracket' bracket_values'arg'? "","" 'com'? close_bracket'rightBracket'{{}}	# modified
	;

bracket_expr 
	: dot_bracket_identifier'identifier' bracket_arg'arg' {{}}
	| access_expr'identifier' bracket_arg'arg' {{}}
	;

bracket_at_expr 
	: <at_op> 'op' dot_bracket_identifier'identifier' bracket_arg'arg' {{}}
	| <at_op> 'op' access_expr'identifier' bracket_arg'arg' {{}}
	;

## Blocks

do_block 
	: do_eoe'do' ""end"" 'end' {{}}
	| do_eoe'do' stab'stab' end_eoe 'end' {{}}
	| do_eoe'do' block_list'block' ""end"" 'end' {{}}
	| do_eoe'do' stab_eoe'stab' block_list'block' ""end"" 'end' {{}}
	;

eoe 
	: <eol> 
	| <semicolon>
	;

fn_eoe 
	: ""fn"" 'fn' {{}}
	| ""fn"" 'fn' eoe 'eoe' {{}}
	;

do_eoe 
	: ""do"" 'do' {{}}
	| ""do"" 'do' eoe 'eoe' {{}}
	;

end_eoe 
	: ""end"" 'end' {{}}
	| eoe 'eoe' ""end"" 'end' {{}}
	;

block_eoe 
	: <block_identifier> 'identifier' {{}}
	| <block_identifier> 'identifier' eoe'eoe' {{}}
	;

stab 
	: stab_expr 'stab' {{}}
	| stab eoe 'eoe' stab_expr 'stab' {{}}
	;

stab_eoe
	 : stab 'stab' {{}}
	| stab'stab' eoe 'eoe' 
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 'expression'  {{}}
	| stab_op_eol_and_expr'expression' {{}}
	| empty_paren'args' stab_op_eol_and_expr'expression' {{}}
	| empty_paren 'args'<when_op> expr 'guard' stab_op_eol_and_expr'expression' {{}}
	| call_args_no_parens_all'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' <when_op> expr 'guard' stab_op_eol_and_expr'expression' {{}}
	;

stab_op_eol_and_expr 
	: <stab_op> 'op' expr 'body'? {{}}
	;

block_item 
	: block_eoe'block' stab_eoe'stab' {{}}
	| block_eoe'block' {{}}
	;

block_list 
	: block_item'item' {{}}
	| block_item'item' block_list {{}}
	;

## Helpers

open_paren 
	: ""("" 
	;
close_paren 
	: "")"" 
	;

empty_paren 
	: open_paren 'leftParen' "")"" 'close' {{}}
	;

open_bracket  
	: ""[""
	;
close_bracket 
	: ""]"" 
	;

open_bit  
	: ""<<""
	;
close_bit 
	: "">>"" 
	;

open_curly  
	: ""{""
	;
close_curly 
	: ""}"" 'rightCurly'
	;

# Operators

unary_op_eol 
	: <unary_op> 'op'
	| <dual_op> 'op'
	;

# Dot operator

dot_identifier 
	: <identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'dot' <identifier>'identifier' {{}}
	;

dot_alias 
	: <alias>'alias' {{}}
	| matched_expr'expression' <dot_op> 'op' <alias>'alias' {{}}
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' container_args'alias' close_curly'rightCurly' {{}}
	;

dot_op_identifier 
	: <op_identifier> {{}}
	| matched_expr <dot_op> 'op' <op_identifier> {{}}
	;

dot_do_identifier 
	: <do_identifier> 'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <do_identifier>'identifier' {{}}
	;

dot_bracket_identifier 
	: <bracket_identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <bracket_identifier>'identifier' {{}}
	;

dot_paren_identifier
	 : <paren_identifier>'identifier' {{}}
	| matched_expr'expression' <dot_op> 'op' <paren_identifier>'identifier' {{}}
	;

dot_call_identifier 
	: dot_paren_identifier'identifier' {{}}
	| matched_expr'identifier' <dot_call_op> 'op' {{}}
	;

# Function calls with no parentheses

call_args_no_parens_expr 
	: matched_expr 
	| no_parens_expr 
	;

call_args_no_parens_comma_expr 
	: matched_expr'expression' "","" 'com' call_args_no_parens_expr'args' {{}}
	| call_args_no_parens_comma_expr "","" 'com' call_args_no_parens_expr'args' {{}}
	;

call_args_no_parens_all 
	: call_args_no_parens_one 
	| call_args_no_parens_ambig 
	| call_args_no_parens_many 
	;

call_args_no_parens_one 
	: call_args_no_parens_kw 
	| matched_expr 
	;

call_args_no_parens_ambig 
	: no_parens_expr 
	;

call_args_no_parens_many 
	: matched_expr 'expression' "","" 'com' call_args_no_parens_kw'args' {{}}
	| call_args_no_parens_comma_expr'expression' {{}}
	| call_args_no_parens_comma_expr'expression' "","" 'com' call_args_no_parens_kw'args' {{}}
	;

call_args_no_parens_many_strict 
	: call_args_no_parens_many'args' {{}}
	| open_paren 'leftParen' call_args_no_parens_kw'args' close_paren'rightParen' {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren'rightParen' {{}}
	;

stab_parens_many 
	: open_paren 'leftParen' call_args_no_parens_kw'args' close_paren {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren {{}}
	;

# Containers

container_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

container_args_base 
	: container_expr 'expression' {{}}
	| container_args_base "","" 'com' container_expr'expression' {{}}
	;

container_args 
	: container_args_base 'base'{{}}
	| container_args_base 'base'"","" 'com' kw'kw'? {{}}
	;

# Function calls with parentheses

call_args_parens_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

call_args_parens_base 
	: call_args_parens_expr 'arg' {{}}
	| call_args_parens_base "","" 'com' call_args_parens_expr 'arg' {{}}
	;

call_args_parens 
	: open_paren 'leftParen' "")"" 'rightParen' {{}}
	| open_paren 'leftParen' no_parens_expr'args' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' kw_base'kw' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' kw_base'kw' "","" 'com' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' "","" 'com' kw_base'kw' close_paren 'rightParen' {{}}
	| open_paren 'leftParen' call_args_parens_base'args' "","" 'com' kw_base'kw' "","" 'com' close_paren 'rightParen' {{}}
	;

# KV

kw_eol 
	: <kw_identifier>
#	| <kw_identifier_safe> 			# what is this???
#	| <kw_identifier_unsafe> 		# what is this???
	;

kw_base 
	: kw_eol 'key' container_expr 'value'{{}}
	| kw_base "","" 'com' kw_eol 'key' container_expr 'value' {{}}
	;

kw 
	: kw_base "",""?
	;

call_args_no_parens_kw_expr 
	: kw_eol'key' matched_expr'value' {{}}
	| kw_eol'key' no_parens_expr'value' {{}}
	;

call_args_no_parens_kw 
	: call_args_no_parens_kw_expr 'kw' {{}}
	| call_args_no_parens_kw_expr 'kw' "","" 'com' call_args_no_parens_kw {{}}
	;

# Lists

list_args 
	: kw'kw' {{}}
	| container_args_base 'container'{{}}
	| container_args_base 'container' "","" 'com' {{}}
	| container_args_base 'container' "","" 'com'kw 'kw' {{}}
	;

list 
	: open_bracket 'leftBracket' ""]"" 'close' {{}}
	| open_bracket 'leftBracket' list_args 'args' close_bracket 'close' {{}}
	;

# Tuple

tuple 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' container_args'elements' close_curly {{}}
	;

# Bitstrings

bit_string 
	: open_bit 'open' "">>"" 'close' {{}}
	| open_bit 'open' container_args 'args' close_bit 'close'{{}}
	;

# Map and structs

assoc_op_eol 
	: <assoc_op> 'op'
	;

assoc_expr 
	: matched_expr'key' assoc_op_eol matched_expr 'value' {{}}
	| unmatched_expr 'key'assoc_op_eol unmatched_expr 'value' {{}}
	| matched_expr 'key'assoc_op_eol unmatched_expr 'value'{{}}
	| unmatched_expr'key' assoc_op_eol matched_expr 'value'{{}}
	| dot_identifier 'value' {{}}
	| parens_call 'value'{{}}
	;

assoc_update 
	: matched_expr'expression' <pipe_op> 'pipe' assoc_expr'associatoin' {{}}
	| unmatched_expr'expression' <pipe_op> 'pipe' assoc_expr'association' {{}}
	;

assoc_update_kw 
	: matched_expr 'expression' <pipe_op> 'pipe' kw 'kw' {{}}
	| unmatched_expr 'expression' <pipe_op> 'pipe' kw'kw' {{}}
	;

assoc_base 
	: assoc_expr 'assoc'{{}} 
	| assoc_base "","" 'com' assoc_expr 'assoc'{{}}
	;

assoc 
	: assoc_base 'assoc'
	| assoc_base 'assoc' "","" 'com' {{}}
	;

map_op 
	: <map_op> 'cen'
	;

map_close 
	: kw'kw' close_curly 'close' {{}}
	| assoc'association' close_curly 'close' {{}}
	| assoc_base'association' "","" 'com' kw'kw' close_curly 'close' {{}}
	;

map_args 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' map_close'rightCurly' {{}}
	| open_curly 'leftCurly' assoc_update'association' close_curly 'rightCurly'{{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' close_curly'rightCurly' {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' map_close 'rightCurly'{{}}
	| open_curly 'leftCurly' assoc_update_kw'association' close_curly'rightCurly' {{}}
	;

struct_expr 
	: <atom> 'identifier' {{}}
	| dot_alias'identifier' {{}}
	| dot_identifier'identifier' {{}}
	| <at_op> 'op' struct_expr {{}}
	| unary_op_eol struct_expr {{}}
	| parens_call'identifier' {{}}
	;

map 
	: map_op map_args'args' {{}}
	| <struct_op> 'cen' struct_expr 'struct' ? map_args'args' {{}}			# added ?
	;"
]

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(95 1 #liftFirstValue: 16162817 false) 
	#(100 1 #liftFirstValue: 16326657 false) 
	#(98 1 #liftFirstValue: 16273409 false) 
	#(71 1 #reduceActionForaccess_expr16: 12612624 false) 
	#(85 1 #reduceActionForfn_eoe1: 14940161 false) 
	#(71 1 #reduceActionForaccess_expr17: 12612625 false) 
	#(71 1 #reduceActionForaccess_expr15: 12612623 false) 
	#(102 1 #liftFirstValue: 16373761 false) 
	#(76 1 #reduceActionFornumber1: 13683713 false) 
	#(71 1 #reduceActionForaccess_expr24: 12612632 false) 
	#(72 1 #reduceActionForbin_string1: 13488129 false) 
	#(74 1 #reduceActionForbin_heredoc1: 13577217 false) 
	#(73 1 #reduceActionForlist_string1: 13531137 false) 
	#(75 1 #reduceActionForlist_heredoc1: 13629441 false) 
	#(84 1 #liftFirstValue: 14905345 false) 
	#(141 1 #liftFirstValue: 22037505 false) 
	#(104 1 #liftFirstValue: 16448514 false) 
	#(104 1 #liftFirstValue: 16448513 false) 
	#(76 1 #reduceActionFornumber2: 13683714 false) 
	#(76 1 #reduceActionFornumber3: 13683715 false) 
	#(71 1 #reduceActionForaccess_expr23: 12612631 false) 
	#(105 1 #reduceActionFordot_identifier1: 16521217 false) 
	#(106 1 #reduceActionFordot_alias1: 16650241 false) 
	#(84 1 #liftFirstValue: 14905346 false) 
	#(57 1 #reduceActionForgrammar2: 5580802 false) 
	#(58 1 #reduceActionForexpr_list1: 5820417 false) 
	#(59 1 #liftFirstValue: 5909505 false) 
	#(59 1 #liftFirstValue: 5909507 false) 
	#(59 1 #liftFirstValue: 5909506 false) 
	#(61 1 #reduceActionForunmatched_expr8: 7941128 false) 
	#(62 1 #reduceActionForno_parens_expr5: 8342533 false) 
	#(62 1 #reduceActionForno_parens_expr5: 8342534 false) 
	#(60 1 #reduceActionFormatched_expr5: 7580677 false) 
	#(60 1 #reduceActionFormatched_expr5: 7580678 false) 
	#(60 1 #reduceActionFormatched_expr5: 7580679 false) 
	#(71 1 #liftFirstValue: 12612626 false) 
	#(71 1 #liftFirstValue: 12612627 false) 
	#(71 1 #liftFirstValue: 12612628 false) 
	#(71 1 #liftFirstValue: 12612629 false) 
	#(71 1 #liftFirstValue: 12612619 false) 
	#(71 1 #liftFirstValue: 12612634 false) 
	#(71 1 #liftFirstValue: 12612610 false) 
	#(71 1 #liftFirstValue: 12612609 false) 
	#(57 1 #reduceActionForgrammar1: 5580801 false) 
	#(71 1 #liftFirstValue: 12612618 false) 
	#(70 1 #liftFirstValue: 12293122 false) 
	#(71 1 #liftFirstValue: 12612633 false) 
	#(70 1 #liftFirstValue: 12293121 false) 
	#(111 1 #reduceActionFordot_call_identifier1: 17498113 false) 
	#(71 1 #liftFirstValue: 12612620 false) 
	#(71 1 #liftFirstValue: 12612622 false) 
	#(71 1 #liftFirstValue: 12612630 false) 
	#(71 1 #liftFirstValue: 12612621 false) 
	#(109 1 #reduceActionFordot_bracket_identifier1: 17199105 false) 
	#(108 1 #reduceActionFordot_do_identifier1: 17060865 false) 
	#(107 1 #reduceActionFordot_op_identifier1: 16960513 false) 
	#(110 1 #reduceActionFordot_paren_identifier1: 17351681 false) 
	#(85 2 #reduceActionForfn_eoe2: 14940162 false) 
	#(144 1 #reduceActionForstruct_expr1: 22709249 false) 
	#(144 1 #reduceActionForstruct_expr1: 22709254 false) 
	#(144 1 #reduceActionForstruct_expr1: 22709251 false) 
	#(144 1 #reduceActionForstruct_expr1: 22709250 false) 
	#(145 2 #reduceActionFormap2: 22922242 false) 
	#(71 2 #reduceActionForaccess_expr3: 12612611 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7941127 false) 
	#(60 2 #reduceActionFormatched_expr4: 7580676 false) 
	#(62 2 #reduceActionFormatched_expr4: 8342532 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7941126 false) 
	#(60 2 #reduceActionFormatched_expr4: 7580675 false) 
	#(62 2 #reduceActionFormatched_expr4: 8342531 false) 
	#(57 2 #reduceActionForgrammar4: 5580804 false) 
	#(60 2 #reduceActionFormatched_expr1: 7580673 false) 
	#(61 2 #reduceActionForunmatched_expr1: 7941121 false) 
	#(62 2 #reduceActionForno_parens_expr1: 8342529 false) 
	#(111 2 #reduceActionFordot_call_identifier2: 17498114 false) 
	#(61 2 #reduceActionFormatched_expr1: 7941122 false) 
	#(61 2 #reduceActionFormatched_expr1: 7941123 false) 
	#(61 2 #reduceActionFormatched_expr1: 7941124 false) 
	#(60 2 #reduceActionFormatched_expr8: 7580680 false) 
	#(81 2 #reduceActionForbracket_expr2: 14397442 false) 
	#(57 2 #reduceActionForgrammar3: 5580803 false) 
	#(92 1 #reduceActionForstab_op_eol_and_expr1: 15925249 false) 
	#(126 1 #liftFirstValue: 20040705 false) 
	#(91 1 #reduceActionForstab_expr1: 15468545 false) 
	#(115 1 #liftFirstValue: 18038786 false) 
	#(116 1 #liftFirstValue: 18113537 false) 
	#(89 1 #reduceActionForstab1: 15229953 false) 
	#(91 1 #reduceActionForstab_expr1: 15468546 false) 
	#(117 1 #reduceActionForcall_args_no_parens_many2: 18164738 false) 
	#(114 1 #liftFirstValue: 17920001 false) 
	#(114 1 #liftFirstValue: 17920002 false) 
	#(114 1 #liftFirstValue: 17920003 false) 
	#(130 1 #reduceActionForcall_args_no_parens_kw1: 20430849 false) 
	#(115 1 #liftFirstValue: 18038785 false) 
	#(97 2 #reduceActionForempty_paren1: 16211969 false) 
	#(132 2 #reduceActionForlist1: 20766721 false) 
	#(120 1 #liftFirstValue: 18852865 false) 
	#(120 1 #liftFirstValue: 18852866 false) 
	#(120 1 #liftFirstValue: 18852867 false) 
	#(121 1 #reduceActionForcontainer_args_base1: 18929665 false) 
	#(131 1 #reduceActionForlist_args2: 20586498 false) 
	#(128 1 #liftFirstValue: 20288513 false) 
	#(131 1 #reduceActionForlist_args1: 20586497 false) 
	#(134 2 #reduceActionForbit_string1: 21054465 false) 
	#(122 1 #reduceActionForcontainer_args1: 19058689 false) 
	#(133 2 #reduceActionFortuple1: 20910081 false) 
	#(61 2 #reduceActionForunmatched_expr7: 7941125 false) 
	#(60 2 #reduceActionFormatched_expr4: 7580674 false) 
	#(62 2 #reduceActionFormatched_expr4: 8342530 false) 
	#(69 2 #reduceActionForno_parens_one_expr2: 12133378 false) 
	#(67 2 #reduceActionForno_parens_one_ambig_expr2: 11760642 false) 
	#(118 1 #reduceActionForcall_args_no_parens_many_strict1: 18414593 false) 
	#(68 2 #reduceActionForno_parens_many_expr2: 11942914 false) 
	#(69 2 #reduceActionForno_parens_one_expr2: 12133377 false) 
	#(67 2 #reduceActionForno_parens_one_ambig_expr2: 11760641 false) 
	#(68 2 #reduceActionForno_parens_many_expr2: 11942913 false) 
	#(86 1 #reduceActionFordo_eoe1: 14999553 false) 
	#(63 2 #reduceActionForblock_expr3: 8630275 false) 
	#(81 2 #reduceActionForbracket_expr2: 14397441 false) 
	#(77 2 #reduceActionForparens_call1: 13795329 false) 
	#(145 2 #reduceActionFormap2: 22922241 false) 
	#(144 2 #reduceActionFormatched_expr4: 22709252 false) 
	#(143 2 #reduceActionFormap_args1: 22238209 false) 
	#(136 1 #reduceActionForassoc_expr6: 21230598 false) 
	#(136 1 #reduceActionForassoc_expr6: 21230597 false) 
	#(139 1 #reduceActionForassoc_base1: 21873665 false) 
	#(140 1 #liftFirstValue: 21965825 false) 
	#(143 2 #reduceActionFormap_args1: 22238210 false) 
	#(144 2 #reduceActionFormatched_expr4: 22709253 false) 
	#(145 3 #reduceActionFormap3: 22922243 false) 
	#(82 3 #reduceActionForbracket_at_expr2: 14527490 false) 
	#(82 3 #reduceActionForbracket_at_expr2: 14527489 false) 
	#(58 3 #reduceActionForexpr_list2: 5820418 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078798 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923597 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715149 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078795 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923595 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715147 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715154 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078794 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923594 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715146 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078796 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923596 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715148 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078785 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923585 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715137 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078791 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923591 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715143 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078790 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923590 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715142 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078797 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923598 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715150 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078799 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923599 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715151 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715152 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715153 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078800 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078792 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923592 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715144 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078789 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923589 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715141 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078788 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923588 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715140 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078786 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923586 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715138 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078787 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923587 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715139 false) 
	#(64 2 #reduceActionFormatched_op_expr14: 9078793 false) 
	#(65 2 #reduceActionForunmatched_op_expr13: 9923593 false) 
	#(66 2 #reduceActionForno_parens_op_expr13: 10715145 false) 
	#(105 3 #reduceActionFordot_identifier2: 16521218 false) 
	#(106 3 #reduceActionFordot_alias2: 16650242 false) 
	#(109 3 #reduceActionFordot_bracket_identifier2: 17199106 false) 
	#(108 3 #reduceActionFordot_do_identifier2: 17060866 false) 
	#(107 3 #reduceActionFordot_op_identifier2: 16960514 false) 
	#(110 3 #reduceActionFordot_paren_identifier2: 17351682 false) 
	#(99 1 #liftFirstValue: 16299009 false) 
	#(79 1 #liftFirstValue: 14022657 false) 
	#(80 2 #reduceActionForbracket_arg1: 14136321 false) 
	#(78 1 #liftFirstValue: 13967362 false) 
	#(78 1 #liftFirstValue: 13967361 false) 
	#(57 3 #reduceActionForgrammar5: 5580805 false) 
	#(92 2 #reduceActionForstab_op_eol_and_expr2: 15925250 false) 
	#(87 1 #reduceActionForend_eoe1: 15058945 false) 
	#(71 3 #reduceActionForaccess_expr4: 12612612 false) 
	#(91 2 #reduceActionForstab_expr3: 15468547 false) 
	#(91 2 #reduceActionForstab_expr3: 15468549 false) 
	#(91 2 #reduceActionForstab_expr3: 15468550 false) 
	#(129 2 #reduceActionForcall_args_no_parens_kw_expr1: 20313089 false) 
	#(129 2 #reduceActionForcall_args_no_parens_kw_expr1: 20313090 false) 
	#(96 1 #liftFirstValue: 16186369 false) 
	#(71 3 #reduceActionForaccess_expr9: 12612617 false) 
	#(71 3 #reduceActionForaccess_expr5: 12612613 false) 
	#(131 2 #reduceActionForlist_args3: 20586499 false) 
	#(127 2 #reduceActionForkw_base1: 20167681 false) 
	#(128 2 #liftFirstValue: 20288514 false) 
	#(132 3 #reduceActionForlist2: 20766722 false) 
	#(122 2 #reduceActionForcontainer_args2: 19058690 false) 
	#(101 1 #liftFirstValue: 16349185 false) 
	#(134 3 #reduceActionForbit_string2: 21054466 false) 
	#(103 1 #liftFirstValue: 16397313 false) 
	#(133 3 #reduceActionFortuple2: 20910082 false) 
	#(63 3 #reduceActionForblock_expr5: 8630277 false) 
	#(63 3 #reduceActionForblock_expr5: 8630276 false) 
	#(86 2 #reduceActionFordo_eoe2: 14999554 false) 
	#(83 2 #reduceActionFordo_block1: 14698497 false) 
	#(93 1 #reduceActionForblock_item2: 15988738 false) 
	#(90 1 #reduceActionForstab_eoe1: 15306753 false) 
	#(94 1 #reduceActionForblock_list1: 16071681 false) 
	#(88 1 #reduceActionForblock_eoe1: 15123457 false) 
	#(125 2 #reduceActionForcall_args_parens1: 19421185 false) 
	#(123 1 #liftFirstValue: 19203073 false) 
	#(123 1 #liftFirstValue: 19203074 false) 
	#(123 1 #liftFirstValue: 19203075 false) 
	#(124 1 #reduceActionForcall_args_parens_base1: 19287041 false) 
	#(63 3 #reduceActionForblock_expr5: 8630273 false) 
	#(77 3 #reduceActionForparens_call2: 13795330 false) 
	#(135 1 #liftFirstValue: 21192705 false) 
	#(142 2 #reduceActionFormap_close1: 22068225 false) 
	#(143 3 #reduceActionFormap_args3: 22238211 false) 
	#(143 3 #reduceActionFormap_args3: 22238214 false) 
	#(140 2 #reduceActionForassoc2: 21965826 false) 
	#(142 2 #reduceActionFormap_close2: 22068226 false) 
	#(106 4 #reduceActionFordot_alias3: 16650243 false) 
	#(80 3 #reduceActionForbracket_arg2: 14136322 false) 
	#(80 3 #reduceActionForbracket_arg3: 14136323 false) 
	#(112 1 #liftFirstValue: 17657857 false) 
	#(112 1 #liftFirstValue: 17657858 false) 
	#(113 3 #reduceActionForcall_args_no_parens_comma_expr1: 17725441 false) 
	#(117 3 #reduceActionForcall_args_no_parens_many1: 18164737 false) 
	#(87 2 #reduceActionForend_eoe2: 15058946 false) 
	#(89 3 #reduceActionForstab2: 15229954 false) 
	#(119 3 #reduceActionForstab_parens_many2: 18666498 false) 
	#(119 3 #reduceActionForstab_parens_many2: 18666497 false) 
	#(113 3 #reduceActionForcall_args_no_parens_comma_expr2: 17725442 false) 
	#(117 3 #reduceActionForcall_args_no_parens_many1: 18164739 false) 
	#(130 3 #reduceActionForcall_args_no_parens_kw2: 20430850 false) 
	#(71 4 #reduceActionForaccess_expr8: 12612616 false) 
	#(71 4 #reduceActionForaccess_expr6: 12612614 false) 
	#(121 3 #reduceActionForcontainer_args_base2: 18929666 false) 
	#(131 3 #reduceActionForlist_args4: 20586500 false) 
	#(122 3 #reduceActionForcontainer_args3: 19058691 false) 
	#(118 3 #reduceActionForcall_args_no_parens_many_strict3: 18414595 false) 
	#(118 3 #reduceActionForcall_args_no_parens_many_strict3: 18414594 false) 
	#(93 2 #reduceActionForblock_item1: 15988737 false) 
	#(90 2 #liftFirstValue: 15306754 false) 
	#(83 3 #reduceActionFordo_block2: 14698498 false) 
	#(94 2 #reduceActionForblock_list2: 16071682 false) 
	#(83 3 #reduceActionFordo_block3: 14698499 false) 
	#(88 2 #reduceActionForblock_eoe2: 15123458 false) 
	#(125 3 #reduceActionForcall_args_parens2: 19421186 false) 
	#(125 3 #reduceActionForcall_args_parens2: 19421189 false) 
	#(125 3 #reduceActionForcall_args_parens3: 19421187 false) 
	#(63 4 #reduceActionForblock_expr2: 8630274 false) 
	#(138 3 #reduceActionForassoc_update_kw1: 21730305 false) 
	#(137 3 #reduceActionForassoc_update1: 21558273 false) 
	#(136 3 #reduceActionForassoc_expr1: 21230593 false) 
	#(136 3 #reduceActionForassoc_expr1: 21230595 false) 
	#(138 3 #reduceActionForassoc_update_kw1: 21730306 false) 
	#(137 3 #reduceActionForassoc_update2: 21558274 false) 
	#(136 3 #reduceActionForassoc_expr1: 21230596 false) 
	#(136 3 #reduceActionForassoc_expr1: 21230594 false) 
	#(143 4 #reduceActionFormap_args4: 22238212 false) 
	#(143 4 #reduceActionFormap_args4: 22238213 false) 
	#(139 3 #reduceActionForassoc_base2: 21873666 false) 
	#(106 5 #reduceActionFordot_alias4: 16650244 false) 
	#(79 3 #liftFirstValue: 14022658 false) 
	#(80 4 #reduceActionForbracket_arg4: 14136324 false) 
	#(91 4 #reduceActionForstab_expr4: 15468548 false) 
	#(91 4 #reduceActionForstab_expr4: 15468551 false) 
	#(71 5 #reduceActionForaccess_expr7: 12612615 false) 
	#(127 4 #reduceActionForkw_base2: 20167682 false) 
	#(83 4 #reduceActionFordo_block4: 14698500 false) 
	#(124 3 #reduceActionForcall_args_parens_base2: 19287042 false) 
	#(125 4 #reduceActionForcall_args_parens4: 19421188 false) 
	#(142 4 #reduceActionFormap_close3: 22068227 false) 
	#(125 5 #reduceActionForcall_args_parens6: 19421190 false) 
	#(125 6 #reduceActionForcall_args_parens7: 19421191 false)
	).
]

{ #category : #examples }
ElixirParser class >> samples [
	"Some sample expressions from https://hexdocs.pm/elixir/syntax-reference.html"

	<gtExample>
	^ #('test = """
    this
    is
    a
    test
"""' 'test = """
    This
    Is
    A
    Test
    """' 'case 1 do
  2 -> 3
  4 -> 5
end' 'cond do
  true -> false
end' '(integer(), boolean() -> integer())' 'fn
  x, y -> x + y
end' 'quote do
  %{1 => 2, 3 => 4}
end' '~s/f#{"o"}o/' '~S/f#{"o"}o/' 'sum(1, 2, 3)' '{:sum, meta, [1, 2, 3]}' 'quote do
  sum()
end' 'quote do
  sum
end' 'quote do
  1 + 2
end' 'quote do
  foo.(1, 2, 3)
end' 'quote do
  Foo.Bar.Baz
end' 'quote do
  __MODULE__.Bar.Baz
end' 'quote do
  [1, 2, 3]
end' 'quote do
  {1, 2}
end' 'quote do
  {1, 2, 3}
end' 'quote do
  <<1, 2, 3>>
end' 'quote do
  1
  2
  3
end' 'quote do 1; 2; 3; end' 'quote do
  case 1 do
    2 -> 3
    4 -> 5
  end
end' 'quote do
  cond do
    true -> false
  end
end' 'quote do
  (1, 2 -> 3
   4, 5 -> 6)
end' 'quote do
  fn
    1, 2 -> 3
    4, 5 -> 6
  end
end' '1_000_000' '0xABCD' '0o01234567' '0b10101010' '?é' 'quote do
  opts[arg]
end' 'quote do
  sum 1, 2, 3
end' '[{:foo, 1}, {:bar, 2}]' '[foo: 1, bar: 2]' '[{:"foo bar", 1}, {:"bar baz", 2}] == ["foo bar": 1, "bar baz": 2]' 'if(condition, do: this, else: that)' 'if(condition, [do: this, else: that])' 'if(condition, [{:do, this}, {:else, that}])' 'if true do
  this
else
  that
end' 'if(true, do: (this), else: (that))' 'if true do
  this
  that
end' 'if(true, do: (
  this
  that
))' 'defmodule Math do
  def add(a, b) do
    a + b
  end
end' 'defmodule(Math, [
  {:do, def(add(a, b), [{:do, a + b}])}
])' 'query = from w in Weather,
      where: w.prcp > 0,
      where: w.temp < 20,
     select: w') collect: [ :each | self parse: each ]
]

{ #category : #'generated-accessing' }
ElixirParser class >> scannerClass [
	^ElixirScanner
]

{ #category : #generated }
ElixirParser class >> startingStateForgrammar [
	^ 1
]

{ #category : #generated }
ElixirParser class >> symbolNames [
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<block_identifier>' '<bracket_identifier>' '<do_identifier>' '<dot_call_op>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirProgramNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirProgramNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwBaseNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #ElixirMapCloseNode #ElixirMapArgsNode #ElixirStructExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 197 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 197 0 55 0 117 0 57 0 121 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 125 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 197 0 84 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 6 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 10 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 14 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 18 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 22 0 1 0 22 0 5 0 22 0 7 0 22 0 11 0 22 0 12 0 22 0 13 0 22 0 14 0 22 0 15 0 22 0 17 0 22 0 18 0 22 0 19 0 22 0 20 0 22 0 21 0 22 0 22 1 37 0 25 0 22 0 26 0 22 0 27 0 22 0 28 0 22 0 34 0 22 0 43 0 22 0 45 0 22 0 46 0 22 0 47 0 22 0 48 0 22 0 51 0 22 0 52 0 22 0 53 0 22 0 54 1 37 0 55 1 37 0 84 0 22 0 147 0 22 0 148 0 22 0 150 0 22 0 151] 
#[0 0 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 34 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 38 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 62 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 61 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 53 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 1 57 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 1 61 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 1 89 0 143 1 93 0 144 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 66 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 109 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 70 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 121 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 1 125 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 146 0 147 0 148 0 149 0 150 0 151 0 152] 
#[0 0 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 98 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151 0 152] 
#[0 0 0 0 152] 
#[1 1 133 0 25 1 133 0 55 1 133 0 84 0 102 0 152] 
#[0 0 106 0 25 0 55 0 152] 
#[1 0 110 0 2 0 110 0 4 0 110 0 10 0 110 0 25 0 110 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 110 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 110 0 146 1 213 0 149 0 110 0 152] 
#[1 0 114 0 2 0 114 0 3 0 114 0 4 0 114 0 6 0 114 0 8 0 114 0 10 0 114 0 16 0 114 0 25 0 114 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 114 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 114 0 55 1 217 0 64 1 221 0 65 1 225 0 66 0 114 0 146 0 114 0 152] 
#[0 0 118 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 122 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 6 1 237 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 16 0 142 0 25 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 49 0 142 0 50 1 229 0 53 0 142 0 55 1 233 0 80 1 237 0 98 0 142 0 146 0 142 0 149 0 142 0 152] 
#[0 0 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 241 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 125 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 0 178 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 9 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 97 0 121 2 101 0 126 2 105 0 127 2 109 0 128 2 113 0 131 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 2 117 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 125 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 186 0 2 0 186 0 3 0 186 0 4 0 217 0 5 0 186 0 6 0 213 0 7 0 186 0 8 0 186 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 186 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 186 0 25 0 69 0 26 1 13 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 2 149 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 2 169 0 43 0 186 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 186 0 55 2 157 0 60 2 189 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 0 186 0 146 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151 0 186 0 152] 
#[0 0 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 209 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 209 0 116 2 193 0 117 2 213 0 118 2 53 0 126 2 57 0 129 2 205 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 6 0 194 0 8 2 217 0 9 0 194 0 10 0 194 0 16 0 194 0 25 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 55 2 221 0 83 2 225 0 86 0 194 0 146 0 194 0 149 0 194 0 152] 
#[1 1 237 0 7 2 229 0 80 1 237 0 98] 
#[0 0 198 0 1] 
#[1 2 233 0 1 2 233 0 95 2 237 0 125] 
#[0 0 202 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 241 0 15 2 241 0 102 2 245 0 143] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 218 0 7] 
#[0 0 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 226 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 0 230 0 1] 
#[0 0 234 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[1 0 42 0 7 0 238 0 15 0 42 0 29 0 42 0 30 0 42 0 31 0 42 0 32 0 42 0 35 0 42 0 36 0 42 0 37 0 42 0 38 0 42 0 39 0 42 0 40 0 42 0 41 0 42 0 42 0 42 0 43 0 42 0 44 0 42 0 49 0 42 0 50 0 42 0 53 0 42 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 57 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 3 13 0 144 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 166 0 7 0 242 0 15 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 42 0 166 0 43 0 166 0 44 0 166 0 49 0 166 0 50 0 166 0 53 0 166 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 3 81 0 60 3 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 2 133 0 122 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 1 57 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 1 65 0 104 1 69 0 105 1 73 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 3 129 0 144 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 1 45 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 3 1 0 43 0 186 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151] 
#[1 0 190 0 7 0 250 0 15 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 190 0 43 0 190 0 44 0 190 0 49 0 190 0 50 0 190 0 53 0 190 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 141 0 115 2 53 0 126 2 57 0 129 3 141 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 0 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 233 0 1 2 233 0 95 3 145 0 125] 
#[0 0 254 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 241 0 15 2 241 0 102 3 149 0 143] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 1 6 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 15 0 146 1 213 0 149 0 15 0 152] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 22 0 50 0 83 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 83 0 146 1 22 0 149 0 83 0 152] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 6 1 237 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 16 0 142 0 25 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 44 0 142 0 49 0 142 0 50 1 229 0 53 0 142 0 55 3 153 0 80 1 237 0 98 0 142 0 146 0 142 0 149 0 142 0 152] 
#[1 1 237 0 7 3 157 0 80 1 237 0 98] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 3 161 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 1 30 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 165 0 60 3 169 0 61 3 173 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 177 0 60 3 181 0 61 3 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 53 0 126 2 57 0 129 3 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 193 0 60 3 197 0 61 3 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 205 0 60 3 209 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 217 0 60 3 221 0 61 3 225 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 229 0 60 3 233 0 61 3 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 241 0 60 3 245 0 61 3 249 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 253 0 60 4 1 0 61 4 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 9 0 60 4 13 0 61 4 17 0 62 0 141 0 63 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 33 0 60 4 37 0 61 4 41 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 45 0 60 4 49 0 61 4 53 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 57 0 60 4 61 0 61 4 65 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 69 0 60 4 73 0 61 4 77 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 81 0 60 4 85 0 61 4 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 93 0 60 4 97 0 61 4 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 113 0 15 4 105 0 52 4 109 0 54 4 113 0 102 4 117 0 147 4 121 0 148 4 125 0 150 4 129 0 151] 
#[0 1 34 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 38 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 46 0 1] 
#[0 1 50 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 66 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 4 133 0 3 0 217 0 5 0 213 0 7 4 149 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 4 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 4 145 0 78 4 145 0 79 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 4 149 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 4 145 0 120 2 101 0 126 4 157 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 161 0 25 4 161 0 55 4 161 0 84 1 70 0 152] 
#[1 0 205 0 1 1 74 0 2 1 74 0 4 0 217 0 5 0 213 0 7 1 74 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 74 0 25 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 74 0 55 4 165 0 59 0 129 0 60 0 133 0 61 4 165 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 74 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[0 1 82 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 110 0 2 4 169 0 3 0 110 0 4 0 110 0 10 0 110 0 25 1 86 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 110 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 110 0 146 1 213 0 149] 
#[1 0 118 0 2 0 118 0 4 0 118 0 10 0 118 0 25 1 90 0 28 0 118 0 55 0 118 0 146] 
#[1 4 173 0 10 4 177 0 25 4 177 0 55 4 177 0 84 4 181 0 87] 
#[0 1 94 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 4 185 0 117 2 49 0 119 2 53 0 126 2 57 0 129 4 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 7 0 182 0 10 0 182 0 25 1 245 0 28 0 182 0 29 4 193 0 30 0 182 0 31 0 182 0 32 0 182 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 39 0 182 0 40 0 182 0 41 0 182 0 42 0 182 0 43 0 182 0 44 0 182 0 49 0 182 0 50 0 182 0 53 0 182 0 55 4 197 0 92 0 182 0 146 0 182 0 149] 
#[1 1 102 0 2 4 201 0 3 1 102 0 4 1 102 0 6 1 102 0 8 1 102 0 9 1 102 0 10 1 102 0 16 1 102 0 25 1 102 0 28 1 102 0 29 1 102 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 43 1 102 0 44 1 102 0 49 1 102 0 50 1 102 0 55 1 102 0 146 1 102 0 149 1 102 0 152] 
#[1 1 245 0 28 4 205 0 92] 
#[0 1 106 0 28] 
#[0 1 110 0 9 0 28] 
#[0 1 114 0 9 0 28] 
#[1 1 245 0 28 4 209 0 30 4 213 0 92] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 217 0 60 4 221 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 118 0 2 4 225 0 3 1 118 0 4 1 118 0 6 1 118 0 8 1 118 0 9 1 118 0 10 1 118 0 16 1 118 0 25 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 43 1 118 0 44 1 118 0 49 1 118 0 50 1 118 0 55 1 118 0 146 1 118 0 149 1 118 0 152] 
#[0 1 122 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 126 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 4 237 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 4 233 0 89 2 13 0 91 2 17 0 92 2 21 0 95 4 237 0 96 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 249 0 2 4 241 0 4 4 245 0 25 4 245 0 55 4 245 0 84 4 249 0 96] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 134 0 2 1 134 0 3 1 134 0 6 1 134 0 8 1 134 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[0 1 142 0 2 0 3 0 6 0 8 0 16] 
#[0 1 146 0 3 0 6 0 8 0 16] 
#[1 4 253 0 3 1 150 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 5 1 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 1 0 120 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 5 5 0 3 1 154 0 6 1 154 0 8 1 154 0 16] 
#[0 1 158 0 8] 
#[0 5 9 0 8 0 99] 
#[0 1 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 5 13 0 3 1 166 0 6 1 166 0 16] 
#[0 5 21 0 6 0 101] 
#[0 1 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 5 29 0 16 0 103] 
#[0 1 174 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 151 0 146 1 213 0 149 0 151 0 152] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 33 0 60 5 37 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 41 0 60 5 45 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 1 125 0 106 2 177 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 86 0 2 4 169 0 3 1 86 0 4 1 86 0 6 1 86 0 8 1 86 0 9 1 86 0 10 1 86 0 16 1 86 0 25 1 86 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 86 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 86 0 55 1 201 0 64 1 209 0 66 1 86 0 146 1 213 0 149 1 86 0 152] 
#[0 1 90 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 73 0 89 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 5 109 0 117 2 49 0 119 2 53 0 126 2 57 0 129 5 113 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 117 0 60 5 121 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 186 0 2 0 186 0 3 0 186 0 4 0 217 0 5 0 186 0 6 0 213 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 186 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 186 0 25 0 69 0 26 1 13 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 2 149 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 2 169 0 43 0 186 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 186 0 55 2 157 0 60 5 125 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 137 0 115 5 125 0 116 5 129 0 117 2 197 0 118 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 0 186 0 146 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151 0 186 0 152] 
#[1 2 165 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 5 133 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 3 141 0 115 5 133 0 116 5 129 0 117 2 213 0 118 2 53 0 126 2 57 0 129 3 141 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 217 0 9 5 137 0 83 2 225 0 86] 
#[1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 6 1 186 0 8 1 106 0 9 1 186 0 10 1 186 0 16 1 186 0 25 1 186 0 28 1 186 0 29 1 186 0 30 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 35 1 186 0 36 1 186 0 37 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 41 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 49 1 186 0 50 1 186 0 55 1 186 0 146 1 186 0 149 1 186 0 152] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 55 1 190 0 146 1 190 0 152] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 146 1 194 0 152] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 217 0 9 5 141 0 83 2 225 0 86] 
#[1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 6 1 202 0 8 1 106 0 9 1 202 0 10 1 202 0 16 1 202 0 25 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 49 1 202 0 50 1 202 0 55 1 202 0 146 1 202 0 149 1 202 0 152] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 55 1 206 0 146 1 206 0 152] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 214 0 1 1 214 0 5 1 214 0 7 1 214 0 10 1 214 0 11 1 214 0 12 1 214 0 13 1 214 0 14 1 214 0 15 1 214 0 17 1 214 0 18 1 214 0 19 1 214 0 20 1 214 0 21 1 214 0 22 5 145 0 25 1 214 0 26 1 214 0 27 1 214 0 28 1 214 0 34 1 214 0 43 1 214 0 45 1 214 0 46 1 214 0 47 1 214 0 48 1 214 0 51 1 214 0 52 1 214 0 53 1 214 0 54 5 145 0 55 5 145 0 84 1 214 0 146 1 214 0 147 1 214 0 148 1 214 0 150 1 214 0 151] 
#[0 1 218 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 5 149 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 5 153 0 88 5 157 0 89 5 161 0 90 2 13 0 91 2 17 0 92 5 165 0 93 5 169 0 94 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 5 173 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 5 177 0 2 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 60 5 185 0 61 5 189 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 5 193 0 123 5 197 0 124 2 101 0 126 5 201 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 233 0 1 1 226 0 2 1 226 0 3 1 226 0 4 1 226 0 6 1 226 0 7 1 226 0 8 2 217 0 9 1 226 0 10 1 226 0 16 1 226 0 25 1 226 0 28 1 226 0 29 1 226 0 30 1 226 0 31 1 226 0 32 1 226 0 33 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 40 1 226 0 41 1 226 0 42 1 226 0 43 1 226 0 44 1 226 0 49 1 226 0 50 1 226 0 53 1 226 0 55 5 205 0 83 2 225 0 86 2 233 0 95 5 209 0 125 1 226 0 146 1 226 0 149 1 226 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 5 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 225 0 60 5 229 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 105 0 137 3 109 0 138 3 113 0 139 3 117 0 140 1 13 0 141 3 121 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 1 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 1 125 0 106 1 77 0 107 0 157 0 108 1 129 0 109 0 249 0 110 1 85 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 1 10 0 30 1 10 0 31 1 10 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 10 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 1 45 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 3 1 0 43 0 186 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 3 137 0 115 2 53 0 126 2 57 0 129 3 137 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151] 
#[1 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 32 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 41 1 22 0 42 1 22 0 43 1 22 0 44 1 22 0 49 1 22 0 50 1 201 0 64 1 22 0 149] 
#[0 1 234 0 15] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 245 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 249 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 1 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 5 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 9 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 13 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 17 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 21 0 60 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 25 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 29 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 33 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 37 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 41 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 45 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 3 1 0 104 3 5 0 105 0 161 0 106 1 77 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 6 0 219 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 16 1 238 0 25 1 238 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 238 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 238 0 55 1 238 0 146 0 219 0 149 1 238 0 152] 
#[1 1 134 0 3 1 134 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 49 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 223 0 3 0 166 0 7 0 223 0 16 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 42 0 166 0 43 0 166 0 44 0 166 0 49 0 166 0 50 0 166 0 53 0 166 0 149] 
#[1 2 165 0 1 0 227 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 2 149 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 2 169 0 43 0 186 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 189 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 2 165 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 189 0 116 2 193 0 117 2 197 0 118 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151] 
#[0 6 69 0 16 0 103] 
#[0 1 250 0 3 0 16] 
#[1 6 73 0 3 6 77 0 16 6 77 0 103] 
#[0 6 81 0 16 0 103] 
#[1 6 85 0 3 1 254 0 16] 
#[0 6 89 0 16 0 103] 
#[0 2 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 2 6 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 233 0 1 1 226 0 2 1 226 0 3 1 226 0 4 1 226 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 10 1 226 0 15 1 226 0 16 1 226 0 25 1 226 0 28 1 226 0 29 1 226 0 30 1 226 0 31 1 226 0 32 1 226 0 33 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 40 1 226 0 41 1 226 0 42 1 226 0 43 1 226 0 44 1 226 0 49 1 226 0 50 1 226 0 53 1 226 0 55 2 233 0 95 6 93 0 125 1 226 0 146 1 226 0 149 1 226 0 152] 
#[0 2 10 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 2 22 0 25 0 55 0 152] 
#[1 2 26 0 2 2 26 0 3 2 26 0 4 2 26 0 6 2 26 0 8 2 26 0 10 2 26 0 16 2 26 0 25 2 26 0 28 2 26 0 29 2 26 0 30 2 26 0 31 2 26 0 32 2 26 0 33 2 26 0 35 2 26 0 36 2 26 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 26 0 49 1 197 0 50 2 26 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 26 0 146 1 213 0 149 2 26 0 152] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 30 0 49 2 30 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 30 0 146 2 30 0 152] 
#[0 2 34 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 38 0 2 2 38 0 3 2 38 0 4 2 38 0 6 2 38 0 8 2 38 0 10 2 38 0 16 2 38 0 25 2 38 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 38 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 38 0 49 1 197 0 50 2 38 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 38 0 146 1 213 0 149 2 38 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 42 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 42 0 49 2 42 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 42 0 146 2 42 0 152] 
#[0 2 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 54 0 2 2 54 0 3 2 54 0 4 2 54 0 6 2 54 0 8 2 54 0 10 2 54 0 16 2 54 0 25 2 54 0 28 1 137 0 29 2 54 0 30 1 145 0 31 1 149 0 32 2 54 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 54 0 49 1 197 0 50 2 54 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 54 0 146 1 213 0 149 2 54 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 1 137 0 29 2 58 0 30 1 145 0 31 1 149 0 32 2 58 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 58 0 49 2 58 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 58 0 146 2 58 0 152] 
#[0 2 62 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 66 0 2 2 66 0 3 2 66 0 4 2 66 0 6 2 66 0 8 2 66 0 10 2 66 0 16 2 66 0 25 2 66 0 28 1 137 0 29 2 66 0 30 2 66 0 31 1 149 0 32 2 66 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 66 0 49 1 197 0 50 2 66 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 66 0 146 1 213 0 149 2 66 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 2 70 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 2 70 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 70 0 146 2 70 0 152] 
#[0 2 74 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 78 0 2 2 78 0 3 2 78 0 4 2 78 0 6 2 78 0 8 2 78 0 10 2 78 0 16 2 78 0 25 2 78 0 28 1 137 0 29 2 78 0 30 2 78 0 31 2 78 0 32 2 78 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 78 0 49 1 197 0 50 2 78 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 78 0 146 1 213 0 149 2 78 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 1 137 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 82 0 49 2 82 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 82 0 146 2 82 0 152] 
#[0 2 86 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 6 2 90 0 8 2 90 0 10 2 90 0 16 2 90 0 25 2 90 0 28 1 137 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 35 2 90 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 90 0 49 1 197 0 50 2 90 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 90 0 146 1 213 0 149 2 90 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 1 137 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 94 0 49 2 94 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 94 0 146 2 94 0 152] 
#[0 2 98 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 10 2 102 0 16 2 102 0 25 2 102 0 28 1 137 0 29 2 102 0 30 2 102 0 31 2 102 0 32 2 102 0 33 2 102 0 35 2 102 0 36 2 102 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 102 0 49 1 197 0 50 2 102 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 102 0 146 1 213 0 149 2 102 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 137 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 106 0 49 2 106 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 106 0 146 2 106 0 152] 
#[0 2 110 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 6 2 114 0 8 2 114 0 10 2 114 0 16 2 114 0 25 2 114 0 28 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 114 0 49 1 197 0 50 2 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 114 0 146 1 213 0 149 2 114 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 118 0 49 2 118 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 118 0 146 2 118 0 152] 
#[0 2 122 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 10 2 126 0 16 2 126 0 25 2 126 0 28 2 126 0 29 2 126 0 30 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 126 0 49 1 197 0 50 2 126 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 126 0 146 1 213 0 149 2 126 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 130 0 49 2 130 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 130 0 146 2 130 0 152] 
#[0 2 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 6 2 150 0 8 2 150 0 10 2 150 0 16 2 150 0 25 2 150 0 28 2 150 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 33 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 150 0 49 1 197 0 50 2 150 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 150 0 146 1 213 0 149 2 150 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 154 0 49 2 154 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 154 0 146 2 154 0 152] 
#[0 2 158 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 6 2 162 0 8 2 162 0 10 2 162 0 16 2 162 0 25 2 162 0 28 2 162 0 29 2 162 0 30 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 162 0 49 1 197 0 50 2 162 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 162 0 146 1 213 0 149 2 162 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 166 0 49 2 166 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 166 0 146 2 166 0 152] 
#[0 2 170 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 174 0 2 2 174 0 3 2 174 0 4 2 174 0 6 2 174 0 8 2 174 0 10 2 174 0 16 2 174 0 25 2 174 0 28 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 174 0 49 1 197 0 50 2 174 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 174 0 146 1 213 0 149 2 174 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 178 0 49 2 178 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 178 0 146 2 178 0 152] 
#[0 2 182 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 186 0 2 2 186 0 3 2 186 0 4 2 186 0 6 2 186 0 8 2 186 0 10 2 186 0 16 2 186 0 25 2 186 0 28 2 186 0 29 2 186 0 30 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 1 189 0 44 2 186 0 49 1 197 0 50 2 186 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 186 0 146 1 213 0 149 2 186 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 1 189 0 44 2 190 0 49 2 190 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 190 0 146 2 190 0 152] 
#[0 2 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 198 0 2 2 198 0 3 2 198 0 4 2 198 0 6 2 198 0 8 2 198 0 10 2 198 0 16 2 198 0 25 2 198 0 28 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 49 1 197 0 50 2 198 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 198 0 146 1 213 0 149 2 198 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 2 202 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 202 0 146 2 202 0 152] 
#[0 2 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 210 0 2 2 210 0 3 2 210 0 4 2 210 0 6 2 210 0 8 2 210 0 10 2 210 0 16 2 210 0 25 2 210 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 210 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 210 0 49 1 197 0 50 2 210 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 210 0 146 1 213 0 149 2 210 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 214 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 214 0 49 2 214 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 214 0 146 2 214 0 152] 
#[0 2 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 146 0 147 0 148 0 149 0 150 0 151 0 152] 
#[0 2 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 6 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 93 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 93 0 120 2 121 0 121 6 101 0 122 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 2 230 0 7] 
#[0 2 234 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 2 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 147 0 148 0 150 0 151] 
#[0 2 242 0 1] 
#[0 6 105 0 8 0 99] 
#[0 2 246 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 2 250 0 3 0 8] 
#[1 6 109 0 3 6 113 0 8 6 113 0 99] 
#[0 2 254 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 2 0 3 0 8] 
#[1 6 117 0 3 3 6 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 3 161 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151 3 10 0 152] 
#[0 3 14 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 60 6 129 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 129 0 112 2 53 0 126 2 57 0 129 6 133 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 18 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 6 145 0 2 1 114 0 28 6 145 0 96] 
#[1 6 149 0 2 1 122 0 28 6 149 0 96] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 153 0 59 0 129 0 60 0 133 0 61 6 153 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 26 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 121 0 60 6 157 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 6 157 0 112 2 53 0 126 2 57 0 129 6 161 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 30 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 165 0 59 0 129 0 60 0 133 0 61 6 165 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 34 0 2 0 4 0 10 0 25 0 55 0 146] 
#[1 3 38 0 2 3 38 0 3 3 38 0 4 3 38 0 6 3 38 0 8 3 38 0 9 3 38 0 10 3 38 0 16 3 38 0 25 3 38 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 38 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 38 0 55 1 201 0 64 1 209 0 66 3 38 0 146 1 213 0 149 3 38 0 152] 
#[0 3 42 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 2 53 0 53 2 53 0 126 2 57 0 129 6 169 0 130] 
#[0 3 46 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 6 177 0 2 6 173 0 4 4 245 0 25 4 245 0 55 4 245 0 84 6 177 0 96] 
#[0 3 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 6 181 0 2 0 96] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 3 58 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 6 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 189 0 128 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 62 0 2 0 3 0 6 0 8 0 16] 
#[1 3 66 0 6 3 66 0 8 3 66 0 16 6 193 0 53 6 193 0 126] 
#[0 3 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 3 74 0 6 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 74 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 6 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 6 185 0 120 2 101 0 126 2 105 0 127 6 197 0 128 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 1 10 0 2 1 10 0 3 1 10 0 4 1 10 0 6 1 10 0 8 1 10 0 9 1 10 0 10 1 10 0 16 1 10 0 25 1 10 0 28 5 49 0 29 1 10 0 30 1 10 0 31 1 10 0 32 1 10 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 1 10 0 49 1 197 0 50 1 10 0 55 1 201 0 64 1 209 0 66 1 10 0 146 1 213 0 149 1 10 0 152] 
#[0 1 14 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 16 1 22 0 25 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 41 1 22 0 42 1 22 0 43 1 22 0 44 1 22 0 49 1 22 0 50 1 22 0 55 1 201 0 64 1 209 0 66 1 22 0 146 1 22 0 149 1 22 0 152] 
#[0 1 26 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 201 0 60 3 173 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 6 205 0 60 3 185 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 53 0 126 2 57 0 129 3 189 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 209 0 60 3 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 213 0 60 3 213 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 217 0 60 3 225 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 221 0 60 3 237 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 225 0 60 3 249 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 229 0 60 4 5 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 233 0 60 4 17 0 62 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 237 0 60 4 41 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 241 0 60 4 53 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 245 0 60 4 65 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 249 0 60 4 77 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 253 0 60 4 89 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 1 0 60 4 101 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 7 5 0 2 1 114 0 28 7 5 0 96] 
#[1 7 9 0 2 1 122 0 28 7 9 0 96] 
#[1 1 178 0 2 1 178 0 3 1 178 0 4 1 178 0 6 1 178 0 8 1 178 0 9 1 178 0 10 1 178 0 16 1 178 0 25 1 178 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 178 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 178 0 55 1 201 0 64 1 209 0 66 1 178 0 146 1 213 0 149 1 178 0 152] 
#[0 1 182 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 94 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 3 106 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 3 110 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 7 13 0 89 7 17 0 90 2 13 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 3 110 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 4 173 0 10 7 21 0 25 7 21 0 55 7 21 0 84 7 25 0 87 3 114 0 146] 
#[1 5 153 0 88 5 165 0 93 7 29 0 94 5 173 0 146] 
#[1 3 118 0 10 5 153 0 88 5 165 0 93 7 33 0 94 5 173 0 146] 
#[0 7 37 0 10] 
#[1 3 122 0 1 3 122 0 5 3 122 0 7 3 122 0 10 3 122 0 11 3 122 0 12 3 122 0 13 3 122 0 14 3 122 0 15 3 122 0 17 3 122 0 18 3 122 0 19 3 122 0 20 3 122 0 21 3 122 0 22 7 41 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 34 3 122 0 43 3 122 0 45 3 122 0 46 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 53 3 122 0 54 7 41 0 55 7 41 0 84 3 122 0 146 3 122 0 147 3 122 0 148 3 122 0 150 3 122 0 151] 
#[0 3 126 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 3 130 0 2 3 130 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 149] 
#[1 3 134 0 2 3 134 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 251 0 2 3 138 0 3 7 45 0 96] 
#[0 3 142 0 2 0 3] 
#[1 7 53 0 2 7 49 0 3 7 53 0 96] 
#[1 7 61 0 2 7 57 0 3 7 61 0 96] 
#[0 3 146 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 3 150 0 2 3 150 0 3 3 150 0 4 3 150 0 6 3 150 0 7 3 150 0 8 2 217 0 9 3 150 0 10 3 150 0 16 3 150 0 25 3 150 0 28 3 150 0 29 3 150 0 30 3 150 0 31 3 150 0 32 3 150 0 33 3 150 0 35 3 150 0 36 3 150 0 37 3 150 0 38 3 150 0 39 3 150 0 40 3 150 0 41 3 150 0 42 3 150 0 43 3 150 0 44 3 150 0 49 3 150 0 50 3 150 0 53 3 150 0 55 7 65 0 83 2 225 0 86 3 150 0 146 3 150 0 149 3 150 0 152] 
#[0 1 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 113 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 1 125 0 72 1 125 0 73 1 125 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 81 1 125 0 82 0 201 0 85 0 205 0 95 1 125 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 1 125 0 106 0 237 0 107 0 241 0 108 1 129 0 109 0 249 0 110 0 253 0 111 1 125 0 132 1 125 0 133 1 125 0 134 1 13 0 141 1 125 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 7 81 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 1 246 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 1 246 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 2 149 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 2 169 0 43 0 186 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 181 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 181 0 116 2 181 0 117 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 201 0 114 2 205 0 115 2 201 0 116 2 201 0 117 2 53 0 126 2 57 0 129 2 205 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 26 0 29 2 26 0 30 2 26 0 31 2 26 0 32 2 26 0 35 2 26 0 36 2 26 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 26 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 38 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 54 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 54 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 66 0 30 2 66 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 66 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 78 0 30 2 78 0 31 2 78 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 78 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 35 2 90 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 90 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 2 102 0 30 2 102 0 31 2 102 0 32 2 102 0 35 2 102 0 36 2 102 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 102 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 114 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 126 0 29 2 126 0 30 2 126 0 31 2 126 0 32 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 126 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 150 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 150 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 162 0 29 2 162 0 30 2 162 0 31 2 162 0 32 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 162 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 174 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 186 0 29 2 186 0 30 2 186 0 31 2 186 0 32 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 3 69 0 44 2 186 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 210 0 49 1 197 0 50 1 201 0 64 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 141 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 154 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 147 0 148 0 150 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 145 0 60 7 149 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 129 0 60 7 133 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 3 93 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 157 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 161 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 165 0 60 7 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 7 181 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 7 181 0 103 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 3 97 0 128 0 161 0 132 0 161 0 133 0 161 0 134 3 101 0 136 3 113 0 139 3 117 0 140 1 13 0 141 7 185 0 142 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 3 170 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 7 173 0 60 7 177 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 189 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 193 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 7 197 0 16 0 103] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 7 205 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 2 81 0 60 2 85 0 61 7 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 7 201 0 78 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 7 205 0 99 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 201 0 120 2 101 0 126 4 157 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 6 193 0 53 0 126] 
#[1 3 190 0 2 3 190 0 3 3 190 0 4 3 190 0 6 3 190 0 8 3 190 0 9 3 190 0 10 3 190 0 16 3 190 0 25 3 190 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 190 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 190 0 55 1 201 0 64 1 209 0 66 3 190 0 146 1 213 0 149 3 190 0 152] 
#[0 3 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 210 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 3 214 0 28 0 30] 
#[0 3 218 0 28 0 30] 
#[1 1 245 0 28 7 209 0 92] 
#[0 3 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 3 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 1 245 0 28 7 213 0 92] 
#[0 3 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 7 217 0 2 0 96] 
#[0 3 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 3 242 0 3 0 6 0 8 0 16] 
#[0 3 246 0 8] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 7 221 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 221 0 120 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 3 250 0 6 0 16] 
#[1 2 26 0 2 2 26 0 3 2 26 0 4 2 26 0 6 2 26 0 8 2 26 0 9 2 26 0 10 2 26 0 16 2 26 0 25 2 26 0 28 2 26 0 29 2 26 0 30 2 26 0 31 2 26 0 32 2 26 0 33 2 26 0 35 2 26 0 36 2 26 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 26 0 49 1 197 0 50 2 26 0 55 1 201 0 64 1 209 0 66 2 26 0 146 1 213 0 149 2 26 0 152] 
#[1 2 38 0 2 2 38 0 3 2 38 0 4 2 38 0 6 2 38 0 8 2 38 0 9 2 38 0 10 2 38 0 16 2 38 0 25 2 38 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 38 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 38 0 49 1 197 0 50 2 38 0 55 1 201 0 64 1 209 0 66 2 38 0 146 1 213 0 149 2 38 0 152] 
#[1 2 54 0 2 2 54 0 3 2 54 0 4 2 54 0 6 2 54 0 8 2 54 0 9 2 54 0 10 2 54 0 16 2 54 0 25 2 54 0 28 5 49 0 29 2 54 0 30 5 57 0 31 5 61 0 32 2 54 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 54 0 49 1 197 0 50 2 54 0 55 1 201 0 64 1 209 0 66 2 54 0 146 1 213 0 149 2 54 0 152] 
#[1 2 66 0 2 2 66 0 3 2 66 0 4 2 66 0 6 2 66 0 8 2 66 0 9 2 66 0 10 2 66 0 16 2 66 0 25 2 66 0 28 5 49 0 29 2 66 0 30 2 66 0 31 5 61 0 32 2 66 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 66 0 49 1 197 0 50 2 66 0 55 1 201 0 64 1 209 0 66 2 66 0 146 1 213 0 149 2 66 0 152] 
#[1 2 78 0 2 2 78 0 3 2 78 0 4 2 78 0 6 2 78 0 8 2 78 0 9 2 78 0 10 2 78 0 16 2 78 0 25 2 78 0 28 5 49 0 29 2 78 0 30 2 78 0 31 2 78 0 32 2 78 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 78 0 49 1 197 0 50 2 78 0 55 1 201 0 64 1 209 0 66 2 78 0 146 1 213 0 149 2 78 0 152] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 6 2 90 0 8 2 90 0 9 2 90 0 10 2 90 0 16 2 90 0 25 2 90 0 28 5 49 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 35 2 90 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 90 0 49 1 197 0 50 2 90 0 55 1 201 0 64 1 209 0 66 2 90 0 146 1 213 0 149 2 90 0 152] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 9 2 102 0 10 2 102 0 16 2 102 0 25 2 102 0 28 5 49 0 29 2 102 0 30 2 102 0 31 2 102 0 32 2 102 0 33 2 102 0 35 2 102 0 36 2 102 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 102 0 49 1 197 0 50 2 102 0 55 1 201 0 64 1 209 0 66 2 102 0 146 1 213 0 149 2 102 0 152] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 6 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 16 2 114 0 25 2 114 0 28 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 114 0 49 1 197 0 50 2 114 0 55 1 201 0 64 1 209 0 66 2 114 0 146 1 213 0 149 2 114 0 152] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 9 2 126 0 10 2 126 0 16 2 126 0 25 2 126 0 28 2 126 0 29 2 126 0 30 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 126 0 49 1 197 0 50 2 126 0 55 1 201 0 64 1 209 0 66 2 126 0 146 1 213 0 149 2 126 0 152] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 6 2 150 0 8 2 150 0 9 2 150 0 10 2 150 0 16 2 150 0 25 2 150 0 28 2 150 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 33 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 150 0 49 1 197 0 50 2 150 0 55 1 201 0 64 1 209 0 66 2 150 0 146 1 213 0 149 2 150 0 152] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 6 2 162 0 8 2 162 0 9 2 162 0 10 2 162 0 16 2 162 0 25 2 162 0 28 2 162 0 29 2 162 0 30 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 162 0 49 1 197 0 50 2 162 0 55 1 201 0 64 1 209 0 66 2 162 0 146 1 213 0 149 2 162 0 152] 
#[1 2 174 0 2 2 174 0 3 2 174 0 4 2 174 0 6 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 16 2 174 0 25 2 174 0 28 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 174 0 49 1 197 0 50 2 174 0 55 1 201 0 64 1 209 0 66 2 174 0 146 1 213 0 149 2 174 0 152] 
#[1 2 186 0 2 2 186 0 3 2 186 0 4 2 186 0 6 2 186 0 8 2 186 0 9 2 186 0 10 2 186 0 16 2 186 0 25 2 186 0 28 2 186 0 29 2 186 0 30 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 5 101 0 44 2 186 0 49 1 197 0 50 2 186 0 55 1 201 0 64 1 209 0 66 2 186 0 146 1 213 0 149 2 186 0 152] 
#[1 2 198 0 2 2 198 0 3 2 198 0 4 2 198 0 6 2 198 0 8 2 198 0 9 2 198 0 10 2 198 0 16 2 198 0 25 2 198 0 28 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 49 1 197 0 50 2 198 0 55 1 201 0 64 1 209 0 66 2 198 0 146 1 213 0 149 2 198 0 152] 
#[1 2 210 0 2 2 210 0 3 2 210 0 4 2 210 0 6 2 210 0 8 2 210 0 9 2 210 0 10 2 210 0 16 2 210 0 25 2 210 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 210 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 210 0 49 1 197 0 50 2 210 0 55 1 201 0 64 1 209 0 66 2 210 0 146 1 213 0 149 2 210 0 152] 
#[0 3 254 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[0 4 2 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 146 0 149 0 152] 
#[1 3 114 0 10 7 225 0 25 7 225 0 55 7 225 0 84 3 114 0 146] 
#[0 4 6 0 10 0 146] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 4 10 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 14 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 7 229 0 10] 
#[0 4 18 0 10] 
#[0 4 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 4 26 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 146 0 147 0 148 0 150 0 151] 
#[0 4 30 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 5 181 0 60 5 185 0 61 7 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 7 237 0 123 2 101 0 126 7 241 0 127 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 34 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 7 245 0 2 6 193 0 53 7 245 0 96 6 193 0 126] 
#[0 4 38 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 42 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 249 0 60 3 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 253 0 60 3 181 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 1 0 60 3 197 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 8 5 0 60 7 133 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 3 89 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 5 237 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 101 0 126 2 105 0 127 7 137 0 128 0 161 0 132 0 161 0 133 0 161 0 134 7 141 0 136 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 9 0 60 3 221 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 13 0 60 3 233 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 17 0 60 3 245 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 21 0 60 4 1 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 25 0 60 4 13 0 61 0 141 0 63 4 29 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 29 0 60 4 37 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 33 0 60 4 49 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 37 0 60 4 61 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 41 0 60 4 73 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 45 0 60 4 85 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 49 0 60 4 97 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[1 2 66 0 3 2 66 0 16 1 137 0 29 2 66 0 30 2 66 0 31 1 149 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 66 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 57 0 135 1 213 0 149] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 46 0 16] 
#[0 4 50 0 3 0 16] 
#[1 4 54 0 3 4 54 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 58 0 3 4 58 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 205 0 1 0 186 0 3 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 186 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 2 149 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 2 169 0 43 0 186 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 186 0 49 0 186 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 2 157 0 60 2 181 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 2 169 0 104 2 173 0 105 0 161 0 106 2 177 0 107 0 157 0 108 0 245 0 109 0 249 0 110 1 85 0 111 2 29 0 113 2 181 0 114 2 185 0 115 2 181 0 116 2 181 0 117 2 53 0 126 2 57 0 129 2 185 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 0 186 0 149 1 29 0 150 1 33 0 151] 
#[0 4 62 0 16] 
#[0 4 66 0 3 0 16] 
#[1 4 70 0 3 4 70 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 4 74 0 3 4 74 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 65 0 135] 
#[0 4 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 8 57 0 16 0 103] 
#[0 4 86 0 3 0 16] 
#[0 4 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 94 0 3 0 8] 
#[0 4 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 102 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 106 0 2 0 4 0 10 0 25 0 55 0 146] 
#[0 4 110 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[0 4 114 0 2 0 3 0 6 0 8 0 16] 
#[1 2 21 0 1 0 217 0 5 0 213 0 7 4 10 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 1 245 0 28 0 77 0 34 0 225 0 43 0 225 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 6 141 0 91 2 17 0 92 2 21 0 95 2 25 0 97 0 213 0 98 0 217 0 100 0 221 0 102 0 225 0 104 0 229 0 105 0 161 0 106 0 237 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 2 29 0 113 2 33 0 114 2 33 0 115 2 33 0 116 2 33 0 117 2 49 0 119 2 53 0 126 2 57 0 129 2 33 0 130 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 4 10 0 146 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 118 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 146 0 152] 
#[0 3 138 0 2 0 3] 
#[0 4 122 0 2 0 3] 
#[1 8 65 0 2 8 61 0 3 8 65 0 96] 
#[0 4 126 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 26 0 3 2 26 0 16 2 26 0 29 2 26 0 30 2 26 0 31 2 26 0 32 2 26 0 33 2 26 0 35 2 26 0 36 2 26 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 26 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 38 0 3 2 38 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 38 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 38 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 54 0 3 2 54 0 16 7 69 0 29 2 54 0 30 7 77 0 31 8 53 0 32 2 54 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 54 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 7 69 0 29 2 66 0 30 2 66 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 66 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 57 0 135 1 213 0 149] 
#[1 2 78 0 3 2 78 0 16 7 69 0 29 2 78 0 30 2 78 0 31 2 78 0 32 2 78 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 78 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 90 0 3 2 90 0 16 7 69 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 35 2 90 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 90 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 102 0 3 2 102 0 16 7 69 0 29 2 102 0 30 2 102 0 31 2 102 0 32 2 102 0 33 2 102 0 35 2 102 0 36 2 102 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 102 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 114 0 3 2 114 0 16 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 114 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 126 0 3 2 126 0 16 2 126 0 29 2 126 0 30 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 126 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 150 0 3 2 150 0 16 2 150 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 33 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 150 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 162 0 3 2 162 0 16 2 162 0 29 2 162 0 30 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 162 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 174 0 3 2 174 0 16 2 174 0 29 2 174 0 30 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 174 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 186 0 3 2 186 0 16 2 186 0 29 2 186 0 30 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 7 121 0 44 2 186 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 198 0 3 2 198 0 16 2 198 0 29 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 2 210 0 3 2 210 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 210 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 210 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[1 0 205 0 1 0 217 0 5 0 213 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 221 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 13 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 69 0 60 3 209 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 161 0 72 0 161 0 73 0 161 0 74 0 161 0 75 0 161 0 76 0 161 0 77 0 161 0 81 0 161 0 82 0 201 0 85 0 205 0 95 0 161 0 97 0 213 0 98 0 217 0 100 0 221 0 102 5 233 0 104 7 153 0 105 0 161 0 106 5 241 0 107 0 241 0 108 0 245 0 109 0 249 0 110 0 253 0 111 0 161 0 132 0 161 0 133 0 161 0 134 1 13 0 141 0 161 0 145 1 21 0 147 1 25 0 148 1 29 0 150 1 33 0 151] 
#[0 4 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 8 73 0 2 6 193 0 53 8 73 0 96 6 193 0 126] 
#[0 4 134 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152] 
#[1 2 66 0 3 2 66 0 16 7 69 0 29 2 66 0 30 2 66 0 31 8 53 0 32 2 66 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 66 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 149] 
#[0 4 138 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 146 0 149 0 152]
	).
]

{ #category : #private }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState |
	scanner lastWasEol
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ scanner lastWasEol: false.
					token := currentToken.
					previousState := currentState.
					currentToken := currentToken class
						value: ''
						start: nil
						ids: {scanner eolId}.
					currentState := self duplicateState.
					self parseCurrentToken.
					currentToken := token.
					self parseCurrentToken.
					self restoreState: previousState.
					currentToken := token ] ].
	currentToken ids first = scanner map_opId
		ifTrue: [ token := currentToken.
			position := scanner position.
			currentToken := currentToken class
				value: '%'
				start: token startPosition
				ids: {scanner struct_opId}.
			previousState := currentState.
			currentState := self duplicateState.
			self position: position - 2.
			self parseCurrentToken.
			self restoreState: previousState.
			currentToken := token.
			self position: position ].
	currentToken ids first = scanner identifierId
		ifTrue: [ lookahead := self peekNextToken.
			id := lookahead value = 'do'
				ifTrue: [ scanner do_identifierId ]
				ifFalse: [ lookahead value = ' ??? '
						ifTrue: [ scanner block_identifierId ]
						ifFalse: [ lookahead value = '['
								ifTrue: [ scanner bracket_identifierId ]
								ifFalse: [ lookahead value = '('
										ifTrue: [ scanner paren_identifierId ] ] ] ].
			id notNil
				ifTrue: [ ids := {id.
					scanner identifierId} ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '('
				ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil
		ifTrue: [ currentToken ids: ids ].
	^ super actionsForCurrentToken
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr15: nodes [
	| result |
	result := ElixirTrueNode new.
	result _true: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr16: nodes [
	| result |
	result := ElixirFalseNode new.
	result _false: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr17: nodes [
	| result |
	result := ElixirNilNode new.
	result _nil: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr23: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirAtomNode new.
	result atom: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr3: nodes [
	| result |
	result := ElixirCaptureNode new.
	result op: (nodes at: 1).
	result int: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr4: nodes [
	| result |
	result := ElixirLambdaNode new.
	result fn: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr5: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr6: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr9: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc2: nodes [
	| result |
	result := ElixirAssocNode new.
	result assoc: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base1: nodes [
	| result |
	result := ElixirAssocBaseNode new.
	result addNode: (nodes at: 1) to: result assocs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result assocs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr1: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result key: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr6: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update1: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result associatoin: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update2: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result association: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update_kw1: nodes [
	| result |
	result := ElixirAssocUpdateKwNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbin_heredoc1: nodes [
	| result |
	result := ElixirBinHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbin_string1: nodes [
	| result |
	result := ElixirBinStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string1: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string2: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe1: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe2: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr2: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	result do_block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr3: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result do_block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr5: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result do_block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item1: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	result stab: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item2: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list1: nodes [
	| result |
	result := ElixirBlockListNode new.
	result addNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg1: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg2: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result com: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg3: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg4: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result com: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_at_expr2: nodes [
	| result |
	result := ElixirBracketAtExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result arg: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_expr2: nodes [
	| result |
	result := ElixirBracketExprNode new.
	result identifier: (nodes at: 1).
	result arg: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensCommaExprNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwNode new.
	result addNode: (nodes at: 1) to: result kws.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw2: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result kws.
	result addFirstToken: (nodes at: 2) to: result coms.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwExprNode new.
	result key: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	result com: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many2: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result args: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict3: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens1: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens2: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens3: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens4: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens6: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result kw: (nodes at: 4).
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens7: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result kw: (nodes at: 4).
	result addToken: (nodes at: 5) to: result coms.
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base1: nodes [
	| result |
	result := ElixirCallArgsParensBaseNode new.
	result addNode: (nodes at: 1) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result args.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args1: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args2: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args3: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base1: nodes [
	| result |
	result := ElixirContainerArgsBaseNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block1: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block2: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block3: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result block: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block4: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result block: (nodes at: 3).
	result end: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe1: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe2: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias1: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result alias: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias2: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result alias: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias3: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias4: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result alias: (nodes at: 4).
	result rightCurly: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier1: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier2: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier1: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier2: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	result op: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier1: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier2: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier1: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier2: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result expression: (nodes at: 1).
	result dot: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier1: nodes [
	| result |
	result := ElixirDotOpIdentifierNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [
	| result |
	result := ElixirDotOpIdentifierNode new.
	result addToken: (nodes at: 2) to: result ops.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier1: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier2: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForempty_paren1: nodes [
	| result |
	result := ElixirEmptyParenNode new.
	result leftParen: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe1: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result end: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe2: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result eoe: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list1: nodes [
	| result |
	result := ElixirExprListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe1: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe2: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar1: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar2: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar3: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar4: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	result addToken: (nodes at: 2) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar5: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	result addToken: (nodes at: 3) to: result eoes.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base1: nodes [
	| result |
	result := ElixirKwBaseNode new.
	result addToken: (nodes at: 1) to: result keies.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keies.
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist1: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist2: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args1: nodes [
	| result |
	result := ElixirListArgsNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args2: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args3: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args4: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_heredoc1: nodes [
	| result |
	result := ElixirListHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForlist_string1: nodes [
	| result |
	result := ElixirListStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap2: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap3: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result struct: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args1: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args3: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args4: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result com: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close1: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result kw: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close2: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close3: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	result close: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr4: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result ops.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr5: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr8: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result identifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_op_expr14: nodes [
	| result |
	result := ElixirMatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr1: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	result expressoin: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr5: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_many_expr2: nodes [
	| result |
	result := ElixirNoParensManyExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_ambig_expr2: nodes [
	| result |
	result := ElixirNoParensOneAmbigExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_expr2: nodes [
	| result |
	result := ElixirNoParensOneExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_op_expr13: nodes [
	| result |
	result := ElixirNoParensOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber1: nodes [
	| result |
	result := ElixirNumberNode new.
	result int: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber2: nodes [
	| result |
	result := ElixirNumberNode new.
	result float: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFornumber3: nodes [
	| result |
	result := ElixirNumberNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call1: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call2: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab1: nodes [
	| result |
	result := ElixirStabNode new.
	result addNode: (nodes at: 1) to: result stabs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result stabs.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_eoe1: nodes [
	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr1: nodes [
	| result |
	result := ElixirStabExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr3: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr4: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result guard: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr1: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr2: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstab_parens_many2: nodes [
	| result |
	result := ElixirStabParensManyNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForstruct_expr1: nodes [
	| result |
	result := ElixirStructExprNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFortuple1: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFortuple2: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result elements: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr1: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result matched: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr7: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result op: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr8: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_op_expr13: nodes [
	| result |
	result := ElixirUnmatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #testing }
ElixirParser >> tryAllTokens [
	^ (currentToken ids includes: scanner identifierId) not
		or: [ currentToken ids includes: scanner op_identifierId ]
]
