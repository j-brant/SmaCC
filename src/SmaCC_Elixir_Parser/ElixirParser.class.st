Class {
	#name : 'ElixirParser',
	#superclass : 'SmaCCParser',
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated-accessing' }
ElixirParser class >> cacheId [
	^'2026-05-16T11:11:12.631389+08:00'
]

{ #category : 'generated' }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE


%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier>
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string> <dual_op> <unary_op> <interpolatedStringStart> <interpolatedAtomStart> <interpolatedStringMid> <interpolatedStringEnd> <nullary_two_op>;

<decimal>
	: [0-9]+ (_ [0-9]+)*
	;
<octal>
	:  0 o [0-7]+ (_ [0-7]+)*
	;
<hex>
	: 0 x [0-9a-fA-F]+
	;
<binary>
	: 0 b [01]+ (_ [01]+)*
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
	| [+\-*/!\^<>=&@%.]	#single-char operators (incl. @, %, .)
	| \+\+\+?	#++ or +++
	| \-\-\-?	#-- or ---
	| \.\.\.?	#.. or ...
	| \.\.//	#..//
	| \*\*	#**
	| //	#//
	| ->	#->
	| <<>>	#<<>>
	| %\{\}	#%{}
	| \{\}	#{}
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
<interpolatedStringStart>
	: "" ([^\\""\#] | \\.)* \#\{
	;
<interpolatedAtomStart>
	: \: "" ([^\\""\#] | \\.)* \#\{
	;
interpolatedString <interpolatedStringMid>
	: \} ([^\\""\#] | \\.)* \#\{
	;
interpolatedString <interpolatedStringEnd>
	: \} ([^\\""\#] | \\.)* ""
	;
<string>
	: "" ([^\\""\#] | \\. | \#[^""{])* \#? ""
	;
<string_heredoc_line>
	: [\t ]* ("" ([^""\r\n][^\r\n]*)? | """" ([^""\r\n][^\r\n]*)? | [^""\r\n\t ][^\r\n]*)? [\r\n]+
	;
<string_heredoc_endline>
	: [\t ]* """"""
	;
<string_heredoc>	
	: """""" [\t ]* (\r\n?|\n) <string_heredoc_line>* <string_heredoc_endline>
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
	| \*\*
	| //
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
	: \\ ([^xu] | (x [0-9a-fA-F]{2,2}) | (u [0-9a-fA-F]{4,4}) | (u \{[0-9a-fA-F]{1,6}\}))
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
	| <charlist_heredoc>
	;
<sigilModifier>
	: [a-zA-Z]*		# what are the potential values
	;
<sigil>
	: \~ [a-z] <sigilEscapedValue> <sigilModifier>
	| \~ [A-Z]+ <sigilValue> <sigilModifier>
	;
	
<identifier>
	: (_ | <isLowercase>) (<isLetter> | <isDigit> |  _)* [\?\!]?
	| \.\.\.
	;
<kw_identifier>
	: <identifier> \:
	| <alias> \:
	| <string> \:
	| (\! | \+ | \- | \@ | && | \|\| | \^\^\^) \:
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
%left      ""{"";
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
%nonassoc dot_identifier;
%nonassoc unary_op_eol;
%prefix Elixir;
%suffix Node;
%root Program;
%start grammar;

<block_identifier>
	: <identifier> # Seems to be related to unsfae_atoms
	;
<op_identifier>
	: <dual_op>
	| <mult_op>
	| <comp_op>
	| <two_op>
	| <or_op>
	| <and_op>
	| <pipe_op>
	| <type_op>
	| <in_op>
	| <three_op>
	| <arrow_op>
	| <rel_op>
	| <match_op>
	| <assoc_op>
	| <unary_op>
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
	| sub_matched_expr 'expression' {{}}
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
	| <capture_op> 'op' <op_identifier> 'identifier' <mult_op> 'slash' <int> 'arity' {{}}
	| fn_eoe'fn' stab'stab' end_eoe'end' {{Lambda}}
	| open_paren 'leftParen' stab_eoe'stab' close_paren {{}}
	| open_paren 'leftParen' "";"" 'semi' stab_eoe'stab' close_paren {{}}
	| open_paren 'leftParen' "";"" 'semi' close_paren {{}}
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
	| interpolated_string
	| interpolated_atom
	| <two_op> 'op' {{NullaryOp}}
	| <nullary_two_op> 'op' {{NullaryOp}}
	| <sigil> 'sigil' {{Sigil}}
	| <atom> 'atom' {{Atom}}
#	| atom_safe 		# what are these?
#	| atom_unsafe 
	| dot_alias 
	| parens_call 
	;
interpolated_string
	: <interpolatedStringStart> 'part' expr 'expression' (<interpolatedStringMid> 'part' expr 'expression')* <interpolatedStringEnd> 'part' {{}}
	;

interpolated_atom
	: <interpolatedAtomStart> 'part' expr 'expression' (<interpolatedStringMid> 'part' expr 'expression')* <interpolatedStringEnd> 'part' {{}}
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
	: open_bracket 'leftBracket' bracket_values'arg'? "","" 'com'? close_bracket {{}}	# modified
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
	| do_eoe'do' stab_eoe'stab' ""end"" 'end' {{}}
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
	 : stab 
	| stab eoe 'eoe'  {{Stab}}
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
	: "")"" 'rightParen'
	;

empty_paren 
	: open_paren 'leftParen' "")"" 'close' {{}}
	;

open_bracket  
	: ""[""
	;
close_bracket 
	: ""]"" 'rightBracket'
	;

open_bit  
	: ""<<""
	;
close_bit 
	: "">>"" 'close'
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
	| matched_expr'expression' <dot_op> 'op' open_curly 'leftCurly' container_args'alias' close_curly {{}}
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
	| open_paren 'leftParen' call_args_no_parens_kw'args' close_paren {{}}
	| open_paren 'leftParen' call_args_no_parens_many'args' close_paren {{}}
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
	| open_paren 'leftParen' kw_base'kw' close_paren {{}}
	| open_paren 'leftParen' kw_base'kw' "","" 'com' close_paren {{}}
	| open_paren 'leftParen' call_args_parens_base'args' close_paren {{}}
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
	| kw_base "","" 'com' <eol>? kw_eol 'key' container_expr 'value' {{}}
	;

kw 
	: kw_base 'kw' ("","" 'com' <eol>?)? {{}}
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
	| container_args_base 'container' "","" 'com' <eol>? {{}}
	| container_args_base 'container' "","" 'com' <eol>? kw 'kw' {{}}
	;

list 
	: open_bracket 'leftBracket' ""]"" 'rightBracket' {{}}
	| open_bracket 'leftBracket' list_args 'args' <eol>? close_bracket {{}}
	;

# Tuple

tuple 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' container_args'elements' close_curly {{}}
	;

# Bitstrings

bit_string 
	: open_bit 'open' "">>"" 'close' {{}}
	| open_bit 'open' container_args 'args' close_bit {{}}
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
	| map_base_expr 'value' {{}}
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
	| assoc_base "","" 'com' <eol>? assoc_expr 'assoc'{{}}
	;

assoc 
	: assoc_base 'assoc'
	| assoc_base 'assoc' "","" 'com' <eol>? {{}}
	;

map_op 
	: <map_op> 'cen'
	;

map_close 
	: kw'kw' close_curly 
	| assoc'association' close_curly 
	| assoc_base'association' "","" 'com' <eol>? kw'kw' close_curly 
	;

map_args 
	: open_curly 'leftCurly' ""}"" 'rightCurly' {{}}
	| open_curly 'leftCurly' map_close {{}}
	| open_curly 'leftCurly' assoc_update'association' close_curly {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' <eol>? close_curly {{}}
	| open_curly 'leftCurly' assoc_update'association' "","" 'com' <eol>? map_close {{}}
	| open_curly 'leftCurly' assoc_update_kw'association' close_curly {{}}
	;

sub_matched_expr
	: no_parens_zero_expr 'expression' {{}}
	| access_expr 'expression' {{}}
	| access_expr 'expression' <kw_identifier> 'identifier' {{}}
	;

map_base_expr
	: sub_matched_expr 'expression' {{}}
	| <at_op> 'op' map_base_expr {{}}
	| unary_op_eol map_base_expr {{}}
	;

map
	: map_op map_args'args' {{}}
	| <map_op> 'cen' {{}}
	| <struct_op> 'cen' map_base_expr 'struct' ? map_args'args' {{}}			# added ?
	;"
]

{ #category : 'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : 'samples' }
ElixirParser class >> parityTestsSource [
	"Example expressions from https://github.com/elixir-lang/elixir/blob/main/lib/elixir/test/elixir/kernel/parser_test.exs"
	 
	<gtExample>
	^ #(
		'..'
		'...'
		'&../0'
		'&.../0'
		'if .. do end'
		'f(!: :ok)'
		'f @: :ok'
		'%{+foo, bar => bat, ...baz}'
		'f -var'
		'f -(var)'
		'f +-var'
		'f - var'
		'f --var'
		'(f ->var)'
		'f(+: :ok)'
		'f +: :ok'
		'1..2//3'
		'(1..2)//3'
		'foo do end..bar do end//baz do end'
		'1..foo do end//bar bat'
		'~r/foo/'
	)
]

{ #category : 'generated' }
ElixirParser class >> reduceTable [
^#(
	#(64 0 #reduceActionForgrammar6: 6695942 false) 
	#(106 1 #liftFirstValue: 17299457 false) 
	#(111 1 #liftFirstValue: 17489921 false) 
	#(109 1 #liftFirstValue: 17422337 false) 
	#(78 1 #reduceActionForaccess_expr15: 13398031 false) 
	#(96 1 #reduceActionForfn_eoe1: 16072705 false) 
	#(78 1 #reduceActionForaccess_expr16: 13398032 false) 
	#(78 1 #reduceActionForaccess_expr14: 13398030 false) 
	#(113 1 #liftFirstValue: 17544193 false) 
	#(87 1 #reduceActionFornumber1: 14827521 false) 
	#(78 1 #reduceActionForaccess_expr27: 13398043 false) 
	#(83 1 #reduceActionForbin_string1: 14631937 false) 
	#(85 1 #reduceActionForbin_heredoc1: 14721025 false) 
	#(84 1 #reduceActionForlist_string1: 14674945 false) 
	#(86 1 #reduceActionForlist_heredoc1: 14773249 false) 
	#(95 1 #liftFirstValue: 16037889 false) 
	#(157 1 #reduceActionFormap2: 24087554 false) 
	#(152 1 #liftFirstValue: 23202817 false) 
	#(78 1 #reduceActionForaccess_expr24: 13398040 false) 
	#(115 1 #liftFirstValue: 17618946 false) 
	#(115 1 #liftFirstValue: 17618945 false) 
	#(87 1 #reduceActionFornumber2: 14827522 false) 
	#(87 1 #reduceActionFornumber3: 14827523 false) 
	#(78 1 #reduceActionForaccess_expr26: 13398042 false) 
	#(116 1 #reduceActionFordot_identifier1: 17691649 false) 
	#(117 1 #reduceActionFordot_alias1: 17820673 false) 
	#(95 1 #liftFirstValue: 16037890 false) 
	#(118 1 #reduceActionFordot_op_identifier1: 18118657 false) 
	#(64 1 #reduceActionForgrammar2: 6695938 false) 
	#(65 1 #reduceActionForexpr_list1: 6943745 false) 
	#(66 1 #liftFirstValue: 7032833 false) 
	#(66 1 #liftFirstValue: 7032835 false) 
	#(66 1 #liftFirstValue: 7032834 false) 
	#(68 1 #reduceActionForunmatched_expr8: 8962056 false) 
	#(69 1 #reduceActionForno_parens_expr5: 9363461 false) 
	#(69 1 #reduceActionForno_parens_expr5: 9363462 false) 
	#(67 1 #reduceActionFormatched_expr5: 8704005 false) 
	#(155 1 #reduceActionForsub_matched_expr1: 23797761 false) 
	#(155 1 #reduceActionForsub_matched_expr1: 23797762 false) 
	#(78 1 #liftFirstValue: 13398038 false) 
	#(78 1 #liftFirstValue: 13398039 false) 
	#(78 1 #liftFirstValue: 13398033 false) 
	#(78 1 #liftFirstValue: 13398034 false) 
	#(78 1 #liftFirstValue: 13398035 false) 
	#(78 1 #liftFirstValue: 13398036 false) 
	#(78 1 #liftFirstValue: 13398026 false) 
	#(78 1 #liftFirstValue: 13398045 false) 
	#(78 1 #liftFirstValue: 13398018 false) 
	#(78 1 #liftFirstValue: 13398017 false) 
	#(64 1 #reduceActionForgrammar1: 6695937 false) 
	#(78 1 #liftFirstValue: 13398025 false) 
	#(77 1 #liftFirstValue: 13078530 false) 
	#(78 1 #liftFirstValue: 13398044 false) 
	#(77 1 #liftFirstValue: 13078529 false) 
	#(122 1 #reduceActionFordot_call_identifier1: 18696193 false) 
	#(78 1 #liftFirstValue: 13398027 false) 
	#(78 1 #liftFirstValue: 13398029 false) 
	#(78 1 #liftFirstValue: 13398037 false) 
	#(67 1 #reduceActionFormatched_expr5: 8704006 false) 
	#(78 1 #liftFirstValue: 13398028 false) 
	#(120 1 #reduceActionFordot_bracket_identifier1: 18397185 false) 
	#(119 1 #reduceActionFordot_do_identifier1: 18258945 false) 
	#(78 1 #reduceActionForaccess_expr24: 13398041 false) 
	#(121 1 #reduceActionFordot_paren_identifier1: 18549761 false) 
	#(96 2 #reduceActionForfn_eoe2: 16072706 false) 
	#(81 0 #reduceActionFor__interpolatedStringMid___part__expr__expression___1: 14370817 false) 
	#(157 2 #reduceActionFormap3: 24087555 false) 
	#(156 1 #reduceActionFormap_base_expr1: 23958529 false) 
	#(78 2 #reduceActionForaccess_expr3: 13398019 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8962055 false) 
	#(67 2 #reduceActionFormatched_expr4: 8704004 false) 
	#(69 2 #reduceActionFormatched_expr4: 9363460 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8962054 false) 
	#(67 2 #reduceActionFormatched_expr4: 8704003 false) 
	#(69 2 #reduceActionFormatched_expr4: 9363459 false) 
	#(64 2 #reduceActionForgrammar4: 6695940 false) 
	#(122 2 #reduceActionFordot_call_identifier2: 18696194 false) 
	#(67 2 #reduceActionFormatched_expr1: 8704001 false) 
	#(68 2 #reduceActionForunmatched_expr1: 8962049 false) 
	#(69 2 #reduceActionForno_parens_expr1: 9363457 false) 
	#(68 2 #reduceActionFormatched_expr1: 8962050 false) 
	#(68 2 #reduceActionFormatched_expr1: 8962051 false) 
	#(68 2 #reduceActionFormatched_expr1: 8962052 false) 
	#(155 2 #reduceActionForsub_matched_expr3: 23797763 false) 
	#(92 2 #reduceActionForbracket_expr2: 15527938 false) 
	#(64 2 #reduceActionForgrammar3: 6695939 false) 
	#(103 1 #reduceActionForstab_op_eol_and_expr1: 17061889 false) 
	#(137 1 #liftFirstValue: 21174273 false) 
	#(102 1 #reduceActionForstab_expr1: 16592897 false) 
	#(126 1 #liftFirstValue: 19236866 false) 
	#(127 1 #liftFirstValue: 19311617 false) 
	#(100 1 #reduceActionForstab1: 16362497 false) 
	#(102 1 #reduceActionForstab_expr1: 16592898 false) 
	#(128 1 #reduceActionForcall_args_no_parens_many2: 19362818 false) 
	#(125 1 #liftFirstValue: 19118081 false) 
	#(125 1 #liftFirstValue: 19118082 false) 
	#(125 1 #liftFirstValue: 19118083 false) 
	#(141 1 #reduceActionForcall_args_no_parens_kw1: 21597185 false) 
	#(126 1 #liftFirstValue: 19236865 false) 
	#(108 2 #reduceActionForempty_paren1: 17360897 false) 
	#(101 1 #liftFirstValue: 16439297 false) 
	#(143 2 #reduceActionForlist1: 21948417 false) 
	#(131 1 #liftFirstValue: 20026369 false) 
	#(131 1 #liftFirstValue: 20026370 false) 
	#(131 1 #liftFirstValue: 20026371 false) 
	#(132 1 #reduceActionForcontainer_args_base1: 20103169 false) 
	#(142 1 #reduceActionForlist_args2: 21752834 false) 
	#(139 1 #reduceActionForkw1: 21429249 false) 
	#(142 1 #reduceActionForlist_args1: 21752833 false) 
	#(145 2 #reduceActionForbit_string1: 22242305 false) 
	#(133 1 #reduceActionForcontainer_args1: 20232193 false) 
	#(144 2 #reduceActionFortuple1: 22097921 false) 
	#(68 2 #reduceActionForunmatched_expr7: 8962053 false) 
	#(67 2 #reduceActionFormatched_expr4: 8704002 false) 
	#(69 2 #reduceActionFormatched_expr4: 9363458 false) 
	#(76 2 #reduceActionForno_parens_one_expr2: 12918786 false) 
	#(74 2 #reduceActionForno_parens_one_ambig_expr2: 12546050 false) 
	#(129 1 #reduceActionForcall_args_no_parens_many_strict1: 19612673 false) 
	#(75 2 #reduceActionForno_parens_many_expr2: 12728322 false) 
	#(76 2 #reduceActionForno_parens_one_expr2: 12918785 false) 
	#(74 2 #reduceActionForno_parens_one_ambig_expr2: 12546049 false) 
	#(75 2 #reduceActionForno_parens_many_expr2: 12728321 false) 
	#(97 1 #reduceActionFordo_eoe1: 16132097 false) 
	#(70 2 #reduceActionForblock_expr3: 9651203 false) 
	#(92 2 #reduceActionForbracket_expr2: 15527937 false) 
	#(88 2 #reduceActionForparens_call1: 14939137 false) 
	#(157 2 #reduceActionFormap3: 24087553 false) 
	#(156 2 #reduceActionFormatched_expr4: 23958530 false) 
	#(154 2 #reduceActionFormap_args1: 23373825 false) 
	#(150 1 #reduceActionForassoc_base1: 23024641 false) 
	#(151 1 #liftFirstValue: 23123969 false) 
	#(154 2 #reduceActionFormap_args2: 23373826 false) 
	#(147 1 #reduceActionForassoc_expr5: 22411269 false) 
	#(156 2 #reduceActionFormatched_expr4: 23958531 false) 
	#(157 3 #reduceActionFormap4: 24087556 false) 
	#(93 3 #reduceActionForbracket_at_expr2: 15657986 false) 
	#(93 3 #reduceActionForbracket_at_expr2: 15657985 false) 
	#(65 3 #reduceActionForexpr_list2: 6943746 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099726 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858509 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650061 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099723 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858507 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650059 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650064 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099722 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858506 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650058 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099724 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858508 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650060 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099713 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858497 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650049 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099719 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858503 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650055 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099718 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858502 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650054 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099725 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858510 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650062 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099727 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858511 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650063 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099720 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858504 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650056 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099717 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858501 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650053 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099716 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858500 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650052 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099714 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858498 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650050 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099715 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858499 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650051 false) 
	#(71 2 #reduceActionFormatched_op_expr14: 10099721 false) 
	#(72 2 #reduceActionForunmatched_op_expr13: 10858505 false) 
	#(73 2 #reduceActionForno_parens_op_expr13: 11650057 false) 
	#(116 3 #reduceActionFordot_identifier2: 17691650 false) 
	#(117 3 #reduceActionFordot_alias2: 17820674 false) 
	#(118 3 #reduceActionFordot_op_identifier2: 18118658 false) 
	#(120 3 #reduceActionFordot_bracket_identifier2: 18397186 false) 
	#(119 3 #reduceActionFordot_do_identifier2: 18258946 false) 
	#(121 3 #reduceActionFordot_paren_identifier2: 18549762 false) 
	#(110 1 #liftFirstValue: 17447937 false) 
	#(90 1 #reduceActionForbracket_values1: 15166465 false) 
	#(91 2 #reduceActionForbracket_arg1: 15280129 false) 
	#(89 1 #liftFirstValue: 15111170 false) 
	#(89 1 #liftFirstValue: 15111169 false) 
	#(64 3 #reduceActionForgrammar5: 6695941 false) 
	#(103 2 #reduceActionForstab_op_eol_and_expr2: 17061890 false) 
	#(98 1 #reduceActionForend_eoe1: 16191489 false) 
	#(78 3 #reduceActionForaccess_expr5: 13398021 false) 
	#(102 2 #reduceActionForstab_expr3: 16592899 false) 
	#(102 2 #reduceActionForstab_expr3: 16592901 false) 
	#(102 2 #reduceActionForstab_expr3: 16592902 false) 
	#(140 2 #reduceActionForcall_args_no_parens_kw_expr1: 21479425 false) 
	#(140 2 #reduceActionForcall_args_no_parens_kw_expr1: 21479426 false) 
	#(107 1 #liftFirstValue: 17323009 false) 
	#(78 3 #reduceActionForaccess_expr8: 13398024 false) 
	#(101 2 #reduceActionForstab_eoe2: 16439298 false) 
	#(78 3 #reduceActionForaccess_expr6: 13398022 false) 
	#(142 2 #reduceActionForlist_args3: 21752835 false) 
	#(138 2 #reduceActionForkw_base1: 21301249 false) 
	#(139 2 #reduceActionForkw2: 21429250 false) 
	#(143 3 #reduceActionForlist2: 21948418 false) 
	#(133 2 #reduceActionForcontainer_args2: 20232194 false) 
	#(112 1 #liftFirstValue: 17512449 false) 
	#(145 3 #reduceActionForbit_string2: 22242306 false) 
	#(114 1 #liftFirstValue: 17567745 false) 
	#(144 3 #reduceActionFortuple2: 22097922 false) 
	#(70 3 #reduceActionForblock_expr5: 9651205 false) 
	#(70 3 #reduceActionForblock_expr5: 9651204 false) 
	#(97 2 #reduceActionFordo_eoe2: 16132098 false) 
	#(94 2 #reduceActionFordo_block1: 15828993 false) 
	#(99 1 #reduceActionForblock_eoe1: 16256001 false) 
	#(104 1 #reduceActionForblock_item2: 17125378 false) 
	#(105 1 #reduceActionForblock_list1: 17208321 false) 
	#(136 2 #reduceActionForcall_args_parens1: 20594689 false) 
	#(134 1 #liftFirstValue: 20376577 false) 
	#(134 1 #liftFirstValue: 20376578 false) 
	#(134 1 #liftFirstValue: 20376579 false) 
	#(135 1 #reduceActionForcall_args_parens_base1: 20460545 false) 
	#(70 3 #reduceActionForblock_expr5: 9651201 false) 
	#(88 3 #reduceActionForparens_call2: 14939138 false) 
	#(79 4 #reduceActionForinterpolated_string1: 14295041 false) 
	#(81 2 #reduceActionFor__interpolatedStringMid___part__expr__expression___2: 14370818 false) 
	#(82 4 #reduceActionForinterpolated_atom1: 14465025 false) 
	#(146 1 #liftFirstValue: 22373377 false) 
	#(153 2 #reduceActionFormap_close1: 23233537 false) 
	#(154 3 #reduceActionFormap_args3: 23373827 false) 
	#(154 3 #reduceActionFormap_args3: 23373832 false) 
	#(151 2 #reduceActionForassoc2: 23123970 false) 
	#(153 2 #reduceActionFormap_close2: 23233538 false) 
	#(78 4 #reduceActionForaccess_expr4: 13398020 false) 
	#(117 4 #reduceActionFordot_alias3: 17820675 false) 
	#(91 3 #reduceActionForbracket_arg2: 15280130 false) 
	#(91 3 #reduceActionForbracket_arg3: 15280131 false) 
	#(123 1 #liftFirstValue: 18855937 false) 
	#(123 1 #liftFirstValue: 18855938 false) 
	#(124 3 #reduceActionForcall_args_no_parens_comma_expr1: 18923521 false) 
	#(128 3 #reduceActionForcall_args_no_parens_many1: 19362817 false) 
	#(98 2 #reduceActionForend_eoe2: 16191490 false) 
	#(100 3 #reduceActionForstab2: 16362498 false) 
	#(130 3 #reduceActionForstab_parens_many2: 19840002 false) 
	#(130 3 #reduceActionForstab_parens_many2: 19840001 false) 
	#(124 3 #reduceActionForcall_args_no_parens_comma_expr2: 18923522 false) 
	#(128 3 #reduceActionForcall_args_no_parens_many1: 19362819 false) 
	#(141 3 #reduceActionForcall_args_no_parens_kw2: 21597186 false) 
	#(78 4 #reduceActionForaccess_expr7: 13398023 false) 
	#(142 3 #reduceActionForlist_args3: 21752836 false) 
	#(132 3 #reduceActionForcontainer_args_base2: 20103170 false) 
	#(142 3 #reduceActionForlist_args5: 21752837 false) 
	#(139 3 #reduceActionForkw2: 21429251 false) 
	#(143 4 #reduceActionForlist3: 21948419 false) 
	#(133 3 #reduceActionForcontainer_args3: 20232195 false) 
	#(129 3 #reduceActionForcall_args_no_parens_many_strict3: 19612675 false) 
	#(129 3 #reduceActionForcall_args_no_parens_many_strict3: 19612674 false) 
	#(99 2 #reduceActionForblock_eoe2: 16256002 false) 
	#(104 2 #reduceActionForblock_item1: 17125377 false) 
	#(94 3 #reduceActionFordo_block2: 15828994 false) 
	#(105 2 #reduceActionForblock_list2: 17208322 false) 
	#(94 3 #reduceActionFordo_block3: 15828995 false) 
	#(136 3 #reduceActionForcall_args_parens2: 20594690 false) 
	#(136 3 #reduceActionForcall_args_parens2: 20594693 false) 
	#(136 3 #reduceActionForcall_args_parens3: 20594691 false) 
	#(70 4 #reduceActionForblock_expr2: 9651202 false) 
	#(80 2 #reduceActionFor__interpolatedStringMid___part__expr__expression__1: 14370817 false) 
	#(149 3 #reduceActionForassoc_update_kw1: 22881281 false) 
	#(148 3 #reduceActionForassoc_update1: 22709249 false) 
	#(147 3 #reduceActionForassoc_expr1: 22411265 false) 
	#(147 3 #reduceActionForassoc_expr1: 22411267 false) 
	#(149 3 #reduceActionForassoc_update_kw1: 22881282 false) 
	#(148 3 #reduceActionForassoc_update2: 22709250 false) 
	#(147 3 #reduceActionForassoc_expr1: 22411268 false) 
	#(147 3 #reduceActionForassoc_expr1: 22411266 false) 
	#(154 4 #reduceActionFormap_args4: 23373828 false) 
	#(154 4 #reduceActionFormap_args6: 23373830 false) 
	#(151 3 #reduceActionForassoc2: 23123971 false) 
	#(150 3 #reduceActionForassoc_base2: 23024642 false) 
	#(117 5 #reduceActionFordot_alias4: 17820676 false) 
	#(90 3 #reduceActionForbracket_values2: 15166466 false) 
	#(91 4 #reduceActionForbracket_arg4: 15280132 false) 
	#(102 4 #reduceActionForstab_expr4: 16592900 false) 
	#(102 4 #reduceActionForstab_expr4: 16592903 false) 
	#(142 4 #reduceActionForlist_args6: 21752838 false) 
	#(138 4 #reduceActionForkw_base2: 21301250 false) 
	#(94 4 #reduceActionFordo_block4: 15828996 false) 
	#(135 3 #reduceActionForcall_args_parens_base2: 20460546 false) 
	#(136 4 #reduceActionForcall_args_parens4: 20594692 false) 
	#(154 5 #reduceActionFormap_args5: 23373829 false) 
	#(154 5 #reduceActionFormap_args7: 23373831 false) 
	#(150 4 #reduceActionForassoc_base3: 23024643 false) 
	#(153 4 #reduceActionFormap_close3: 23233539 false) 
	#(138 5 #reduceActionForkw_base3: 21301251 false) 
	#(136 5 #reduceActionForcall_args_parens6: 20594694 false) 
	#(153 5 #reduceActionFormap_close4: 23233540 false) 
	#(136 6 #reduceActionForcall_args_parens7: 20594695 false)
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
     select: w' '@type startup_options ::
          {:node_id, String.t()}
          | {:strategy, :one_per_key}
          | {:schema, schema()}' '@spec start_link(list(startup_options())) :: Supervisor.on_start()
  def start_link(args) do
    node_id = Keyword.fetch!(args, :node_id)
    name = Registry.via(node_id, __MODULE__)

    child_specs = schema_to_child_specs(node_id, args)

    with {:ok, pid} <-
           DynamicSupervisor.start_link(__MODULE__, [node_id: node_id],
             name: name
           ),
         :ok <- start_initial_children(pid, child_specs) do
      {:ok, pid}
    end
  end' '@spec child_spec(String.t(), atom(), map()) :: Supervisor.child_spec()
  defp child_spec(node_id, shard_id, initial_kv) do
    %{
      id: shard_id,
      start:
        {Shard, :start_link,
         [[node_id: node_id, id: shard_id, initial_kv: initial_kv]]}
    }
  end')
		collect: [ :each | self parse: each ]
]

{ #category : 'samples' }
ElixirParser class >> samplesSource [
	"Same inputs as #samples, returned as raw source strings (for tests/benches)."

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
     select: w' '@type startup_options ::
          {:node_id, String.t()}
          | {:strategy, :one_per_key}
          | {:schema, schema()}' '@spec start_link(list(startup_options())) :: Supervisor.on_start()
  def start_link(args) do
    node_id = Keyword.fetch!(args, :node_id)
    name = Registry.via(node_id, __MODULE__)

    child_specs = schema_to_child_specs(node_id, args)

    with {:ok, pid} <-
           DynamicSupervisor.start_link(__MODULE__, [node_id: node_id],
             name: name
           ),
         :ok <- start_initial_children(pid, child_specs) do
      {:ok, pid}
    end
  end' '@spec child_spec(String.t(), atom(), map()) :: Supervisor.child_spec()
  defp child_spec(node_id, shard_id, initial_kv) do
    %{
      id: shard_id,
      start:
        {Shard, :start_link,
         [[node_id: node_id, id: shard_id, initial_kv: initial_kv]]}
    }
  end')
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<interpolatedStringStart>' '<interpolatedAtomStart>' '<interpolatedStringMid>' '<interpolatedStringEnd>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<block_identifier>' '<op_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'interpolated_string' '(<interpolatedStringMid> ''part'' expr ''expression'')' '(<interpolatedStringMid> ''part'' expr ''expression'')*' 'interpolated_atom' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'sub_matched_expr' 'map_base_expr' 'map' '<bracket_identifier>' '<do_identifier>' '<nullary_two_op>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : 'generated' }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirInterpolatedStringNode #OrderedCollection #OrderedCollection #ElixirInterpolatedAtomNode #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirBracketValuesNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirStabNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #OrderedCollection #ElixirMapArgsNode #ElixirSubMatchedExprNode #ElixirMapBaseExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
ElixirParser class >> transitionTable [
^#(
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 221 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 221 0 59 0 129 0 61 0 133 0 64 0 137 0 65 0 141 0 66 0 145 0 67 0 149 0 68 0 141 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 221 0 95 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 0 6 0 162] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 23 0 26 0 24 0 26 0 25 0 26 0 26 1 65 0 29 0 26 0 30 0 26 0 31 0 26 0 32 0 26 0 38 0 26 0 46 0 26 0 47 0 26 0 49 0 26 0 50 0 26 0 51 0 26 0 52 0 26 0 55 0 26 0 56 0 26 0 57 0 26 0 58 1 65 0 59 0 26 0 61 1 65 0 95 0 26 0 158 0 26 0 159 0 26 0 160 0 26 0 161] 
#[0 0 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 34 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 42 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 46 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 69 0 66 0 145 0 67 0 149 0 68 1 69 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 73 0 66 0 145 0 67 0 149 0 68 1 73 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 0 50 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 54 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 58 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 62 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 66 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 89 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 1 93 0 47 1 93 0 49 1 81 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 85 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 1 89 0 113 1 93 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 113 0 154 1 117 0 155 1 121 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 70 0 2 0 70 0 3 0 70 0 6 0 70 0 7 0 70 0 8 0 70 0 9 0 70 0 10 0 74 0 15 0 70 0 16 0 70 0 21 0 70 0 22 0 70 0 29 0 70 0 32 0 70 0 33 0 70 0 34 0 70 0 35 0 70 0 36 0 70 0 37 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 42 0 70 0 43 0 70 0 44 0 70 0 45 0 70 0 46 0 70 0 47 0 70 0 48 0 70 0 53 0 70 0 54 0 70 0 57 0 70 0 59 0 70 0 60 0 70 0 62 0 70 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 1 125 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 1 129 0 61 1 133 0 66 1 137 0 67 0 149 0 68 1 141 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 0 78 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 86 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 145 0 66 1 149 0 67 0 149 0 68 1 153 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 1 157 0 117 1 5 0 118 1 9 0 119 1 161 0 120 1 17 0 121 1 21 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 41 0 155 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 0 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 94 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 98 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 102 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 158 0 159 0 160 0 161 0 162] 
#[0 0 106 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 110 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161 0 162] 
#[0 0 114 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 0 0 0 162] 
#[1 1 165 0 29 1 165 0 59 1 165 0 95 0 118 0 162] 
#[0 0 122 0 29 0 59 0 162] 
#[1 0 126 0 2 0 126 0 10 0 126 0 21 0 126 0 22 0 126 0 29 0 126 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 0 126 0 59 0 126 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 0 126 0 162] 
#[1 0 130 0 2 0 130 0 3 0 130 0 6 0 130 0 8 0 130 0 10 0 130 0 16 0 130 0 21 0 130 0 22 0 130 0 29 0 130 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 0 130 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 0 130 0 59 0 130 0 60 1 249 0 71 1 253 0 72 2 1 0 73 0 130 0 162] 
#[0 0 134 0 2 0 3 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 0 138 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 0 142 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 0 146 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 0 150 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 0 154 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 0 158 0 2 0 158 0 3 0 158 0 6 2 13 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 15 0 158 0 16 0 158 0 21 0 158 0 22 0 158 0 29 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 39 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 53 0 158 0 54 2 5 0 57 0 158 0 59 0 158 0 60 0 158 0 62 2 9 0 91 2 13 0 109 0 158 0 162] 
#[0 0 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 166 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 174 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 190 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 198 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 17 0 65 0 141 0 66 0 145 0 67 0 149 0 68 0 141 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 0 202 0 162] 
#[1 2 53 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 41 0 100 2 45 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 2 53 0 1 2 97 0 2 2 101 0 4 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 105 0 100 2 109 0 101 2 45 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 0 206 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 2 113 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 2 129 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 129 0 131 2 133 0 132 2 137 0 137 2 141 0 138 2 145 0 139 2 149 0 142 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 2 153 0 6 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 2 129 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 129 0 131 2 157 0 132 2 161 0 133 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 2 165 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 2 129 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 129 0 131 2 157 0 132 2 169 0 133 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 173 0 66 2 177 0 67 0 149 0 68 2 181 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 2 201 0 1 0 210 0 2 0 210 0 3 0 241 0 5 0 210 0 6 0 237 0 7 0 210 0 8 0 210 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 210 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 210 0 21 0 210 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 210 0 29 0 77 0 30 0 81 0 31 0 210 0 32 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 2 185 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 210 0 53 0 210 0 54 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 210 0 59 0 210 0 60 0 129 0 61 0 210 0 62 2 193 0 67 2 225 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 201 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 2 217 0 125 2 221 0 126 2 225 0 127 2 229 0 128 2 233 0 129 2 85 0 137 2 89 0 140 2 221 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 0 210 0 162] 
#[0 0 214 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 201 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 193 0 67 2 245 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 201 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 2 237 0 125 2 241 0 126 2 245 0 127 2 229 0 128 2 249 0 129 2 85 0 137 2 89 0 140 2 241 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 218 0 2 0 218 0 3 0 218 0 6 0 218 0 8 2 253 0 9 0 218 0 10 0 218 0 16 0 218 0 21 0 218 0 22 0 218 0 29 0 218 0 32 0 218 0 33 0 218 0 34 0 218 0 35 0 218 0 36 0 218 0 37 0 218 0 39 0 218 0 40 0 218 0 41 0 218 0 42 0 218 0 43 0 218 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 53 0 218 0 54 0 218 0 59 0 218 0 60 0 218 0 62 3 1 0 94 3 5 0 97 0 218 0 162] 
#[1 2 13 0 7 3 9 0 91 2 13 0 109] 
#[0 0 222 0 1] 
#[1 3 13 0 1 3 13 0 106 3 17 0 136] 
#[0 0 226 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 230 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 234 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 3 21 0 15 3 21 0 113 3 25 0 154] 
#[0 0 238 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 0 242 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 0 246 0 7] 
#[0 0 250 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 0 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 1 2 0 1] 
#[0 1 6 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[1 1 10 0 21 1 10 0 22 3 29 0 81] 
#[1 1 10 0 21 1 10 0 22 3 33 0 81] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 1 125 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 1 129 0 61 3 41 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 1 93 0 47 1 93 0 49 1 81 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 49 0 67 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 1 93 0 115 1 97 0 116 1 157 0 117 1 101 0 118 0 173 0 119 1 161 0 120 1 17 0 121 1 109 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 117 0 155 3 53 0 156 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 3 57 0 33 3 61 0 34 3 65 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 3 113 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 3 117 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 3 125 0 67 3 129 0 68 2 129 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 129 0 131 2 157 0 132 2 169 0 133 2 137 0 137 2 141 0 138 3 137 0 139 0 177 0 143 0 177 0 144 0 177 0 145 3 141 0 147 3 145 0 148 3 149 0 149 3 153 0 150 3 157 0 151 1 37 0 152 3 161 0 153 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 1 93 0 47 1 93 0 49 1 81 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 169 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 1 93 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 117 0 155 3 173 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 210 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 1 77 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 210 0 53 0 210 0 54 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 0 210 0 62 3 177 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 3 181 0 126 2 85 0 137 2 89 0 140 3 181 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 3 177 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 3 185 0 126 2 85 0 137 2 89 0 140 3 185 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 0 218 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 3 13 0 1 3 13 0 106 3 189 0 136] 
#[0 1 14 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 238 0 3 1 18 0 15 0 238 0 16 0 238 0 33 0 238 0 34 0 238 0 35 0 238 0 36 0 238 0 37 0 238 0 39 0 238 0 40 0 238 0 41 0 238 0 42 0 238 0 43 0 238 0 44 0 238 0 45 0 238 0 46 0 238 0 47 0 238 0 48 0 238 0 53 0 238 0 54 0 238 0 62] 
#[1 3 21 0 15 3 21 0 113 3 193 0 154] 
#[0 1 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 114 0 1 0 114 0 5 0 114 0 7 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 23 0 114 0 24 0 114 0 25 0 114 0 26 0 114 0 30 0 114 0 31 0 114 0 38 0 114 0 46 0 114 0 47 3 197 0 48 0 114 0 49 0 114 0 50 0 114 0 51 0 114 0 52 0 114 0 55 0 114 0 56 0 114 0 57 0 114 0 58 0 114 0 61 0 114 0 158 0 114 0 159 0 114 0 160 0 114 0 161] 
#[0 1 26 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 1 30 0 2 1 30 0 3 1 30 0 6 1 30 0 8 1 30 0 10 1 30 0 16 1 30 0 21 1 30 0 22 1 30 0 29 1 30 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 30 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 1 30 0 59 1 30 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 1 30 0 162] 
#[0 1 34 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 1 38 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 1 42 0 2 1 42 0 3 1 42 0 6 1 42 0 8 1 42 0 10 1 42 0 16 1 42 0 21 1 42 0 22 1 42 0 29 1 42 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 42 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 42 0 54 1 42 0 59 1 42 0 60 1 42 0 62 1 237 0 71 1 241 0 72 1 245 0 73 1 42 0 162] 
#[0 1 46 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 0 158 0 2 0 158 0 3 0 158 0 6 2 13 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 15 0 158 0 16 0 158 0 21 0 158 0 22 0 158 0 29 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 39 0 158 0 40 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 53 0 158 0 54 2 5 0 57 0 158 0 59 0 158 0 60 0 158 0 62 3 201 0 91 2 13 0 109 0 158 0 162] 
#[1 2 13 0 7 3 205 0 91 2 13 0 109] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 209 0 66 0 145 0 67 0 149 0 68 3 209 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 1 50 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 213 0 67 3 217 0 68 3 221 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 3 225 0 67 3 229 0 68 3 233 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 85 0 137 2 89 0 140 3 237 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 241 0 67 3 245 0 68 3 249 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 253 0 67 4 1 0 68 4 5 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 9 0 67 4 13 0 68 4 17 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 21 0 67 4 25 0 68 4 29 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 33 0 67 4 37 0 68 4 41 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 45 0 67 4 49 0 68 4 53 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 57 0 67 4 61 0 68 4 65 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 69 0 67 4 73 0 68 4 77 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 81 0 67 4 85 0 68 4 89 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 93 0 67 4 97 0 68 4 101 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 105 0 67 4 109 0 68 4 113 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 117 0 67 4 121 0 68 4 125 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 129 0 67 4 133 0 68 4 137 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 4 153 0 15 4 141 0 56 4 145 0 58 4 149 0 61 4 153 0 113 4 157 0 158 4 161 0 159 4 165 0 161] 
#[0 1 54 0 1] 
#[0 1 58 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 62 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 1 66 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 70 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 1 74 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 1 78 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 1 82 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 86 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 4 169 0 3 0 241 0 5 0 237 0 7 4 185 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 4 177 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 4 177 0 89 4 181 0 90 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 4 185 0 110 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 4 177 0 131 2 137 0 137 4 193 0 138 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 4 197 0 29 4 197 0 59 4 197 0 95 1 90 0 162] 
#[1 0 229 0 1 1 94 0 2 0 241 0 5 0 237 0 7 1 94 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 1 94 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 1 94 0 59 1 94 0 60 0 129 0 61 4 201 0 66 0 145 0 67 0 149 0 68 4 201 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 1 98 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160 0 161] 
#[0 1 102 0 2 0 10 0 29 0 59 0 60] 
#[1 0 126 0 2 4 205 0 3 0 126 0 10 0 126 0 29 1 106 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 0 126 0 59 0 126 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73] 
#[1 0 134 0 2 0 134 0 10 0 134 0 29 1 110 0 32 0 134 0 59 0 134 0 60] 
#[1 4 209 0 10 4 213 0 29 4 213 0 59 4 213 0 95 4 217 0 98] 
#[0 1 114 0 2 0 10 0 29 0 59 0 60] 
#[0 1 118 0 2 0 10 0 29 0 59 0 60] 
#[1 2 53 0 1 2 97 0 2 2 101 0 4 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 105 0 100 2 109 0 101 2 45 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 4 221 0 128 2 81 0 130 2 85 0 137 2 89 0 140 4 225 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 206 0 2 0 206 0 3 0 206 0 7 0 206 0 10 0 206 0 29 2 21 0 32 0 206 0 33 4 229 0 34 0 206 0 35 0 206 0 36 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 53 0 206 0 54 0 206 0 57 0 206 0 59 0 206 0 60 0 206 0 62 4 233 0 103] 
#[1 1 122 0 2 4 237 0 3 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 21 1 122 0 22 1 122 0 29 1 122 0 32 1 122 0 33 1 122 0 34 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 53 1 122 0 54 1 122 0 59 1 122 0 60 1 122 0 62 1 122 0 162] 
#[1 2 21 0 32 4 241 0 103] 
#[0 1 126 0 32] 
#[0 1 130 0 9 0 32] 
#[0 1 134 0 9 0 32] 
#[1 2 21 0 32 4 245 0 34 4 249 0 103] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 4 253 0 67 5 1 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 1 138 0 2 5 5 0 3 1 138 0 6 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 16 1 138 0 21 1 138 0 22 1 138 0 29 1 138 0 32 1 138 0 33 1 138 0 34 1 138 0 35 1 138 0 36 1 138 0 37 1 138 0 39 1 138 0 40 1 138 0 41 1 138 0 42 1 138 0 43 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 47 1 138 0 48 1 138 0 53 1 138 0 54 1 138 0 59 1 138 0 60 1 138 0 62 1 138 0 162] 
#[0 1 142 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 146 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 53 0 1 5 17 0 2 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 105 0 100 5 13 0 101 2 45 0 102 2 49 0 103 2 53 0 106 5 17 0 107 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 1 150 0 2 1 150 0 10 5 21 0 29 5 21 0 59 1 150 0 60 5 21 0 95] 
#[0 5 25 0 2 0 107] 
#[0 1 154 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 1 158 0 2 1 158 0 3 1 158 0 6 1 158 0 8 1 158 0 16 1 158 0 29 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73] 
#[1 1 162 0 2 1 162 0 3 1 162 0 6 1 162 0 8 1 162 0 16 1 162 0 29 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73] 
#[0 1 166 0 2 0 3 0 6 0 8 0 16 0 29] 
#[0 1 170 0 3 0 6 0 8 0 16 0 29] 
#[1 5 29 0 3 1 174 0 8 1 174 0 29] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 5 33 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 5 33 0 131 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 5 37 0 3 1 178 0 6 1 178 0 8 1 178 0 16 1 178 0 29] 
#[0 1 182 0 8 0 29] 
#[1 5 45 0 8 5 41 0 29 5 45 0 110] 
#[0 1 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 5 49 0 3 1 190 0 6 1 190 0 16] 
#[0 5 57 0 6 0 112] 
#[0 1 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 5 65 0 16 0 114] 
#[0 1 198 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 1 202 0 2 1 202 0 3 1 202 0 6 1 202 0 8 1 202 0 10 1 202 0 16 1 202 0 21 1 202 0 22 1 202 0 29 1 202 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 202 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 202 0 54 1 202 0 59 1 202 0 60 1 202 0 62 1 237 0 71 1 241 0 72 1 245 0 73 1 202 0 162] 
#[0 1 206 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 1 125 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 1 129 0 61 5 69 0 67 5 73 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 5 77 0 67 5 81 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 1 157 0 117 2 213 0 118 0 173 0 119 1 161 0 120 1 17 0 121 1 109 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 41 0 155 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 1 106 0 2 4 205 0 3 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 21 1 106 0 22 1 106 0 29 1 106 0 32 5 85 0 33 5 89 0 34 5 93 0 35 5 97 0 36 1 106 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 5 141 0 53 1 229 0 54 1 106 0 59 1 106 0 60 1 233 0 62 1 237 0 71 1 245 0 73 1 106 0 162] 
#[0 1 110 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 53 0 1 2 97 0 2 2 101 0 4 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 105 0 100 2 109 0 101 2 45 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 5 145 0 128 2 81 0 130 2 85 0 137 2 89 0 140 5 149 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 5 153 0 67 5 157 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 2 201 0 1 0 210 0 2 0 210 0 3 0 241 0 5 0 210 0 6 0 237 0 7 0 210 0 8 0 210 0 9 0 210 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 210 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 210 0 21 0 210 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 210 0 29 0 77 0 30 0 81 0 31 0 210 0 32 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 2 185 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 210 0 53 0 210 0 54 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 210 0 59 0 210 0 60 0 129 0 61 0 210 0 62 2 193 0 67 5 161 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 201 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 3 181 0 126 5 161 0 127 5 165 0 128 2 233 0 129 2 85 0 137 2 89 0 140 3 181 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 0 210 0 162] 
#[1 2 201 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 193 0 67 5 169 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 201 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 3 185 0 126 5 169 0 127 5 165 0 128 2 249 0 129 2 85 0 137 2 89 0 140 3 185 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 2 253 0 9 5 173 0 94 3 5 0 97] 
#[1 1 210 0 2 1 210 0 3 1 210 0 6 1 210 0 8 1 126 0 9 1 210 0 10 1 210 0 16 1 210 0 21 1 210 0 22 1 210 0 29 1 210 0 32 1 210 0 33 1 210 0 34 1 210 0 35 1 210 0 36 1 210 0 37 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 45 1 210 0 46 1 210 0 47 1 210 0 48 1 210 0 53 1 210 0 54 1 210 0 59 1 210 0 60 1 210 0 62 1 210 0 162] 
#[1 1 214 0 2 1 214 0 3 1 214 0 6 1 214 0 8 1 130 0 9 1 214 0 10 1 214 0 16 1 214 0 21 1 214 0 22 1 214 0 29 1 214 0 32 1 214 0 33 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 39 1 214 0 40 1 214 0 41 1 214 0 42 1 214 0 43 1 214 0 44 1 214 0 45 1 214 0 46 1 214 0 47 1 214 0 48 1 214 0 53 1 214 0 59 1 214 0 60 1 214 0 162] 
#[1 1 218 0 2 1 218 0 3 1 218 0 6 1 218 0 8 1 134 0 9 1 218 0 10 1 218 0 16 1 218 0 21 1 218 0 22 1 218 0 29 1 218 0 32 1 218 0 33 1 218 0 34 1 218 0 35 1 218 0 36 1 218 0 37 1 218 0 39 1 218 0 40 1 218 0 41 1 218 0 42 1 218 0 43 1 218 0 44 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 48 1 218 0 53 1 218 0 59 1 218 0 60 1 218 0 162] 
#[0 1 222 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 253 0 9 5 177 0 94 3 5 0 97] 
#[1 1 226 0 2 1 226 0 3 1 226 0 6 1 226 0 8 1 126 0 9 1 226 0 10 1 226 0 16 1 226 0 21 1 226 0 22 1 226 0 29 1 226 0 32 1 226 0 33 1 226 0 34 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 39 1 226 0 40 1 226 0 41 1 226 0 42 1 226 0 43 1 226 0 44 1 226 0 45 1 226 0 46 1 226 0 47 1 226 0 48 1 226 0 53 1 226 0 54 1 226 0 59 1 226 0 60 1 226 0 62 1 226 0 162] 
#[1 1 230 0 2 1 230 0 3 1 230 0 6 1 230 0 8 1 130 0 9 1 230 0 10 1 230 0 16 1 230 0 21 1 230 0 22 1 230 0 29 1 230 0 32 1 230 0 33 1 230 0 34 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 42 1 230 0 43 1 230 0 44 1 230 0 45 1 230 0 46 1 230 0 47 1 230 0 48 1 230 0 53 1 230 0 59 1 230 0 60 1 230 0 162] 
#[0 1 234 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 1 238 0 1 1 238 0 5 1 238 0 7 1 238 0 10 1 238 0 11 1 238 0 12 1 238 0 13 1 238 0 14 1 238 0 15 1 238 0 17 1 238 0 18 1 238 0 19 1 238 0 20 1 238 0 23 1 238 0 24 1 238 0 25 1 238 0 26 5 181 0 29 1 238 0 30 1 238 0 31 1 238 0 32 1 238 0 38 1 238 0 46 1 238 0 47 1 238 0 49 1 238 0 50 1 238 0 51 1 238 0 52 1 238 0 55 1 238 0 56 1 238 0 57 1 238 0 58 5 181 0 59 1 238 0 60 1 238 0 61 5 181 0 95 1 238 0 158 1 238 0 159 1 238 0 160 1 238 0 161] 
#[0 1 242 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 2 53 0 1 0 241 0 5 0 237 0 7 5 185 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 5 189 0 60 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 5 193 0 99 2 105 0 100 5 197 0 101 2 45 0 102 2 49 0 103 5 201 0 104 5 205 0 105 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 1 246 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 5 209 0 2 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 5 213 0 67 5 217 0 68 5 221 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 5 225 0 134 5 229 0 135 2 137 0 137 5 233 0 138 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 3 13 0 1 1 250 0 2 1 250 0 3 1 250 0 6 1 250 0 7 1 250 0 8 2 253 0 9 1 250 0 10 1 250 0 16 1 250 0 21 1 250 0 22 1 250 0 29 1 250 0 32 1 250 0 33 1 250 0 34 1 250 0 35 1 250 0 36 1 250 0 37 1 250 0 39 1 250 0 40 1 250 0 41 1 250 0 42 1 250 0 43 1 250 0 44 1 250 0 45 1 250 0 46 1 250 0 47 1 250 0 48 1 250 0 53 1 250 0 54 1 250 0 57 1 250 0 59 1 250 0 60 1 250 0 62 5 237 0 94 3 5 0 97 3 13 0 106 5 241 0 136 1 250 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 5 245 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 6 1 0 67 6 5 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 3 137 0 139 0 177 0 143 0 177 0 144 0 177 0 145 3 141 0 147 3 145 0 148 3 149 0 149 3 153 0 150 3 157 0 151 1 37 0 152 3 161 0 153 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 1 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 6 21 0 21 6 25 0 22 6 29 0 80] 
#[1 6 21 0 21 6 33 0 22 6 29 0 80] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 49 0 67 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 1 157 0 117 1 101 0 118 0 173 0 119 1 161 0 120 1 17 0 121 1 109 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 41 0 155 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 3 57 0 33 1 30 0 34 1 30 0 35 1 30 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 1 30 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 169 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 1 42 0 33 1 42 0 34 1 42 0 35 1 42 0 36 1 42 0 39 1 42 0 40 1 42 0 41 1 42 0 42 1 42 0 43 1 42 0 44 1 42 0 45 1 42 0 46 1 42 0 47 1 42 0 48 1 42 0 53 1 42 0 54 1 42 0 62 1 237 0 71] 
#[0 2 2 0 3 0 15 0 16] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 37 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 41 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 45 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 49 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 53 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 57 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 61 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 65 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 69 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 73 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 77 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 81 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 85 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 89 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 1 77 0 38 0 89 0 46 3 45 0 47 3 45 0 49 3 37 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 93 0 67 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 45 0 115 1 97 0 116 0 177 0 117 1 101 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 2 6 0 2 2 6 0 3 2 6 0 6 1 194 0 7 2 6 0 8 2 6 0 9 2 6 0 10 1 194 0 15 2 6 0 16 2 6 0 21 2 6 0 22 2 6 0 29 2 6 0 32 1 194 0 33 1 194 0 34 1 194 0 35 1 194 0 36 2 6 0 37 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 47 1 194 0 48 1 194 0 53 1 194 0 54 1 194 0 57 2 6 0 59 2 6 0 60 1 194 0 62 2 6 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 145 0 66 1 149 0 67 0 149 0 68 1 153 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 1 157 0 117 1 5 0 118 1 9 0 119 1 161 0 120 1 17 0 121 1 21 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 117 0 155 3 53 0 156 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 1 158 0 3 1 158 0 16 1 169 0 33 1 173 0 34 1 177 0 35 6 97 0 36 6 105 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 6 105 0 146] 
#[1 1 162 0 3 1 162 0 16 1 169 0 33 1 173 0 34 1 177 0 35 6 109 0 36 6 113 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73 6 113 0 146] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 173 0 66 2 177 0 67 0 149 0 68 2 181 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 117 0 155 3 173 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 6 117 0 16 0 114] 
#[0 2 10 0 3 0 16] 
#[1 6 121 0 3 6 125 0 16 6 125 0 114] 
#[0 6 129 0 16 0 114] 
#[1 6 133 0 3 2 14 0 16] 
#[0 6 137 0 16 0 114] 
#[0 2 18 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 2 22 0 3 0 16] 
#[1 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 53 1 202 0 54 1 202 0 62 1 237 0 71] 
#[0 2 26 0 3 0 15 0 16] 
#[1 3 57 0 33 3 61 0 34 3 65 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 3 113 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[0 1 210 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 3 13 0 1 1 250 0 2 1 250 0 3 1 250 0 6 1 250 0 7 1 250 0 8 1 250 0 9 1 250 0 10 1 250 0 15 1 250 0 16 1 250 0 21 1 250 0 22 1 250 0 29 1 250 0 32 1 250 0 33 1 250 0 34 1 250 0 35 1 250 0 36 1 250 0 37 1 250 0 39 1 250 0 40 1 250 0 41 1 250 0 42 1 250 0 43 1 250 0 44 1 250 0 45 1 250 0 46 1 250 0 47 1 250 0 48 1 250 0 53 1 250 0 54 1 250 0 57 1 250 0 59 1 250 0 60 1 250 0 62 3 13 0 106 6 141 0 136 1 250 0 162] 
#[0 2 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 6 145 0 17] 
#[0 2 34 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 2 38 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 2 42 0 29 0 59 0 162] 
#[1 2 46 0 2 2 46 0 3 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 21 2 46 0 22 2 46 0 29 2 46 0 32 2 46 0 33 2 46 0 34 2 46 0 35 2 46 0 36 2 46 0 37 2 46 0 39 2 46 0 40 2 46 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 46 0 53 1 229 0 54 2 46 0 59 2 46 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 46 0 162] 
#[1 2 50 0 2 2 50 0 3 2 50 0 6 2 50 0 8 2 50 0 10 2 50 0 16 2 50 0 21 2 50 0 22 2 50 0 29 2 50 0 32 2 50 0 33 2 50 0 34 2 50 0 35 2 50 0 36 2 50 0 37 2 50 0 39 2 50 0 40 2 50 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 50 0 53 2 50 0 59 2 50 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 50 0 162] 
#[0 2 54 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 58 0 2 2 58 0 3 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 21 2 58 0 22 2 58 0 29 2 58 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 2 58 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 58 0 53 1 229 0 54 2 58 0 59 2 58 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 58 0 162] 
#[1 2 62 0 2 2 62 0 3 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 21 2 62 0 22 2 62 0 29 2 62 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 2 62 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 62 0 53 2 62 0 59 2 62 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 62 0 162] 
#[0 2 66 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 2 70 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 74 0 2 2 74 0 3 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 21 2 74 0 22 2 74 0 29 2 74 0 32 1 169 0 33 2 74 0 34 1 177 0 35 1 181 0 36 2 74 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 74 0 53 1 229 0 54 2 74 0 59 2 74 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 74 0 162] 
#[1 2 78 0 2 2 78 0 3 2 78 0 6 2 78 0 8 2 78 0 10 2 78 0 16 2 78 0 21 2 78 0 22 2 78 0 29 2 78 0 32 1 169 0 33 2 78 0 34 1 177 0 35 1 181 0 36 2 78 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 78 0 53 2 78 0 59 2 78 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 78 0 162] 
#[0 2 82 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 86 0 2 2 86 0 3 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 21 2 86 0 22 2 86 0 29 2 86 0 32 1 169 0 33 2 86 0 34 2 86 0 35 1 181 0 36 2 86 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 86 0 53 1 229 0 54 2 86 0 59 2 86 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 86 0 162] 
#[1 2 90 0 2 2 90 0 3 2 90 0 6 2 90 0 8 2 90 0 10 2 90 0 16 2 90 0 21 2 90 0 22 2 90 0 29 2 90 0 32 1 169 0 33 2 90 0 34 2 90 0 35 1 181 0 36 2 90 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 90 0 53 2 90 0 59 2 90 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 90 0 162] 
#[0 2 94 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 98 0 2 2 98 0 3 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 21 2 98 0 22 2 98 0 29 2 98 0 32 1 169 0 33 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 98 0 53 1 229 0 54 2 98 0 59 2 98 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 98 0 162] 
#[1 2 102 0 2 2 102 0 3 2 102 0 6 2 102 0 8 2 102 0 10 2 102 0 16 2 102 0 21 2 102 0 22 2 102 0 29 2 102 0 32 1 169 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 102 0 53 2 102 0 59 2 102 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 102 0 162] 
#[0 2 106 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 110 0 2 2 110 0 3 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 21 2 110 0 22 2 110 0 29 2 110 0 32 1 169 0 33 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 39 2 110 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 110 0 53 1 229 0 54 2 110 0 59 2 110 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 110 0 162] 
#[1 2 114 0 2 2 114 0 3 2 114 0 6 2 114 0 8 2 114 0 10 2 114 0 16 2 114 0 21 2 114 0 22 2 114 0 29 2 114 0 32 1 169 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 39 2 114 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 114 0 53 2 114 0 59 2 114 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 114 0 162] 
#[0 2 118 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 122 0 2 2 122 0 3 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 21 2 122 0 22 2 122 0 29 2 122 0 32 1 169 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 39 2 122 0 40 2 122 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 122 0 53 1 229 0 54 2 122 0 59 2 122 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 122 0 162] 
#[1 2 126 0 2 2 126 0 3 2 126 0 6 2 126 0 8 2 126 0 10 2 126 0 16 2 126 0 21 2 126 0 22 2 126 0 29 2 126 0 32 1 169 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 39 2 126 0 40 2 126 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 126 0 53 2 126 0 59 2 126 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 126 0 162] 
#[0 2 130 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 134 0 2 2 134 0 3 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 21 2 134 0 22 2 134 0 29 2 134 0 32 2 134 0 33 2 134 0 34 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 134 0 53 1 229 0 54 2 134 0 59 2 134 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 134 0 162] 
#[1 2 138 0 2 2 138 0 3 2 138 0 6 2 138 0 8 2 138 0 10 2 138 0 16 2 138 0 21 2 138 0 22 2 138 0 29 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 37 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 138 0 53 2 138 0 59 2 138 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 138 0 162] 
#[0 2 142 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 146 0 2 2 146 0 3 2 146 0 6 2 146 0 8 2 146 0 10 2 146 0 16 2 146 0 21 2 146 0 22 2 146 0 29 2 146 0 32 2 146 0 33 2 146 0 34 2 146 0 35 2 146 0 36 2 146 0 37 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 42 2 146 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 146 0 53 1 229 0 54 2 146 0 59 2 146 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 146 0 162] 
#[1 2 150 0 2 2 150 0 3 2 150 0 6 2 150 0 8 2 150 0 10 2 150 0 16 2 150 0 21 2 150 0 22 2 150 0 29 2 150 0 32 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 39 2 150 0 40 2 150 0 41 2 150 0 42 2 150 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 150 0 53 2 150 0 59 2 150 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 150 0 162] 
#[0 2 154 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 158 0 2 2 158 0 3 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 21 2 158 0 22 2 158 0 29 2 158 0 32 2 158 0 33 2 158 0 34 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 43 2 158 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 158 0 53 1 229 0 54 2 158 0 59 2 158 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 158 0 162] 
#[1 2 162 0 2 2 162 0 3 2 162 0 6 2 162 0 8 2 162 0 10 2 162 0 16 2 162 0 21 2 162 0 22 2 162 0 29 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 37 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 2 162 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 162 0 53 2 162 0 59 2 162 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 162 0 162] 
#[0 2 166 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 170 0 2 2 170 0 3 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 21 2 170 0 22 2 170 0 29 2 170 0 32 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 170 0 53 1 229 0 54 2 170 0 59 2 170 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 170 0 162] 
#[1 2 174 0 2 2 174 0 3 2 174 0 6 2 174 0 8 2 174 0 10 2 174 0 16 2 174 0 21 2 174 0 22 2 174 0 29 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 37 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 2 174 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 174 0 53 2 174 0 59 2 174 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 174 0 162] 
#[0 2 178 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 182 0 2 2 182 0 3 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 21 2 182 0 22 2 182 0 29 2 182 0 32 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 182 0 53 1 229 0 54 2 182 0 59 2 182 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 182 0 162] 
#[1 2 186 0 2 2 186 0 3 2 186 0 6 2 186 0 8 2 186 0 10 2 186 0 16 2 186 0 21 2 186 0 22 2 186 0 29 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 37 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 2 186 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 186 0 53 2 186 0 59 2 186 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 186 0 162] 
#[0 2 190 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 194 0 2 2 194 0 3 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 21 2 194 0 22 2 194 0 29 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 1 221 0 48 2 194 0 53 1 229 0 54 2 194 0 59 2 194 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 194 0 162] 
#[1 2 198 0 2 2 198 0 3 2 198 0 6 2 198 0 8 2 198 0 10 2 198 0 16 2 198 0 21 2 198 0 22 2 198 0 29 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 37 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 2 198 0 47 1 221 0 48 2 198 0 53 2 198 0 59 2 198 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 198 0 162] 
#[0 2 202 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 206 0 2 2 206 0 3 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 21 2 206 0 22 2 206 0 29 2 206 0 32 2 206 0 33 2 206 0 34 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 45 2 206 0 46 2 206 0 47 2 206 0 48 2 206 0 53 1 229 0 54 2 206 0 59 2 206 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 206 0 162] 
#[1 2 210 0 2 2 210 0 3 2 210 0 6 2 210 0 8 2 210 0 10 2 210 0 16 2 210 0 21 2 210 0 22 2 210 0 29 2 210 0 32 2 210 0 33 2 210 0 34 2 210 0 35 2 210 0 36 2 210 0 37 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 44 2 210 0 45 2 210 0 46 2 210 0 47 2 210 0 48 2 210 0 53 2 210 0 59 2 210 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 210 0 162] 
#[0 2 214 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 218 0 2 2 218 0 3 2 218 0 6 2 218 0 8 2 218 0 10 2 218 0 16 2 218 0 21 2 218 0 22 2 218 0 29 2 218 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 2 218 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 218 0 53 1 229 0 54 2 218 0 59 2 218 0 60 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 2 218 0 162] 
#[1 2 222 0 2 2 222 0 3 2 222 0 6 2 222 0 8 2 222 0 10 2 222 0 16 2 222 0 21 2 222 0 22 2 222 0 29 2 222 0 32 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 2 222 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 222 0 53 2 222 0 59 2 222 0 60 1 249 0 71 1 253 0 72 2 1 0 73 2 222 0 162] 
#[0 2 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 2 230 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 158 0 159 0 160 0 161 0 162] 
#[0 2 234 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 2 238 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 61 0 158 0 159 0 160 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 6 149 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 2 129 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 129 0 131 2 157 0 132 6 153 0 133 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 2 242 0 7] 
#[0 2 246 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 2 250 0 1] 
#[0 6 157 0 8 0 110] 
#[0 2 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 2 0 3 0 8] 
#[1 6 161 0 3 6 165 0 8 6 165 0 110] 
#[0 3 6 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 10 0 3 0 8] 
#[1 6 169 0 3 3 14 0 8] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 3 209 0 66 0 145 0 67 0 149 0 68 3 209 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161 3 18 0 162] 
#[0 3 22 0 2 0 10 0 29 0 59 0 60] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 6 173 0 67 6 181 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 6 181 0 123 2 85 0 137 2 89 0 140 6 185 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 26 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 53 0 1 0 241 0 5 0 237 0 7 6 189 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 6 193 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 6 197 0 2 1 134 0 32 6 197 0 107] 
#[1 6 201 0 2 1 142 0 32 6 201 0 107] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 205 0 66 0 145 0 67 0 149 0 68 6 205 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 34 0 2 0 10 0 29 0 59 0 60] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 6 173 0 67 6 209 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 6 209 0 123 2 85 0 137 2 89 0 140 6 213 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 38 0 2 0 10 0 29 0 59 0 60] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 6 217 0 66 0 145 0 67 0 149 0 68 6 217 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 42 0 2 0 10 0 29 0 59 0 60] 
#[1 3 46 0 2 3 46 0 3 3 46 0 6 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 16 3 46 0 21 3 46 0 22 3 46 0 29 3 46 0 32 5 85 0 33 5 89 0 34 5 93 0 35 5 97 0 36 3 46 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 5 141 0 53 1 229 0 54 3 46 0 59 3 46 0 60 1 233 0 62 1 237 0 71 1 245 0 73 3 46 0 162] 
#[0 3 50 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 85 0 57 2 85 0 137 2 89 0 140 6 221 0 141] 
#[0 3 54 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 6 225 0 2 0 107] 
#[0 3 58 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 53 0 1 3 62 0 2 0 241 0 5 0 237 0 7 3 62 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 3 62 0 60 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 6 193 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 66 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 3 70 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 6 229 0 29 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 6 233 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 6 233 0 131 2 137 0 137 2 141 0 138 6 237 0 139 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 74 0 2 0 3 0 6 0 8 0 16 0 29] 
#[1 3 78 0 6 3 78 0 8 3 78 0 16 6 241 0 29 6 245 0 57 6 245 0 137] 
#[0 6 249 0 8 0 110] 
#[0 3 82 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 3 86 0 6 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 3 86 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 6 233 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 6 233 0 131 2 137 0 137 2 141 0 138 6 253 0 139 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 94 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 98 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 102 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 1 30 0 2 1 30 0 3 1 30 0 6 1 30 0 8 1 30 0 9 1 30 0 10 1 30 0 16 1 30 0 21 1 30 0 22 1 30 0 29 1 30 0 32 5 85 0 33 1 30 0 34 1 30 0 35 1 30 0 36 1 30 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 1 30 0 53 1 229 0 54 1 30 0 59 1 30 0 60 1 233 0 62 1 237 0 71 1 245 0 73 1 30 0 162] 
#[0 1 34 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 1 42 0 2 1 42 0 3 1 42 0 6 1 42 0 8 1 42 0 9 1 42 0 10 1 42 0 16 1 42 0 21 1 42 0 22 1 42 0 29 1 42 0 32 1 42 0 33 1 42 0 34 1 42 0 35 1 42 0 36 1 42 0 37 1 42 0 39 1 42 0 40 1 42 0 41 1 42 0 42 1 42 0 43 1 42 0 44 1 42 0 45 1 42 0 46 1 42 0 47 1 42 0 48 1 42 0 53 1 42 0 54 1 42 0 59 1 42 0 60 1 42 0 62 1 237 0 71 1 245 0 73 1 42 0 162] 
#[0 1 46 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 1 0 67 3 221 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 7 5 0 67 3 233 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 85 0 137 2 89 0 140 3 237 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 9 0 67 3 249 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 13 0 67 4 5 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 17 0 67 4 17 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 21 0 67 4 29 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 25 0 67 4 41 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 29 0 67 4 53 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 33 0 67 4 65 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 37 0 67 4 77 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 41 0 67 4 89 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 45 0 67 4 101 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 49 0 67 4 113 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 53 0 67 4 125 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 57 0 67 4 137 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 7 61 0 2 1 134 0 32 7 61 0 107] 
#[1 7 65 0 2 1 142 0 32 7 65 0 107] 
#[1 1 202 0 2 1 202 0 3 1 202 0 6 1 202 0 8 1 202 0 9 1 202 0 10 1 202 0 16 1 202 0 21 1 202 0 22 1 202 0 29 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 53 1 202 0 54 1 202 0 59 1 202 0 60 1 202 0 62 1 237 0 71 1 245 0 73 1 202 0 162] 
#[0 1 206 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 214 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 1 230 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 3 106 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 3 110 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 3 114 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161] 
#[0 3 118 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 3 122 0 1 3 122 0 5 3 122 0 7 3 122 0 10 3 122 0 11 3 122 0 12 3 122 0 13 3 122 0 14 3 122 0 15 3 122 0 17 3 122 0 18 3 122 0 19 3 122 0 20 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 7 69 0 29 3 122 0 30 3 122 0 31 3 122 0 32 3 122 0 38 3 122 0 46 3 122 0 47 3 122 0 49 3 122 0 50 3 122 0 51 3 122 0 52 3 122 0 55 3 122 0 56 3 122 0 57 3 122 0 58 7 69 0 59 3 122 0 60 3 122 0 61 7 69 0 95 3 122 0 158 3 122 0 159 3 122 0 160 3 122 0 161] 
#[1 2 53 0 1 0 241 0 5 0 237 0 7 3 126 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 21 0 32 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 3 126 0 60 0 129 0 61 2 29 0 66 2 33 0 67 0 149 0 68 2 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 2 105 0 100 7 73 0 101 2 45 0 102 2 49 0 103 2 53 0 106 2 57 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 61 0 124 2 65 0 125 2 65 0 126 2 65 0 127 2 65 0 128 2 81 0 130 2 85 0 137 2 89 0 140 2 65 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 7 77 0 10 5 189 0 60 5 193 0 99 5 201 0 104 7 81 0 105] 
#[1 3 130 0 10 5 189 0 60 5 193 0 99 5 201 0 104 7 85 0 105] 
#[0 7 89 0 10] 
#[0 3 134 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 3 138 0 2 3 138 0 3 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73] 
#[1 3 142 0 2 3 142 0 3 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73] 
#[1 7 93 0 2 3 146 0 3 7 93 0 107] 
#[0 3 150 0 2 0 3] 
#[1 7 101 0 2 7 97 0 3 7 101 0 107] 
#[1 7 109 0 2 7 105 0 3 7 109 0 107] 
#[0 3 154 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 3 158 0 2 3 158 0 3 3 158 0 6 3 158 0 7 3 158 0 8 2 253 0 9 3 158 0 10 3 158 0 16 3 158 0 21 3 158 0 22 3 158 0 29 3 158 0 32 3 158 0 33 3 158 0 34 3 158 0 35 3 158 0 36 3 158 0 37 3 158 0 39 3 158 0 40 3 158 0 41 3 158 0 42 3 158 0 43 3 158 0 44 3 158 0 45 3 158 0 46 3 158 0 47 3 158 0 48 3 158 0 53 3 158 0 54 3 158 0 57 3 158 0 59 3 158 0 60 3 158 0 62 7 113 0 94 3 5 0 97 3 158 0 162] 
#[0 2 6 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 1 125 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 1 129 0 61 1 133 0 66 1 137 0 67 0 149 0 68 1 133 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 145 0 66 1 149 0 67 0 149 0 68 1 145 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 1 157 0 117 1 5 0 118 1 9 0 119 1 161 0 120 1 17 0 121 1 21 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 117 0 155 3 53 0 156 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 7 117 0 33 7 121 0 34 7 125 0 35 7 129 0 36 6 105 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 7 173 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 6 105 0 146] 
#[1 1 169 0 33 1 173 0 34 1 177 0 35 6 109 0 36 6 113 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73 6 113 0 146] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 173 0 66 2 177 0 67 0 149 0 68 2 173 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 117 0 155 3 173 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 210 0 3 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 210 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 210 0 33 0 210 0 34 0 210 0 35 0 210 0 36 0 210 0 37 2 185 0 38 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 210 0 53 0 210 0 54 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 0 210 0 62 2 193 0 67 2 217 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 2 217 0 125 2 221 0 126 2 217 0 127 2 217 0 128 2 85 0 137 2 89 0 140 2 221 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 2 185 0 38 0 89 0 46 2 205 0 47 2 205 0 49 2 189 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 85 0 57 0 121 0 58 0 129 0 61 2 193 0 67 2 237 0 69 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 2 205 0 115 2 209 0 116 0 177 0 117 2 213 0 118 0 173 0 119 1 13 0 120 1 17 0 121 1 109 0 122 2 61 0 124 2 237 0 125 2 241 0 126 2 237 0 127 2 237 0 128 2 85 0 137 2 89 0 140 2 241 0 141 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 177 0 66 0 145 0 67 0 149 0 68 7 177 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 166 0 21 0 22] 
#[0 3 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 46 0 33 2 46 0 34 2 46 0 35 2 46 0 36 2 46 0 39 2 46 0 40 2 46 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 46 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 3 61 0 34 3 65 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 58 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 2 74 0 34 3 65 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 74 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 2 86 0 34 2 86 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 86 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 2 98 0 34 2 98 0 35 2 98 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 98 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 39 2 110 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 110 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 39 2 122 0 40 2 122 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 122 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 134 0 33 2 134 0 34 2 134 0 35 2 134 0 36 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 134 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 146 0 33 2 146 0 34 2 146 0 35 2 146 0 36 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 42 2 146 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 146 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 158 0 33 2 158 0 34 2 158 0 35 2 158 0 36 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 43 2 158 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 158 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 170 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 36 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 182 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 3 109 0 48 2 194 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 2 206 0 33 2 206 0 34 2 206 0 35 2 206 0 36 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 45 2 206 0 46 2 206 0 47 2 206 0 48 2 206 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 3 57 0 33 3 61 0 34 3 65 0 35 3 69 0 36 3 73 0 39 3 77 0 40 3 81 0 41 3 85 0 42 3 89 0 43 3 93 0 44 3 97 0 45 3 101 0 46 3 105 0 47 3 109 0 48 2 218 0 53 1 229 0 54 1 233 0 62 1 237 0 71] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 181 0 67 7 185 0 68 4 5 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 7 189 0 139 0 177 0 143 0 177 0 144 0 177 0 145 7 193 0 147 1 37 0 152 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 174 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 58 0 61 0 158 0 159 0 160 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 201 0 67 7 205 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 3 133 0 47 3 133 0 49 3 121 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 181 0 67 7 185 0 68 4 5 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 3 133 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 7 213 0 139 0 177 0 143 0 177 0 144 0 177 0 145 7 217 0 147 1 37 0 152 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 7 221 0 67 7 225 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 7 241 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 7 229 0 29 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 233 0 67 7 237 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 241 0 114 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 3 137 0 139 0 177 0 143 0 177 0 144 0 177 0 145 3 141 0 147 3 153 0 150 3 157 0 151 1 37 0 152 7 245 0 153 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 3 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 7 249 0 29 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 233 0 67 7 237 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 7 253 0 139 0 177 0 143 0 177 0 144 0 177 0 145 8 1 0 147 1 37 0 152 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 198 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 202 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 8 5 0 16 0 114] 
#[0 3 206 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 8 13 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 8 9 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 8 9 0 89 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 8 13 0 110 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 8 9 0 131 2 137 0 137 4 193 0 138 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 3 210 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 8 17 0 29 6 245 0 57 6 245 0 137] 
#[1 3 214 0 2 3 214 0 3 3 214 0 6 3 214 0 8 3 214 0 9 3 214 0 10 3 214 0 16 3 214 0 21 3 214 0 22 3 214 0 29 3 214 0 32 5 85 0 33 5 89 0 34 5 93 0 35 5 97 0 36 3 214 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 5 141 0 53 1 229 0 54 3 214 0 59 3 214 0 60 1 233 0 62 1 237 0 71 1 245 0 73 3 214 0 162] 
#[0 3 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 3 222 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 3 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 3 230 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 3 234 0 2 0 10 0 29 0 59 0 60] 
#[0 3 238 0 32 0 34] 
#[0 3 242 0 32 0 34] 
#[1 2 21 0 32 8 21 0 103] 
#[0 3 246 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 3 250 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[1 2 21 0 32 8 25 0 103] 
#[0 3 254 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 4 2 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 4 6 0 8 4 6 0 29 2 137 0 57 2 137 0 137 2 141 0 138 8 29 0 139] 
#[0 4 10 0 3 0 6 0 8 0 16 0 29] 
#[0 4 14 0 8 0 29] 
#[1 4 18 0 6 4 18 0 8 4 18 0 16 4 18 0 29 8 33 0 57 8 33 0 137] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 8 37 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 8 37 0 131 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 26 0 6 0 16] 
#[1 2 46 0 2 2 46 0 3 2 46 0 6 2 46 0 8 2 46 0 9 2 46 0 10 2 46 0 16 2 46 0 21 2 46 0 22 2 46 0 29 2 46 0 32 2 46 0 33 2 46 0 34 2 46 0 35 2 46 0 36 2 46 0 37 2 46 0 39 2 46 0 40 2 46 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 46 0 53 1 229 0 54 2 46 0 59 2 46 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 46 0 162] 
#[1 2 58 0 2 2 58 0 3 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 21 2 58 0 22 2 58 0 29 2 58 0 32 5 85 0 33 5 89 0 34 5 93 0 35 5 97 0 36 2 58 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 58 0 53 1 229 0 54 2 58 0 59 2 58 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 58 0 162] 
#[1 2 74 0 2 2 74 0 3 2 74 0 6 2 74 0 8 2 74 0 9 2 74 0 10 2 74 0 16 2 74 0 21 2 74 0 22 2 74 0 29 2 74 0 32 5 85 0 33 2 74 0 34 5 93 0 35 5 97 0 36 2 74 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 74 0 53 1 229 0 54 2 74 0 59 2 74 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 74 0 162] 
#[1 2 86 0 2 2 86 0 3 2 86 0 6 2 86 0 8 2 86 0 9 2 86 0 10 2 86 0 16 2 86 0 21 2 86 0 22 2 86 0 29 2 86 0 32 5 85 0 33 2 86 0 34 2 86 0 35 5 97 0 36 2 86 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 86 0 53 1 229 0 54 2 86 0 59 2 86 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 86 0 162] 
#[1 2 98 0 2 2 98 0 3 2 98 0 6 2 98 0 8 2 98 0 9 2 98 0 10 2 98 0 16 2 98 0 21 2 98 0 22 2 98 0 29 2 98 0 32 5 85 0 33 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 98 0 53 1 229 0 54 2 98 0 59 2 98 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 98 0 162] 
#[1 2 110 0 2 2 110 0 3 2 110 0 6 2 110 0 8 2 110 0 9 2 110 0 10 2 110 0 16 2 110 0 21 2 110 0 22 2 110 0 29 2 110 0 32 5 85 0 33 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 39 2 110 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 110 0 53 1 229 0 54 2 110 0 59 2 110 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 110 0 162] 
#[1 2 122 0 2 2 122 0 3 2 122 0 6 2 122 0 8 2 122 0 9 2 122 0 10 2 122 0 16 2 122 0 21 2 122 0 22 2 122 0 29 2 122 0 32 5 85 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 39 2 122 0 40 2 122 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 122 0 53 1 229 0 54 2 122 0 59 2 122 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 122 0 162] 
#[1 2 134 0 2 2 134 0 3 2 134 0 6 2 134 0 8 2 134 0 9 2 134 0 10 2 134 0 16 2 134 0 21 2 134 0 22 2 134 0 29 2 134 0 32 2 134 0 33 2 134 0 34 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 134 0 53 1 229 0 54 2 134 0 59 2 134 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 134 0 162] 
#[1 2 146 0 2 2 146 0 3 2 146 0 6 2 146 0 8 2 146 0 9 2 146 0 10 2 146 0 16 2 146 0 21 2 146 0 22 2 146 0 29 2 146 0 32 2 146 0 33 2 146 0 34 2 146 0 35 2 146 0 36 2 146 0 37 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 42 2 146 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 146 0 53 1 229 0 54 2 146 0 59 2 146 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 146 0 162] 
#[1 2 158 0 2 2 158 0 3 2 158 0 6 2 158 0 8 2 158 0 9 2 158 0 10 2 158 0 16 2 158 0 21 2 158 0 22 2 158 0 29 2 158 0 32 2 158 0 33 2 158 0 34 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 43 2 158 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 158 0 53 1 229 0 54 2 158 0 59 2 158 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 158 0 162] 
#[1 2 170 0 2 2 170 0 3 2 170 0 6 2 170 0 8 2 170 0 9 2 170 0 10 2 170 0 16 2 170 0 21 2 170 0 22 2 170 0 29 2 170 0 32 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 170 0 53 1 229 0 54 2 170 0 59 2 170 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 170 0 162] 
#[1 2 182 0 2 2 182 0 3 2 182 0 6 2 182 0 8 2 182 0 9 2 182 0 10 2 182 0 16 2 182 0 21 2 182 0 22 2 182 0 29 2 182 0 32 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 182 0 53 1 229 0 54 2 182 0 59 2 182 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 182 0 162] 
#[1 2 194 0 2 2 194 0 3 2 194 0 6 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 16 2 194 0 21 2 194 0 22 2 194 0 29 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 5 137 0 48 2 194 0 53 1 229 0 54 2 194 0 59 2 194 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 194 0 162] 
#[1 2 206 0 2 2 206 0 3 2 206 0 6 2 206 0 8 2 206 0 9 2 206 0 10 2 206 0 16 2 206 0 21 2 206 0 22 2 206 0 29 2 206 0 32 2 206 0 33 2 206 0 34 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 45 2 206 0 46 2 206 0 47 2 206 0 48 2 206 0 53 1 229 0 54 2 206 0 59 2 206 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 206 0 162] 
#[1 2 218 0 2 2 218 0 3 2 218 0 6 2 218 0 8 2 218 0 9 2 218 0 10 2 218 0 16 2 218 0 21 2 218 0 22 2 218 0 29 2 218 0 32 5 85 0 33 5 89 0 34 5 93 0 35 5 97 0 36 2 218 0 37 5 101 0 39 5 105 0 40 5 109 0 41 5 113 0 42 5 117 0 43 5 121 0 44 5 125 0 45 5 129 0 46 5 133 0 47 5 137 0 48 2 218 0 53 1 229 0 54 2 218 0 59 2 218 0 60 1 233 0 62 1 237 0 71 1 245 0 73 2 218 0 162] 
#[0 4 30 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 4 34 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 59 0 60 0 62 0 162] 
#[0 4 38 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 20 0 23 0 24 0 25 0 26 0 30 0 31 0 32 0 38 0 46 0 47 0 49 0 50 0 51 0 52 0 55 0 56 0 57 0 58 0 60 0 61 0 158 0 159 0 160 0 161] 
#[0 4 42 0 10 0 60] 
#[0 4 46 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 8 41 0 10] 
#[0 4 50 0 10] 
#[0 4 54 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 4 58 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 5 213 0 67 5 217 0 68 8 49 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 8 49 0 134 2 137 0 137 8 53 0 138 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 62 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 8 57 0 2 8 17 0 29 6 245 0 57 8 57 0 107 6 245 0 137] 
#[0 4 66 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 70 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 61 0 67 3 217 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 65 0 67 3 229 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 69 0 67 3 245 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 8 73 0 67 7 185 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 7 189 0 139 0 177 0 143 0 177 0 144 0 177 0 145 7 193 0 147 1 37 0 152 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 77 0 67 4 13 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 81 0 67 4 25 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 85 0 67 4 37 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 89 0 67 4 49 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 93 0 67 4 61 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 97 0 67 4 73 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 101 0 67 4 85 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 105 0 67 4 97 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 109 0 67 4 109 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 113 0 67 4 121 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 117 0 67 4 133 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 74 0 21 0 22] 
#[1 2 86 0 3 2 86 0 16 1 169 0 33 2 86 0 34 2 86 0 35 1 181 0 36 6 105 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 86 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 1 245 0 73 6 105 0 146] 
#[1 2 90 0 3 2 90 0 16 1 169 0 33 2 90 0 34 2 90 0 35 1 181 0 36 6 113 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 2 90 0 53 1 249 0 71 1 253 0 72 2 1 0 73 6 113 0 146] 
#[0 4 78 0 16] 
#[0 4 82 0 3 0 16] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 1 145 0 66 1 149 0 67 0 149 0 68 1 145 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 1 157 0 78 1 157 0 79 1 157 0 82 1 157 0 83 1 157 0 84 1 157 0 85 1 157 0 86 1 157 0 87 1 157 0 88 1 157 0 92 1 157 0 93 0 225 0 96 0 229 0 106 1 157 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 1 157 0 117 1 5 0 118 1 9 0 119 1 161 0 120 1 17 0 121 1 21 0 122 1 157 0 143 1 157 0 144 1 157 0 145 1 37 0 152 1 41 0 155 1 157 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 4 86 0 3 4 86 0 16 7 117 0 33 7 121 0 34 7 125 0 35 8 121 0 36 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 7 173 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 4 90 0 3 4 90 0 16 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 173 0 66 2 177 0 67 0 149 0 68 2 173 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 94 0 16] 
#[0 4 98 0 3 0 16] 
#[1 4 102 0 3 4 102 0 16 7 117 0 33 7 121 0 34 7 125 0 35 8 121 0 36 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 7 173 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 4 106 0 3 4 106 0 16 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 8 125 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 233 0 67 7 237 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 8 125 0 114 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 3 137 0 139 0 177 0 143 0 177 0 144 0 177 0 145 3 141 0 147 3 153 0 150 3 157 0 151 1 37 0 152 8 129 0 153 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[1 7 117 0 33 7 121 0 34 7 125 0 35 8 121 0 36 6 105 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 7 173 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 6 105 0 146] 
#[1 1 169 0 33 1 173 0 34 1 177 0 35 1 181 0 36 6 113 0 37 1 185 0 39 1 189 0 40 1 193 0 41 1 197 0 42 1 201 0 43 1 205 0 44 1 209 0 45 1 213 0 46 1 217 0 47 1 221 0 48 1 225 0 53 1 249 0 71 1 253 0 72 2 1 0 73 6 113 0 146] 
#[0 4 110 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 114 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 4 118 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 6 9 0 47 6 9 0 49 5 253 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 2 137 0 57 0 121 0 58 0 129 0 61 7 233 0 67 7 237 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 6 9 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 2 137 0 137 2 141 0 138 8 133 0 139 0 177 0 143 0 177 0 144 0 177 0 145 8 137 0 147 1 37 0 152 1 117 0 155 3 165 0 156 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 8 141 0 16 0 114] 
#[0 4 122 0 3 0 16] 
#[0 4 126 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 130 0 3 0 8] 
#[0 4 134 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 8 33 0 57 0 137] 
#[0 4 138 0 2 0 10 0 29 0 59 0 60] 
#[0 4 142 0 2 0 10 0 29 0 59 0 60] 
#[0 4 146 0 8 0 29] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 0 85 0 38 0 89 0 46 0 249 0 47 0 249 0 49 0 101 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 2 117 0 67 2 121 0 68 8 145 0 69 0 157 0 70 0 161 0 74 0 165 0 75 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 0 249 0 115 0 253 0 116 0 177 0 117 1 5 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 8 145 0 131 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 150 0 2 0 3 0 6 0 8 0 16 0 29] 
#[0 4 154 0 2 0 3 0 6 0 8 0 10 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 59 0 60 0 162] 
#[0 3 146 0 2 0 3] 
#[0 4 158 0 2 0 3] 
#[1 8 153 0 2 8 149 0 3 8 153 0 107] 
#[0 4 162 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 46 0 3 2 46 0 16 2 46 0 33 2 46 0 34 2 46 0 35 2 46 0 36 2 46 0 37 2 46 0 39 2 46 0 40 2 46 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 46 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 58 0 3 2 58 0 16 7 117 0 33 7 121 0 34 7 125 0 35 8 121 0 36 2 58 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 58 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 74 0 3 2 74 0 16 7 117 0 33 2 74 0 34 7 125 0 35 8 121 0 36 2 74 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 74 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 7 117 0 33 2 86 0 34 2 86 0 35 8 121 0 36 6 105 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 86 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72 6 105 0 146] 
#[1 2 98 0 3 2 98 0 16 7 117 0 33 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 98 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 110 0 3 2 110 0 16 7 117 0 33 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 37 2 110 0 39 2 110 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 110 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 122 0 3 2 122 0 16 7 117 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 39 2 122 0 40 2 122 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 122 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 134 0 3 2 134 0 16 2 134 0 33 2 134 0 34 2 134 0 35 2 134 0 36 2 134 0 37 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 134 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 146 0 3 2 146 0 16 2 146 0 33 2 146 0 34 2 146 0 35 2 146 0 36 2 146 0 37 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 42 2 146 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 146 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 158 0 3 2 158 0 16 2 158 0 33 2 158 0 34 2 158 0 35 2 158 0 36 2 158 0 37 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 43 2 158 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 158 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 170 0 3 2 170 0 16 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 37 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 2 170 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 170 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 182 0 3 2 182 0 16 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 36 2 182 0 37 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 182 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 194 0 3 2 194 0 16 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 7 169 0 48 2 194 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 206 0 3 2 206 0 16 2 206 0 33 2 206 0 34 2 206 0 35 2 206 0 36 2 206 0 37 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 44 2 206 0 45 2 206 0 46 2 206 0 47 2 206 0 48 2 206 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 2 218 0 3 2 218 0 16 7 117 0 33 7 121 0 34 7 125 0 35 8 121 0 36 2 218 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 218 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[1 0 229 0 1 0 241 0 5 0 237 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 245 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 20 0 57 0 23 0 61 0 24 0 65 0 25 0 69 0 26 0 77 0 30 0 81 0 31 5 249 0 38 0 89 0 46 7 209 0 47 7 209 0 49 7 197 0 50 0 105 0 51 0 109 0 52 0 113 0 55 0 117 0 56 0 121 0 58 0 129 0 61 8 157 0 67 4 1 0 68 0 157 0 70 0 169 0 76 0 173 0 77 0 177 0 78 0 177 0 79 0 177 0 82 0 177 0 83 0 177 0 84 0 177 0 85 0 177 0 86 0 177 0 87 0 177 0 88 0 177 0 92 0 177 0 93 0 225 0 96 0 229 0 106 0 177 0 108 0 237 0 109 0 241 0 111 0 245 0 113 7 209 0 115 6 13 0 116 0 177 0 117 6 17 0 118 1 9 0 119 1 13 0 120 1 17 0 121 1 21 0 122 0 177 0 143 0 177 0 144 0 177 0 145 1 37 0 152 1 41 0 155 0 177 0 157 1 49 0 158 1 53 0 159 1 57 0 160 1 61 0 161] 
#[0 4 166 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 8 161 0 16 0 114] 
#[0 4 174 0 3 0 16] 
#[0 4 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 182 0 2 0 3 0 6 0 8 0 16 0 29] 
#[1 8 165 0 2 8 17 0 29 6 245 0 57 8 165 0 107 6 245 0 137] 
#[0 4 186 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[1 2 86 0 3 2 86 0 16 7 117 0 33 2 86 0 34 2 86 0 35 8 121 0 36 2 86 0 37 7 133 0 39 7 137 0 40 7 141 0 41 7 145 0 42 7 149 0 43 7 153 0 44 7 157 0 45 7 161 0 46 7 165 0 47 7 169 0 48 2 86 0 53 1 229 0 54 1 233 0 62 1 237 0 71 1 241 0 72] 
#[0 4 190 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162] 
#[0 4 194 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 21 0 22 0 29 0 32 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 53 0 54 0 57 0 59 0 60 0 62 0 162]
	).
]

{ #category : 'private' }
ElixirParser >> actionForCurrentToken [
	| lookahead ids id action eolAction oldToken oldScope |
	currentToken value = 'not in'
		ifTrue: [ | contents afterPos afterCh |
			contents := scanner stream contents.
			afterPos := currentToken stopPosition + 1.
			afterPos <= contents size
				ifTrue: [ afterCh := contents at: afterPos.
					(afterCh isLetter or: [ afterCh isDigit or: [ '_?!' includes: afterCh ] ])
						ifTrue: [ | notEnd |
							notEnd := currentToken startPosition + 2.
							self position: notEnd.
							currentToken := currentToken class
									value: 'not'
									start: currentToken startPosition
									ids: {scanner unary_opId} ] ] ].
	scanner lastWasEol
		ifTrue: [ eolAction := self actionFor: scanner eolId.
			(eolAction bitAnd: self actionMask) = self errorAction
				ifFalse: [ | char shouldShift |
					char := currentToken value isEmpty
							ifTrue: [ $  ]
							ifFalse: [ currentToken value first ].
					shouldShift := ')|}<>' includes: char.
					shouldShift ifFalse: [ shouldShift := self shouldSuppressEol ].
					shouldShift
						ifFalse: [ shouldShift := #('when' 'and' 'or' 'in') includes: currentToken value ].
					shouldShift
						ifTrue: [ action := self actionFor: currentToken ids first.
							(action bitAnd: self actionMask) = self errorAction ifFalse: [ ^ action ] ].
					char = $} ifTrue: [ scanner lastWasEol: false ].
					char = $}
						ifFalse: [ scanner lastWasEol: false.
							self position: currentToken startPosition - 1.
							currentToken := currentToken class
									value: ''
									start: currentToken startPosition
									ids: {scanner eolId}.
							^ eolAction ] ] ].
	currentToken ids first = scanner identifierId
		ifTrue: [ lookahead := self peekNextToken.
			id := lookahead value = 'do'
					ifTrue: [ scanner do_identifierId ]
					ifFalse: [ lookahead value = ' ??? '
							ifTrue: [ scanner block_identifierId ]
							ifFalse: [ currentToken stopPosition + 1 = lookahead startPosition
									ifTrue: [ lookahead value = '['
											ifTrue: [ scanner bracket_identifierId ]
											ifFalse: [ lookahead value = '(' ifTrue: [ scanner paren_identifierId ] ] ] ] ].
			id notNil
				ifTrue: [ ids := (id = scanner paren_identifierId
							or: [ id = scanner bracket_identifierId or: [ id = scanner do_identifierId ] ])
							ifTrue: [ {id} ]
							ifFalse: [ {id.
									scanner identifierId} ] ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].	"Force nullary `..` when the next token can't start a matched_expr RHS."
	currentToken value = '..'
		ifTrue: [ | nextVal nullaryAction |
			nextVal := self peekNextToken value.
			(#('do' 'end' 'else' 'after' 'rescue' 'catch' ')' ']' '}' ',' ';' '|>' '|' '->' '<-' '=' '' 'when')
				includes: nextVal)
				ifTrue: [ nullaryAction := self actionFor: scanner nullary_two_opId.
					(nullaryAction bitAnd: self actionMask) ~= self errorAction
						ifTrue: [ currentToken ids: {scanner nullary_two_opId} ] ] ].
	action := super actionForCurrentToken.
	((action bitAnd: self actionMask) = self errorAction
		and: [ (currentToken ids includes: scanner interpolatedStringEndId) not
				and: [ (currentToken ids includes: scanner interpolatedStringMidId) not
						and: [ currentToken value beginsWith: '}' ] ] ])
		ifTrue: [ oldToken := currentToken.
			oldScope := self scope.
			self scope: #interpolatedString.
			self position: currentToken startPosition - 1.
			currentToken := nil.
			self getNextToken.
			self scope: oldScope.
			(currentToken ids first = scanner interpolatedStringMidId
				or: [ currentToken ids first = scanner interpolatedStringEndId ])
				ifTrue: [ ^ self actionForCurrentToken ].
			(self
				rescueInterpolatedStringFrom: oldToken
				midId: scanner interpolatedStringMidId
				endId: scanner interpolatedStringEndId)
				ifTrue: [ ^ self actionForCurrentToken ].
			currentToken := oldToken.
			^ action ].
	((action bitAnd: self actionMask) = self errorAction
		and: [ currentToken value beginsWith: '"' ])
		ifTrue: [ oldToken := currentToken.
			(self
				rescueInterpolatedStringFrom: oldToken
				midId: scanner interpolatedStringStartId
				endId: scanner stringId) ifTrue: [ ^ self actionForCurrentToken ].
			currentToken := oldToken ].
	^ action
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr14: nodes [
	| result |
	result := ElixirTrueNode new.
	result _true: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr15: nodes [
	| result |
	result := ElixirFalseNode new.
	result _false: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr16: nodes [
	| result |
	result := ElixirNilNode new.
	result _nil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirNullaryOpNode new.
	result op: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr26: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr27: nodes [
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
	result := ElixirAccessExprNode new.
	result op: (nodes at: 1).
	result identifier: (nodes at: 2).
	result slash: (nodes at: 3).
	result arity: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr5: nodes [
	| result |
	result := ElixirLambdaNode new.
	result fn: (nodes at: 1).
	result stab: (nodes at: 2).
	result end: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr6: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result stab: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr7: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [
	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result semi: (nodes at: 2).
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
ElixirParser >> reduceActionForassoc_base3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 4) to: result assocs.
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
ElixirParser >> reduceActionForassoc_expr5: nodes [
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
ElixirParser >> reduceActionForinterpolated_atom1: nodes [
	| result |
	result := ElixirInterpolatedAtomNode new.
	result addToken: (nodes at: 1) to: result parts.
	result addNode: (nodes at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 1) to: result parts.
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result addToken: (nodes at: 4) to: result parts.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForinterpolated_string1: nodes [
	| result |
	result := ElixirInterpolatedStringNode new.
	result addToken: (nodes at: 1) to: result parts.
	result addNode: (nodes at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 1) to: result parts.
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result addToken: (nodes at: 4) to: result parts.
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
	result addToken: (nodes at: 1) to: result keys.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keys.
	result addNode: (nodes at: 4) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 4) to: result keys.
	result addNode: (nodes at: 5) to: result values.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist1: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result rightBracket: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist2: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist3: nodes [
	| result |
	result := ElixirListNode new.
	result leftBracket: (nodes at: 1).
	result args: (nodes at: 2).
	result rightBracket: (nodes at: 4).
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
ElixirParser >> reduceActionForlist_args5: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForlist_args6: nodes [
	| result |
	result := ElixirListArgsNode new.
	result container: (nodes at: 1).
	result com: (nodes at: 2).
	result kw: (nodes at: 4).
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
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap3: nodes [
	| result |
	result := ElixirMapNode new.
	result cen: (nodes at: 1).
	result args: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap4: nodes [
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
ElixirParser >> reduceActionFormap_args2: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result kw: ((nodes at: 2) at: 1).
	result rightCurly: ((nodes at: 2) at: 2).
	result addNode: ((nodes at: 2) at: 3) to: result associations.
	result addToken: ((nodes at: 2) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args3: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result rightCurly: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args4: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result rightCurly: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args5: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result rightCurly: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args6: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result kw: ((nodes at: 4) at: 1).
	result rightCurly: ((nodes at: 4) at: 2).
	result addNode: ((nodes at: 4) at: 3) to: result associations.
	result addToken: ((nodes at: 4) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_args7: nodes [
	| result |
	result := ElixirMapArgsNode new.
	result leftCurly: (nodes at: 1).
	result addNode: (nodes at: 2) to: result associations.
	result addToken: (nodes at: 3) to: result coms.
	result kw: ((nodes at: 5) at: 1).
	result rightCurly: ((nodes at: 5) at: 2).
	result addNode: ((nodes at: 5) at: 3) to: result associations.
	result addToken: ((nodes at: 5) at: 4) to: result coms.
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_base_expr1: nodes [
	| result |
	result := ElixirMapBaseExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionFormap_close4: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
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
ElixirParser >> reduceActionForstab_eoe2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result eoes.
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
ElixirParser >> reduceActionForsub_matched_expr1: nodes [
	| result |
	result := ElixirSubMatchedExprNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
ElixirParser >> reduceActionForsub_matched_expr3: nodes [
	| result |
	result := ElixirSubMatchedExprNode new.
	result expression: (nodes at: 1).
	result identifier: (nodes at: 2).
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

{ #category : 'private' }
ElixirParser >> rescueInterpolatedStringFrom: oldToken midId: midId endId: endId [

	"Walk source forward from oldToken's start+1, looking for the next
	 unescaped #{ (synthesize a token with midId) or closing quote
	 (synthesize a token with endId). Returns true if currentToken was
	 replaced. Used by both the }-rescue and the quote-rescue paths."

	| contents pos size foundMid foundEnd endPos newId |
	oldToken ifNil: [ ^ false ].
	contents := scanner stream contents.
	size := contents size.
	pos := oldToken startPosition + 1.
	foundMid := false.
	foundEnd := false.
	[ pos <= size and: [ foundMid not and: [ foundEnd not ] ] ] whileTrue: [
		| ch |
		ch := contents at: pos.
		ch = $\
			ifTrue: [ pos := pos + 2 ]
			ifFalse: [ (ch = $# and: [ pos < size and: [ (contents at: pos + 1) = ${ ] ])
				ifTrue: [ foundMid := true ]
				ifFalse: [ ch = (Character value: 34)
					ifTrue: [ foundEnd := true ]
					ifFalse: [ pos := pos + 1 ] ] ] ].
	(foundMid or: [ foundEnd ]) ifFalse: [ ^ false ].
	endPos := foundMid ifTrue: [ pos + 1 ] ifFalse: [ pos ].
	newId := foundMid ifTrue: [ midId ] ifFalse: [ endId ].
	self position: endPos.
	currentToken := oldToken class
		value: (contents copyFrom: oldToken startPosition to: endPos)
		start: oldToken startPosition
		ids: { newId }.
	^ true

]

{ #category : 'private' }
ElixirParser >> shouldSuppressEol [
	"Suppress eol injection after binary operators and keyword identifiers.
	 Replicates what the original Elixir tokenizer does by not emitting eol
	 after operators, reducing GLR ambiguity and improving performance."
	| prev |
	prev := scanner lastTokenValue.
	prev ifNil: [ ^ false ].
	(#('=' '+' '-' '*' '/' '|>' '||' '|||' '&&' '&&&' '==' '!=' '===' '!=='
	   '=~' '<=' '>=' '<-' '\\' '|' '=>' '::' '..'
	   '++' '--' '<>' '^^^' '<<<' '>>>' '<<~' '~>>' '~>' '<~' '<~>' '<|>'
	   'not' 'when' 'in' 'and' 'or' 'not in') includes: prev) ifTrue: [ ^ true ].
	(prev notEmpty and: [ prev last = $: ]) ifTrue: [ ^ true ].
	^ false
]

{ #category : 'private-actions' }
ElixirParser >> tryAllTokens [
	"Multi-id tokens (e.g. identifier+block_identifier for __MODULE__-style names) need each
	 alternative tried; first non-error action wins."

	^ true
]
