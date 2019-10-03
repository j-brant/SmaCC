Class {
	#name : #ElixirParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 37 0 250] 
#[ 0 42 1 6] 
#[ 0 114 1 14] 
#[ 0 114 1 14 1 137] 
#[ 0 114 1 14 1 141] 
#[ 0 114 1 14 1 145] 
#[ 0 114 1 14 1 149] 
#[ 0 114 1 14 1 153] 
#[ 0 114 1 14 1 157] 
#[ 0 114 1 14 1 161] 
#[ 0 114 1 14 1 165] 
#[ 0 114 1 14 1 169] 
#[ 0 114 1 14 1 173] 
#[ 0 114 1 14 1 177] 
#[ 0 114 1 14 1 181] 
#[ 0 114 1 14 1 185] 
#[ 0 114 1 14 1 189] 
#[ 0 114 1 14 1 193] 
#[ 0 122 1 18] 
#[ 0 114 1 26] 
#[ 0 114 1 26 1 137] 
#[ 0 114 1 26 1 141] 
#[ 0 114 1 26 1 145] 
#[ 0 114 1 26 1 149] 
#[ 0 114 1 26 1 153] 
#[ 0 114 1 26 1 157] 
#[ 0 114 1 26 1 161] 
#[ 0 114 1 26 1 165] 
#[ 0 114 1 26 1 169] 
#[ 0 114 1 26 1 173] 
#[ 0 114 1 26 1 177] 
#[ 0 114 1 26 1 181] 
#[ 0 114 1 26 1 185] 
#[ 0 114 1 26 1 189] 
#[ 0 114 1 26 1 193] 
#[ 0 122 1 30] 
#[ 0 114 1 182] 
#[ 0 114 1 137 1 182] 
#[ 0 114 1 141 1 182] 
#[ 0 114 1 145 1 182] 
#[ 0 114 1 149 1 182] 
#[ 0 114 1 153 1 182] 
#[ 0 114 1 157 1 182] 
#[ 0 114 1 161 1 182] 
#[ 0 114 1 165 1 182] 
#[ 0 114 1 169 1 182] 
#[ 0 114 1 173 1 182] 
#[ 0 114 1 177 1 182] 
#[ 0 114 1 181 1 182] 
#[ 0 114 1 182 1 185] 
#[ 0 114 1 182 1 189] 
#[ 0 114 1 182 1 193] 
#[ 0 122 1 186] 
#[ 1 174 1 242] 
#[ 0 170 1 246] 
#[ 0 190 1 250] 
#[ 1 70 2 18] 
#[ 1 226 2 22] 
#[ 0 130 2 142] 
#[ 0 134 2 146] 
#[ 0 138 2 150] 
#[ 3 126 4 209]
	).
]

{ #category : #'generated-accessing' }
ElixirParser class >> cacheId [
	^'2019-10-03T17:30:31.297455-05:00'
]

{ #category : #generated }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE
%glr;
%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon>;

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
	| <>
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
	| ::
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
	: <decimal>\. <decimal> ([eE] <decimal>)?
	| <decimal> [eE] <decimal>
	;
<char>
	: \? .
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
	: [a-zA-Z]		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>?
	| \~ [A-Z] <sigilValue> <sigilModifier>?
	;
	
<identifier>
	: (_ | <isLowercase>) (<isLetter> | <isDigit> |  _)* [\?\!]?
	;
<kw_identifier>
	: <identifier> \:
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
%nonassoc <at_op>;       ## @
#%nonassoc dot_identifier;

### MAIN FLOW OF EXPRESSIONS

grammar 
	: eoe 
	| expr_list 
	|  eoe expr_list 
	|  expr_list eoe 
	| eoe expr_list eoe 
	|
	;

# Note expressions are on reverse order
expr_list 
	: expr 
	| expr_list eoe expr 
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
	: matched_expr matched_op_expr 
	| unary_op_eol matched_expr 
	| <at_op> matched_expr 
	| <capture_op> matched_expr 
	| no_parens_one_expr 
	| no_parens_zero_expr 
	| access_expr 
	| access_expr <kw_identifier>
	;

unmatched_expr 
	: matched_expr unmatched_op_expr 
	| unmatched_expr matched_op_expr 
	| unmatched_expr unmatched_op_expr 
	| unmatched_expr no_parens_op_expr 
	| unary_op_eol expr 
	| <at_op> expr 
	| <capture_op> expr 
	| block_expr 
	;

no_parens_expr 
	: matched_expr no_parens_op_expr 
	| unary_op_eol no_parens_expr 
	| <at_op> no_parens_expr 
	| <capture_op> no_parens_expr 
	| no_parens_one_ambig_expr 
	| no_parens_many_expr 
	;

block_expr 
	: dot_call_identifier call_args_parens do_block 
	| dot_call_identifier call_args_parens call_args_parens do_block 
	| dot_do_identifier do_block 
	| dot_op_identifier call_args_no_parens_all do_block 
	| dot_identifier call_args_no_parens_all do_block 
	;

matched_op_expr 
	: <match_op> matched_expr 
	| <dual_op> matched_expr 
	| <mult_op> matched_expr 
	| <two_op> matched_expr 
	| <three_op> matched_expr 
	| <and_op> matched_expr 
	| <or_op> matched_expr 
	| <in_op> matched_expr 
	| <in_match_op> matched_expr 
	| <type_op> matched_expr 
	| <when_op> matched_expr 
	| <pipe_op> matched_expr 
	| <comp_op> matched_expr 
	| <rel_op> matched_expr 
	| <arrow_op> matched_expr 
## Warn for no parens subset
	| <arrow_op> no_parens_one_expr 
	;

unmatched_op_expr 
	: <match_op> unmatched_expr 
	| <dual_op> unmatched_expr 
	| <mult_op> unmatched_expr 
	| <two_op> unmatched_expr 
	| <three_op> unmatched_expr 
	| <and_op> unmatched_expr 
	| <or_op> unmatched_expr 
	| <in_op> unmatched_expr 
	| <in_match_op> unmatched_expr 
	| <type_op> unmatched_expr 
	| <when_op> unmatched_expr 
	| <pipe_op> unmatched_expr 
	| <comp_op> unmatched_expr 
	| <rel_op> unmatched_expr 
	| <arrow_op> unmatched_expr 
	;

no_parens_op_expr 
	: <match_op> no_parens_expr 
	| <dual_op> no_parens_expr 
	| <mult_op> no_parens_expr 
	| <two_op> no_parens_expr 
	| <three_op> no_parens_expr 
	| <and_op> no_parens_expr 
	| <or_op> no_parens_expr 
	| <in_op> no_parens_expr 
	| <in_match_op> no_parens_expr 
	| <type_op> no_parens_expr 
	| <when_op> no_parens_expr 
	| <pipe_op> no_parens_expr 
	| <comp_op> no_parens_expr 
	| <rel_op> no_parens_expr 
	| <arrow_op> no_parens_expr 
## Warn for no parens subset
	| <arrow_op> no_parens_one_ambig_expr 
	| <arrow_op> no_parens_many_expr 
## Allow when (and only when) with keywords
	| <when_op> call_args_no_parens_kw 
	;

no_parens_one_ambig_expr 
	: dot_op_identifier call_args_no_parens_ambig
	| dot_identifier call_args_no_parens_ambig 
	;

no_parens_many_expr 
	: dot_op_identifier call_args_no_parens_many_strict 
	| dot_identifier call_args_no_parens_many_strict 
	;

no_parens_one_expr 
	: dot_op_identifier call_args_no_parens_one 
	| dot_identifier call_args_no_parens_one 
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
	| <capture_op> <int> 
	| fn_eoe stab end_eoe 
	| open_paren stab close_paren 
	| open_paren stab "";"" close_paren 
	| open_paren "";"" stab "";"" close_paren 
	| open_paren "";"" stab close_paren 
	| open_paren "";"" close_paren 
	| empty_paren 
	| number 
	| list 
	| map 
	| tuple 
	| ""true"" 
	| ""false"" 
	| ""nil"" 
	| bin_string 
	| list_string 
	| bin_heredoc 
	| list_heredoc 
	| bit_string 
	| <sigil> 
	| <atom> 
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
	
bin_string
	: <string>
	;
	
list_string
	: <charlist>
	;
	
bin_heredoc
	: <string_heredoc>
	;
	
list_heredoc
	: <charlist_heredoc>
	;

number 
	: <int> 
	| <flt> 
	| <char> 
	;
## Also used by maps and structs
parens_call 
	: dot_call_identifier call_args_parens 
	| dot_call_identifier call_args_parens call_args_parens 
	;

bracket_arg 
	: open_bracket kw close_bracket 
	| open_bracket container_expr close_bracket 
	| open_bracket container_expr "","" close_bracket 
	;

bracket_expr 
	: dot_bracket_identifier bracket_arg 
	| access_expr bracket_arg 
	;

bracket_at_expr 
	: <at_op> dot_bracket_identifier bracket_arg 
	| <at_op> access_expr bracket_arg 
	;

## Blocks

do_block 
	: do_eoe ""end"" 
	| do_eoe stab end_eoe 
	| do_eoe block_list ""end"" 
	| do_eoe stab_eoe block_list ""end"" 
	;

eoe 
	: <eol> 
	| <semicolon>
	;

fn_eoe 
	: ""fn""
	| ""fn"" eoe 
	;

do_eoe 
	: ""do"" 
	| ""do"" eoe 
	;

end_eoe 
	: ""end"" 
	| eoe ""end"" 
	;

block_eoe 
	: <block_identifier> 
	| <block_identifier> eoe 
	;

stab 
	: stab_expr 
	| stab eoe stab_expr 
	;

stab_eoe
	 : stab 
	| stab eoe 
	;

## Here, `element(1, Token)` is the stab operator,
## while `element(2, Token)` is the expression.
stab_expr 
	: expr 
	| stab_op_eol_and_expr 
	| empty_paren stab_op_eol_and_expr 
	| empty_paren <when_op> expr stab_op_eol_and_expr 
	| call_args_no_parens_all stab_op_eol_and_expr 
	| stab_parens_many stab_op_eol_and_expr 
	| stab_parens_many <when_op> expr stab_op_eol_and_expr 
	;

stab_op_eol_and_expr 
	: <stab_op> expr?
	;

block_item 
	: block_eoe stab_eoe 
	| block_eoe 
	;

block_list 
	: block_item 
	| block_item block_list 
	;

## Helpers

open_paren 
	: ""("" 
	;
close_paren 
	: "")"" 
	;

empty_paren 
	: open_paren "")"" 
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
	: ""}"" 
	;

# Operators

unary_op_eol 
	: <unary_op>
	| <dual_op>
	;

# Dot operator

dot_identifier 
	: <identifier> 
	| matched_expr <dot_op> <identifier> 
	;

dot_alias 
	: <alias> 
	| matched_expr <dot_op> <alias> 
	| matched_expr <dot_op> open_curly ""}"" 
	| matched_expr <dot_op> open_curly container_args close_curly 
	;

dot_op_identifier 
	: <op_identifier> 
	| matched_expr <dot_op> <op_identifier> 
	;

dot_do_identifier 
	: <do_identifier> 
	| matched_expr <dot_op> <do_identifier> 
	;

dot_bracket_identifier 
	: <bracket_identifier> 
	| matched_expr <dot_op> <bracket_identifier> 
	;

dot_paren_identifier
	 : <paren_identifier> 
	| matched_expr <dot_op> <paren_identifier> 
	;

dot_call_identifier 
	: dot_paren_identifier 
	| matched_expr <dot_call_op> 
	;

# Function calls with no parentheses

call_args_no_parens_expr 
	: matched_expr 
	| no_parens_expr 
	;

call_args_no_parens_comma_expr 
	: matched_expr "","" call_args_no_parens_expr 
	| call_args_no_parens_comma_expr "","" call_args_no_parens_expr 
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
	: matched_expr "","" call_args_no_parens_kw 
	| call_args_no_parens_comma_expr 
	| call_args_no_parens_comma_expr "","" call_args_no_parens_kw 
	;

call_args_no_parens_many_strict 
	: call_args_no_parens_many 
	| open_paren call_args_no_parens_kw close_paren 
	| open_paren call_args_no_parens_many close_paren 
	;

stab_parens_many 
	: open_paren call_args_no_parens_kw close_paren 
	| open_paren call_args_no_parens_many close_paren 
	;

# Containers

container_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

container_args_base 
	: container_expr
	| container_args_base "","" container_expr
	;

container_args 
	: container_args_base 
	| container_args_base "","" kw? 
	;

# Function calls with parentheses

call_args_parens_expr 
	: matched_expr 
	| unmatched_expr 
	| no_parens_expr 
	;

call_args_parens_base 
	: call_args_parens_expr 
	| call_args_parens_base "","" call_args_parens_expr 
	;

call_args_parens 
	: open_paren "")"" 
	| open_paren no_parens_expr close_paren 
	| open_paren kw_base close_paren 
	| open_paren kw_base "","" close_paren 
	| open_paren call_args_parens_base close_paren 
	| open_paren call_args_parens_base "","" kw_base close_paren 
	| open_paren call_args_parens_base "","" kw_base "","" close_paren 
	;

# KV

kw_eol 
	: <kw_identifier>
#	| <kw_identifier_safe> 			# what is this???
#	| <kw_identifier_unsafe> 		# what is this???
	;

kw_base 
	: kw_eol container_expr 
	| kw_base "","" kw_eol container_expr 
	;

kw 
	: kw_base "",""?
	;

call_args_no_parens_kw_expr 
	: kw_eol matched_expr 
	| kw_eol no_parens_expr 
	;

call_args_no_parens_kw 
	: call_args_no_parens_kw_expr 
	| call_args_no_parens_kw_expr "","" call_args_no_parens_kw 
	;

# Lists

list_args 
	: kw 
	| container_args_base 
	| container_args_base "","" 
	| container_args_base "","" kw 
	;

list 
	: open_bracket ""]"" 
	| open_bracket list_args close_bracket 
	;

# Tuple

tuple 
	: open_curly ""}"" 
	| open_curly container_args close_curly 
	;

# Bitstrings

bit_string 
	: open_bit "">>"" 
	| open_bit container_args close_bit 
	;

# Map and structs

assoc_op_eol 
	: <assoc_op>
	;

assoc_expr 
	: matched_expr assoc_op_eol matched_expr 
	| unmatched_expr assoc_op_eol unmatched_expr 
	| matched_expr assoc_op_eol unmatched_expr 
	| unmatched_expr assoc_op_eol matched_expr 
	| dot_identifier 
	| parens_call 
	;

assoc_update 
	: matched_expr <pipe_op> assoc_expr 
	| unmatched_expr <pipe_op> assoc_expr 
	;

assoc_update_kw 
	: matched_expr <pipe_op> kw 
	| unmatched_expr <pipe_op> kw 
	;

assoc_base 
	: assoc_expr 
	| assoc_base "","" assoc_expr 
	;

assoc 
	: assoc_base 
	| assoc_base "","" 
	;

map_op 
	: <map_op>
	;

map_close 
	: kw close_curly 
	| assoc close_curly 
	| assoc_base "","" kw close_curly 
	;

map_args 
	: open_curly ""}"" 
	| open_curly map_close 
	| open_curly assoc_update close_curly 
	| open_curly assoc_update "","" close_curly 
	| open_curly assoc_update "","" map_close 
	| open_curly assoc_update_kw close_curly 
	;

struct_expr 
	: <atom> 
	| dot_alias 
	| dot_identifier 
	| <at_op> struct_expr 
	| unary_op_eol struct_expr 
	| parens_call 
	;

map 
	: map_op map_args 
	| <struct_op> struct_expr? map_args 			# added ?
	;"
]

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(57 0 #reduceFor: 5433350 false ) 
	#(93 1 #reduceFor: 12810241 false ) 
	#(98 1 #reduceFor: 12949505 false ) 
	#(96 1 #reduceFor: 12896257 false ) 
	#(71 1 #reduceFor: 10579984 false ) 
	#(83 1 #reduceFor: 11986945 false ) 
	#(71 1 #reduceFor: 10579985 false ) 
	#(71 1 #reduceFor: 10579983 false ) 
	#(100 1 #reduceFor: 12996609 false ) 
	#(76 1 #reduceFor: 11278337 false ) 
	#(71 1 #reduceFor: 10579992 false ) 
	#(72 1 #reduceFor: 11140097 false ) 
	#(74 1 #reduceFor: 11200513 false ) 
	#(73 1 #reduceFor: 11168769 false ) 
	#(75 1 #reduceFor: 11238401 false ) 
	#(82 1 #reduceFor: 11952129 false ) 
	#(139 1 #reduceFor: 17008641 false ) 
	#(102 1 #reduceFor: 13059074 false ) 
	#(102 1 #reduceFor: 13059073 false ) 
	#(76 1 #reduceFor: 11278338 false ) 
	#(76 1 #reduceFor: 11278339 false ) 
	#(71 1 #reduceFor: 10579991 false ) 
	#(103 1 #reduceFor: 13121537 false ) 
	#(104 1 #reduceFor: 13199361 false ) 
	#(82 1 #reduceFor: 11952130 false ) 
	#(57 1 #reduceFor: 5433346 false ) 
	#(58 1 #reduceFor: 5574657 false ) 
	#(59 1 #reduceFor: 5622785 false ) 
	#(59 1 #reduceFor: 5622787 false ) 
	#(59 1 #reduceFor: 5622786 false ) 
	#(61 1 #reduceFor: 7532552 false ) 
	#(62 1 #reduceFor: 7778309 false ) 
	#(62 1 #reduceFor: 7778310 false ) 
	#(60 1 #reduceFor: 7297029 false ) 
	#(60 1 #reduceFor: 7297030 false ) 
	#(60 1 #reduceFor: 7297031 false ) 
	#(71 1 #reduceFor: 10579986 false ) 
	#(71 1 #reduceFor: 10579987 false ) 
	#(71 1 #reduceFor: 10579988 false ) 
	#(71 1 #reduceFor: 10579989 false ) 
	#(71 1 #reduceFor: 10579979 false ) 
	#(71 1 #reduceFor: 10579994 false ) 
	#(71 1 #reduceFor: 10579970 false ) 
	#(71 1 #reduceFor: 10579969 false ) 
	#(57 1 #reduceFor: 5433345 false ) 
	#(71 1 #reduceFor: 10579978 false ) 
	#(70 1 #reduceFor: 10260482 false ) 
	#(71 1 #reduceFor: 10579993 false ) 
	#(70 1 #reduceFor: 10260481 false ) 
	#(109 1 #reduceFor: 13742081 false ) 
	#(71 1 #reduceFor: 10579980 false ) 
	#(71 1 #reduceFor: 10579982 false ) 
	#(71 1 #reduceFor: 10579990 false ) 
	#(71 1 #reduceFor: 10579981 false ) 
	#(107 1 #reduceFor: 13543425 false ) 
	#(106 1 #reduceFor: 13456385 false ) 
	#(105 1 #reduceFor: 13369345 false ) 
	#(108 1 #reduceFor: 13645825 false ) 
	#(83 2 #reduceFor: 11986946 false ) 
	#(142 1 #reduceFor: 17357825 false ) 
	#(142 1 #reduceFor: 17357830 false ) 
	#(142 1 #reduceFor: 17357827 false ) 
	#(142 1 #reduceFor: 17357826 false ) 
	#(143 2 #reduceFor: 17490946 false ) 
	#(71 2 #reduceFor: 10579971 false ) 
	#(61 2 #reduceFor: 7532551 false ) 
	#(60 2 #reduceFor: 7297028 false ) 
	#(62 2 #reduceFor: 7778308 false ) 
	#(61 2 #reduceFor: 7532550 false ) 
	#(60 2 #reduceFor: 7297027 false ) 
	#(62 2 #reduceFor: 7778307 false ) 
	#(57 2 #reduceFor: 5433348 false ) 
	#(60 2 #reduceFor: 7297025 false ) 
	#(61 2 #reduceFor: 7532545 false ) 
	#(62 2 #reduceFor: 7778305 false ) 
	#(109 2 #reduceFor: 13742082 false ) 
	#(61 2 #reduceFor: 7532546 false ) 
	#(61 2 #reduceFor: 7532547 false ) 
	#(61 2 #reduceFor: 7532548 false ) 
	#(60 2 #reduceFor: 7297032 false ) 
	#(79 2 #reduceFor: 11624450 false ) 
	#(57 2 #reduceFor: 5433347 false ) 
	#(90 1 #reduceFor: 12639233 false ) 
	#(124 1 #reduceFor: 15629313 false ) 
	#(89 1 #reduceFor: 12346369 false ) 
	#(113 1 #reduceFor: 14199810 false ) 
	#(114 1 #reduceFor: 14274561 false ) 
	#(87 1 #reduceFor: 12160001 false ) 
	#(89 1 #reduceFor: 12346370 false ) 
	#(115 1 #reduceFor: 14325762 false ) 
	#(112 1 #reduceFor: 14081025 false ) 
	#(112 1 #reduceFor: 14081026 false ) 
	#(112 1 #reduceFor: 14081027 false ) 
	#(128 1 #reduceFor: 15944705 false ) 
	#(113 1 #reduceFor: 14199809 false ) 
	#(95 2 #reduceFor: 12859393 false ) 
	#(130 2 #reduceFor: 16183297 false ) 
	#(118 1 #reduceFor: 14814209 false ) 
	#(118 1 #reduceFor: 14814210 false ) 
	#(118 1 #reduceFor: 14814211 false ) 
	#(119 1 #reduceFor: 14891009 false ) 
	#(129 1 #reduceFor: 16075778 false ) 
	#(126 1 #reduceFor: 15835137 false ) 
	#(129 1 #reduceFor: 16075777 false ) 
	#(132 2 #reduceFor: 16354305 false ) 
	#(120 1 #reduceFor: 14978049 false ) 
	#(131 2 #reduceFor: 16266241 false ) 
	#(61 2 #reduceFor: 7532549 false ) 
	#(60 2 #reduceFor: 7297026 false ) 
	#(62 2 #reduceFor: 7778306 false ) 
	#(69 2 #reduceFor: 10145794 false ) 
	#(67 2 #reduceFor: 9887746 false ) 
	#(116 1 #reduceFor: 14500865 false ) 
	#(68 2 #reduceFor: 10012674 false ) 
	#(69 2 #reduceFor: 10145793 false ) 
	#(67 2 #reduceFor: 9887745 false ) 
	#(68 2 #reduceFor: 10012673 false ) 
	#(84 1 #reduceFor: 12020737 false ) 
	#(63 2 #reduceFor: 7982083 false ) 
	#(79 2 #reduceFor: 11624449 false ) 
	#(77 2 #reduceFor: 11355137 false ) 
	#(143 2 #reduceFor: 17490945 false ) 
	#(142 2 #reduceFor: 17357828 false ) 
	#(141 2 #reduceFor: 17125377 false ) 
	#(134 1 #reduceFor: 16480262 false ) 
	#(134 1 #reduceFor: 16480261 false ) 
	#(137 1 #reduceFor: 16900097 false ) 
	#(138 1 #reduceFor: 16962561 false ) 
	#(141 2 #reduceFor: 17125378 false ) 
	#(142 2 #reduceFor: 17357829 false ) 
	#(143 3 #reduceFor: 17490947 false ) 
	#(80 3 #reduceFor: 11711490 false ) 
	#(80 3 #reduceFor: 11711489 false ) 
	#(58 3 #reduceFor: 5574658 false ) 
	#(64 2 #reduceFor: 8259597 false ) 
	#(65 2 #reduceFor: 8760333 false ) 
	#(66 2 #reduceFor: 9229325 false ) 
	#(64 2 #reduceFor: 8259595 false ) 
	#(65 2 #reduceFor: 8760331 false ) 
	#(66 2 #reduceFor: 9229323 false ) 
	#(66 2 #reduceFor: 9229330 false ) 
	#(64 2 #reduceFor: 8259594 false ) 
	#(65 2 #reduceFor: 8760330 false ) 
	#(66 2 #reduceFor: 9229322 false ) 
	#(64 2 #reduceFor: 8259596 false ) 
	#(65 2 #reduceFor: 8760332 false ) 
	#(66 2 #reduceFor: 9229324 false ) 
	#(64 2 #reduceFor: 8259585 false ) 
	#(65 2 #reduceFor: 8760321 false ) 
	#(66 2 #reduceFor: 9229313 false ) 
	#(64 2 #reduceFor: 8259591 false ) 
	#(65 2 #reduceFor: 8760327 false ) 
	#(66 2 #reduceFor: 9229319 false ) 
	#(64 2 #reduceFor: 8259590 false ) 
	#(65 2 #reduceFor: 8760326 false ) 
	#(66 2 #reduceFor: 9229318 false ) 
	#(64 2 #reduceFor: 8259598 false ) 
	#(65 2 #reduceFor: 8760334 false ) 
	#(66 2 #reduceFor: 9229326 false ) 
	#(64 2 #reduceFor: 8259599 false ) 
	#(65 2 #reduceFor: 8760335 false ) 
	#(66 2 #reduceFor: 9229327 false ) 
	#(66 2 #reduceFor: 9229328 false ) 
	#(66 2 #reduceFor: 9229329 false ) 
	#(64 2 #reduceFor: 8259600 false ) 
	#(64 2 #reduceFor: 8259592 false ) 
	#(65 2 #reduceFor: 8760328 false ) 
	#(66 2 #reduceFor: 9229320 false ) 
	#(64 2 #reduceFor: 8259589 false ) 
	#(65 2 #reduceFor: 8760325 false ) 
	#(66 2 #reduceFor: 9229317 false ) 
	#(64 2 #reduceFor: 8259588 false ) 
	#(65 2 #reduceFor: 8760324 false ) 
	#(66 2 #reduceFor: 9229316 false ) 
	#(64 2 #reduceFor: 8259586 false ) 
	#(65 2 #reduceFor: 8760322 false ) 
	#(66 2 #reduceFor: 9229314 false ) 
	#(64 2 #reduceFor: 8259587 false ) 
	#(65 2 #reduceFor: 8760323 false ) 
	#(66 2 #reduceFor: 9229315 false ) 
	#(64 2 #reduceFor: 8259593 false ) 
	#(65 2 #reduceFor: 8760329 false ) 
	#(66 2 #reduceFor: 9229321 false ) 
	#(103 3 #reduceFor: 13121538 false ) 
	#(104 3 #reduceFor: 13199362 false ) 
	#(107 3 #reduceFor: 13543426 false ) 
	#(106 3 #reduceFor: 13456386 false ) 
	#(105 3 #reduceFor: 13369346 false ) 
	#(108 3 #reduceFor: 13645826 false ) 
	#(57 3 #reduceFor: 5433349 false ) 
	#(90 2 #reduceFor: 12639234 false ) 
	#(85 1 #reduceFor: 12055553 false ) 
	#(71 3 #reduceFor: 10579972 false ) 
	#(89 2 #reduceFor: 12346371 false ) 
	#(89 2 #reduceFor: 12346373 false ) 
	#(89 2 #reduceFor: 12346374 false ) 
	#(127 2 #reduceFor: 15859713 false ) 
	#(127 2 #reduceFor: 15859714 false ) 
	#(94 1 #reduceFor: 12833793 false ) 
	#(71 3 #reduceFor: 10579977 false ) 
	#(71 3 #reduceFor: 10579973 false ) 
	#(129 2 #reduceFor: 16075779 false ) 
	#(125 2 #reduceFor: 15756289 false ) 
	#(126 2 #reduceFor: 15835138 false ) 
	#(97 1 #reduceFor: 12921857 false ) 
	#(130 3 #reduceFor: 16183298 false ) 
	#(120 2 #reduceFor: 14978050 false ) 
	#(99 1 #reduceFor: 12972033 false ) 
	#(132 3 #reduceFor: 16354306 false ) 
	#(101 1 #reduceFor: 13020161 false ) 
	#(131 3 #reduceFor: 16266242 false ) 
	#(63 3 #reduceFor: 7982085 false ) 
	#(63 3 #reduceFor: 7982084 false ) 
	#(84 2 #reduceFor: 12020738 false ) 
	#(81 2 #reduceFor: 11829249 false ) 
	#(91 1 #reduceFor: 12685314 false ) 
	#(88 1 #reduceFor: 12208129 false ) 
	#(92 1 #reduceFor: 12739585 false ) 
	#(86 1 #reduceFor: 12093441 false ) 
	#(123 2 #reduceFor: 15283201 false ) 
	#(121 1 #reduceFor: 15091713 false ) 
	#(121 1 #reduceFor: 15091714 false ) 
	#(121 1 #reduceFor: 15091715 false ) 
	#(122 1 #reduceFor: 15175681 false ) 
	#(63 3 #reduceFor: 7982081 false ) 
	#(77 3 #reduceFor: 11355138 false ) 
	#(133 1 #reduceFor: 16447489 false ) 
	#(140 2 #reduceFor: 17033217 false ) 
	#(141 3 #reduceFor: 17125379 false ) 
	#(141 3 #reduceFor: 17125382 false ) 
	#(138 2 #reduceFor: 16962562 false ) 
	#(140 2 #reduceFor: 17033218 false ) 
	#(104 4 #reduceFor: 13199363 false ) 
	#(78 3 #reduceFor: 11473922 false ) 
	#(78 3 #reduceFor: 11473921 false ) 
	#(110 1 #reduceFor: 13863937 false ) 
	#(110 1 #reduceFor: 13863938 false ) 
	#(111 3 #reduceFor: 13931521 false ) 
	#(115 3 #reduceFor: 14325761 false ) 
	#(85 2 #reduceFor: 12055554 false ) 
	#(87 3 #reduceFor: 12160002 false ) 
	#(117 3 #reduceFor: 14672898 false ) 
	#(117 3 #reduceFor: 14672897 false ) 
	#(111 3 #reduceFor: 13931522 false ) 
	#(115 3 #reduceFor: 14325763 false ) 
	#(128 3 #reduceFor: 15944706 false ) 
	#(71 4 #reduceFor: 10579976 false ) 
	#(71 4 #reduceFor: 10579974 false ) 
	#(119 3 #reduceFor: 14891010 false ) 
	#(129 3 #reduceFor: 16075780 false ) 
	#(120 3 #reduceFor: 14978051 false ) 
	#(116 3 #reduceFor: 14500867 false ) 
	#(116 3 #reduceFor: 14500866 false ) 
	#(91 2 #reduceFor: 12685313 false ) 
	#(88 2 #reduceFor: 12208130 false ) 
	#(81 3 #reduceFor: 11829250 false ) 
	#(92 2 #reduceFor: 12739586 false ) 
	#(81 3 #reduceFor: 11829251 false ) 
	#(86 2 #reduceFor: 12093442 false ) 
	#(123 3 #reduceFor: 15283202 false ) 
	#(123 3 #reduceFor: 15283205 false ) 
	#(123 3 #reduceFor: 15283203 false ) 
	#(63 4 #reduceFor: 7982082 false ) 
	#(136 3 #reduceFor: 16815105 false ) 
	#(135 3 #reduceFor: 16716801 false ) 
	#(134 3 #reduceFor: 16480257 false ) 
	#(134 3 #reduceFor: 16480259 false ) 
	#(136 3 #reduceFor: 16815106 false ) 
	#(135 3 #reduceFor: 16716802 false ) 
	#(134 3 #reduceFor: 16480260 false ) 
	#(134 3 #reduceFor: 16480258 false ) 
	#(141 4 #reduceFor: 17125380 false ) 
	#(141 4 #reduceFor: 17125381 false ) 
	#(137 3 #reduceFor: 16900098 false ) 
	#(104 5 #reduceFor: 13199364 false ) 
	#(78 4 #reduceFor: 11473923 false ) 
	#(89 4 #reduceFor: 12346372 false ) 
	#(89 4 #reduceFor: 12346375 false ) 
	#(71 5 #reduceFor: 10579975 false ) 
	#(125 4 #reduceFor: 15756290 false ) 
	#(81 4 #reduceFor: 11829252 false ) 
	#(122 3 #reduceFor: 15175682 false ) 
	#(123 4 #reduceFor: 15283204 false ) 
	#(140 4 #reduceFor: 17033219 false ) 
	#(123 5 #reduceFor: 15283206 false ) 
	#(123 6 #reduceFor: 15283207 false )
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<block_identifier>' '<bracket_identifier>' '<do_identifier>' '<dot_call_op>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 65 0 25 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 0 113 0 55 0 117 0 57 0 121 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 197 0 82 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149 0 6 0 150] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 145 0 146 0 148 0 149] 
#[0 0 18 0 1 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 0 65 0 25 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 34 0 26 0 43 0 26 0 45 0 26 0 46 0 26 0 47 0 26 0 48 0 26 0 51 0 26 0 52 0 26 0 53 0 26 0 54 0 113 0 55 1 37 0 82 0 26 0 145 0 26 0 146 0 26 0 148 0 26 0 149] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 66 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 146 0 148 0 149 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 53 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 1 61 0 100 1 65 0 102 1 69 0 103 1 73 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 89 0 141 1 93 0 142 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 0 70 0 15] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 1 109 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 145 0 146 0 148 0 149] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 145 0 146 0 148 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 1 121 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 1 129 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 144 0 145 0 146 0 147 0 148 0 149 0 150] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 146 0 148 0 149 0 150] 
#[0 0 0 0 150] 
#[1 0 65 0 25 0 113 0 55 1 133 0 82 0 106 0 150] 
#[0 0 110 0 25 0 55 0 150] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 25 0 114 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 144 1 213 0 147 0 114 0 150] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 25 0 118 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 0 118 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 0 118 0 55 1 217 0 64 1 221 0 65 1 225 0 66 0 118 0 144 0 118 0 150] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 17 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 1 233 0 78 1 237 0 96 0 146 0 144 0 146 0 147 0 146 0 150] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 241 0 58 0 125 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149 0 182 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 9 0 87 2 13 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 73 0 87 2 13 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 0 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 2 77 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 93 0 118 2 97 0 119 2 101 0 124 2 105 0 125 2 109 0 126 2 113 0 129 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 2 117 0 6 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 93 0 118 2 121 0 119 2 125 0 120 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 2 129 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 93 0 118 2 121 0 119 2 133 0 120 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 2 145 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 13 0 5 0 190 0 6 0 17 0 7 0 190 0 8 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 0 73 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 0 190 0 55 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 165 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 181 0 112 2 185 0 113 2 189 0 114 2 193 0 115 2 197 0 116 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 0 190 0 144 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149 0 190 0 150] 
#[0 0 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 165 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 201 0 112 2 205 0 113 2 209 0 114 2 193 0 115 2 213 0 116 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 6 0 198 0 8 2 217 0 9 0 198 0 10 0 198 0 16 0 198 0 25 0 198 0 28 0 198 0 29 0 198 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 49 0 198 0 50 0 198 0 55 2 221 0 81 2 225 0 84 0 198 0 144 0 198 0 147 0 198 0 150] 
#[1 0 17 0 7 2 229 0 78 1 237 0 96] 
#[0 0 202 0 1] 
#[1 0 9 0 1 2 233 0 93 2 237 0 123] 
#[0 0 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 37 0 15 2 241 0 100 2 245 0 141] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 222 0 7] 
#[0 0 226 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 230 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[0 0 234 0 1] 
#[0 0 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[1 0 46 0 7 0 242 0 15 0 46 0 29 0 46 0 30 0 46 0 31 0 46 0 32 0 46 0 35 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 49 0 46 0 50 0 46 0 53 0 46 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 1 65 0 102 1 69 0 103 1 73 0 104 1 77 0 105 1 81 0 106 1 129 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 3 13 0 142 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 0 170 0 7 0 246 0 15 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 77 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 81 0 60 3 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 3 93 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 93 0 118 2 121 0 119 2 133 0 120 2 101 0 124 2 105 0 125 3 97 0 126 1 1 0 130 1 5 0 131 1 9 0 132 3 101 0 134 3 105 0 135 3 109 0 136 3 113 0 137 3 117 0 138 1 13 0 139 3 121 0 140 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 1 41 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 1 49 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 1 57 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 1 65 0 102 1 69 0 103 1 73 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 3 129 0 142 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 3 137 0 113 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149] 
#[1 0 194 0 7 0 254 0 15 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 49 0 194 0 50 0 194 0 53 0 194 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 3 141 0 113 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 0 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 2 233 0 93 3 145 0 123] 
#[0 1 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 37 0 15 2 241 0 100 3 149 0 141] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 1 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 25 0 15 0 28 0 19 0 29 0 23 0 30 0 27 0 31 0 31 0 32 0 15 0 33 0 35 0 35 0 39 0 36 0 43 0 37 0 47 0 38 0 51 0 39 0 55 0 40 0 59 0 41 0 63 0 42 0 67 0 43 0 71 0 44 0 75 0 49 1 197 0 50 0 15 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 15 0 144 1 213 0 147 0 15 0 150] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 1 22 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 25 0 83 0 28 0 87 0 29 0 91 0 30 0 95 0 31 0 99 0 32 0 83 0 33 0 103 0 35 0 107 0 36 0 111 0 37 0 115 0 38 0 119 0 39 0 123 0 40 0 127 0 41 0 131 0 42 0 135 0 43 0 139 0 44 0 143 0 49 1 26 0 50 0 83 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 83 0 144 1 26 0 147 0 83 0 150] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 0 17 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 25 0 146 0 28 0 146 0 29 0 146 0 30 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 49 0 146 0 50 1 229 0 53 0 146 0 55 3 153 0 78 1 237 0 96 0 146 0 144 0 146 0 147 0 146 0 150] 
#[1 0 17 0 7 3 157 0 78 1 237 0 96] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149 1 34 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 165 0 60 3 169 0 61 3 173 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 177 0 60 3 181 0 61 3 185 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 53 0 124 2 57 0 127 3 189 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 193 0 60 3 197 0 61 3 201 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 205 0 60 3 209 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 217 0 60 3 221 0 61 3 225 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 229 0 60 3 233 0 61 3 237 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 241 0 60 3 245 0 61 3 249 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 253 0 60 4 1 0 61 4 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 9 0 60 4 13 0 61 4 17 0 62 0 141 0 63 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 33 0 60 4 37 0 61 4 41 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 45 0 60 4 49 0 61 4 53 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 57 0 60 4 61 0 61 4 65 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 69 0 60 4 73 0 61 4 77 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 81 0 60 4 85 0 61 4 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 93 0 60 4 97 0 61 4 101 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 37 0 15 4 105 0 52 4 109 0 54 4 113 0 100 4 117 0 145 4 121 0 146 4 125 0 148 4 129 0 149] 
#[0 1 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 42 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 1 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 50 0 1] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 4 133 0 118 2 101 0 124 2 105 0 125 4 137 0 126 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 65 0 25 0 113 0 55 4 141 0 82 1 74 0 150] 
#[1 0 9 0 1 1 78 0 2 1 78 0 4 0 13 0 5 0 17 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 1 78 0 25 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 78 0 55 4 145 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 78 0 144 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 145 0 146 0 148 0 149] 
#[0 1 86 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 0 114 0 2 4 149 0 3 0 114 0 4 0 114 0 10 0 114 0 25 1 90 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 0 114 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 114 0 144 1 213 0 147] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 25 1 94 0 28 0 122 0 55 0 122 0 144] 
#[1 4 153 0 10 0 65 0 25 0 113 0 55 4 157 0 82 4 161 0 85] 
#[0 1 98 0 2 0 4 0 10 0 25 0 55 0 144] 
#[0 1 102 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 73 0 87 2 13 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 4 165 0 115 2 49 0 117 2 53 0 124 2 57 0 127 4 169 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 7 0 186 0 10 0 186 0 25 1 245 0 28 0 186 0 29 4 173 0 30 0 186 0 31 0 186 0 32 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 41 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 49 0 186 0 50 0 186 0 53 0 186 0 55 4 177 0 90 0 186 0 144 0 186 0 147] 
#[1 1 106 0 2 4 181 0 3 1 106 0 4 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 25 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 49 1 106 0 50 1 106 0 55 1 106 0 144 1 106 0 147 1 106 0 150] 
#[1 1 245 0 28 4 185 0 90] 
#[0 1 110 0 28] 
#[0 1 114 0 9 0 28] 
#[0 1 118 0 9 0 28] 
#[1 1 245 0 28 4 189 0 30 4 193 0 90] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 4 197 0 60 4 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 1 122 0 2 4 205 0 3 1 122 0 4 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 25 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 49 1 122 0 50 1 122 0 55 1 122 0 144 1 122 0 147 1 122 0 150] 
#[0 1 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 130 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 4 209 0 2 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 4 213 0 87 2 13 0 89 2 17 0 90 2 21 0 93 4 217 0 94 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 4 209 0 2 4 221 0 4 0 65 0 25 0 113 0 55 4 225 0 82 4 229 0 94] 
#[0 1 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 1 138 0 2 1 138 0 3 1 138 0 6 1 138 0 8 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 147] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[0 1 146 0 2 0 3 0 6 0 8 0 16] 
#[0 1 150 0 3 0 6 0 8 0 16] 
#[1 4 233 0 3 1 154 0 8] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 4 237 0 118 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 4 241 0 3 1 158 0 6 1 158 0 8 1 158 0 16] 
#[0 1 162 0 8] 
#[1 4 245 0 8 4 249 0 97] 
#[0 1 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 253 0 3 1 170 0 6 1 170 0 16] 
#[1 5 1 0 6 5 5 0 99] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 5 9 0 16 5 13 0 101] 
#[0 1 178 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 25 0 151 0 28 0 155 0 29 0 159 0 30 0 163 0 31 0 167 0 32 0 151 0 33 0 171 0 35 0 175 0 36 0 179 0 37 0 183 0 38 0 187 0 39 0 191 0 40 0 195 0 41 0 199 0 42 0 203 0 43 0 207 0 44 0 211 0 49 1 197 0 50 0 151 0 55 1 201 0 64 1 205 0 65 1 209 0 66 0 151 0 144 1 213 0 147 0 151 0 150] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 17 0 60 5 21 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 25 0 60 5 29 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 1 129 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 1 90 0 2 4 149 0 3 1 90 0 4 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 25 1 90 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 1 90 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 5 89 0 49 1 197 0 50 1 90 0 55 1 201 0 64 1 209 0 66 1 90 0 144 1 213 0 147 1 90 0 150] 
#[0 1 94 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 2 65 0 2 2 69 0 4 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 73 0 87 2 13 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 5 93 0 115 2 49 0 117 2 53 0 124 2 57 0 127 5 97 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 101 0 60 5 105 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 190 0 2 0 190 0 3 0 190 0 4 0 13 0 5 0 190 0 6 0 17 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 190 0 25 0 69 0 26 0 73 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 0 190 0 55 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 165 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 3 137 0 113 5 109 0 114 5 113 0 115 2 197 0 116 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 0 190 0 144 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149 0 190 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 165 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 3 141 0 113 5 117 0 114 5 113 0 115 2 213 0 116 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 2 217 0 9 5 121 0 81 2 225 0 84] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 110 0 9 1 190 0 10 1 190 0 16 1 190 0 25 1 190 0 28 1 190 0 29 1 190 0 30 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 35 1 190 0 36 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 40 1 190 0 41 1 190 0 42 1 190 0 43 1 190 0 44 1 190 0 49 1 190 0 50 1 190 0 55 1 190 0 144 1 190 0 147 1 190 0 150] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 6 1 194 0 8 1 114 0 9 1 194 0 10 1 194 0 16 1 194 0 25 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 49 1 194 0 55 1 194 0 144 1 194 0 150] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 25 1 198 0 28 1 198 0 29 1 198 0 30 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 35 1 198 0 36 1 198 0 37 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 49 1 198 0 55 1 198 0 144 1 198 0 150] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 217 0 9 5 125 0 81 2 225 0 84] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 110 0 9 1 206 0 10 1 206 0 16 1 206 0 25 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 49 1 206 0 50 1 206 0 55 1 206 0 144 1 206 0 147 1 206 0 150] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 6 1 210 0 8 1 114 0 9 1 210 0 10 1 210 0 16 1 210 0 25 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 49 1 210 0 55 1 210 0 144 1 210 0 150] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 1 218 0 1 1 218 0 5 1 218 0 7 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 1 218 0 15 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 0 65 0 25 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 34 1 218 0 43 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 51 1 218 0 52 1 218 0 53 1 218 0 54 0 113 0 55 5 129 0 82 1 218 0 144 1 218 0 145 1 218 0 146 1 218 0 148 1 218 0 149] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 5 133 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 5 137 0 86 5 141 0 87 5 145 0 88 2 13 0 89 2 17 0 90 5 149 0 91 5 153 0 92 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 5 157 0 144 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 1 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 5 161 0 2 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 165 0 60 5 169 0 61 5 173 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 5 177 0 121 5 181 0 122 2 101 0 124 5 185 0 125 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 2 217 0 9 1 230 0 10 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 5 189 0 81 2 225 0 84 2 233 0 93 5 193 0 123 1 230 0 144 1 230 0 147 1 230 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 5 197 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 209 0 60 5 213 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 5 221 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 3 97 0 126 1 1 0 130 1 5 0 131 1 9 0 132 3 101 0 134 3 105 0 135 3 109 0 136 3 113 0 137 3 117 0 138 1 13 0 139 3 121 0 140 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 9 0 60 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 1 129 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 3 17 0 29 1 14 0 30 1 14 0 31 1 14 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 1 14 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 125 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 1 45 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 3 133 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 3 137 0 113 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149] 
#[1 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 201 0 64 1 26 0 147] 
#[0 1 238 0 15] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 229 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 233 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 237 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 241 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 245 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 249 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 5 253 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 1 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 5 0 60 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 9 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 13 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 17 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 21 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 25 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 45 0 34 0 81 0 43 0 85 0 45 2 249 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 29 0 60 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 3 1 0 102 3 5 0 103 0 233 0 104 1 77 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 6 0 219 0 7 1 242 0 8 1 242 0 9 1 242 0 10 1 242 0 16 1 242 0 25 1 242 0 28 0 219 0 29 0 219 0 30 0 219 0 31 0 219 0 32 1 242 0 33 0 219 0 35 0 219 0 36 0 219 0 37 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 49 0 219 0 50 0 219 0 53 1 242 0 55 1 242 0 144 0 219 0 147 1 242 0 150] 
#[1 1 138 0 3 1 138 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 33 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 41 0 133 1 213 0 147] 
#[1 1 142 0 3 1 142 0 16 1 137 0 29 1 141 0 30 1 145 0 31 6 45 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 49 0 133] 
#[1 0 223 0 3 0 170 0 7 0 223 0 16 0 170 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 49 0 170 0 50 0 170 0 53 0 170 0 147] 
#[1 0 9 0 1 0 227 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 2 165 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 181 0 112 2 185 0 113 2 189 0 114 2 193 0 115 2 197 0 116 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149] 
#[1 5 9 0 16 6 53 0 101] 
#[0 1 254 0 3 0 16] 
#[1 6 57 0 3 5 9 0 16 6 61 0 101] 
#[1 5 9 0 16 6 65 0 101] 
#[1 6 69 0 3 2 2 0 16] 
#[1 5 9 0 16 6 73 0 101] 
#[0 2 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[0 2 10 0 15] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 3 73 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[0 1 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 1 230 0 15 1 230 0 16 1 230 0 25 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 49 1 230 0 50 1 230 0 53 1 230 0 55 2 233 0 93 6 77 0 123 1 230 0 144 1 230 0 147 1 230 0 150] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 2 26 0 25 0 55 0 150] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 30 0 49 1 197 0 50 2 30 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 30 0 144 1 213 0 147 2 30 0 150] 
#[1 2 34 0 2 2 34 0 3 2 34 0 4 2 34 0 6 2 34 0 8 2 34 0 10 2 34 0 16 2 34 0 25 2 34 0 28 2 34 0 29 2 34 0 30 2 34 0 31 2 34 0 32 2 34 0 33 2 34 0 35 2 34 0 36 2 34 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 34 0 49 2 34 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 34 0 144 2 34 0 150] 
#[0 2 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 42 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 42 0 49 1 197 0 50 2 42 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 42 0 144 1 213 0 147 2 42 0 150] 
#[1 2 46 0 2 2 46 0 3 2 46 0 4 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 25 2 46 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 46 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 46 0 49 2 46 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 46 0 144 2 46 0 150] 
#[0 2 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 2 54 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 1 137 0 29 2 58 0 30 1 145 0 31 1 149 0 32 2 58 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 58 0 49 1 197 0 50 2 58 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 58 0 144 1 213 0 147 2 58 0 150] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 25 2 62 0 28 1 137 0 29 2 62 0 30 1 145 0 31 1 149 0 32 2 62 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 62 0 49 2 62 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 62 0 144 2 62 0 150] 
#[0 2 66 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 2 70 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 2 70 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 70 0 144 1 213 0 147 2 70 0 150] 
#[1 2 74 0 2 2 74 0 3 2 74 0 4 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 25 2 74 0 28 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 2 74 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 2 74 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 74 0 144 2 74 0 150] 
#[0 2 78 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 1 137 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 82 0 49 1 197 0 50 2 82 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 82 0 144 1 213 0 147 2 82 0 150] 
#[1 2 86 0 2 2 86 0 3 2 86 0 4 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 25 2 86 0 28 1 137 0 29 2 86 0 30 2 86 0 31 2 86 0 32 2 86 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 86 0 49 2 86 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 86 0 144 2 86 0 150] 
#[0 2 90 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 1 137 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 94 0 49 1 197 0 50 2 94 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 94 0 144 1 213 0 147 2 94 0 150] 
#[1 2 98 0 2 2 98 0 3 2 98 0 4 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 25 2 98 0 28 1 137 0 29 2 98 0 30 2 98 0 31 2 98 0 32 2 98 0 33 2 98 0 35 2 98 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 98 0 49 2 98 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 98 0 144 2 98 0 150] 
#[0 2 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 1 137 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 106 0 49 1 197 0 50 2 106 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 106 0 144 1 213 0 147 2 106 0 150] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 25 2 110 0 28 1 137 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 35 2 110 0 36 2 110 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 110 0 49 2 110 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 110 0 144 2 110 0 150] 
#[0 2 114 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 118 0 49 1 197 0 50 2 118 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 118 0 144 1 213 0 147 2 118 0 150] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 25 2 122 0 28 2 122 0 29 2 122 0 30 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 122 0 49 2 122 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 122 0 144 2 122 0 150] 
#[0 2 126 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 130 0 49 1 197 0 50 2 130 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 130 0 144 1 213 0 147 2 130 0 150] 
#[1 2 134 0 2 2 134 0 3 2 134 0 4 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 25 2 134 0 28 2 134 0 29 2 134 0 30 2 134 0 31 2 134 0 32 2 134 0 33 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 38 2 134 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 134 0 49 2 134 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 134 0 144 2 134 0 150] 
#[0 2 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 154 0 49 1 197 0 50 2 154 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 154 0 144 1 213 0 147 2 154 0 150] 
#[1 2 158 0 2 2 158 0 3 2 158 0 4 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 25 2 158 0 28 2 158 0 29 2 158 0 30 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 38 2 158 0 39 2 158 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 158 0 49 2 158 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 158 0 144 2 158 0 150] 
#[0 2 162 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 166 0 49 1 197 0 50 2 166 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 166 0 144 1 213 0 147 2 166 0 150] 
#[1 2 170 0 2 2 170 0 3 2 170 0 4 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 25 2 170 0 28 2 170 0 29 2 170 0 30 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 38 2 170 0 39 2 170 0 40 2 170 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 170 0 49 2 170 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 170 0 144 2 170 0 150] 
#[0 2 174 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 178 0 49 1 197 0 50 2 178 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 178 0 144 1 213 0 147 2 178 0 150] 
#[1 2 182 0 2 2 182 0 3 2 182 0 4 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 25 2 182 0 28 2 182 0 29 2 182 0 30 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 38 2 182 0 39 2 182 0 40 2 182 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 182 0 49 2 182 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 182 0 144 2 182 0 150] 
#[0 2 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 1 189 0 44 2 190 0 49 1 197 0 50 2 190 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 190 0 144 1 213 0 147 2 190 0 150] 
#[1 2 194 0 2 2 194 0 3 2 194 0 4 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 25 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 38 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 1 189 0 44 2 194 0 49 2 194 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 194 0 144 2 194 0 150] 
#[0 2 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 202 0 144 1 213 0 147 2 202 0 150] 
#[1 2 206 0 2 2 206 0 3 2 206 0 4 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 25 2 206 0 28 2 206 0 29 2 206 0 30 2 206 0 31 2 206 0 32 2 206 0 33 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 38 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 49 2 206 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 206 0 144 2 206 0 150] 
#[0 2 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 214 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 214 0 49 1 197 0 50 2 214 0 55 1 201 0 64 1 205 0 65 1 209 0 66 2 214 0 144 1 213 0 147 2 214 0 150] 
#[1 2 218 0 2 2 218 0 3 2 218 0 4 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 25 2 218 0 28 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 2 218 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 218 0 49 2 218 0 55 1 217 0 64 1 221 0 65 1 225 0 66 2 218 0 144 2 218 0 150] 
#[0 2 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 2 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 144 0 145 0 146 0 147 0 148 0 149 0 150] 
#[0 2 230 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 6 81 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 93 0 118 2 121 0 119 6 85 0 120 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 2 234 0 7] 
#[0 2 238 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 2 242 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 145 0 146 0 148 0 149] 
#[0 2 246 0 1] 
#[1 6 89 0 3 4 245 0 8 6 93 0 97] 
#[1 4 245 0 8 6 97 0 97] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 3 161 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149 2 250 0 150] 
#[0 2 254 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 101 0 60 6 105 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 6 109 0 110 2 53 0 124 2 57 0 127 6 113 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 6 117 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 6 121 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 6 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 1 118 0 28 6 125 0 94] 
#[1 4 209 0 2 1 126 0 28 6 129 0 94] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 133 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 10 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 101 0 60 6 105 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 6 137 0 110 2 53 0 124 2 57 0 127 6 141 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 14 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 145 0 59 0 129 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 18 0 2 0 4 0 10 0 25 0 55 0 144] 
#[1 3 22 0 2 3 22 0 3 3 22 0 4 3 22 0 6 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 16 3 22 0 25 3 22 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 3 22 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 5 89 0 49 1 197 0 50 3 22 0 55 1 201 0 64 1 209 0 66 3 22 0 144 1 213 0 147 3 22 0 150] 
#[0 3 26 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 1 249 0 53 2 53 0 124 2 57 0 127 6 149 0 128] 
#[0 3 30 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 6 153 0 4 0 65 0 25 0 113 0 55 4 225 0 82 6 157 0 94] 
#[0 3 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 6 161 0 94] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 6 121 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 38 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 3 42 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 6 165 0 118 2 101 0 124 2 105 0 125 6 169 0 126 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 46 0 2 0 3 0 6 0 8 0 16] 
#[1 3 50 0 6 3 50 0 8 3 50 0 16 1 249 0 53 6 173 0 124] 
#[0 3 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 3 62 0 6 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 62 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 6 165 0 118 2 101 0 124 2 105 0 125 6 177 0 126 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 66 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 74 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 25 1 14 0 28 5 33 0 29 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 1 14 0 49 1 197 0 50 1 14 0 55 1 201 0 64 1 209 0 66 1 14 0 144 1 213 0 147 1 14 0 150] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 1 26 0 2 1 26 0 3 1 26 0 4 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 25 1 26 0 28 1 26 0 29 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 49 1 26 0 50 1 26 0 55 1 201 0 64 1 209 0 66 1 26 0 144 1 26 0 147 1 26 0 150] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 181 0 60 3 173 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 6 185 0 60 3 185 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 53 0 124 2 57 0 127 3 189 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 189 0 60 3 201 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 193 0 60 3 213 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 197 0 60 3 225 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 201 0 60 3 237 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 205 0 60 3 249 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 209 0 60 4 5 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 213 0 60 4 17 0 62 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 217 0 60 4 41 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 221 0 60 4 53 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 225 0 60 4 65 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 229 0 60 4 77 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 233 0 60 4 89 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 6 237 0 60 4 101 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 4 209 0 2 1 118 0 28 6 241 0 94] 
#[1 4 209 0 2 1 126 0 28 6 245 0 94] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 6 1 182 0 8 1 182 0 9 1 182 0 10 1 182 0 16 1 182 0 25 1 182 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 1 182 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 5 89 0 49 1 197 0 50 1 182 0 55 1 201 0 64 1 209 0 66 1 182 0 144 1 213 0 147 1 182 0 150] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 82 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 3 86 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 3 90 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 146 0 148 0 149] 
#[0 3 94 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 3 98 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 6 249 0 87 6 253 0 88 2 13 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 3 98 0 144 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 4 153 0 10 0 65 0 25 0 113 0 55 7 1 0 82 7 5 0 85 3 102 0 144] 
#[1 5 137 0 86 5 149 0 91 7 9 0 92 5 157 0 144] 
#[1 3 106 0 10 5 137 0 86 5 149 0 91 7 13 0 92 5 157 0 144] 
#[0 7 17 0 10] 
#[1 3 110 0 1 3 110 0 5 3 110 0 7 3 110 0 10 3 110 0 11 3 110 0 12 3 110 0 13 3 110 0 14 3 110 0 15 3 110 0 17 3 110 0 18 3 110 0 19 3 110 0 20 3 110 0 21 3 110 0 22 0 65 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 34 3 110 0 43 3 110 0 45 3 110 0 46 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 53 3 110 0 54 0 113 0 55 7 21 0 82 3 110 0 144 3 110 0 145 3 110 0 146 3 110 0 148 3 110 0 149] 
#[0 3 114 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 3 118 0 2 3 118 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 1 213 0 147] 
#[1 3 122 0 2 3 122 0 3 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 251 0 2 3 126 0 3 7 25 0 94] 
#[0 3 130 0 2 0 3] 
#[1 4 209 0 2 7 29 0 3 7 33 0 94] 
#[1 4 209 0 2 7 37 0 3 7 41 0 94] 
#[0 3 134 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 3 138 0 2 3 138 0 3 3 138 0 4 3 138 0 6 3 138 0 7 3 138 0 8 2 217 0 9 3 138 0 10 3 138 0 16 3 138 0 25 3 138 0 28 3 138 0 29 3 138 0 30 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 35 3 138 0 36 3 138 0 37 3 138 0 38 3 138 0 39 3 138 0 40 3 138 0 41 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 49 3 138 0 50 3 138 0 53 3 138 0 55 7 45 0 81 2 225 0 84 3 138 0 144 3 138 0 147 3 138 0 150] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 97 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 101 0 59 1 105 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 1 113 0 59 1 117 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 1 125 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 1 129 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 7 49 0 29 7 53 0 30 7 57 0 31 7 61 0 32 6 37 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 7 105 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 41 0 133 1 213 0 147] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 6 45 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 49 0 133] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 137 0 59 2 141 0 60 0 133 0 61 0 137 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 1 250 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 1 250 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 181 0 112 2 185 0 113 2 41 0 114 2 45 0 115 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 2 149 0 34 0 81 0 43 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 201 0 112 2 205 0 113 2 41 0 114 2 45 0 115 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 35 2 30 0 36 2 30 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 30 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 42 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 2 58 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 58 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 2 70 0 30 2 70 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 2 82 0 30 2 82 0 31 2 82 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 82 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 35 2 94 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 94 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 35 2 106 0 36 2 106 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 106 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 118 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 130 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 154 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 166 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 178 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 3 69 0 44 2 190 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 3 17 0 29 3 21 0 30 3 25 0 31 3 29 0 32 3 33 0 35 3 37 0 36 3 41 0 37 3 45 0 38 3 49 0 39 3 53 0 40 3 57 0 41 3 61 0 42 3 65 0 43 3 69 0 44 2 214 0 49 1 197 0 50 1 201 0 64 1 213 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 109 0 60 7 113 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 3 93 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 7 117 0 126 1 1 0 130 1 5 0 131 1 9 0 132 7 121 0 134 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 142 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 54 0 145 0 146 0 148 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 125 0 60 7 129 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 109 0 60 7 113 0 61 3 213 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 3 93 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 7 137 0 126 1 1 0 130 1 5 0 131 1 9 0 132 7 141 0 134 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 145 0 60 7 149 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 146 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 5 9 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 153 0 60 7 157 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 7 161 0 101 5 217 0 102 5 221 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 3 97 0 126 1 1 0 130 1 5 0 131 1 9 0 132 3 101 0 134 3 113 0 137 3 117 0 138 1 13 0 139 7 165 0 140 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 3 158 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 153 0 60 7 157 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 5 221 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 7 169 0 126 1 1 0 130 1 5 0 131 1 9 0 132 7 173 0 134 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 138 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 5 9 0 16 7 177 0 101] 
#[1 4 245 0 8 7 181 0 97] 
#[0 3 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 3 178 0 2 3 178 0 3 3 178 0 4 3 178 0 6 3 178 0 8 3 178 0 9 3 178 0 10 3 178 0 16 3 178 0 25 3 178 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 3 178 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 5 89 0 49 1 197 0 50 3 178 0 55 1 201 0 64 1 209 0 66 3 178 0 144 1 213 0 147 3 178 0 150] 
#[0 3 182 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 186 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 190 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 198 0 2 0 4 0 10 0 25 0 55 0 144] 
#[0 3 202 0 28 0 30] 
#[0 3 206 0 28 0 30] 
#[1 1 245 0 28 7 185 0 90] 
#[0 3 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 1 245 0 28 7 189 0 90] 
#[0 3 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 7 193 0 94] 
#[0 3 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 3 230 0 3 0 6 0 8 0 16] 
#[0 3 234 0 8] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 2 81 0 60 2 85 0 61 2 89 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 7 197 0 118 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 3 238 0 6 0 16] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 6 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 16 2 30 0 25 2 30 0 28 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 30 0 49 1 197 0 50 2 30 0 55 1 201 0 64 1 209 0 66 2 30 0 144 1 213 0 147 2 30 0 150] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 9 2 42 0 10 2 42 0 16 2 42 0 25 2 42 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 2 42 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 42 0 49 1 197 0 50 2 42 0 55 1 201 0 64 1 209 0 66 2 42 0 144 1 213 0 147 2 42 0 150] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 25 2 58 0 28 5 33 0 29 2 58 0 30 5 41 0 31 5 45 0 32 2 58 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 58 0 49 1 197 0 50 2 58 0 55 1 201 0 64 1 209 0 66 2 58 0 144 1 213 0 147 2 58 0 150] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 9 2 70 0 10 2 70 0 16 2 70 0 25 2 70 0 28 5 33 0 29 2 70 0 30 2 70 0 31 5 45 0 32 2 70 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 70 0 49 1 197 0 50 2 70 0 55 1 201 0 64 1 209 0 66 2 70 0 144 1 213 0 147 2 70 0 150] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 9 2 82 0 10 2 82 0 16 2 82 0 25 2 82 0 28 5 33 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 82 0 49 1 197 0 50 2 82 0 55 1 201 0 64 1 209 0 66 2 82 0 144 1 213 0 147 2 82 0 150] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 25 2 94 0 28 5 33 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 94 0 49 1 197 0 50 2 94 0 55 1 201 0 64 1 209 0 66 2 94 0 144 1 213 0 147 2 94 0 150] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 25 2 106 0 28 5 33 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 106 0 49 1 197 0 50 2 106 0 55 1 201 0 64 1 209 0 66 2 106 0 144 1 213 0 147 2 106 0 150] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 16 2 118 0 25 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 118 0 49 1 197 0 50 2 118 0 55 1 201 0 64 1 209 0 66 2 118 0 144 1 213 0 147 2 118 0 150] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 9 2 130 0 10 2 130 0 16 2 130 0 25 2 130 0 28 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 130 0 49 1 197 0 50 2 130 0 55 1 201 0 64 1 209 0 66 2 130 0 144 1 213 0 147 2 130 0 150] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 16 2 154 0 25 2 154 0 28 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 154 0 49 1 197 0 50 2 154 0 55 1 201 0 64 1 209 0 66 2 154 0 144 1 213 0 147 2 154 0 150] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 16 2 166 0 25 2 166 0 28 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 166 0 49 1 197 0 50 2 166 0 55 1 201 0 64 1 209 0 66 2 166 0 144 1 213 0 147 2 166 0 150] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 16 2 178 0 25 2 178 0 28 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 178 0 49 1 197 0 50 2 178 0 55 1 201 0 64 1 209 0 66 2 178 0 144 1 213 0 147 2 178 0 150] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 16 2 190 0 25 2 190 0 28 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 5 85 0 44 2 190 0 49 1 197 0 50 2 190 0 55 1 201 0 64 1 209 0 66 2 190 0 144 1 213 0 147 2 190 0 150] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 9 2 202 0 10 2 202 0 16 2 202 0 25 2 202 0 28 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 2 202 0 55 1 201 0 64 1 209 0 66 2 202 0 144 1 213 0 147 2 202 0 150] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 9 2 214 0 10 2 214 0 16 2 214 0 25 2 214 0 28 5 33 0 29 5 37 0 30 5 41 0 31 5 45 0 32 2 214 0 33 5 49 0 35 5 53 0 36 5 57 0 37 5 61 0 38 5 65 0 39 5 69 0 40 5 73 0 41 5 77 0 42 5 81 0 43 5 85 0 44 2 214 0 49 1 197 0 50 2 214 0 55 1 201 0 64 1 209 0 66 2 214 0 144 1 213 0 147 2 214 0 150] 
#[0 3 242 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[0 3 246 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 55 0 144 0 147 0 150] 
#[1 3 102 0 10 0 65 0 25 0 113 0 55 7 201 0 82 3 102 0 144] 
#[0 3 250 0 10 0 144] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 6 117 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 6 121 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 3 254 0 144 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 4 2 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 7 205 0 10] 
#[0 4 6 0 10] 
#[0 4 10 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 4 14 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 26 0 27 0 28 0 34 0 43 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 54 0 144 0 145 0 146 0 148 0 149] 
#[0 4 18 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 5 165 0 60 5 169 0 61 7 209 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 7 213 0 121 2 101 0 124 7 217 0 125 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 4 22 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 1 249 0 53 7 221 0 94 6 173 0 124] 
#[0 4 26 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 4 30 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 225 0 60 3 169 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 229 0 60 3 181 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 233 0 60 3 197 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 7 237 0 60 7 113 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 3 89 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 5 221 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 101 0 124 2 105 0 125 7 117 0 126 1 1 0 130 1 5 0 131 1 9 0 132 7 121 0 134 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 241 0 60 3 221 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 245 0 60 3 233 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 249 0 60 3 245 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 7 253 0 60 4 1 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 1 0 60 4 13 0 61 0 141 0 63 4 29 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 5 0 60 4 37 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 9 0 60 4 49 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 13 0 60 4 61 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 17 0 60 4 73 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 21 0 60 4 85 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 25 0 60 4 97 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[1 2 70 0 3 2 70 0 16 1 137 0 29 2 70 0 30 2 70 0 31 1 149 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 209 0 66 6 41 0 133 1 213 0 147] 
#[1 2 74 0 3 2 74 0 16 1 137 0 29 2 74 0 30 2 74 0 31 1 149 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 2 74 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 49 0 133] 
#[0 4 34 0 16] 
#[0 4 38 0 3 0 16] 
#[1 4 42 0 3 4 42 0 16 7 49 0 29 7 53 0 30 7 57 0 31 8 29 0 32 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 7 105 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 4 46 0 3 4 46 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 0 9 0 1 0 190 0 3 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 2 149 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 81 0 43 0 190 0 44 0 85 0 45 2 153 0 46 0 93 0 47 0 97 0 48 0 190 0 49 0 190 0 50 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 2 157 0 60 2 161 0 62 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 2 169 0 102 2 173 0 103 0 233 0 104 2 177 0 105 1 81 0 106 0 245 0 107 0 249 0 108 1 85 0 109 2 29 0 111 2 181 0 112 2 185 0 113 2 41 0 114 2 45 0 115 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 0 190 0 147 1 29 0 148 1 33 0 149] 
#[0 4 50 0 16] 
#[0 4 54 0 3 0 16] 
#[1 4 58 0 3 4 58 0 16 7 49 0 29 7 53 0 30 7 57 0 31 8 29 0 32 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 7 105 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 4 62 0 3 4 62 0 16 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66] 
#[1 7 49 0 29 7 53 0 30 7 57 0 31 8 29 0 32 6 37 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 7 105 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 41 0 133 1 213 0 147] 
#[1 1 137 0 29 1 141 0 30 1 145 0 31 1 149 0 32 6 37 0 33 1 153 0 35 1 157 0 36 1 161 0 37 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 49 1 217 0 64 1 221 0 65 1 225 0 66 6 49 0 133] 
#[0 4 66 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 4 70 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 5 9 0 16 8 33 0 101] 
#[0 4 74 0 3 0 16] 
#[0 4 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 4 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 4 86 0 2 0 4 0 10 0 25 0 55 0 144] 
#[0 4 90 0 2 0 4 0 10 0 25 0 55 0 144] 
#[0 4 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[0 4 98 0 2 0 3 0 6 0 8 0 16] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 3 254 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 1 245 0 28 0 77 0 34 0 81 0 43 0 85 0 45 0 89 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 1 249 0 53 0 109 0 54 1 253 0 59 2 1 0 60 0 133 0 61 2 5 0 62 0 141 0 63 0 145 0 67 0 149 0 68 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 6 121 0 89 2 17 0 90 2 21 0 93 2 25 0 95 0 213 0 96 0 217 0 98 0 221 0 100 0 225 0 102 0 229 0 103 0 233 0 104 0 237 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 2 29 0 111 2 33 0 112 2 37 0 113 2 41 0 114 2 45 0 115 2 49 0 117 2 53 0 124 2 57 0 127 2 61 0 128 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 3 254 0 144 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 4 102 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 55 0 144 0 150] 
#[0 3 126 0 2 0 3] 
#[0 4 106 0 2 0 3] 
#[1 4 209 0 2 8 37 0 3 8 41 0 94] 
#[0 4 110 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 2 30 0 3 2 30 0 16 2 30 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 35 2 30 0 36 2 30 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 30 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 42 0 3 2 42 0 16 7 49 0 29 7 53 0 30 7 57 0 31 8 29 0 32 2 42 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 42 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 58 0 3 2 58 0 16 7 49 0 29 2 58 0 30 7 57 0 31 8 29 0 32 2 58 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 58 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 7 49 0 29 2 70 0 30 2 70 0 31 8 29 0 32 6 37 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 6 41 0 133 1 213 0 147] 
#[1 2 82 0 3 2 82 0 16 7 49 0 29 2 82 0 30 2 82 0 31 2 82 0 32 2 82 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 82 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 94 0 3 2 94 0 16 7 49 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 35 2 94 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 94 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 106 0 3 2 106 0 16 7 49 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 35 2 106 0 36 2 106 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 106 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 118 0 3 2 118 0 16 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 35 2 118 0 36 2 118 0 37 2 118 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 118 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 130 0 3 2 130 0 16 2 130 0 29 2 130 0 30 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 35 2 130 0 36 2 130 0 37 2 130 0 38 2 130 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 130 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 154 0 3 2 154 0 16 2 154 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 154 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 166 0 3 2 166 0 16 2 166 0 29 2 166 0 30 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 37 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 166 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 178 0 3 2 178 0 16 2 178 0 29 2 178 0 30 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 37 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 178 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 190 0 3 2 190 0 16 2 190 0 29 2 190 0 30 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 35 2 190 0 36 2 190 0 37 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 7 101 0 44 2 190 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 202 0 3 2 202 0 16 2 202 0 29 2 202 0 30 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 35 2 202 0 36 2 202 0 37 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 2 214 0 3 2 214 0 16 7 49 0 29 7 53 0 30 7 57 0 31 8 29 0 32 2 214 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 214 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[1 0 9 0 1 0 13 0 5 0 17 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 37 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 21 0 61 0 22 0 69 0 26 0 73 0 27 5 201 0 34 0 81 0 43 0 85 0 45 5 205 0 46 0 93 0 47 0 97 0 48 0 101 0 51 0 105 0 52 0 109 0 54 8 45 0 60 3 209 0 61 0 141 0 63 0 153 0 69 0 157 0 70 0 161 0 71 0 165 0 72 0 169 0 73 0 173 0 74 0 177 0 75 0 181 0 76 0 185 0 77 0 189 0 79 0 193 0 80 0 201 0 83 0 205 0 93 0 209 0 95 0 213 0 96 0 217 0 98 0 221 0 100 5 217 0 102 7 133 0 103 0 233 0 104 5 225 0 105 0 241 0 106 0 245 0 107 0 249 0 108 0 253 0 109 1 1 0 130 1 5 0 131 1 9 0 132 1 13 0 139 1 17 0 143 1 21 0 145 1 25 0 146 1 29 0 148 1 33 0 149] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 4 209 0 2 1 249 0 53 8 49 0 94 6 173 0 124] 
#[0 4 118 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150] 
#[1 2 70 0 3 2 70 0 16 7 49 0 29 2 70 0 30 2 70 0 31 8 29 0 32 2 70 0 33 7 65 0 35 7 69 0 36 7 73 0 37 7 77 0 38 7 81 0 39 7 85 0 40 7 89 0 41 7 93 0 42 7 97 0 43 7 101 0 44 2 70 0 49 1 197 0 50 1 201 0 64 1 205 0 65 1 213 0 147] 
#[0 4 122 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 49 0 50 0 53 0 55 0 144 0 147 0 150]
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
					actions
						do: [ :each | 
							currentToken := currentToken class
								value: ''
								start: nil
								ids: {scanner eolId}.
							currentState := self duplicateState.
							self parseCurrentToken.
							currentToken := token.
							self parseCurrentToken.
							self restoreState: previousState.
							currentToken := token ] ] ].
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
										ifTrue: [ scanner paren_identifierId ]
										ifFalse: [ ((#('when' 'or' 'and' 'not' 'in' '..') includes: lookahead value)
												or: [ lookahead value notEmpty
														and: [ '~=!:|&<>^+-*/@\' includes: lookahead value first ] ])
												ifTrue: [ scanner op_identifierId ] ] ] ] ].
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

{ #category : #testing }
ElixirParser >> tryAllTokens [
	^ (currentToken ids includes: scanner identifierId) not
		or: [ currentToken ids includes: scanner op_identifierId ]
]
