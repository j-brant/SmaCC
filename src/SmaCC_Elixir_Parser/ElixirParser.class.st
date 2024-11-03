Class {
	#name : 'ElixirParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 37 0 250] 
#[ 0 42 1 6] 
#[ 0 122 1 14] 
#[ 0 122 1 14 1 137] 
#[ 0 122 1 14 1 141] 
#[ 0 122 1 14 1 145] 
#[ 0 122 1 14 1 149] 
#[ 0 122 1 14 1 153] 
#[ 0 122 1 14 1 157] 
#[ 0 122 1 14 1 161] 
#[ 0 122 1 14 1 165] 
#[ 0 122 1 14 1 169] 
#[ 0 122 1 14 1 173] 
#[ 0 122 1 14 1 177] 
#[ 0 122 1 14 1 181] 
#[ 0 122 1 14 1 185] 
#[ 0 122 1 14 1 189] 
#[ 0 122 1 14 1 193] 
#[ 0 130 1 18] 
#[ 0 122 1 26] 
#[ 0 122 1 26 1 137] 
#[ 0 122 1 26 1 141] 
#[ 0 122 1 26 1 145] 
#[ 0 122 1 26 1 149] 
#[ 0 122 1 26 1 153] 
#[ 0 122 1 26 1 157] 
#[ 0 122 1 26 1 161] 
#[ 0 122 1 26 1 165] 
#[ 0 122 1 26 1 169] 
#[ 0 122 1 26 1 173] 
#[ 0 122 1 26 1 177] 
#[ 0 122 1 26 1 181] 
#[ 0 122 1 26 1 185] 
#[ 0 122 1 26 1 189] 
#[ 0 122 1 26 1 193] 
#[ 0 130 1 30] 
#[ 0 122 1 182] 
#[ 0 122 1 137 1 182] 
#[ 0 122 1 141 1 182] 
#[ 0 122 1 145 1 182] 
#[ 0 122 1 149 1 182] 
#[ 0 122 1 153 1 182] 
#[ 0 122 1 157 1 182] 
#[ 0 122 1 161 1 182] 
#[ 0 122 1 165 1 182] 
#[ 0 122 1 169 1 182] 
#[ 0 122 1 173 1 182] 
#[ 0 122 1 177 1 182] 
#[ 0 122 1 181 1 182] 
#[ 0 122 1 182 1 185] 
#[ 0 122 1 182 1 189] 
#[ 0 122 1 182 1 193] 
#[ 0 130 1 186] 
#[ 1 174 1 242] 
#[ 0 178 1 246] 
#[ 0 198 1 250] 
#[ 1 70 2 18] 
#[ 1 226 2 22] 
#[ 0 138 2 142] 
#[ 0 142 2 146] 
#[ 0 146 2 150] 
#[ 3 142 4 229]
	).
]

{ #category : 'generated-accessing' }
ElixirParser class >> cacheId [
	^'2024-11-03T13:02:07.407304+08:00'
]

{ #category : 'generated' }
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
%start grammar;
<bracket_identifier>
	: <identifier> # How do I peek for [
	;
<paren_identifier>
	: <identifier> # How do I peek for a (
	;
<block_identifier>
	: <identifier> # Seems to be related to unsfae_atoms
	;
<dot_call_op>
	: \.\(
	;       ## @
#%nonassoc dot_identifier;

### MAIN FLOW OF EXPRESSIONS

grammar 
	: eoe'eoe' {{}}
	| expr_list'expressions' {{}}
	|  eoe'eoe' expr_list'expressions' {{}}
	|  expr_list'expressions' eoe'eoe' {{}}
	| eoe'eoe' expr_list 'expressions' eoe 'eoe' {{}}
	| {{}}
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
	| open_paren 'leftParen' stab'stab' "";"" 'semi' close_paren'rightParen' {{}}
	| open_paren 'leftParen' "";"" 'semi' stab'stab'"";"" 'semi' close_paren'rightParen' {{}}
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
	: bracket_value 'value'{{}}
	| bracket_values "","" 'com' bracket_value 'value' {{}}
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
	| stab'stab' eoe 'eoe'  {{}}
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 'expression'  {{}}
	| stab_op_eol_and_expr'expression' {{}}
	| empty_paren'args' stab_op_eol_and_expr'expression' {{}}
	| empty_paren 'args'<when_op>'when' expr 'guard' stab_op_eol_and_expr'expression' {{}}
	| call_args_no_parens_all'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' stab_op_eol_and_expr'expression' {{}}
	| stab_parens_many'args' <when_op>'when' expr 'guard' stab_op_eol_and_expr'expression' {{}}
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
	: <op_identifier> 'identifier' {{}}
	| matched_expr 'expression' <dot_op> 'op' <op_identifier> 'identifier' {{}}
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
	: open_paren 'leftParen' call_args_no_parens_kw'args' close_paren'rightParen' {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren'rightParen' {{}}
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
	: kw_base 'kw' "","" 'com' ? {{}}
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

{ #category : 'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : 'generated' }
ElixirParser class >> reduceTable [
^#(
	#(61 0 #reduceActionForgrammar6: 5811206 false) 
	#(99 1 #liftFirstValue: 16433153 false) 
	#(104 1 #liftFirstValue: 16596993 false) 
	#(102 1 #liftFirstValue: 16543745 false) 
	#(75 1 #reduceActionForaccess_expr16: 12851216 false) 
	#(89 1 #reduceActionForfn_eoe1: 15193089 false) 
	#(75 1 #reduceActionForaccess_expr17: 12851217 false) 
	#(75 1 #reduceActionForaccess_expr15: 12851215 false) 
	#(106 1 #liftFirstValue: 16644097 false) 
	#(80 1 #reduceActionFornumber1: 13936641 false) 
	#(75 1 #reduceActionForaccess_expr24: 12851224 false) 
	#(76 1 #reduceActionForbin_string1: 13741057 false) 
	#(78 1 #reduceActionForbin_heredoc1: 13830145 false) 
	#(77 1 #reduceActionForlist_string1: 13784065 false) 
	#(79 1 #reduceActionForlist_heredoc1: 13882369 false) 
	#(88 1 #liftFirstValue: 15158273 false) 
	#(145 1 #liftFirstValue: 22389761 false) 
	#(108 1 #liftFirstValue: 16718850 false) 
	#(108 1 #liftFirstValue: 16718849 false) 
	#(80 1 #reduceActionFornumber2: 13936642 false) 
	#(80 1 #reduceActionFornumber3: 13936643 false) 
	#(75 1 #reduceActionForaccess_expr23: 12851223 false) 
	#(109 1 #reduceActionFordot_identifier1: 16791553 false) 
	#(110 1 #reduceActionFordot_alias1: 16920577 false) 
	#(88 1 #liftFirstValue: 15158274 false) 
	#(113 1 #reduceActionFordot_bracket_identifier1: 17509377 false) 
	#(114 1 #reduceActionFordot_paren_identifier1: 17661953 false) 
	#(61 1 #reduceActionForgrammar2: 5811202 false) 
	#(62 1 #reduceActionForexpr_list1: 6059009 false) 
	#(63 1 #liftFirstValue: 6148097 false) 
	#(63 1 #liftFirstValue: 6148099 false) 
	#(63 1 #liftFirstValue: 6148098 false) 
	#(65 1 #reduceActionForunmatched_expr8: 8179720 false) 
	#(66 1 #reduceActionForno_parens_expr5: 8581125 false) 
	#(66 1 #reduceActionForno_parens_expr5: 8581126 false) 
	#(64 1 #reduceActionFormatched_expr5: 7819269 false) 
	#(64 1 #reduceActionFormatched_expr5: 7819270 false) 
	#(64 1 #reduceActionFormatched_expr5: 7819271 false) 
	#(75 1 #liftFirstValue: 12851218 false) 
	#(75 1 #liftFirstValue: 12851219 false) 
	#(75 1 #liftFirstValue: 12851220 false) 
	#(75 1 #liftFirstValue: 12851221 false) 
	#(75 1 #liftFirstValue: 12851211 false) 
	#(75 1 #liftFirstValue: 12851226 false) 
	#(75 1 #liftFirstValue: 12851202 false) 
	#(75 1 #liftFirstValue: 12851201 false) 
	#(61 1 #reduceActionForgrammar1: 5811201 false) 
	#(75 1 #liftFirstValue: 12851210 false) 
	#(74 1 #liftFirstValue: 12531714 false) 
	#(75 1 #liftFirstValue: 12851225 false) 
	#(74 1 #liftFirstValue: 12531713 false) 
	#(115 1 #reduceActionFordot_call_identifier1: 17808385 false) 
	#(75 1 #liftFirstValue: 12851212 false) 
	#(75 1 #liftFirstValue: 12851214 false) 
	#(75 1 #liftFirstValue: 12851222 false) 
	#(75 1 #liftFirstValue: 12851213 false) 
	#(112 1 #reduceActionFordot_do_identifier1: 17371137 false) 
	#(111 1 #reduceActionFordot_op_identifier1: 17230849 false) 
	#(89 2 #reduceActionForfn_eoe2: 15193090 false) 
	#(148 1 #reduceActionForstruct_expr1: 23061505 false) 
	#(148 1 #reduceActionForstruct_expr1: 23061510 false) 
	#(148 1 #reduceActionForstruct_expr1: 23061507 false) 
	#(148 1 #reduceActionForstruct_expr1: 23061506 false) 
	#(149 2 #reduceActionFormap2: 23274498 false) 
	#(75 2 #reduceActionForaccess_expr3: 12851203 false) 
	#(65 2 #reduceActionForunmatched_expr7: 8179719 false) 
	#(64 2 #reduceActionFormatched_expr4: 7819268 false) 
	#(66 2 #reduceActionFormatched_expr4: 8581124 false) 
	#(65 2 #reduceActionForunmatched_expr7: 8179718 false) 
	#(64 2 #reduceActionFormatched_expr4: 7819267 false) 
	#(66 2 #reduceActionFormatched_expr4: 8581123 false) 
	#(61 2 #reduceActionForgrammar4: 5811204 false) 
	#(115 2 #reduceActionFordot_call_identifier2: 17808386 false) 
	#(64 2 #reduceActionFormatched_expr1: 7819265 false) 
	#(65 2 #reduceActionForunmatched_expr1: 8179713 false) 
	#(66 2 #reduceActionForno_parens_expr1: 8581121 false) 
	#(65 2 #reduceActionFormatched_expr1: 8179714 false) 
	#(65 2 #reduceActionFormatched_expr1: 8179715 false) 
	#(65 2 #reduceActionFormatched_expr1: 8179716 false) 
	#(64 2 #reduceActionFormatched_expr8: 7819272 false) 
	#(85 2 #reduceActionForbracket_expr2: 14650370 false) 
	#(61 2 #reduceActionForgrammar3: 5811203 false) 
	#(96 1 #reduceActionForstab_op_eol_and_expr1: 16195585 false) 
	#(130 1 #liftFirstValue: 20375553 false) 
	#(95 1 #reduceActionForstab_expr1: 15726593 false) 
	#(119 1 #liftFirstValue: 18349058 false) 
	#(120 1 #liftFirstValue: 18423809 false) 
	#(93 1 #reduceActionForstab1: 15482881 false) 
	#(95 1 #reduceActionForstab_expr1: 15726594 false) 
	#(121 1 #reduceActionForcall_args_no_parens_many2: 18475010 false) 
	#(118 1 #liftFirstValue: 18230273 false) 
	#(118 1 #liftFirstValue: 18230274 false) 
	#(118 1 #liftFirstValue: 18230275 false) 
	#(134 1 #reduceActionForcall_args_no_parens_kw1: 20783105 false) 
	#(119 1 #liftFirstValue: 18349057 false) 
	#(101 2 #reduceActionForempty_paren1: 16482305 false) 
	#(136 2 #reduceActionForlist1: 21118977 false) 
	#(124 1 #liftFirstValue: 19187713 false) 
	#(124 1 #liftFirstValue: 19187714 false) 
	#(124 1 #liftFirstValue: 19187715 false) 
	#(125 1 #reduceActionForcontainer_args_base1: 19264513 false) 
	#(135 1 #reduceActionForlist_args2: 20938754 false) 
	#(132 1 #reduceActionForkw1: 20623361 false) 
	#(135 1 #reduceActionForlist_args1: 20938753 false) 
	#(138 2 #reduceActionForbit_string1: 21406721 false) 
	#(126 1 #reduceActionForcontainer_args1: 19393537 false) 
	#(137 2 #reduceActionFortuple1: 21262337 false) 
	#(65 2 #reduceActionForunmatched_expr7: 8179717 false) 
	#(64 2 #reduceActionFormatched_expr4: 7819266 false) 
	#(66 2 #reduceActionFormatched_expr4: 8581122 false) 
	#(73 2 #reduceActionForno_parens_one_expr2: 12371970 false) 
	#(71 2 #reduceActionForno_parens_one_ambig_expr2: 11999234 false) 
	#(122 1 #reduceActionForcall_args_no_parens_many_strict1: 18724865 false) 
	#(72 2 #reduceActionForno_parens_many_expr2: 12181506 false) 
	#(73 2 #reduceActionForno_parens_one_expr2: 12371969 false) 
	#(71 2 #reduceActionForno_parens_one_ambig_expr2: 11999233 false) 
	#(72 2 #reduceActionForno_parens_many_expr2: 12181505 false) 
	#(90 1 #reduceActionFordo_eoe1: 15252481 false) 
	#(67 2 #reduceActionForblock_expr3: 8868867 false) 
	#(85 2 #reduceActionForbracket_expr2: 14650369 false) 
	#(81 2 #reduceActionForparens_call1: 14048257 false) 
	#(149 2 #reduceActionFormap2: 23274497 false) 
	#(148 2 #reduceActionFormatched_expr4: 23061508 false) 
	#(147 2 #reduceActionFormap_args1: 22590465 false) 
	#(140 1 #reduceActionForassoc_expr6: 21582854 false) 
	#(140 1 #reduceActionForassoc_expr6: 21582853 false) 
	#(143 1 #reduceActionForassoc_base1: 22225921 false) 
	#(144 1 #liftFirstValue: 22318081 false) 
	#(147 2 #reduceActionFormap_args1: 22590466 false) 
	#(148 2 #reduceActionFormatched_expr4: 23061509 false) 
	#(149 3 #reduceActionFormap3: 23274499 false) 
	#(86 3 #reduceActionForbracket_at_expr2: 14780418 false) 
	#(86 3 #reduceActionForbracket_at_expr2: 14780417 false) 
	#(62 3 #reduceActionForexpr_list2: 6059010 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317390 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162189 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953741 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317387 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162187 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953739 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953746 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317386 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162186 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953738 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317388 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162188 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953740 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317377 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162177 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953729 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317383 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162183 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953735 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317382 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162182 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953734 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317389 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162190 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953742 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317391 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162191 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953743 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953744 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953745 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317392 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317384 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162184 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953736 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317381 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162181 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953733 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317380 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162180 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953732 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317378 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162178 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953730 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317379 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162179 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953731 false) 
	#(68 2 #reduceActionFormatched_op_expr14: 9317385 false) 
	#(69 2 #reduceActionForunmatched_op_expr13: 10162185 false) 
	#(70 2 #reduceActionForno_parens_op_expr13: 10953737 false) 
	#(109 3 #reduceActionFordot_identifier2: 16791554 false) 
	#(110 3 #reduceActionFordot_alias2: 16920578 false) 
	#(113 3 #reduceActionFordot_bracket_identifier2: 17509378 false) 
	#(114 3 #reduceActionFordot_paren_identifier2: 17661954 false) 
	#(112 3 #reduceActionFordot_do_identifier2: 17371138 false) 
	#(111 3 #reduceActionFordot_op_identifier2: 17230850 false) 
	#(103 1 #liftFirstValue: 16569345 false) 
	#(83 1 #reduceActionForbracket_values1: 14275585 false) 
	#(84 2 #reduceActionForbracket_arg1: 14389249 false) 
	#(82 1 #liftFirstValue: 14220290 false) 
	#(82 1 #liftFirstValue: 14220289 false) 
	#(61 3 #reduceActionForgrammar5: 5811205 false) 
	#(96 2 #reduceActionForstab_op_eol_and_expr2: 16195586 false) 
	#(91 1 #reduceActionForend_eoe1: 15311873 false) 
	#(75 3 #reduceActionForaccess_expr4: 12851204 false) 
	#(95 2 #reduceActionForstab_expr3: 15726595 false) 
	#(95 2 #reduceActionForstab_expr3: 15726597 false) 
	#(95 2 #reduceActionForstab_expr3: 15726598 false) 
	#(133 2 #reduceActionForcall_args_no_parens_kw_expr1: 20665345 false) 
	#(133 2 #reduceActionForcall_args_no_parens_kw_expr1: 20665346 false) 
	#(100 1 #liftFirstValue: 16456705 false) 
	#(75 3 #reduceActionForaccess_expr9: 12851209 false) 
	#(75 3 #reduceActionForaccess_expr5: 12851205 false) 
	#(135 2 #reduceActionForlist_args3: 20938755 false) 
	#(131 2 #reduceActionForkw_base1: 20502529 false) 
	#(132 2 #reduceActionForkw2: 20623362 false) 
	#(136 3 #reduceActionForlist2: 21118978 false) 
	#(126 2 #reduceActionForcontainer_args2: 19393538 false) 
	#(105 1 #liftFirstValue: 16619521 false) 
	#(138 3 #reduceActionForbit_string2: 21406722 false) 
	#(107 1 #liftFirstValue: 16667649 false) 
	#(137 3 #reduceActionFortuple2: 21262338 false) 
	#(67 3 #reduceActionForblock_expr5: 8868869 false) 
	#(67 3 #reduceActionForblock_expr5: 8868868 false) 
	#(90 2 #reduceActionFordo_eoe2: 15252482 false) 
	#(87 2 #reduceActionFordo_block1: 14951425 false) 
	#(92 1 #reduceActionForblock_eoe1: 15376385 false) 
	#(97 1 #reduceActionForblock_item2: 16259074 false) 
	#(94 1 #reduceActionForstab_eoe1: 15559681 false) 
	#(98 1 #reduceActionForblock_list1: 16342017 false) 
	#(129 2 #reduceActionForcall_args_parens1: 19756033 false) 
	#(127 1 #liftFirstValue: 19537921 false) 
	#(127 1 #liftFirstValue: 19537922 false) 
	#(127 1 #liftFirstValue: 19537923 false) 
	#(128 1 #reduceActionForcall_args_parens_base1: 19621889 false) 
	#(67 3 #reduceActionForblock_expr5: 8868865 false) 
	#(81 3 #reduceActionForparens_call2: 14048258 false) 
	#(139 1 #liftFirstValue: 21544961 false) 
	#(146 2 #reduceActionFormap_close1: 22420481 false) 
	#(147 3 #reduceActionFormap_args3: 22590467 false) 
	#(147 3 #reduceActionFormap_args3: 22590470 false) 
	#(144 2 #reduceActionForassoc2: 22318082 false) 
	#(146 2 #reduceActionFormap_close2: 22420482 false) 
	#(110 4 #reduceActionFordot_alias3: 16920579 false) 
	#(84 3 #reduceActionForbracket_arg2: 14389250 false) 
	#(84 3 #reduceActionForbracket_arg3: 14389251 false) 
	#(116 1 #liftFirstValue: 17968129 false) 
	#(116 1 #liftFirstValue: 17968130 false) 
	#(117 3 #reduceActionForcall_args_no_parens_comma_expr1: 18035713 false) 
	#(121 3 #reduceActionForcall_args_no_parens_many1: 18475009 false) 
	#(91 2 #reduceActionForend_eoe2: 15311874 false) 
	#(93 3 #reduceActionForstab2: 15482882 false) 
	#(123 3 #reduceActionForstab_parens_many2: 18976770 false) 
	#(123 3 #reduceActionForstab_parens_many2: 18976769 false) 
	#(117 3 #reduceActionForcall_args_no_parens_comma_expr2: 18035714 false) 
	#(121 3 #reduceActionForcall_args_no_parens_many1: 18475011 false) 
	#(134 3 #reduceActionForcall_args_no_parens_kw2: 20783106 false) 
	#(75 4 #reduceActionForaccess_expr8: 12851208 false) 
	#(75 4 #reduceActionForaccess_expr6: 12851206 false) 
	#(125 3 #reduceActionForcontainer_args_base2: 19264514 false) 
	#(135 3 #reduceActionForlist_args4: 20938756 false) 
	#(126 3 #reduceActionForcontainer_args3: 19393539 false) 
	#(122 3 #reduceActionForcall_args_no_parens_many_strict3: 18724867 false) 
	#(122 3 #reduceActionForcall_args_no_parens_many_strict3: 18724866 false) 
	#(92 2 #reduceActionForblock_eoe2: 15376386 false) 
	#(97 2 #reduceActionForblock_item1: 16259073 false) 
	#(94 2 #reduceActionForstab_eoe2: 15559682 false) 
	#(87 3 #reduceActionFordo_block2: 14951426 false) 
	#(98 2 #reduceActionForblock_list2: 16342018 false) 
	#(87 3 #reduceActionFordo_block3: 14951427 false) 
	#(129 3 #reduceActionForcall_args_parens2: 19756034 false) 
	#(129 3 #reduceActionForcall_args_parens2: 19756037 false) 
	#(129 3 #reduceActionForcall_args_parens3: 19756035 false) 
	#(67 4 #reduceActionForblock_expr2: 8868866 false) 
	#(142 3 #reduceActionForassoc_update_kw1: 22082561 false) 
	#(141 3 #reduceActionForassoc_update1: 21910529 false) 
	#(140 3 #reduceActionForassoc_expr1: 21582849 false) 
	#(140 3 #reduceActionForassoc_expr1: 21582851 false) 
	#(142 3 #reduceActionForassoc_update_kw1: 22082562 false) 
	#(141 3 #reduceActionForassoc_update2: 21910530 false) 
	#(140 3 #reduceActionForassoc_expr1: 21582852 false) 
	#(140 3 #reduceActionForassoc_expr1: 21582850 false) 
	#(147 4 #reduceActionFormap_args4: 22590468 false) 
	#(147 4 #reduceActionFormap_args4: 22590469 false) 
	#(143 3 #reduceActionForassoc_base2: 22225922 false) 
	#(110 5 #reduceActionFordot_alias4: 16920580 false) 
	#(83 3 #reduceActionForbracket_values2: 14275586 false) 
	#(84 4 #reduceActionForbracket_arg4: 14389252 false) 
	#(95 4 #reduceActionForstab_expr4: 15726596 false) 
	#(95 4 #reduceActionForstab_expr4: 15726599 false) 
	#(75 5 #reduceActionForaccess_expr7: 12851207 false) 
	#(131 4 #reduceActionForkw_base2: 20502530 false) 
	#(87 4 #reduceActionFordo_block4: 14951428 false) 
	#(128 3 #reduceActionForcall_args_parens_base2: 19621890 false) 
	#(129 4 #reduceActionForcall_args_parens4: 19756036 false) 
	#(146 4 #reduceActionFormap_close3: 22420483 false) 
	#(129 5 #reduceActionForcall_args_parens6: 19756038 false) 
	#(129 6 #reduceActionForcall_args_parens7: 19756039 false)
	).
]

{ #category : 'examples' }
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

{ #category : 'generated-accessing' }
ElixirParser class >> scannerClass [
	^ElixirScanner
]

{ #category : 'generated' }
ElixirParser class >> startingStateForgrammar [
	^ 1
]

{ #category : 'generated' }
ElixirParser class >> symbolNames [
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<bracket_identifier>' '<paren_identifier>' '<block_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<do_identifier>' '<op_identifier>' 'E O F' 'error')
]

{ #category : 'generated' }
ElixirParser class >> symbolTypes [

	^ #( #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode
	     #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode
	     #ElixirMatchedExprNode #ElixirUnmatchedExprNode
	     #ElixirNoParensExprNode #ElixirBlockExprNode
	     #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode
	     #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode
	     #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode
	     #ElixirProgramNode #ElixirProgramNode #ElixirBinStringNode
	     #ElixirListStringNode #ElixirBinHeredocNode
	     #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode
	     #ElixirProgramNode #ElixirBracketValuesNode
	     #ElixirBracketArgNode #ElixirBracketExprNode
	     #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken
	     #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode
	     #ElixirBlockEoeNode #ElixirStabNode #ElixirStabEoeNode
	     #ElixirStabExprNode #ElixirStabOpEolAndExprNode
	     #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken
	     #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken
	     #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode
	     #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode
	     #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode
	     #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode
	     #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode
	     #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode
	     #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode
	     #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode
	     #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode
	     #ElixirKwNode #ElixirCallArgsNoParensKwExprNode
	     #ElixirCallArgsNoParensKwNode #ElixirListArgsNode
	     #ElixirListNode #ElixirTupleNode #ElixirBitStringNode
	     #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode
	     #ElixirAssocUpdateKwNode #ElixirAssocBaseNode
	     #ElixirProgramNode #SmaCCToken #ElixirMapCloseNode
	     #ElixirMapArgsNode #ElixirStructExprNode #ElixirMapNode
	     #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode )
]

{ #category : 'generated' }
ElixirParser class >> transitionTable [
^#(
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 205 0 25 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 205 0 55 0 117 0 56 0 121 0 57 0 125 0 61 0 129 0 62 0 133 0 63 0 137 0 64 0 141 0 65 0 133 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 205 0 88 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 0 6 0 152] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 56 0 57 0 150 0 151] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 1 37 0 25 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 34 0 26 0 43 0 26 0 45 0 26 0 46 0 26 0 47 0 26 0 48 0 26 0 51 0 26 0 52 0 26 0 53 0 26 0 54 1 37 0 55 0 26 0 56 0 26 0 57 1 37 0 88 0 26 0 150 0 26 0 151] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 66 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 150 0 151 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 61 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 53 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 1 57 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 1 61 0 106 1 65 0 108 1 69 0 109 1 73 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 1 89 0 147 1 93 0 148 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 0 70 0 15] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 101 0 63 1 105 0 64 0 141 0 65 1 109 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 56 0 57 0 150 0 151] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 56 0 57 0 150 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 113 0 63 1 117 0 64 0 141 0 65 1 121 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 80 1 125 0 81 1 125 0 85 1 125 0 86 0 209 0 89 0 213 0 99 1 125 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 1 125 0 110 0 245 0 111 0 249 0 112 1 129 0 113 1 1 0 114 1 5 0 115 1 125 0 136 1 125 0 137 1 125 0 138 1 21 0 145 1 125 0 149 1 29 0 150 1 33 0 151] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 150 0 151 0 152] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 150 0 151 0 152] 
#[0 0 106 0 7] 
#[0 0 110 0 1] 
#[0 0 0 0 152] 
#[1 1 133 0 25 1 133 0 55 1 133 0 88 0 114 0 152] 
#[0 0 118 0 25 0 55 0 152] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 0 122 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 122 0 55 0 122 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 0 122 0 152] 
#[1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 6 0 126 0 8 0 126 0 10 0 126 0 16 0 126 0 25 0 126 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 126 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 126 0 55 0 126 0 58 1 217 0 68 1 221 0 69 1 225 0 70 0 126 0 152] 
#[0 0 130 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 146 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 150 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 6 1 237 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 16 0 154 0 25 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 40 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 49 0 154 0 50 1 229 0 53 0 154 0 55 0 154 0 58 0 154 0 59 1 233 0 84 1 237 0 102 0 154 0 152] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 241 0 62 0 133 0 63 0 137 0 64 0 141 0 65 0 133 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 0 190 0 152] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 9 0 93 2 13 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 73 0 93 2 13 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 2 93 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 93 0 124 2 97 0 125 2 101 0 130 2 105 0 131 2 109 0 132 2 113 0 135 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 2 117 0 6 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 2 93 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 93 0 124 2 121 0 125 2 125 0 126 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 2 93 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 93 0 124 2 121 0 125 2 133 0 126 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 137 0 63 2 141 0 64 0 141 0 65 2 145 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 225 0 5 0 198 0 6 0 221 0 7 0 198 0 8 0 198 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 198 0 25 0 69 0 26 1 21 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 2 149 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 2 169 0 43 0 198 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 198 0 55 0 117 0 56 0 121 0 57 0 198 0 58 0 198 0 59 2 157 0 64 2 189 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 165 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 181 0 118 2 185 0 119 2 189 0 120 2 193 0 121 2 197 0 122 2 53 0 130 2 57 0 133 2 185 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 0 198 0 152] 
#[0 0 202 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 165 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 157 0 64 2 209 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 165 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 201 0 118 2 205 0 119 2 209 0 120 2 193 0 121 2 213 0 122 2 53 0 130 2 57 0 133 2 205 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 6 0 206 0 8 2 217 0 9 0 206 0 10 0 206 0 16 0 206 0 25 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 49 0 206 0 50 0 206 0 55 0 206 0 58 0 206 0 59 2 221 0 87 2 225 0 90 0 206 0 152] 
#[1 1 237 0 7 2 229 0 84 1 237 0 102] 
#[0 0 210 0 1] 
#[1 2 233 0 1 2 233 0 99 2 237 0 129] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 241 0 15 2 241 0 106 2 245 0 147] 
#[0 0 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 234 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[0 0 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[1 0 46 0 7 0 242 0 15 0 46 0 29 0 46 0 30 0 46 0 31 0 46 0 32 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 49 0 46 0 50 0 46 0 53 0 46 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 253 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 9 0 64 0 161 0 73 0 165 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 80 1 57 0 81 1 125 0 85 1 125 0 86 0 209 0 89 0 213 0 99 1 125 0 101 0 221 0 102 0 225 0 104 0 229 0 106 1 65 0 108 1 69 0 109 1 73 0 110 1 77 0 111 0 165 0 112 1 129 0 113 1 1 0 114 1 85 0 115 1 125 0 136 1 125 0 137 1 125 0 138 1 21 0 145 3 13 0 148 1 125 0 149 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 0 178 0 7 0 246 0 15 0 178 0 29 0 178 0 30 0 178 0 31 0 178 0 32 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 42 0 178 0 43 0 178 0 44 0 178 0 49 0 178 0 50 0 178 0 53 0 178 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 3 81 0 64 3 85 0 65 2 93 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 3 93 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 93 0 124 2 121 0 125 2 133 0 126 2 101 0 130 2 105 0 131 3 97 0 132 0 169 0 136 0 169 0 137 0 169 0 138 3 101 0 140 3 105 0 141 3 109 0 142 3 113 0 143 3 117 0 144 1 21 0 145 3 121 0 146 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 1 65 0 43 1 65 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 125 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 1 57 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 1 65 0 108 1 69 0 109 1 73 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 3 129 0 148 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 1 45 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 3 1 0 43 0 198 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 0 198 0 59 3 133 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 3 137 0 119 2 53 0 130 2 57 0 133 3 137 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 202 0 7 0 254 0 15 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 43 0 202 0 44 0 202 0 49 0 202 0 50 0 202 0 53 0 202 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 3 133 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 3 141 0 119 2 53 0 130 2 57 0 133 3 141 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 0 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 233 0 1 2 233 0 99 3 145 0 129] 
#[0 1 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 241 0 15 2 241 0 106 3 149 0 147] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 1 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 0 15 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 0 15 0 152] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 1 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 26 0 50 0 83 0 55 0 83 0 58 1 26 0 59 1 205 0 68 1 209 0 69 1 213 0 70 0 83 0 152] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 6 1 237 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 16 0 154 0 25 0 154 0 28 0 154 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 40 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 49 0 154 0 50 1 229 0 53 0 154 0 55 0 154 0 58 0 154 0 59 3 153 0 84 1 237 0 102 0 154 0 152] 
#[1 1 237 0 7 3 157 0 84 1 237 0 102] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 161 0 63 0 137 0 64 0 141 0 65 3 161 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 1 34 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 165 0 64 3 169 0 65 3 173 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 3 177 0 64 3 181 0 65 3 185 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 53 0 130 2 57 0 133 3 189 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 193 0 64 3 197 0 65 3 201 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 205 0 64 3 209 0 65 3 213 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 217 0 64 3 221 0 65 3 225 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 229 0 64 3 233 0 65 3 237 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 241 0 64 3 245 0 65 3 249 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 253 0 64 4 1 0 65 4 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 9 0 64 4 13 0 65 4 17 0 66 0 149 0 67 4 21 0 71 4 25 0 72 4 29 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 33 0 64 4 37 0 65 4 41 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 45 0 64 4 49 0 65 4 53 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 57 0 64 4 61 0 65 4 65 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 69 0 64 4 73 0 65 4 77 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 81 0 64 4 85 0 65 4 89 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 93 0 64 4 97 0 65 4 101 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 4 121 0 15 4 105 0 52 4 109 0 54 4 113 0 56 4 117 0 57 4 121 0 106 4 125 0 150 4 129 0 151] 
#[0 1 38 0 1] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 1 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 4 133 0 3 0 225 0 5 0 221 0 7 4 149 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 4 141 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 4 141 0 82 4 145 0 83 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 4 149 0 103 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 4 141 0 124 2 101 0 130 4 157 0 131 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 4 161 0 25 4 161 0 55 4 161 0 88 1 74 0 152] 
#[1 0 213 0 1 1 78 0 2 1 78 0 4 0 225 0 5 0 221 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 78 0 25 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 78 0 55 0 117 0 56 0 121 0 57 1 78 0 58 4 165 0 63 0 137 0 64 0 141 0 65 4 165 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 56 0 57 0 150 0 151] 
#[0 1 86 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 0 122 0 2 4 169 0 3 0 122 0 4 0 122 0 10 0 122 0 25 1 90 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 122 0 55 0 122 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70] 
#[1 0 130 0 2 0 130 0 4 0 130 0 10 0 130 0 25 1 94 0 28 0 130 0 55 0 130 0 58] 
#[1 4 173 0 10 4 177 0 25 4 177 0 55 4 177 0 88 4 181 0 91] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 58] 
#[0 1 102 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 73 0 93 2 13 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 4 185 0 121 2 49 0 123 2 53 0 130 2 57 0 133 4 189 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 7 0 194 0 10 0 194 0 25 1 245 0 28 0 194 0 29 4 193 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 55 0 194 0 58 0 194 0 59 4 197 0 96] 
#[1 1 106 0 2 4 201 0 3 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 25 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 49 1 106 0 50 1 106 0 55 1 106 0 58 1 106 0 59 1 106 0 152] 
#[1 1 245 0 28 4 205 0 96] 
#[0 1 110 0 28] 
#[0 1 114 0 9 0 28] 
#[0 1 118 0 9 0 28] 
#[1 1 245 0 28 4 209 0 30 4 213 0 96] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 4 217 0 64 4 221 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 1 122 0 2 4 225 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 49 1 122 0 50 1 122 0 55 1 122 0 58 1 122 0 59 1 122 0 152] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 21 0 1 4 237 0 2 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 4 233 0 93 2 13 0 95 2 17 0 96 2 21 0 99 4 237 0 100 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 4 249 0 2 4 241 0 4 4 245 0 25 4 245 0 55 4 245 0 88 4 249 0 100] 
#[0 1 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70] 
#[0 1 146 0 2 0 3 0 6 0 8 0 16] 
#[0 1 150 0 3 0 6 0 8 0 16] 
#[1 4 253 0 3 1 154 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 5 1 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 5 1 0 124 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 5 5 0 3 1 158 0 6 1 158 0 8 1 158 0 16] 
#[0 1 162 0 8] 
#[0 5 9 0 8 0 103] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 5 13 0 3 1 170 0 6 1 170 0 16] 
#[0 5 21 0 6 0 105] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 5 29 0 16 0 107] 
#[0 1 178 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 0 151 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 0 151 0 152] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 33 0 64 5 37 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 41 0 64 5 45 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 80 1 125 0 81 1 125 0 85 1 125 0 86 0 209 0 89 0 213 0 99 1 125 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 1 125 0 110 2 177 0 111 0 165 0 112 1 129 0 113 1 1 0 114 1 85 0 115 1 125 0 136 1 125 0 137 1 125 0 138 1 21 0 145 1 125 0 149 1 29 0 150 1 33 0 151] 
#[1 1 90 0 2 4 169 0 3 1 90 0 4 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 25 1 90 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 90 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 90 0 55 1 90 0 58 1 201 0 59 1 205 0 68 1 213 0 70 1 90 0 152] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 21 0 1 2 65 0 2 2 69 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 73 0 93 2 13 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 5 109 0 121 2 49 0 123 2 53 0 130 2 57 0 133 5 113 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 117 0 64 5 121 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 165 0 1 0 198 0 2 0 198 0 3 0 198 0 4 0 225 0 5 0 198 0 6 0 221 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 198 0 25 0 69 0 26 1 21 0 27 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 2 149 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 2 169 0 43 0 198 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 198 0 55 0 117 0 56 0 121 0 57 0 198 0 58 0 198 0 59 2 157 0 64 5 125 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 165 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 3 137 0 119 5 125 0 120 5 129 0 121 2 197 0 122 2 53 0 130 2 57 0 133 3 137 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 0 198 0 152] 
#[1 2 165 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 157 0 64 5 133 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 165 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 3 141 0 119 5 133 0 120 5 129 0 121 2 213 0 122 2 53 0 130 2 57 0 133 3 141 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 217 0 9 5 137 0 87 2 225 0 90] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 50 1 190 0 55 1 190 0 58 1 190 0 59 1 190 0 152] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 58 1 194 0 152] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 25 1 198 0 28 1 198 0 29 1 198 0 30 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 36 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 49 1 198 0 55 1 198 0 58 1 198 0 152] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 217 0 9 5 141 0 87 2 225 0 90] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 50 1 206 0 55 1 206 0 58 1 206 0 59 1 206 0 152] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 6 1 210 0 8 1 114 0 9 1 210 0 10 1 210 0 16 1 210 0 25 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 49 1 210 0 55 1 210 0 58 1 210 0 152] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 1 218 0 1 1 218 0 5 1 218 0 7 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 5 145 0 25 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 34 1 218 0 43 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 52 1 218 0 53 1 218 0 54 5 145 0 55 1 218 0 56 1 218 0 57 1 218 0 58 5 145 0 88 1 218 0 150 1 218 0 151] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 5 149 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 5 153 0 58 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 5 157 0 92 5 161 0 93 5 165 0 94 2 13 0 95 2 17 0 96 5 169 0 97 5 173 0 98 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 1 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 5 177 0 2 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 5 181 0 64 5 185 0 65 5 189 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 5 193 0 127 5 197 0 128 2 101 0 130 5 201 0 131 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 2 217 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 1 230 0 58 1 230 0 59 5 205 0 87 2 225 0 90 2 233 0 99 5 209 0 129 1 230 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 5 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 5 225 0 64 5 229 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 5 237 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 3 97 0 132 0 169 0 136 0 169 0 137 0 169 0 138 3 101 0 140 3 105 0 141 3 109 0 142 3 113 0 143 3 117 0 144 1 21 0 145 3 121 0 146 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 9 0 64 0 161 0 73 0 165 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 80 1 125 0 81 1 125 0 85 1 125 0 86 0 209 0 89 0 213 0 99 1 125 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 1 125 0 110 1 77 0 111 0 165 0 112 1 129 0 113 1 1 0 114 1 85 0 115 1 125 0 136 1 125 0 137 1 125 0 138 1 21 0 145 1 125 0 149 1 29 0 150 1 33 0 151] 
#[1 3 17 0 29 1 14 0 30 1 14 0 31 1 14 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 14 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 125 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 1 45 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 3 1 0 43 0 198 0 44 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 0 198 0 59 3 133 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 3 137 0 119 2 53 0 130 2 57 0 133 3 137 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 59 1 205 0 68] 
#[0 1 238 0 15] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 245 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 249 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 5 253 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 1 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 5 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 9 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 13 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 17 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 21 0 64 4 29 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 25 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 29 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 33 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 37 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 41 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 45 0 34 3 1 0 43 3 1 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 45 0 64 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 3 1 0 108 3 5 0 109 0 169 0 110 1 77 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 0 219 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 242 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 242 0 55 1 242 0 58 0 219 0 59 1 242 0 152] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 49 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 6 57 0 139] 
#[1 1 142 0 3 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70 6 65 0 139] 
#[1 0 223 0 3 0 178 0 7 0 223 0 16 0 178 0 29 0 178 0 30 0 178 0 31 0 178 0 32 0 178 0 33 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 40 0 178 0 41 0 178 0 42 0 178 0 43 0 178 0 44 0 178 0 49 0 178 0 50 0 178 0 53 0 178 0 59] 
#[1 2 165 0 1 0 227 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 2 149 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 2 169 0 43 0 198 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 0 198 0 59 2 157 0 64 2 189 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 2 165 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 181 0 118 2 185 0 119 2 189 0 120 2 193 0 121 2 197 0 122 2 53 0 130 2 57 0 133 2 185 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 6 69 0 16 0 107] 
#[0 1 254 0 3 0 16] 
#[1 6 73 0 3 6 77 0 16 6 77 0 107] 
#[0 6 81 0 16 0 107] 
#[1 6 85 0 3 2 2 0 16] 
#[0 6 89 0 16 0 107] 
#[0 2 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[0 2 10 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 233 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 1 230 0 15 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 1 230 0 58 1 230 0 59 2 233 0 99 6 93 0 129 1 230 0 152] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 2 26 0 25 0 55 0 152] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 30 0 49 1 197 0 50 2 30 0 55 2 30 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 30 0 152] 
#[1 2 34 0 2 2 34 0 3 2 34 0 4 2 34 0 6 2 34 0 8 2 34 0 10 2 34 0 16 2 34 0 25 2 34 0 28 2 34 0 29 2 34 0 30 2 34 0 31 2 34 0 32 2 34 0 33 2 34 0 35 2 34 0 36 2 34 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 34 0 49 2 34 0 55 2 34 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 34 0 152] 
#[0 2 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 42 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 42 0 49 1 197 0 50 2 42 0 55 2 42 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 42 0 152] 
#[1 2 46 0 2 2 46 0 3 2 46 0 4 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 25 2 46 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 46 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 46 0 49 2 46 0 55 2 46 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 46 0 152] 
#[0 2 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 2 54 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 1 137 0 29 2 58 0 30 1 145 0 31 1 149 0 32 2 58 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 58 0 49 1 197 0 50 2 58 0 55 2 58 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 58 0 152] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 25 2 62 0 28 1 137 0 29 2 62 0 30 1 145 0 31 1 149 0 32 2 62 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 62 0 49 2 62 0 55 2 62 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 62 0 152] 
#[0 2 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 2 70 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 2 70 0 55 2 70 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 70 0 152] 
#[1 2 74 0 2 2 74 0 3 2 74 0 4 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 25 2 74 0 28 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 2 74 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 2 74 0 55 2 74 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 74 0 152] 
#[0 2 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 1 137 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 82 0 49 1 197 0 50 2 82 0 55 2 82 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 82 0 152] 
#[1 2 86 0 2 2 86 0 3 2 86 0 4 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 25 2 86 0 28 1 137 0 29 2 86 0 30 2 86 0 31 2 86 0 32 2 86 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 86 0 49 2 86 0 55 2 86 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 86 0 152] 
#[0 2 90 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 1 137 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 94 0 49 1 197 0 50 2 94 0 55 2 94 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 94 0 152] 
#[1 2 98 0 2 2 98 0 3 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 25 2 98 0 28 1 137 0 29 2 98 0 30 2 98 0 31 2 98 0 32 2 98 0 33 2 98 0 35 2 98 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 98 0 49 2 98 0 55 2 98 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 98 0 152] 
#[0 2 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 137 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 106 0 49 1 197 0 50 2 106 0 55 2 106 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 106 0 152] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 25 2 110 0 28 1 137 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 35 2 110 0 36 2 110 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 110 0 49 2 110 0 55 2 110 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 110 0 152] 
#[0 2 114 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 118 0 49 1 197 0 50 2 118 0 55 2 118 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 118 0 152] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 2 122 0 29 2 122 0 30 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 122 0 49 2 122 0 55 2 122 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 122 0 152] 
#[0 2 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 130 0 49 1 197 0 50 2 130 0 55 2 130 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 130 0 152] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 2 134 0 29 2 134 0 30 2 134 0 31 2 134 0 32 2 134 0 33 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 38 2 134 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 134 0 49 2 134 0 55 2 134 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 134 0 152] 
#[0 2 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 154 0 49 1 197 0 50 2 154 0 55 2 154 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 154 0 152] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 2 158 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 38 2 158 0 39 2 158 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 158 0 49 2 158 0 55 2 158 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 158 0 152] 
#[0 2 162 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 166 0 49 1 197 0 50 2 166 0 55 2 166 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 166 0 152] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 38 2 170 0 39 2 170 0 40 2 170 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 170 0 49 2 170 0 55 2 170 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 170 0 152] 
#[0 2 174 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 178 0 49 1 197 0 50 2 178 0 55 2 178 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 178 0 152] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 2 182 0 39 2 182 0 40 2 182 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 182 0 49 2 182 0 55 2 182 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 182 0 152] 
#[0 2 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 1 189 0 44 2 190 0 49 1 197 0 50 2 190 0 55 2 190 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 190 0 152] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 1 189 0 44 2 194 0 49 2 194 0 55 2 194 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 194 0 152] 
#[0 2 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 2 202 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 202 0 152] 
#[1 2 206 0 2 2 206 0 3 2 206 0 4 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 25 2 206 0 28 2 206 0 29 2 206 0 30 2 206 0 31 2 206 0 32 2 206 0 33 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 38 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 49 2 206 0 55 2 206 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 206 0 152] 
#[0 2 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 214 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 214 0 49 1 197 0 50 2 214 0 55 2 214 0 58 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 2 214 0 152] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 218 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 218 0 49 2 218 0 55 2 218 0 58 1 217 0 68 1 221 0 69 1 225 0 70 2 218 0 152] 
#[0 2 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 150 0 151 0 152] 
#[0 2 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 2 234 0 7] 
#[0 2 238 0 1] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 6 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 2 93 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 93 0 124 2 121 0 125 6 101 0 126 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 2 242 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 2 246 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 150 0 151] 
#[0 6 105 0 8 0 103] 
#[0 2 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 2 254 0 3 0 8] 
#[1 6 109 0 3 6 113 0 8 6 113 0 103] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 6 0 3 0 8] 
#[1 6 117 0 3 3 10 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 3 161 0 63 0 137 0 64 0 141 0 65 3 161 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151 3 14 0 152] 
#[0 3 18 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 6 121 0 64 6 129 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 6 129 0 116 2 53 0 130 2 57 0 133 6 133 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 6 141 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 26 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 6 145 0 2 1 118 0 28 6 145 0 100] 
#[1 6 149 0 2 1 126 0 28 6 149 0 100] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 153 0 63 0 137 0 64 0 141 0 65 6 153 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 30 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 6 121 0 64 6 157 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 6 157 0 116 2 53 0 130 2 57 0 133 6 161 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 34 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 165 0 63 0 137 0 64 0 141 0 65 6 165 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 38 0 2 0 4 0 10 0 25 0 55 0 58] 
#[1 3 42 0 2 3 42 0 3 3 42 0 4 3 42 0 6 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 16 3 42 0 25 3 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 42 0 55 3 42 0 58 1 201 0 59 1 205 0 68 1 213 0 70 3 42 0 152] 
#[0 3 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 2 53 0 53 2 53 0 130 2 57 0 133 6 169 0 134] 
#[0 3 50 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 6 177 0 2 6 173 0 4 4 245 0 25 4 245 0 55 4 245 0 88 6 177 0 100] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 6 181 0 2 0 100] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 6 141 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 3 62 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 6 185 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 6 185 0 124 2 101 0 130 2 105 0 131 6 189 0 132 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 66 0 2 0 3 0 6 0 8 0 16] 
#[1 3 70 0 6 3 70 0 8 3 70 0 16 6 193 0 53 6 193 0 130] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 3 78 0 6 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 78 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 6 185 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 6 185 0 124 2 101 0 130 2 105 0 131 6 197 0 132 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 25 1 14 0 28 5 49 0 29 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 1 14 0 49 1 197 0 50 1 14 0 55 1 14 0 58 1 201 0 59 1 205 0 68 1 213 0 70 1 14 0 152] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 25 1 26 0 28 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 55 1 26 0 58 1 26 0 59 1 205 0 68 1 213 0 70 1 26 0 152] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 201 0 64 3 173 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 6 205 0 64 3 185 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 53 0 130 2 57 0 133 3 189 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 209 0 64 3 201 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 213 0 64 3 213 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 217 0 64 3 225 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 221 0 64 3 237 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 225 0 64 3 249 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 229 0 64 4 5 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 233 0 64 4 17 0 66 4 21 0 71 4 25 0 72 4 29 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 237 0 64 4 41 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 241 0 64 4 53 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 245 0 64 4 65 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 249 0 64 4 77 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 6 253 0 64 4 89 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 7 1 0 64 4 101 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 7 5 0 2 1 118 0 28 7 5 0 100] 
#[1 7 9 0 2 1 126 0 28 7 9 0 100] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 6 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 16 1 182 0 25 1 182 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 1 182 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 1 182 0 55 1 182 0 58 1 201 0 59 1 205 0 68 1 213 0 70 1 182 0 152] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 3 98 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 3 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 3 106 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 150 0 151] 
#[0 3 110 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 3 114 0 1 3 114 0 5 3 114 0 7 3 114 0 10 3 114 0 11 3 114 0 12 3 114 0 13 3 114 0 14 3 114 0 15 3 114 0 17 3 114 0 18 3 114 0 19 3 114 0 20 3 114 0 21 3 114 0 22 7 13 0 25 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 34 3 114 0 43 3 114 0 45 3 114 0 46 3 114 0 47 3 114 0 48 3 114 0 51 3 114 0 52 3 114 0 53 3 114 0 54 7 13 0 55 3 114 0 56 3 114 0 57 3 114 0 58 7 13 0 88 3 114 0 150 3 114 0 151] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 3 118 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 3 118 0 58 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 7 17 0 93 7 21 0 94 2 13 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 4 173 0 10 7 25 0 25 7 25 0 55 3 122 0 58 7 25 0 88 7 29 0 91] 
#[1 5 153 0 58 5 157 0 92 5 169 0 97 7 33 0 98] 
#[1 3 126 0 10 5 153 0 58 5 157 0 92 5 169 0 97 7 37 0 98] 
#[0 7 41 0 10] 
#[0 3 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 3 134 0 2 3 134 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70] 
#[1 3 138 0 2 3 138 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70] 
#[1 0 251 0 2 3 142 0 3 7 45 0 100] 
#[0 3 146 0 2 0 3] 
#[1 7 53 0 2 7 49 0 3 7 53 0 100] 
#[1 7 61 0 2 7 57 0 3 7 61 0 100] 
#[0 3 150 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 3 154 0 2 3 154 0 3 3 154 0 4 3 154 0 6 3 154 0 7 3 154 0 8 2 217 0 9 3 154 0 10 3 154 0 16 3 154 0 25 3 154 0 28 3 154 0 29 3 154 0 30 3 154 0 31 3 154 0 32 3 154 0 33 3 154 0 35 3 154 0 36 3 154 0 37 3 154 0 38 3 154 0 39 3 154 0 40 3 154 0 41 3 154 0 42 3 154 0 43 3 154 0 44 3 154 0 49 3 154 0 50 3 154 0 53 3 154 0 55 3 154 0 58 3 154 0 59 7 65 0 87 2 225 0 90 3 154 0 152] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 101 0 63 1 105 0 64 0 141 0 65 1 101 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 1 113 0 63 1 117 0 64 0 141 0 65 1 113 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 1 125 0 75 1 125 0 76 1 125 0 77 1 125 0 78 1 125 0 79 1 125 0 80 1 125 0 81 1 125 0 85 1 125 0 86 0 209 0 89 0 213 0 99 1 125 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 1 125 0 110 0 245 0 111 0 249 0 112 1 129 0 113 1 1 0 114 1 5 0 115 1 125 0 136 1 125 0 137 1 125 0 138 1 21 0 145 1 125 0 149 1 29 0 150 1 33 0 151] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 7 81 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 6 57 0 139] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 61 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70 6 65 0 139] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 137 0 63 2 141 0 64 0 141 0 65 2 137 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 1 250 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 250 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 2 149 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 2 169 0 43 0 198 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 0 198 0 59 2 157 0 64 2 181 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 181 0 118 2 185 0 119 2 181 0 120 2 181 0 121 2 53 0 130 2 57 0 133 2 185 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 2 149 0 34 2 169 0 43 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 157 0 64 2 201 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 201 0 118 2 205 0 119 2 201 0 120 2 201 0 121 2 53 0 130 2 57 0 133 2 205 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 35 2 30 0 36 2 30 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 30 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 42 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 2 58 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 58 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 2 70 0 30 2 70 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 70 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 2 82 0 30 2 82 0 31 2 82 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 82 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 35 2 94 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 94 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 35 2 106 0 36 2 106 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 106 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 118 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 130 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 154 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 166 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 178 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 3 69 0 44 2 190 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 214 0 49 1 197 0 50 1 201 0 59 1 205 0 68] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 7 129 0 64 7 133 0 65 3 213 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 3 93 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 7 137 0 132 0 169 0 136 0 169 0 137 0 169 0 138 7 141 0 140 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 158 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 56 0 57 0 150 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 7 145 0 64 7 149 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 7 129 0 64 7 133 0 65 3 213 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 3 93 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 7 157 0 132 0 169 0 136 0 169 0 137 0 169 0 138 7 161 0 140 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 7 165 0 64 7 169 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 7 181 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 7 173 0 64 7 177 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 7 181 0 107 5 233 0 108 5 237 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 3 97 0 132 0 169 0 136 0 169 0 137 0 169 0 138 3 101 0 140 3 113 0 143 3 117 0 144 1 21 0 145 7 185 0 146 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 174 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 7 173 0 64 7 177 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 5 237 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 7 189 0 132 0 169 0 136 0 169 0 137 0 169 0 138 7 193 0 140 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 7 197 0 16 0 107] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 7 205 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 7 201 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 7 201 0 82 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 7 205 0 103 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 7 201 0 124 2 101 0 130 4 157 0 131 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 6 193 0 53 0 130] 
#[1 3 194 0 2 3 194 0 3 3 194 0 4 3 194 0 6 3 194 0 8 3 194 0 9 3 194 0 10 3 194 0 16 3 194 0 25 3 194 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 3 194 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 49 1 197 0 50 3 194 0 55 3 194 0 58 1 201 0 59 1 205 0 68 1 213 0 70 3 194 0 152] 
#[0 3 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 3 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 3 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 3 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 214 0 2 0 4 0 10 0 25 0 55 0 58] 
#[0 3 218 0 28 0 30] 
#[0 3 222 0 28 0 30] 
#[1 1 245 0 28 7 209 0 96] 
#[0 3 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 3 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[1 1 245 0 28 7 213 0 96] 
#[0 3 234 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 7 217 0 2 0 100] 
#[0 3 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 3 246 0 3 0 6 0 8 0 16] 
#[0 3 250 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 2 81 0 64 2 85 0 65 7 221 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 7 221 0 124 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 3 254 0 6 0 16] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 30 0 49 1 197 0 50 2 30 0 55 2 30 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 30 0 152] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 9 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 42 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 42 0 49 1 197 0 50 2 42 0 55 2 42 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 42 0 152] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 5 49 0 29 2 58 0 30 5 57 0 31 5 61 0 32 2 58 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 58 0 49 1 197 0 50 2 58 0 55 2 58 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 58 0 152] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 9 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 5 49 0 29 2 70 0 30 2 70 0 31 5 61 0 32 2 70 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 70 0 49 1 197 0 50 2 70 0 55 2 70 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 70 0 152] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 9 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 5 49 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 82 0 49 1 197 0 50 2 82 0 55 2 82 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 82 0 152] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 5 49 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 94 0 49 1 197 0 50 2 94 0 55 2 94 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 94 0 152] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 5 49 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 106 0 49 1 197 0 50 2 106 0 55 2 106 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 106 0 152] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 118 0 49 1 197 0 50 2 118 0 55 2 118 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 118 0 152] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 9 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 130 0 49 1 197 0 50 2 130 0 55 2 130 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 130 0 152] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 154 0 49 1 197 0 50 2 154 0 55 2 154 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 154 0 152] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 166 0 49 1 197 0 50 2 166 0 55 2 166 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 166 0 152] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 178 0 49 1 197 0 50 2 178 0 55 2 178 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 178 0 152] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 5 101 0 44 2 190 0 49 1 197 0 50 2 190 0 55 2 190 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 190 0 152] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 9 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 2 202 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 202 0 152] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 9 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 5 49 0 29 5 53 0 30 5 57 0 31 5 61 0 32 2 214 0 33 5 65 0 35 5 69 0 36 5 73 0 37 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 2 214 0 49 1 197 0 50 2 214 0 55 2 214 0 58 1 201 0 59 1 205 0 68 1 213 0 70 2 214 0 152] 
#[0 4 2 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 4 6 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 58 0 59 0 152] 
#[0 4 10 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 56 0 57 0 58 0 150 0 151] 
#[1 3 122 0 10 7 225 0 25 7 225 0 55 3 122 0 58 7 225 0 88] 
#[0 4 14 0 10 0 58] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 6 137 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 4 18 0 58 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 6 141 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 4 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 7 229 0 10] 
#[0 4 26 0 10] 
#[0 4 30 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 4 34 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 5 181 0 64 5 185 0 65 7 237 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 7 237 0 127 2 101 0 130 7 241 0 131 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 4 38 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 7 245 0 2 6 193 0 53 7 245 0 100 6 193 0 130] 
#[0 4 42 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 7 249 0 64 3 169 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 7 253 0 64 3 181 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 1 0 64 3 197 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 101 0 53 0 109 0 54 0 117 0 56 0 121 0 57 8 5 0 64 7 133 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 3 89 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 5 237 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 101 0 130 2 105 0 131 7 137 0 132 0 169 0 136 0 169 0 137 0 169 0 138 7 141 0 140 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 9 0 64 3 221 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 13 0 64 3 233 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 17 0 64 3 245 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 21 0 64 4 1 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 25 0 64 4 13 0 65 0 149 0 67 4 29 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 29 0 64 4 37 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 33 0 64 4 49 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 37 0 64 4 61 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 41 0 64 4 73 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 45 0 64 4 85 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 49 0 64 4 97 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 57 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 1 213 0 70 6 57 0 139] 
#[1 2 74 0 3 2 74 0 16 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 1 217 0 68 1 221 0 69 1 225 0 70 6 65 0 139] 
#[0 4 50 0 16] 
#[0 4 54 0 3 0 16] 
#[1 4 58 0 3 4 58 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 4 62 0 3 4 62 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70] 
#[1 0 213 0 1 0 198 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 2 149 0 34 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 2 169 0 43 0 198 0 44 2 169 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 198 0 49 0 198 0 50 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 0 198 0 59 2 157 0 64 2 181 0 66 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 2 169 0 108 2 173 0 109 0 169 0 110 2 177 0 111 0 165 0 112 0 253 0 113 1 1 0 114 1 85 0 115 2 29 0 117 2 181 0 118 2 185 0 119 2 181 0 120 2 181 0 121 2 53 0 130 2 57 0 133 2 185 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 4 66 0 16] 
#[0 4 70 0 3 0 16] 
#[1 4 74 0 3 4 74 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 4 78 0 3 4 78 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70] 
#[1 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 7 125 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 6 57 0 139] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 65 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 68 1 221 0 69 1 225 0 70 6 65 0 139] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 4 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 8 57 0 16 0 107] 
#[0 4 90 0 3 0 16] 
#[0 4 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 4 98 0 3 0 8] 
#[0 4 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 4 106 0 2 0 4 0 10 0 25 0 55 0 58] 
#[0 4 110 0 2 0 4 0 10 0 25 0 55 0 58] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[0 4 118 0 2 0 3 0 6 0 8 0 16] 
#[1 2 21 0 1 0 225 0 5 0 221 0 7 4 18 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 1 245 0 28 0 77 0 34 0 233 0 43 0 233 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 2 53 0 53 0 109 0 54 0 117 0 56 0 121 0 57 4 18 0 58 1 253 0 63 2 1 0 64 0 141 0 65 2 5 0 66 0 149 0 67 0 153 0 71 0 157 0 72 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 6 141 0 95 2 17 0 96 2 21 0 99 2 25 0 101 0 221 0 102 0 225 0 104 0 229 0 106 0 233 0 108 0 237 0 109 0 169 0 110 0 245 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 2 29 0 117 2 33 0 118 2 33 0 119 2 33 0 120 2 33 0 121 2 49 0 123 2 53 0 130 2 57 0 133 2 33 0 134 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 4 122 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 58 0 152] 
#[0 3 142 0 2 0 3] 
#[0 4 126 0 2 0 3] 
#[1 8 65 0 2 8 61 0 3 8 65 0 100] 
#[0 4 130 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 30 0 3 2 30 0 16 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 30 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 42 0 3 2 42 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 42 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 42 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 58 0 3 2 58 0 16 7 69 0 29 2 58 0 30 7 77 0 31 8 53 0 32 2 58 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 58 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 6 57 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69 6 57 0 139] 
#[1 2 82 0 3 2 82 0 16 7 69 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 82 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 94 0 3 2 94 0 16 7 69 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 94 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 106 0 3 2 106 0 16 7 69 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 106 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 118 0 3 2 118 0 16 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 118 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 130 0 3 2 130 0 16 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 130 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 154 0 3 2 154 0 16 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 154 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 166 0 3 2 166 0 16 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 166 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 178 0 3 2 178 0 16 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 178 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 190 0 3 2 190 0 16 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 7 121 0 44 2 190 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 202 0 3 2 202 0 16 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 2 214 0 3 2 214 0 16 7 69 0 29 7 73 0 30 7 77 0 31 8 53 0 32 2 214 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 214 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 1 21 0 27 5 217 0 34 5 233 0 43 5 233 0 45 5 221 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 117 0 56 0 121 0 57 8 69 0 64 3 209 0 65 0 149 0 67 0 161 0 73 0 165 0 74 0 169 0 75 0 169 0 76 0 169 0 77 0 169 0 78 0 169 0 79 0 169 0 80 0 169 0 81 0 169 0 85 0 169 0 86 0 209 0 89 0 213 0 99 0 169 0 101 0 221 0 102 0 225 0 104 0 229 0 106 5 233 0 108 7 153 0 109 0 169 0 110 5 241 0 111 0 249 0 112 0 253 0 113 1 1 0 114 1 5 0 115 0 169 0 136 0 169 0 137 0 169 0 138 1 21 0 145 0 169 0 149 1 29 0 150 1 33 0 151] 
#[0 4 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 8 73 0 2 6 193 0 53 8 73 0 100 6 193 0 130] 
#[0 4 138 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152] 
#[1 2 70 0 3 2 70 0 16 7 69 0 29 2 70 0 30 2 70 0 31 8 53 0 32 2 70 0 33 7 85 0 35 7 89 0 36 7 93 0 37 7 97 0 38 7 101 0 39 7 105 0 40 7 109 0 41 7 113 0 42 7 117 0 43 7 121 0 44 2 70 0 49 1 197 0 50 1 201 0 59 1 205 0 68 1 209 0 69] 
#[0 4 142 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 58 0 59 0 152]
	).
]

{ #category : 'private' }
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

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr15: nodes [
	| result |
	result := ElixirTrueNode new.
	result _true: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr16: nodes [
	| result |
	result := ElixirFalseNode new.
	result _false: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr17: nodes [
	| result |
	result := ElixirNilNode new.
	result _nil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr23: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirAtomNode new.
	result atom: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr3: nodes [
	| result |
	result := ElixirCaptureNode new.
	result op: (nodes at: 1).
	result int: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr4: nodes [
	| result |
	result := ElixirLambdaNode new.
	result fn: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr5: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr6: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semis.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result stab: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semis.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr9: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc2: nodes [
	| result |
	result := ElixirAssocNode new.
	result assoc: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base1: nodes [
	| result |
	result := ElixirAssocBaseNode new.
	result addNode: (nodes at: 1) to: result assocs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result assocs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr1: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result key: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_expr6: nodes [
	| result |
	result := ElixirAssocExprNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update1: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result associatoin: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update2: nodes [
	| result |
	result := ElixirAssocUpdateNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result association: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForassoc_update_kw1: nodes [
	| result |
	result := ElixirAssocUpdateKwNode new.
	result expression: (nodes at: 1).
	result pipe: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbin_heredoc1: nodes [
	| result |
	result := ElixirBinHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbin_string1: nodes [
	| result |
	result := ElixirBinStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string1: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbit_string2: nodes [
	| result |
	result := ElixirBitStringNode new.
	result open: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe1: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_eoe2: nodes [
	| result |
	result := ElixirBlockEoeNode new.
	result identifier: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr2: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	result do_block: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr3: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result do_block: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_expr5: nodes [
	| result |
	result := ElixirBlockExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result do_block: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item1: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	result stab: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_item2: nodes [
	| result |
	result := ElixirBlockItemNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list1: nodes [
	| result |
	result := ElixirBlockListNode new.
	result addNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForblock_list2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg1: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg2: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result com: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg3: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_arg4: nodes [
	| result |
	result := ElixirBracketArgNode new.
	result leftBracket: (nodes at: 1).
	result arg: (nodes at: 2).
	result com: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_at_expr2: nodes [
	| result |
	result := ElixirBracketAtExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result arg: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_expr2: nodes [
	| result |
	result := ElixirBracketExprNode new.
	result identifier: (nodes at: 1).
	result arg: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values1: nodes [

	| result |
	result := ElixirBracketValuesNode new.
	result addNode: (nodes at: 1) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values2: nodes [

	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensCommaExprNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_comma_expr2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result argses.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwNode new.
	result addNode: (nodes at: 1) to: result kws.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw2: nodes [
	| result |
	result := nodes at: 3.
	result addFirstNode: (nodes at: 1) to: result kws.
	result addFirstToken: (nodes at: 2) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_kw_expr1: nodes [
	| result |
	result := ElixirCallArgsNoParensKwExprNode new.
	result key: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	result com: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many2: nodes [
	| result |
	result := ElixirCallArgsNoParensManyNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict1: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result args: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_no_parens_many_strict3: nodes [
	| result |
	result := ElixirCallArgsNoParensManyStrictNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens1: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens2: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens3: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens4: nodes [
	| result |
	result := ElixirCallArgsParensNode new.
	result leftParen: (nodes at: 1).
	result kw: (nodes at: 2).
	result addToken: (nodes at: 3) to: result coms.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base1: nodes [
	| result |
	result := ElixirCallArgsParensBaseNode new.
	result addNode: (nodes at: 1) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcall_args_parens_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result args.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args1: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args2: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args3: nodes [
	| result |
	result := ElixirContainerArgsNode new.
	result base: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base1: nodes [
	| result |
	result := ElixirContainerArgsBaseNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForcontainer_args_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block1: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block2: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block3: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result block: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_block4: nodes [
	| result |
	result := ElixirDoBlockNode new.
	result do: (nodes at: 1).
	result stab: (nodes at: 2).
	result block: (nodes at: 3).
	result end: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe1: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordo_eoe2: nodes [
	| result |
	result := ElixirDoEoeNode new.
	result do: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias1: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result alias: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias2: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result alias: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_alias3: nodes [
	| result |
	result := ElixirDotAliasNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result leftCurly: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier1: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_bracket_identifier2: nodes [
	| result |
	result := ElixirDotBracketIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier1: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_call_identifier2: nodes [
	| result |
	result := ElixirDotCallIdentifierNode new.
	result identifier: (nodes at: 1).
	result op: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier1: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_do_identifier2: nodes [
	| result |
	result := ElixirDotDoIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier1: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_identifier2: nodes [
	| result |
	result := ElixirDotIdentifierNode new.
	result expression: (nodes at: 1).
	result dot: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier1: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier1: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFordot_paren_identifier2: nodes [
	| result |
	result := ElixirDotParenIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForempty_paren1: nodes [
	| result |
	result := ElixirEmptyParenNode new.
	result leftParen: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe1: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result end: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForend_eoe2: nodes [
	| result |
	result := ElixirEndEoeNode new.
	result eoe: (nodes at: 1).
	result end: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list1: nodes [
	| result |
	result := ElixirExprListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForexpr_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe1: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForfn_eoe2: nodes [
	| result |
	result := ElixirFnEoeNode new.
	result fn: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar1: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar2: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar3: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar4: nodes [
	| result |
	result := ElixirGrammarNode new.
	result expressions: (nodes at: 1).
	result addToken: (nodes at: 2) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar5: nodes [
	| result |
	result := ElixirGrammarNode new.
	result addToken: (nodes at: 1) to: result eoes.
	result expressions: (nodes at: 2).
	result addToken: (nodes at: 3) to: result eoes.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForgrammar6: nodes [
	| result |
	result := ElixirGrammarNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw1: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw2: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base1: nodes [
	| result |
	result := ElixirKwBaseNode new.
	result addToken: (nodes at: 1) to: result keies.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keies.
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist1: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist2: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result close: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args1: nodes [
	| result |
	result := ElixirListArgsNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args2: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args3: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args4: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_heredoc1: nodes [
	| result |
	result := ElixirListHeredocNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_string1: nodes [
	| result |
	result := ElixirListStringNode new.
	result string: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap2: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap3: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result struct: (nodes at: 2).
	result args: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args1: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args3: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args4: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result association: (nodes at: 2).
	result com: (nodes at: 3).
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close1: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result kw: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close2: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result close: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close3: nodes [
	| result |
	result := ElixirMapCloseNode new.
	result association: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	result close: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr4: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result ops.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr5: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_expr8: nodes [
	| result |
	result := ElixirMatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result identifier: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormatched_op_expr14: nodes [
	| result |
	result := ElixirMatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr1: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	result expressoin: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_expr5: nodes [
	| result |
	result := ElixirNoParensExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_many_expr2: nodes [
	| result |
	result := ElixirNoParensManyExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_ambig_expr2: nodes [
	| result |
	result := ElixirNoParensOneAmbigExprNode new.
	result identifier: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_one_expr2: nodes [
	| result |
	result := ElixirNoParensOneExprNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForno_parens_op_expr13: nodes [
	| result |
	result := ElixirNoParensOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber1: nodes [
	| result |
	result := ElixirNumberNode new.
	result int: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber2: nodes [
	| result |
	result := ElixirNumberNode new.
	result float: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFornumber3: nodes [
	| result |
	result := ElixirNumberNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call1: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForparens_call2: nodes [
	| result |
	result := ElixirParensCallNode new.
	result identifier: (nodes at: 1).
	result call: (nodes at: 2).
	result call2: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab1: nodes [
	| result |
	result := ElixirStabNode new.
	result addNode: (nodes at: 1) to: result stabs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
	result addNode: (nodes at: 3) to: result stabs.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_eoe1: nodes [
	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_eoe2: nodes [

	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	result eoe: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr1: nodes [
	| result |
	result := ElixirStabExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr3: nodes [
	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_expr4: nodes [

	| result |
	result := ElixirStabExprNode new.
	result args: (nodes at: 1).
	result when: (nodes at: 2).
	result guard: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr1: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_op_eol_and_expr2: nodes [
	| result |
	result := ElixirStabOpEolAndExprNode new.
	result op: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstab_parens_many2: nodes [

	| result |
	result := ElixirStabParensManyNode new.
	result leftParen: (nodes at: 1).
	result args: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForstruct_expr1: nodes [
	| result |
	result := ElixirStructExprNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFortuple1: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result rightCurly: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFortuple2: nodes [
	| result |
	result := ElixirTupleNode new.
	result leftCurly: (nodes at: 1).
	result elements: (nodes at: 2).
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr1: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result matched: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr7: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result op: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_expr8: nodes [
	| result |
	result := ElixirUnmatchedExprNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForunmatched_op_expr13: nodes [
	| result |
	result := ElixirUnmatchedOpExprNode new.
	result op: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : 'testing' }
ElixirParser >> tryAllTokens [
	^ (currentToken ids includes: scanner identifierId) not
		or: [ currentToken ids includes: scanner op_identifierId ]
]
