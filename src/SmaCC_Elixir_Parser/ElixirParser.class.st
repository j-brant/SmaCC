Class {
	#name : 'ElixirParser',
	#superclass : 'SmaCCParser',
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated-accessing' }
ElixirParser class >> cacheId [
	^'2026-05-15T23:00:04.46744+08:00'
]

{ #category : 'generated' }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE


%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string> <dual_op> <unary_op> <interpolatedStringMid> <interpolatedStringEnd>;

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
	: ""do"" 'do'
	| ""do"" 'do' eoe 'eoe'
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
	| <struct_op> 'cen' map_base_expr 'struct' ? map_args'args' {{}}			# added ?
	;"
]

{ #category : 'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : 'class initialization' }
ElixirParser class >> initialize [
	self maxParallelParses: 500
]

{ #category : 'generated' }
ElixirParser class >> reduceTable [
^#(
	#(63 0 #reduceActionForgrammar6: 6520838 false) 
	#(104 1 #liftFirstValue: 16855041 false) 
	#(109 1 #liftFirstValue: 17045505 false) 
	#(107 1 #liftFirstValue: 16977921 false) 
	#(77 1 #reduceActionForaccess_expr15: 13222927 false) 
	#(94 1 #reduceActionForfn_eoe1: 15638529 false) 
	#(77 1 #reduceActionForaccess_expr16: 13222928 false) 
	#(77 1 #reduceActionForaccess_expr14: 13222926 false) 
	#(111 1 #liftFirstValue: 17099777 false) 
	#(85 1 #reduceActionFornumber1: 14393345 false) 
	#(77 1 #reduceActionForaccess_expr24: 13222936 false) 
	#(81 1 #reduceActionForbin_string1: 14197761 false) 
	#(83 1 #reduceActionForbin_heredoc1: 14286849 false) 
	#(82 1 #reduceActionForlist_string1: 14240769 false) 
	#(84 1 #reduceActionForlist_heredoc1: 14339073 false) 
	#(93 1 #liftFirstValue: 15603713 false) 
	#(150 1 #liftFirstValue: 22758401 false) 
	#(113 1 #liftFirstValue: 17174530 false) 
	#(113 1 #liftFirstValue: 17174529 false) 
	#(85 1 #reduceActionFornumber2: 14393346 false) 
	#(85 1 #reduceActionFornumber3: 14393347 false) 
	#(77 1 #reduceActionForaccess_expr23: 13222935 false) 
	#(114 1 #reduceActionFordot_identifier1: 17247233 false) 
	#(115 1 #reduceActionFordot_alias1: 17376257 false) 
	#(93 1 #liftFirstValue: 15603714 false) 
	#(116 1 #reduceActionFordot_op_identifier1: 17674241 false) 
	#(63 1 #reduceActionForgrammar2: 6520834 false) 
	#(64 1 #reduceActionForexpr_list1: 6768641 false) 
	#(65 1 #liftFirstValue: 6857729 false) 
	#(65 1 #liftFirstValue: 6857731 false) 
	#(65 1 #liftFirstValue: 6857730 false) 
	#(67 1 #reduceActionForunmatched_expr8: 8786952 false) 
	#(68 1 #reduceActionForno_parens_expr5: 9188357 false) 
	#(68 1 #reduceActionForno_parens_expr5: 9188358 false) 
	#(66 1 #reduceActionFormatched_expr5: 8528901 false) 
	#(153 1 #reduceActionForsub_matched_expr1: 23353345 false) 
	#(153 1 #reduceActionForsub_matched_expr1: 23353346 false) 
	#(77 1 #liftFirstValue: 13222934 false) 
	#(77 1 #liftFirstValue: 13222929 false) 
	#(77 1 #liftFirstValue: 13222930 false) 
	#(77 1 #liftFirstValue: 13222931 false) 
	#(77 1 #liftFirstValue: 13222932 false) 
	#(77 1 #liftFirstValue: 13222922 false) 
	#(77 1 #liftFirstValue: 13222938 false) 
	#(77 1 #liftFirstValue: 13222914 false) 
	#(77 1 #liftFirstValue: 13222913 false) 
	#(63 1 #reduceActionForgrammar1: 6520833 false) 
	#(77 1 #liftFirstValue: 13222921 false) 
	#(76 1 #liftFirstValue: 12903426 false) 
	#(77 1 #liftFirstValue: 13222937 false) 
	#(76 1 #liftFirstValue: 12903425 false) 
	#(120 1 #reduceActionFordot_call_identifier1: 18251777 false) 
	#(77 1 #liftFirstValue: 13222923 false) 
	#(77 1 #liftFirstValue: 13222925 false) 
	#(77 1 #liftFirstValue: 13222933 false) 
	#(66 1 #reduceActionFormatched_expr5: 8528902 false) 
	#(77 1 #liftFirstValue: 13222924 false) 
	#(118 1 #reduceActionFordot_bracket_identifier1: 17952769 false) 
	#(117 1 #reduceActionFordot_do_identifier1: 17814529 false) 
	#(119 1 #reduceActionFordot_paren_identifier1: 18105345 false) 
	#(94 2 #reduceActionForfn_eoe2: 15638530 false) 
	#(80 0 #reduceActionFor__interpolatedStringMid___part__expr__expression___1: 14102529 false) 
	#(155 2 #reduceActionFormap2: 23643138 false) 
	#(154 1 #reduceActionFormap_base_expr1: 23514113 false) 
	#(77 2 #reduceActionForaccess_expr3: 13222915 false) 
	#(67 2 #reduceActionForunmatched_expr7: 8786951 false) 
	#(66 2 #reduceActionFormatched_expr4: 8528900 false) 
	#(68 2 #reduceActionFormatched_expr4: 9188356 false) 
	#(67 2 #reduceActionForunmatched_expr7: 8786950 false) 
	#(66 2 #reduceActionFormatched_expr4: 8528899 false) 
	#(68 2 #reduceActionFormatched_expr4: 9188355 false) 
	#(63 2 #reduceActionForgrammar4: 6520836 false) 
	#(120 2 #reduceActionFordot_call_identifier2: 18251778 false) 
	#(66 2 #reduceActionFormatched_expr1: 8528897 false) 
	#(67 2 #reduceActionForunmatched_expr1: 8786945 false) 
	#(68 2 #reduceActionForno_parens_expr1: 9188353 false) 
	#(67 2 #reduceActionFormatched_expr1: 8786946 false) 
	#(67 2 #reduceActionFormatched_expr1: 8786947 false) 
	#(67 2 #reduceActionFormatched_expr1: 8786948 false) 
	#(153 2 #reduceActionForsub_matched_expr3: 23353347 false) 
	#(90 2 #reduceActionForbracket_expr2: 15093762 false) 
	#(63 2 #reduceActionForgrammar3: 6520835 false) 
	#(101 1 #reduceActionForstab_op_eol_and_expr1: 16617473 false) 
	#(135 1 #liftFirstValue: 20729857 false) 
	#(100 1 #reduceActionForstab_expr1: 16148481 false) 
	#(124 1 #liftFirstValue: 18792450 false) 
	#(125 1 #liftFirstValue: 18867201 false) 
	#(98 1 #reduceActionForstab1: 15918081 false) 
	#(100 1 #reduceActionForstab_expr1: 16148482 false) 
	#(126 1 #reduceActionForcall_args_no_parens_many2: 18918402 false) 
	#(123 1 #liftFirstValue: 18673665 false) 
	#(123 1 #liftFirstValue: 18673666 false) 
	#(123 1 #liftFirstValue: 18673667 false) 
	#(139 1 #reduceActionForcall_args_no_parens_kw1: 21152769 false) 
	#(124 1 #liftFirstValue: 18792449 false) 
	#(106 2 #reduceActionForempty_paren1: 16916481 false) 
	#(99 1 #liftFirstValue: 15994881 false) 
	#(141 2 #reduceActionForlist1: 21504001 false) 
	#(129 1 #liftFirstValue: 19581953 false) 
	#(129 1 #liftFirstValue: 19581954 false) 
	#(129 1 #liftFirstValue: 19581955 false) 
	#(130 1 #reduceActionForcontainer_args_base1: 19658753 false) 
	#(140 1 #reduceActionForlist_args2: 21308418 false) 
	#(137 1 #reduceActionForkw1: 20984833 false) 
	#(140 1 #reduceActionForlist_args1: 21308417 false) 
	#(143 2 #reduceActionForbit_string1: 21797889 false) 
	#(131 1 #reduceActionForcontainer_args1: 19787777 false) 
	#(142 2 #reduceActionFortuple1: 21653505 false) 
	#(67 2 #reduceActionForunmatched_expr7: 8786949 false) 
	#(66 2 #reduceActionFormatched_expr4: 8528898 false) 
	#(68 2 #reduceActionFormatched_expr4: 9188354 false) 
	#(75 2 #reduceActionForno_parens_one_expr2: 12743682 false) 
	#(73 2 #reduceActionForno_parens_one_ambig_expr2: 12370946 false) 
	#(127 1 #reduceActionForcall_args_no_parens_many_strict1: 19168257 false) 
	#(74 2 #reduceActionForno_parens_many_expr2: 12553218 false) 
	#(75 2 #reduceActionForno_parens_one_expr2: 12743681 false) 
	#(73 2 #reduceActionForno_parens_one_ambig_expr2: 12370945 false) 
	#(74 2 #reduceActionForno_parens_many_expr2: 12553217 false) 
	#(95 1 #liftFirstValue: 15697921 false) 
	#(69 2 #reduceActionForblock_expr3: 9476099 false) 
	#(90 2 #reduceActionForbracket_expr2: 15093761 false) 
	#(86 2 #reduceActionForparens_call1: 14504961 false) 
	#(155 2 #reduceActionFormap2: 23643137 false) 
	#(154 2 #reduceActionFormatched_expr4: 23514114 false) 
	#(152 2 #reduceActionFormap_args1: 22929409 false) 
	#(148 1 #reduceActionForassoc_base1: 22580225 false) 
	#(149 1 #liftFirstValue: 22679553 false) 
	#(152 2 #reduceActionFormap_args2: 22929410 false) 
	#(145 1 #reduceActionForassoc_expr5: 21966853 false) 
	#(154 2 #reduceActionFormatched_expr4: 23514115 false) 
	#(155 3 #reduceActionFormap3: 23643139 false) 
	#(91 3 #reduceActionForbracket_at_expr2: 15223810 false) 
	#(91 3 #reduceActionForbracket_at_expr2: 15223809 false) 
	#(64 3 #reduceActionForexpr_list2: 6768642 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924622 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683405 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474957 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924619 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683403 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474955 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474960 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924618 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683402 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474954 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924620 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683404 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474956 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924609 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683393 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474945 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924615 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683399 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474951 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924614 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683398 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474950 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924621 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683406 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474958 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924623 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683407 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474959 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924616 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683400 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474952 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924613 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683397 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474949 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924612 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683396 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474948 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924610 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683394 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474946 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924611 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683395 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474947 false) 
	#(70 2 #reduceActionFormatched_op_expr14: 9924617 false) 
	#(71 2 #reduceActionForunmatched_op_expr13: 10683401 false) 
	#(72 2 #reduceActionForno_parens_op_expr13: 11474953 false) 
	#(114 3 #reduceActionFordot_identifier2: 17247234 false) 
	#(115 3 #reduceActionFordot_alias2: 17376258 false) 
	#(116 3 #reduceActionFordot_op_identifier2: 17674242 false) 
	#(118 3 #reduceActionFordot_bracket_identifier2: 17952770 false) 
	#(117 3 #reduceActionFordot_do_identifier2: 17814530 false) 
	#(119 3 #reduceActionFordot_paren_identifier2: 18105346 false) 
	#(108 1 #liftFirstValue: 17003521 false) 
	#(88 1 #reduceActionForbracket_values1: 14732289 false) 
	#(89 2 #reduceActionForbracket_arg1: 14845953 false) 
	#(87 1 #liftFirstValue: 14676994 false) 
	#(87 1 #liftFirstValue: 14676993 false) 
	#(63 3 #reduceActionForgrammar5: 6520837 false) 
	#(101 2 #reduceActionForstab_op_eol_and_expr2: 16617474 false) 
	#(96 1 #reduceActionForend_eoe1: 15747073 false) 
	#(77 3 #reduceActionForaccess_expr5: 13222917 false) 
	#(100 2 #reduceActionForstab_expr3: 16148483 false) 
	#(100 2 #reduceActionForstab_expr3: 16148485 false) 
	#(100 2 #reduceActionForstab_expr3: 16148486 false) 
	#(138 2 #reduceActionForcall_args_no_parens_kw_expr1: 21035009 false) 
	#(138 2 #reduceActionForcall_args_no_parens_kw_expr1: 21035010 false) 
	#(105 1 #liftFirstValue: 16878593 false) 
	#(77 3 #reduceActionForaccess_expr8: 13222920 false) 
	#(99 2 #reduceActionForstab_eoe2: 15994882 false) 
	#(77 3 #reduceActionForaccess_expr6: 13222918 false) 
	#(140 2 #reduceActionForlist_args3: 21308419 false) 
	#(136 2 #reduceActionForkw_base1: 20856833 false) 
	#(137 2 #reduceActionForkw2: 20984834 false) 
	#(141 3 #reduceActionForlist2: 21504002 false) 
	#(131 2 #reduceActionForcontainer_args2: 19787778 false) 
	#(110 1 #liftFirstValue: 17068033 false) 
	#(143 3 #reduceActionForbit_string2: 21797890 false) 
	#(112 1 #liftFirstValue: 17123329 false) 
	#(142 3 #reduceActionFortuple2: 21653506 false) 
	#(69 3 #reduceActionForblock_expr5: 9476101 false) 
	#(69 3 #reduceActionForblock_expr5: 9476100 false) 
	#(95 2 #liftSecondValue: 15697922 false) 
	#(92 2 #reduceActionFordo_block1: 15394817 false) 
	#(97 1 #reduceActionForblock_eoe1: 15811585 false) 
	#(102 1 #reduceActionForblock_item2: 16680962 false) 
	#(103 1 #reduceActionForblock_list1: 16763905 false) 
	#(134 2 #reduceActionForcall_args_parens1: 20150273 false) 
	#(132 1 #liftFirstValue: 19932161 false) 
	#(132 1 #liftFirstValue: 19932162 false) 
	#(132 1 #liftFirstValue: 19932163 false) 
	#(133 1 #reduceActionForcall_args_parens_base1: 20016129 false) 
	#(69 3 #reduceActionForblock_expr5: 9476097 false) 
	#(86 3 #reduceActionForparens_call2: 14504962 false) 
	#(78 4 #reduceActionForinterpolated_string1: 14026753 false) 
	#(80 2 #reduceActionFor__interpolatedStringMid___part__expr__expression___2: 14102530 false) 
	#(144 1 #liftFirstValue: 21928961 false) 
	#(151 2 #reduceActionFormap_close1: 22789121 false) 
	#(152 3 #reduceActionFormap_args3: 22929411 false) 
	#(152 3 #reduceActionFormap_args3: 22929416 false) 
	#(149 2 #reduceActionForassoc2: 22679554 false) 
	#(151 2 #reduceActionFormap_close2: 22789122 false) 
	#(77 4 #reduceActionForaccess_expr4: 13222916 false) 
	#(115 4 #reduceActionFordot_alias3: 17376259 false) 
	#(89 3 #reduceActionForbracket_arg2: 14845954 false) 
	#(89 3 #reduceActionForbracket_arg3: 14845955 false) 
	#(121 1 #liftFirstValue: 18411521 false) 
	#(121 1 #liftFirstValue: 18411522 false) 
	#(122 3 #reduceActionForcall_args_no_parens_comma_expr1: 18479105 false) 
	#(126 3 #reduceActionForcall_args_no_parens_many1: 18918401 false) 
	#(96 2 #reduceActionForend_eoe2: 15747074 false) 
	#(98 3 #reduceActionForstab2: 15918082 false) 
	#(128 3 #reduceActionForstab_parens_many2: 19395586 false) 
	#(128 3 #reduceActionForstab_parens_many2: 19395585 false) 
	#(122 3 #reduceActionForcall_args_no_parens_comma_expr2: 18479106 false) 
	#(126 3 #reduceActionForcall_args_no_parens_many1: 18918403 false) 
	#(139 3 #reduceActionForcall_args_no_parens_kw2: 21152770 false) 
	#(77 4 #reduceActionForaccess_expr7: 13222919 false) 
	#(140 3 #reduceActionForlist_args3: 21308420 false) 
	#(130 3 #reduceActionForcontainer_args_base2: 19658754 false) 
	#(140 3 #reduceActionForlist_args5: 21308421 false) 
	#(137 3 #reduceActionForkw2: 20984835 false) 
	#(141 4 #reduceActionForlist3: 21504003 false) 
	#(131 3 #reduceActionForcontainer_args3: 19787779 false) 
	#(127 3 #reduceActionForcall_args_no_parens_many_strict3: 19168259 false) 
	#(127 3 #reduceActionForcall_args_no_parens_many_strict3: 19168258 false) 
	#(97 2 #reduceActionForblock_eoe2: 15811586 false) 
	#(102 2 #reduceActionForblock_item1: 16680961 false) 
	#(92 3 #reduceActionFordo_block2: 15394818 false) 
	#(103 2 #reduceActionForblock_list2: 16763906 false) 
	#(92 3 #reduceActionFordo_block3: 15394819 false) 
	#(134 3 #reduceActionForcall_args_parens2: 20150274 false) 
	#(134 3 #reduceActionForcall_args_parens2: 20150277 false) 
	#(134 3 #reduceActionForcall_args_parens3: 20150275 false) 
	#(69 4 #reduceActionForblock_expr2: 9476098 false) 
	#(79 2 #reduceActionFor__interpolatedStringMid___part__expr__expression__1: 14102529 false) 
	#(147 3 #reduceActionForassoc_update_kw1: 22436865 false) 
	#(146 3 #reduceActionForassoc_update1: 22264833 false) 
	#(145 3 #reduceActionForassoc_expr1: 21966849 false) 
	#(145 3 #reduceActionForassoc_expr1: 21966851 false) 
	#(147 3 #reduceActionForassoc_update_kw1: 22436866 false) 
	#(146 3 #reduceActionForassoc_update2: 22264834 false) 
	#(145 3 #reduceActionForassoc_expr1: 21966852 false) 
	#(145 3 #reduceActionForassoc_expr1: 21966850 false) 
	#(152 4 #reduceActionFormap_args4: 22929412 false) 
	#(152 4 #reduceActionFormap_args6: 22929414 false) 
	#(149 3 #reduceActionForassoc2: 22679555 false) 
	#(148 3 #reduceActionForassoc_base2: 22580226 false) 
	#(115 5 #reduceActionFordot_alias4: 17376260 false) 
	#(88 3 #reduceActionForbracket_values2: 14732290 false) 
	#(89 4 #reduceActionForbracket_arg4: 14845956 false) 
	#(100 4 #reduceActionForstab_expr4: 16148484 false) 
	#(100 4 #reduceActionForstab_expr4: 16148487 false) 
	#(140 4 #reduceActionForlist_args6: 21308422 false) 
	#(136 4 #reduceActionForkw_base2: 20856834 false) 
	#(92 4 #reduceActionFordo_block4: 15394820 false) 
	#(133 3 #reduceActionForcall_args_parens_base2: 20016130 false) 
	#(134 4 #reduceActionForcall_args_parens4: 20150276 false) 
	#(152 5 #reduceActionFormap_args5: 22929413 false) 
	#(152 5 #reduceActionFormap_args7: 22929415 false) 
	#(148 4 #reduceActionForassoc_base3: 22580227 false) 
	#(151 4 #reduceActionFormap_close3: 22789123 false) 
	#(136 5 #reduceActionForkw_base3: 20856835 false) 
	#(134 5 #reduceActionForcall_args_parens6: 20150278 false) 
	#(151 5 #reduceActionFormap_close4: 22789124 false) 
	#(134 6 #reduceActionForcall_args_parens7: 20150279 false)
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<interpolatedStringStart>' '<interpolatedStringMid>' '<interpolatedStringEnd>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<block_identifier>' '<op_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'interpolated_string' '(<interpolatedStringMid> ''part'' expr ''expression'')' '(<interpolatedStringMid> ''part'' expr ''expression'')*' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'sub_matched_expr' 'map_base_expr' 'map' '<bracket_identifier>' '<do_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : 'generated' }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirInterpolatedStringNode #OrderedCollection #OrderedCollection #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirBracketValuesNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #SmaCCToken #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirStabNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #OrderedCollection #ElixirMapArgsNode #ElixirSubMatchedExprNode #ElixirMapBaseExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
ElixirParser class >> transitionTable [
^#(
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 209 0 28 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 209 0 58 0 121 0 60 0 125 0 63 0 129 0 64 0 133 0 65 0 137 0 66 0 141 0 67 0 133 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 209 0 93 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 0 6 0 159] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 60 0 156 0 157 0 158] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[0 0 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 22 0 26 0 23 0 26 0 24 0 26 0 25 1 49 0 28 0 26 0 29 0 26 0 30 0 26 0 31 0 26 0 37 0 26 0 46 0 26 0 48 0 26 0 49 0 26 0 50 0 26 0 51 0 26 0 54 0 26 0 55 0 26 0 56 0 26 0 57 1 49 0 58 0 26 0 60 1 49 0 93 0 26 0 156 0 26 0 157 0 26 0 158] 
#[0 0 30 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 34 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[0 0 42 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 46 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 53 0 65 0 137 0 66 0 141 0 67 1 53 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 50 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 54 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 58 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 62 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 66 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 60 0 156 0 157 0 158 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 69 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 1 73 0 46 1 73 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 65 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 1 69 0 111 1 73 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 93 0 152 1 97 0 153 1 101 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 70 0 15] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 1 105 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 109 0 60 1 113 0 65 1 117 0 66 0 141 0 67 1 121 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 60 0 156 0 157 0 158] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 60 0 156 0 157 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 125 0 65 1 129 0 66 0 141 0 67 1 133 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 1 137 0 115 0 249 0 116 0 253 0 117 1 141 0 118 1 5 0 119 1 9 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 29 0 153 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 82 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 86 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 94 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 156 0 157 0 158 0 159] 
#[0 0 98 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 102 0 1 0 2 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 60 0 156 0 157 0 158 0 159] 
#[0 0 106 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[0 0 0 0 159] 
#[1 1 145 0 28 1 145 0 58 1 145 0 93 0 110 0 159] 
#[0 0 114 0 28 0 58 0 159] 
#[1 0 118 0 2 0 118 0 10 0 118 0 20 0 118 0 21 0 118 0 28 0 118 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 0 118 0 58 0 118 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 0 118 0 159] 
#[1 0 122 0 2 0 122 0 3 0 122 0 6 0 122 0 8 0 122 0 10 0 122 0 16 0 122 0 20 0 122 0 21 0 122 0 28 0 122 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 0 122 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 0 122 0 58 0 122 0 59 1 229 0 70 1 233 0 71 1 237 0 72 0 122 0 159] 
#[0 0 126 0 2 0 3 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 0 130 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 0 134 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 0 138 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 0 142 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 0 146 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 0 150 0 2 0 150 0 3 0 150 0 6 1 249 0 7 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 15 0 150 0 16 0 150 0 20 0 150 0 21 0 150 0 28 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 34 0 150 0 35 0 150 0 36 0 150 0 38 0 150 0 39 0 150 0 40 0 150 0 41 0 150 0 42 0 150 0 43 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 47 0 150 0 52 0 150 0 53 1 241 0 56 0 150 0 58 0 150 0 59 0 150 0 61 1 245 0 89 1 249 0 107 0 150 0 159] 
#[0 0 154 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 166 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 174 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 253 0 64 0 133 0 65 0 137 0 66 0 141 0 67 0 133 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 0 190 0 159] 
#[1 2 33 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 21 0 98 2 25 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 85 0 98 2 89 0 99 2 25 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 194 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 2 93 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 2 109 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 109 0 129 2 113 0 130 2 117 0 135 2 121 0 136 2 125 0 137 2 129 0 140 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 2 133 0 6 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 2 109 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 109 0 129 2 137 0 130 2 141 0 131 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 2 145 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 2 109 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 109 0 129 2 137 0 130 2 149 0 131 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 153 0 65 2 157 0 66 0 141 0 67 2 161 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 2 181 0 1 0 198 0 2 0 198 0 3 0 229 0 5 0 198 0 6 0 225 0 7 0 198 0 8 0 198 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 198 0 20 0 198 0 21 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 198 0 28 0 73 0 29 1 25 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 2 165 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 198 0 52 0 198 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 198 0 58 0 198 0 59 0 121 0 60 0 198 0 61 2 173 0 66 2 205 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 181 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 2 197 0 123 2 201 0 124 2 205 0 125 2 209 0 126 2 213 0 127 2 65 0 135 2 69 0 138 2 201 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 0 198 0 159] 
#[0 0 202 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 181 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 173 0 66 2 225 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 181 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 2 217 0 123 2 221 0 124 2 225 0 125 2 209 0 126 2 229 0 127 2 65 0 135 2 69 0 138 2 221 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 206 0 2 0 206 0 3 0 206 0 6 0 206 0 8 2 233 0 9 0 206 0 10 0 206 0 16 0 206 0 20 0 206 0 21 0 206 0 28 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 52 0 206 0 53 0 206 0 58 0 206 0 59 0 206 0 61 2 237 0 92 2 241 0 95 0 206 0 159] 
#[1 1 249 0 7 2 245 0 89 1 249 0 107] 
#[0 0 210 0 1] 
#[1 2 249 0 1 2 249 0 104 2 253 0 134] 
#[0 0 214 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 218 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 222 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 3 1 0 15 3 1 0 111 3 5 0 152] 
#[0 0 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 0 230 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 0 234 0 7] 
#[0 0 238 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 0 242 0 1] 
#[0 0 246 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[1 0 250 0 20 0 250 0 21 3 9 0 80] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 1 105 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 109 0 60 3 17 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 1 73 0 46 1 73 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 25 0 66 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 1 73 0 113 1 77 0 114 1 137 0 115 1 81 0 116 0 165 0 117 1 141 0 118 1 5 0 119 1 89 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 97 0 153 3 29 0 154 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 3 89 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 3 93 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 3 101 0 66 3 105 0 67 2 109 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 109 0 129 2 137 0 130 2 149 0 131 2 117 0 135 2 121 0 136 3 113 0 137 0 169 0 141 0 169 0 142 0 169 0 143 3 117 0 145 3 121 0 146 3 125 0 147 3 129 0 148 3 133 0 149 1 25 0 150 3 137 0 151 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 1 73 0 46 1 73 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 145 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 1 73 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 97 0 153 3 149 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 198 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 1 57 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 198 0 52 0 198 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 0 198 0 61 3 153 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 3 157 0 124 2 65 0 135 2 69 0 138 3 157 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 3 153 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 3 161 0 124 2 65 0 135 2 69 0 138 3 161 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 0 206 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 249 0 1 2 249 0 104 3 165 0 134] 
#[0 0 254 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 226 0 3 1 2 0 15 0 226 0 16 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 0 226 0 36 0 226 0 38 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 52 0 226 0 53 0 226 0 61] 
#[1 3 1 0 15 3 1 0 111 3 169 0 152] 
#[0 1 6 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 106 0 1 0 106 0 5 0 106 0 7 0 106 0 11 0 106 0 12 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 17 0 106 0 18 0 106 0 19 0 106 0 22 0 106 0 23 0 106 0 24 0 106 0 25 0 106 0 29 0 106 0 30 0 106 0 37 0 106 0 46 3 173 0 47 0 106 0 48 0 106 0 49 0 106 0 50 0 106 0 51 0 106 0 54 0 106 0 55 0 106 0 56 0 106 0 57 0 106 0 60 0 106 0 156 0 106 0 157 0 106 0 158] 
#[0 1 10 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 1 14 0 2 1 14 0 3 1 14 0 6 1 14 0 8 1 14 0 10 1 14 0 16 1 14 0 20 1 14 0 21 1 14 0 28 1 14 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 14 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 14 0 58 1 14 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 1 14 0 159] 
#[0 1 18 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 1 22 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 1 26 0 2 1 26 0 3 1 26 0 6 1 26 0 8 1 26 0 10 1 26 0 16 1 26 0 20 1 26 0 21 1 26 0 28 1 26 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 26 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 26 0 53 1 26 0 58 1 26 0 59 1 26 0 61 1 217 0 70 1 221 0 71 1 225 0 72 1 26 0 159] 
#[0 1 30 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 0 150 0 2 0 150 0 3 0 150 0 6 1 249 0 7 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 15 0 150 0 16 0 150 0 20 0 150 0 21 0 150 0 28 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 34 0 150 0 35 0 150 0 36 0 150 0 38 0 150 0 39 0 150 0 40 0 150 0 41 0 150 0 42 0 150 0 43 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 47 0 150 0 52 0 150 0 53 1 241 0 56 0 150 0 58 0 150 0 59 0 150 0 61 3 177 0 89 1 249 0 107 0 150 0 159] 
#[1 1 249 0 7 3 181 0 89 1 249 0 107] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 185 0 65 0 137 0 66 0 141 0 67 3 185 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 1 34 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 189 0 66 3 193 0 67 3 197 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 3 201 0 66 3 205 0 67 3 209 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 65 0 135 2 69 0 138 3 213 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 217 0 66 3 221 0 67 3 225 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 229 0 66 3 233 0 67 3 237 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 241 0 66 3 245 0 67 3 249 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 253 0 66 4 1 0 67 4 5 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 9 0 66 4 13 0 67 4 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 21 0 66 4 25 0 67 4 29 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 33 0 66 4 37 0 67 4 41 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 45 0 66 4 49 0 67 4 53 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 57 0 66 4 61 0 67 4 65 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 69 0 66 4 73 0 67 4 77 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 81 0 66 4 85 0 67 4 89 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 93 0 66 4 97 0 67 4 101 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 105 0 66 4 109 0 67 4 113 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 4 129 0 15 4 117 0 55 4 121 0 57 4 125 0 60 4 129 0 111 4 133 0 156 4 137 0 157 4 141 0 158] 
#[0 1 38 0 1] 
#[0 1 42 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 46 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 1 50 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 54 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 1 58 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 1 62 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 1 66 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 70 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 4 145 0 3 0 229 0 5 0 225 0 7 4 161 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 4 153 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 4 153 0 87 4 157 0 88 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 4 161 0 108 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 4 153 0 129 2 117 0 135 4 169 0 136 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 4 173 0 28 4 173 0 58 4 173 0 93 1 74 0 159] 
#[1 0 217 0 1 1 78 0 2 0 229 0 5 0 225 0 7 1 78 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 1 78 0 28 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 78 0 58 1 78 0 59 0 121 0 60 4 177 0 65 0 137 0 66 0 141 0 67 4 177 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 1 82 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 60 0 156 0 157 0 158] 
#[0 1 86 0 2 0 10 0 28 0 58 0 59] 
#[1 0 118 0 2 4 181 0 3 0 118 0 10 0 118 0 28 1 90 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 0 118 0 58 0 118 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72] 
#[1 0 126 0 2 0 126 0 10 0 126 0 28 1 94 0 31 0 126 0 58 0 126 0 59] 
#[1 4 185 0 10 4 189 0 28 4 189 0 58 4 189 0 93 4 193 0 96] 
#[0 1 98 0 2 0 10 0 28 0 58 0 59] 
#[0 1 102 0 2 0 10 0 28 0 58 0 59] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 85 0 98 2 89 0 99 2 25 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 4 197 0 126 2 61 0 128 2 65 0 135 2 69 0 138 4 201 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 194 0 2 0 194 0 3 0 194 0 7 0 194 0 10 0 194 0 28 2 1 0 31 0 194 0 32 4 205 0 33 0 194 0 34 0 194 0 35 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 52 0 194 0 53 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 61 4 209 0 101] 
#[1 1 106 0 2 4 213 0 3 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 16 1 106 0 20 1 106 0 21 1 106 0 28 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 34 1 106 0 35 1 106 0 36 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 45 1 106 0 46 1 106 0 47 1 106 0 52 1 106 0 53 1 106 0 58 1 106 0 59 1 106 0 61 1 106 0 159] 
#[1 2 1 0 31 4 217 0 101] 
#[0 1 110 0 31] 
#[0 1 114 0 9 0 31] 
#[0 1 118 0 9 0 31] 
#[1 2 1 0 31 4 221 0 33 4 225 0 101] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 4 229 0 66 4 233 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 122 0 2 4 237 0 3 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 16 1 122 0 20 1 122 0 21 1 122 0 28 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 34 1 122 0 35 1 122 0 36 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 43 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 52 1 122 0 53 1 122 0 58 1 122 0 59 1 122 0 61 1 122 0 159] 
#[0 1 126 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 130 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 33 0 1 4 249 0 2 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 85 0 98 4 245 0 99 2 25 0 100 2 29 0 101 2 33 0 104 4 249 0 105 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 134 0 2 1 134 0 10 4 253 0 28 4 253 0 58 1 134 0 59 4 253 0 93] 
#[0 5 1 0 2 0 105] 
#[0 1 138 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 1 142 0 2 1 142 0 3 1 142 0 6 1 142 0 8 1 142 0 16 1 142 0 28 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72] 
#[1 1 146 0 2 1 146 0 3 1 146 0 6 1 146 0 8 1 146 0 16 1 146 0 28 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72] 
#[0 1 150 0 2 0 3 0 6 0 8 0 16 0 28] 
#[0 1 154 0 3 0 6 0 8 0 16 0 28] 
#[1 5 5 0 3 1 158 0 8 1 158 0 28] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 5 9 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 5 9 0 129 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 5 13 0 3 1 162 0 6 1 162 0 8 1 162 0 16 1 162 0 28] 
#[0 1 166 0 8 0 28] 
#[1 5 21 0 8 5 17 0 28 5 21 0 108] 
#[0 1 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 5 25 0 3 1 174 0 6 1 174 0 16] 
#[0 5 33 0 6 0 110] 
#[0 1 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 5 41 0 16 0 112] 
#[0 1 182 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 1 186 0 2 1 186 0 3 1 186 0 6 1 186 0 8 1 186 0 10 1 186 0 16 1 186 0 20 1 186 0 21 1 186 0 28 1 186 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 186 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 186 0 53 1 186 0 58 1 186 0 59 1 186 0 61 1 217 0 70 1 221 0 71 1 225 0 72 1 186 0 159] 
#[0 1 190 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 1 105 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 109 0 60 5 45 0 66 5 49 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 5 53 0 66 5 57 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 1 137 0 115 2 193 0 116 0 165 0 117 1 141 0 118 1 5 0 119 1 89 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 29 0 153 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 90 0 2 4 181 0 3 1 90 0 6 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 16 1 90 0 20 1 90 0 21 1 90 0 28 1 90 0 31 5 61 0 32 5 65 0 33 5 69 0 34 5 73 0 35 1 90 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 5 117 0 52 1 209 0 53 1 90 0 58 1 90 0 59 1 213 0 61 1 217 0 70 1 225 0 72 1 90 0 159] 
#[0 1 94 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 85 0 98 2 89 0 99 2 25 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 5 121 0 126 2 61 0 128 2 65 0 135 2 69 0 138 5 125 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 5 129 0 66 5 133 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 2 181 0 1 0 198 0 2 0 198 0 3 0 229 0 5 0 198 0 6 0 225 0 7 0 198 0 8 0 198 0 9 0 198 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 198 0 20 0 198 0 21 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 198 0 28 0 73 0 29 1 25 0 30 0 198 0 31 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 2 165 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 198 0 52 0 198 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 198 0 58 0 198 0 59 0 121 0 60 0 198 0 61 2 173 0 66 5 137 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 181 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 3 157 0 124 5 137 0 125 5 141 0 126 2 213 0 127 2 65 0 135 2 69 0 138 3 157 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 0 198 0 159] 
#[1 2 181 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 173 0 66 5 145 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 181 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 3 161 0 124 5 145 0 125 5 141 0 126 2 229 0 127 2 65 0 135 2 69 0 138 3 161 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 2 233 0 9 5 149 0 92 2 241 0 95] 
#[1 1 194 0 2 1 194 0 3 1 194 0 6 1 194 0 8 1 110 0 9 1 194 0 10 1 194 0 16 1 194 0 20 1 194 0 21 1 194 0 28 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 34 1 194 0 35 1 194 0 36 1 194 0 38 1 194 0 39 1 194 0 40 1 194 0 41 1 194 0 42 1 194 0 43 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 47 1 194 0 52 1 194 0 53 1 194 0 58 1 194 0 59 1 194 0 61 1 194 0 159] 
#[1 1 198 0 2 1 198 0 3 1 198 0 6 1 198 0 8 1 114 0 9 1 198 0 10 1 198 0 16 1 198 0 20 1 198 0 21 1 198 0 28 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 34 1 198 0 35 1 198 0 36 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 45 1 198 0 46 1 198 0 47 1 198 0 52 1 198 0 58 1 198 0 59 1 198 0 159] 
#[1 1 202 0 2 1 202 0 3 1 202 0 6 1 202 0 8 1 118 0 9 1 202 0 10 1 202 0 16 1 202 0 20 1 202 0 21 1 202 0 28 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 52 1 202 0 58 1 202 0 59 1 202 0 159] 
#[0 1 206 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 233 0 9 5 153 0 92 2 241 0 95] 
#[1 1 210 0 2 1 210 0 3 1 210 0 6 1 210 0 8 1 110 0 9 1 210 0 10 1 210 0 16 1 210 0 20 1 210 0 21 1 210 0 28 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 34 1 210 0 35 1 210 0 36 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 41 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 45 1 210 0 46 1 210 0 47 1 210 0 52 1 210 0 53 1 210 0 58 1 210 0 59 1 210 0 61 1 210 0 159] 
#[1 1 214 0 2 1 214 0 3 1 214 0 6 1 214 0 8 1 114 0 9 1 214 0 10 1 214 0 16 1 214 0 20 1 214 0 21 1 214 0 28 1 214 0 31 1 214 0 32 1 214 0 33 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 38 1 214 0 39 1 214 0 40 1 214 0 41 1 214 0 42 1 214 0 43 1 214 0 44 1 214 0 45 1 214 0 46 1 214 0 47 1 214 0 52 1 214 0 58 1 214 0 59 1 214 0 159] 
#[0 1 218 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 1 222 0 1 1 222 0 5 1 222 0 7 1 222 0 10 1 222 0 11 1 222 0 12 1 222 0 13 1 222 0 14 1 222 0 15 1 222 0 17 1 222 0 18 1 222 0 19 1 222 0 22 1 222 0 23 1 222 0 24 1 222 0 25 5 157 0 28 1 222 0 29 1 222 0 30 1 222 0 31 1 222 0 37 1 222 0 46 1 222 0 48 1 222 0 49 1 222 0 50 1 222 0 51 1 222 0 54 1 222 0 55 1 222 0 56 1 222 0 57 5 157 0 58 1 222 0 59 1 222 0 60 5 157 0 93 1 222 0 156 1 222 0 157 1 222 0 158] 
#[0 1 226 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 2 33 0 1 0 229 0 5 0 225 0 7 5 161 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 5 165 0 59 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 5 169 0 97 2 85 0 98 5 173 0 99 2 25 0 100 2 29 0 101 5 177 0 102 5 181 0 103 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 1 230 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 5 185 0 2 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 5 189 0 66 5 193 0 67 5 197 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 5 201 0 132 5 205 0 133 2 117 0 135 5 209 0 136 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 2 249 0 1 1 234 0 2 1 234 0 3 1 234 0 6 1 234 0 7 1 234 0 8 2 233 0 9 1 234 0 10 1 234 0 16 1 234 0 20 1 234 0 21 1 234 0 28 1 234 0 31 1 234 0 32 1 234 0 33 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 38 1 234 0 39 1 234 0 40 1 234 0 41 1 234 0 42 1 234 0 43 1 234 0 44 1 234 0 45 1 234 0 46 1 234 0 47 1 234 0 52 1 234 0 53 1 234 0 56 1 234 0 58 1 234 0 59 1 234 0 61 5 213 0 92 2 241 0 95 2 249 0 104 5 217 0 134 1 234 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 5 221 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 5 233 0 66 5 237 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 3 113 0 137 0 169 0 141 0 169 0 142 0 169 0 143 3 117 0 145 3 121 0 146 3 125 0 147 3 129 0 148 3 133 0 149 1 25 0 150 3 137 0 151 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 1 238 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 5 253 0 20 6 1 0 21 6 5 0 79] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 25 0 66 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 1 137 0 115 1 81 0 116 0 165 0 117 1 141 0 118 1 5 0 119 1 89 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 29 0 153 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 3 33 0 32 1 14 0 33 1 14 0 34 1 14 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 1 14 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 145 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 26 0 32 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 45 1 26 0 46 1 26 0 47 1 26 0 52 1 26 0 53 1 26 0 61 1 217 0 70] 
#[0 1 242 0 3 0 15 0 16] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 9 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 13 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 17 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 21 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 25 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 29 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 33 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 37 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 41 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 45 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 49 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 53 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 57 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 61 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 1 57 0 37 3 21 0 46 3 21 0 48 3 13 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 65 0 66 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 21 0 113 1 77 0 114 0 169 0 115 1 81 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 246 0 2 1 246 0 3 1 246 0 6 1 178 0 7 1 246 0 8 1 246 0 9 1 246 0 10 1 178 0 15 1 246 0 16 1 246 0 20 1 246 0 21 1 246 0 28 1 246 0 31 1 178 0 32 1 178 0 33 1 178 0 34 1 178 0 35 1 246 0 36 1 178 0 38 1 178 0 39 1 178 0 40 1 178 0 41 1 178 0 42 1 178 0 43 1 178 0 44 1 178 0 45 1 178 0 46 1 178 0 47 1 178 0 52 1 178 0 53 1 178 0 56 1 246 0 58 1 246 0 59 1 178 0 61 1 246 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 125 0 65 1 129 0 66 0 141 0 67 1 133 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 1 137 0 115 0 249 0 116 0 253 0 117 1 141 0 118 1 5 0 119 1 9 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 97 0 153 3 29 0 154 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 1 142 0 3 1 142 0 16 1 149 0 32 1 153 0 33 1 157 0 34 6 69 0 35 6 77 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 6 77 0 144] 
#[1 1 146 0 3 1 146 0 16 1 149 0 32 1 153 0 33 1 157 0 34 6 81 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72 6 85 0 144] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 153 0 65 2 157 0 66 0 141 0 67 2 161 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 97 0 153 3 149 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 6 89 0 16 0 112] 
#[0 1 250 0 3 0 16] 
#[1 6 93 0 3 6 97 0 16 6 97 0 112] 
#[0 6 101 0 16 0 112] 
#[1 6 105 0 3 1 254 0 16] 
#[0 6 109 0 16 0 112] 
#[0 2 2 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 6 0 3 0 16] 
#[1 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 41 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 52 1 186 0 53 1 186 0 61 1 217 0 70] 
#[0 2 10 0 3 0 15 0 16] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 3 89 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[0 1 194 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 210 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 249 0 1 1 234 0 2 1 234 0 3 1 234 0 6 1 234 0 7 1 234 0 8 1 234 0 9 1 234 0 10 1 234 0 15 1 234 0 16 1 234 0 20 1 234 0 21 1 234 0 28 1 234 0 31 1 234 0 32 1 234 0 33 1 234 0 34 1 234 0 35 1 234 0 36 1 234 0 38 1 234 0 39 1 234 0 40 1 234 0 41 1 234 0 42 1 234 0 43 1 234 0 44 1 234 0 45 1 234 0 46 1 234 0 47 1 234 0 52 1 234 0 53 1 234 0 56 1 234 0 58 1 234 0 59 1 234 0 61 2 249 0 104 6 113 0 134 1 234 0 159] 
#[0 2 14 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 6 117 0 17] 
#[0 2 18 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 22 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 26 0 28 0 58 0 159] 
#[1 2 30 0 2 2 30 0 3 2 30 0 6 2 30 0 8 2 30 0 10 2 30 0 16 2 30 0 20 2 30 0 21 2 30 0 28 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 38 2 30 0 39 2 30 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 30 0 52 1 209 0 53 2 30 0 58 2 30 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 30 0 159] 
#[1 2 34 0 2 2 34 0 3 2 34 0 6 2 34 0 8 2 34 0 10 2 34 0 16 2 34 0 20 2 34 0 21 2 34 0 28 2 34 0 31 2 34 0 32 2 34 0 33 2 34 0 34 2 34 0 35 2 34 0 36 2 34 0 38 2 34 0 39 2 34 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 34 0 52 2 34 0 58 2 34 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 34 0 159] 
#[0 2 38 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 42 0 2 2 42 0 3 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 20 2 42 0 21 2 42 0 28 2 42 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 42 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 42 0 52 1 209 0 53 2 42 0 58 2 42 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 42 0 159] 
#[1 2 46 0 2 2 46 0 3 2 46 0 6 2 46 0 8 2 46 0 10 2 46 0 16 2 46 0 20 2 46 0 21 2 46 0 28 2 46 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 46 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 46 0 52 2 46 0 58 2 46 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 46 0 159] 
#[0 2 50 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 2 54 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 58 0 2 2 58 0 3 2 58 0 6 2 58 0 8 2 58 0 10 2 58 0 16 2 58 0 20 2 58 0 21 2 58 0 28 2 58 0 31 1 149 0 32 2 58 0 33 1 157 0 34 1 161 0 35 2 58 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 58 0 52 1 209 0 53 2 58 0 58 2 58 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 58 0 159] 
#[1 2 62 0 2 2 62 0 3 2 62 0 6 2 62 0 8 2 62 0 10 2 62 0 16 2 62 0 20 2 62 0 21 2 62 0 28 2 62 0 31 1 149 0 32 2 62 0 33 1 157 0 34 1 161 0 35 2 62 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 62 0 52 2 62 0 58 2 62 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 62 0 159] 
#[0 2 66 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 70 0 2 2 70 0 3 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 20 2 70 0 21 2 70 0 28 2 70 0 31 1 149 0 32 2 70 0 33 2 70 0 34 1 161 0 35 2 70 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 70 0 52 1 209 0 53 2 70 0 58 2 70 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 70 0 159] 
#[1 2 74 0 2 2 74 0 3 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 16 2 74 0 20 2 74 0 21 2 74 0 28 2 74 0 31 1 149 0 32 2 74 0 33 2 74 0 34 1 161 0 35 2 74 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 74 0 52 2 74 0 58 2 74 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 74 0 159] 
#[0 2 78 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 82 0 2 2 82 0 3 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 20 2 82 0 21 2 82 0 28 2 82 0 31 1 149 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 82 0 52 1 209 0 53 2 82 0 58 2 82 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 82 0 159] 
#[1 2 86 0 2 2 86 0 3 2 86 0 6 2 86 0 8 2 86 0 10 2 86 0 16 2 86 0 20 2 86 0 21 2 86 0 28 2 86 0 31 1 149 0 32 2 86 0 33 2 86 0 34 2 86 0 35 2 86 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 86 0 52 2 86 0 58 2 86 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 86 0 159] 
#[0 2 90 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 94 0 2 2 94 0 3 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 20 2 94 0 21 2 94 0 28 2 94 0 31 1 149 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 38 2 94 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 94 0 52 1 209 0 53 2 94 0 58 2 94 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 94 0 159] 
#[1 2 98 0 2 2 98 0 3 2 98 0 6 2 98 0 8 2 98 0 10 2 98 0 16 2 98 0 20 2 98 0 21 2 98 0 28 2 98 0 31 1 149 0 32 2 98 0 33 2 98 0 34 2 98 0 35 2 98 0 36 2 98 0 38 2 98 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 98 0 52 2 98 0 58 2 98 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 98 0 159] 
#[0 2 102 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 106 0 2 2 106 0 3 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 20 2 106 0 21 2 106 0 28 2 106 0 31 1 149 0 32 2 106 0 33 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 38 2 106 0 39 2 106 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 106 0 52 1 209 0 53 2 106 0 58 2 106 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 106 0 159] 
#[1 2 110 0 2 2 110 0 3 2 110 0 6 2 110 0 8 2 110 0 10 2 110 0 16 2 110 0 20 2 110 0 21 2 110 0 28 2 110 0 31 1 149 0 32 2 110 0 33 2 110 0 34 2 110 0 35 2 110 0 36 2 110 0 38 2 110 0 39 2 110 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 110 0 52 2 110 0 58 2 110 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 110 0 159] 
#[0 2 114 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 118 0 2 2 118 0 3 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 20 2 118 0 21 2 118 0 28 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 38 2 118 0 39 2 118 0 40 2 118 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 118 0 52 1 209 0 53 2 118 0 58 2 118 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 118 0 159] 
#[1 2 122 0 2 2 122 0 3 2 122 0 6 2 122 0 8 2 122 0 10 2 122 0 16 2 122 0 20 2 122 0 21 2 122 0 28 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 38 2 122 0 39 2 122 0 40 2 122 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 122 0 52 2 122 0 58 2 122 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 122 0 159] 
#[0 2 126 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 130 0 2 2 130 0 3 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 20 2 130 0 21 2 130 0 28 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 36 2 130 0 38 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 130 0 52 1 209 0 53 2 130 0 58 2 130 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 130 0 159] 
#[1 2 134 0 2 2 134 0 3 2 134 0 6 2 134 0 8 2 134 0 10 2 134 0 16 2 134 0 20 2 134 0 21 2 134 0 28 2 134 0 31 2 134 0 32 2 134 0 33 2 134 0 34 2 134 0 35 2 134 0 36 2 134 0 38 2 134 0 39 2 134 0 40 2 134 0 41 2 134 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 134 0 52 2 134 0 58 2 134 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 134 0 159] 
#[0 2 138 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 142 0 2 2 142 0 3 2 142 0 6 2 142 0 8 2 142 0 10 2 142 0 16 2 142 0 20 2 142 0 21 2 142 0 28 2 142 0 31 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 36 2 142 0 38 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 142 0 52 1 209 0 53 2 142 0 58 2 142 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 142 0 159] 
#[1 2 146 0 2 2 146 0 3 2 146 0 6 2 146 0 8 2 146 0 10 2 146 0 16 2 146 0 20 2 146 0 21 2 146 0 28 2 146 0 31 2 146 0 32 2 146 0 33 2 146 0 34 2 146 0 35 2 146 0 36 2 146 0 38 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 42 2 146 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 146 0 52 2 146 0 58 2 146 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 146 0 159] 
#[0 2 150 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 154 0 2 2 154 0 3 2 154 0 6 2 154 0 8 2 154 0 10 2 154 0 16 2 154 0 20 2 154 0 21 2 154 0 28 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 36 2 154 0 38 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 154 0 52 1 209 0 53 2 154 0 58 2 154 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 154 0 159] 
#[1 2 158 0 2 2 158 0 3 2 158 0 6 2 158 0 8 2 158 0 10 2 158 0 16 2 158 0 20 2 158 0 21 2 158 0 28 2 158 0 31 2 158 0 32 2 158 0 33 2 158 0 34 2 158 0 35 2 158 0 36 2 158 0 38 2 158 0 39 2 158 0 40 2 158 0 41 2 158 0 42 2 158 0 43 2 158 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 158 0 52 2 158 0 58 2 158 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 158 0 159] 
#[0 2 162 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 166 0 2 2 166 0 3 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 20 2 166 0 21 2 166 0 28 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 36 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 2 166 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 166 0 52 1 209 0 53 2 166 0 58 2 166 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 166 0 159] 
#[1 2 170 0 2 2 170 0 3 2 170 0 6 2 170 0 8 2 170 0 10 2 170 0 16 2 170 0 20 2 170 0 21 2 170 0 28 2 170 0 31 2 170 0 32 2 170 0 33 2 170 0 34 2 170 0 35 2 170 0 36 2 170 0 38 2 170 0 39 2 170 0 40 2 170 0 41 2 170 0 42 2 170 0 43 2 170 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 170 0 52 2 170 0 58 2 170 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 170 0 159] 
#[0 2 174 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 178 0 2 2 178 0 3 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 20 2 178 0 21 2 178 0 28 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 1 201 0 47 2 178 0 52 1 209 0 53 2 178 0 58 2 178 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 178 0 159] 
#[1 2 182 0 2 2 182 0 3 2 182 0 6 2 182 0 8 2 182 0 10 2 182 0 16 2 182 0 20 2 182 0 21 2 182 0 28 2 182 0 31 2 182 0 32 2 182 0 33 2 182 0 34 2 182 0 35 2 182 0 36 2 182 0 38 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 42 2 182 0 43 2 182 0 44 2 182 0 45 2 182 0 46 1 201 0 47 2 182 0 52 2 182 0 58 2 182 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 182 0 159] 
#[0 2 186 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 190 0 2 2 190 0 3 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 20 2 190 0 21 2 190 0 28 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 2 190 0 52 1 209 0 53 2 190 0 58 2 190 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 190 0 159] 
#[1 2 194 0 2 2 194 0 3 2 194 0 6 2 194 0 8 2 194 0 10 2 194 0 16 2 194 0 20 2 194 0 21 2 194 0 28 2 194 0 31 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 36 2 194 0 38 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 44 2 194 0 45 2 194 0 46 2 194 0 47 2 194 0 52 2 194 0 58 2 194 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 194 0 159] 
#[0 2 198 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 202 0 2 2 202 0 3 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 20 2 202 0 21 2 202 0 28 2 202 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 202 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 202 0 52 1 209 0 53 2 202 0 58 2 202 0 59 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 2 202 0 159] 
#[1 2 206 0 2 2 206 0 3 2 206 0 6 2 206 0 8 2 206 0 10 2 206 0 16 2 206 0 20 2 206 0 21 2 206 0 28 2 206 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 206 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 206 0 52 2 206 0 58 2 206 0 59 1 229 0 70 1 233 0 71 1 237 0 72 2 206 0 159] 
#[0 2 210 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 2 214 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 156 0 157 0 158 0 159] 
#[0 2 218 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 222 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 60 0 156 0 157 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 6 121 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 2 109 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 109 0 129 2 137 0 130 6 125 0 131 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 2 226 0 7] 
#[0 2 230 0 2 0 3 0 6 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 2 234 0 1] 
#[0 6 129 0 8 0 108] 
#[0 2 238 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 242 0 3 0 8] 
#[1 6 133 0 3 6 137 0 8 6 137 0 108] 
#[0 2 246 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 2 250 0 3 0 8] 
#[1 6 141 0 3 2 254 0 8] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 3 185 0 65 0 137 0 66 0 141 0 67 3 185 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158 3 2 0 159] 
#[0 3 6 0 2 0 10 0 28 0 58 0 59] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 6 145 0 66 6 153 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 6 153 0 121 2 65 0 135 2 69 0 138 6 157 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 10 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 33 0 1 0 229 0 5 0 225 0 7 6 161 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 6 165 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 14 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 6 169 0 2 1 118 0 31 6 169 0 105] 
#[1 6 173 0 2 1 126 0 31 6 173 0 105] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 177 0 65 0 137 0 66 0 141 0 67 6 177 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 18 0 2 0 10 0 28 0 58 0 59] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 6 145 0 66 6 181 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 6 181 0 121 2 65 0 135 2 69 0 138 6 185 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 22 0 2 0 10 0 28 0 58 0 59] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 189 0 65 0 137 0 66 0 141 0 67 6 189 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 26 0 2 0 10 0 28 0 58 0 59] 
#[1 3 30 0 2 3 30 0 3 3 30 0 6 3 30 0 8 3 30 0 9 3 30 0 10 3 30 0 16 3 30 0 20 3 30 0 21 3 30 0 28 3 30 0 31 5 61 0 32 5 65 0 33 5 69 0 34 5 73 0 35 3 30 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 5 117 0 52 1 209 0 53 3 30 0 58 3 30 0 59 1 213 0 61 1 217 0 70 1 225 0 72 3 30 0 159] 
#[0 3 34 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 65 0 56 2 65 0 135 2 69 0 138 6 193 0 139] 
#[0 3 38 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 6 197 0 2 0 105] 
#[0 3 42 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 33 0 1 3 46 0 2 0 229 0 5 0 225 0 7 3 46 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 3 46 0 59 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 6 165 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 50 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 3 54 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 6 201 0 28 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 6 205 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 6 205 0 129 2 117 0 135 2 121 0 136 6 209 0 137 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 58 0 2 0 3 0 6 0 8 0 16 0 28] 
#[1 3 62 0 6 3 62 0 8 3 62 0 16 6 213 0 28 6 217 0 56 6 217 0 135] 
#[0 6 221 0 8 0 108] 
#[0 3 66 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 3 70 0 6 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 3 70 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 6 205 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 6 205 0 129 2 117 0 135 2 121 0 136 6 225 0 137 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 74 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 78 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 82 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 86 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 1 14 0 2 1 14 0 3 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 16 1 14 0 20 1 14 0 21 1 14 0 28 1 14 0 31 5 61 0 32 1 14 0 33 1 14 0 34 1 14 0 35 1 14 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 1 14 0 52 1 209 0 53 1 14 0 58 1 14 0 59 1 213 0 61 1 217 0 70 1 225 0 72 1 14 0 159] 
#[0 1 18 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 1 26 0 2 1 26 0 3 1 26 0 6 1 26 0 8 1 26 0 9 1 26 0 10 1 26 0 16 1 26 0 20 1 26 0 21 1 26 0 28 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 36 1 26 0 38 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 44 1 26 0 45 1 26 0 46 1 26 0 47 1 26 0 52 1 26 0 53 1 26 0 58 1 26 0 59 1 26 0 61 1 217 0 70 1 225 0 72 1 26 0 159] 
#[0 1 30 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 229 0 66 3 197 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 6 233 0 66 3 209 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 65 0 135 2 69 0 138 3 213 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 237 0 66 3 225 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 241 0 66 3 237 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 245 0 66 3 249 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 249 0 66 4 5 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 6 253 0 66 4 17 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 1 0 66 4 29 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 5 0 66 4 41 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 9 0 66 4 53 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 13 0 66 4 65 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 17 0 66 4 77 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 21 0 66 4 89 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 25 0 66 4 101 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 29 0 66 4 113 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 7 33 0 2 1 118 0 31 7 33 0 105] 
#[1 7 37 0 2 1 126 0 31 7 37 0 105] 
#[1 1 186 0 2 1 186 0 3 1 186 0 6 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 16 1 186 0 20 1 186 0 21 1 186 0 28 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 41 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 52 1 186 0 53 1 186 0 58 1 186 0 59 1 186 0 61 1 217 0 70 1 225 0 72 1 186 0 159] 
#[0 1 190 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 198 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 202 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 1 214 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 90 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 3 94 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 3 98 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 60 0 156 0 157 0 158] 
#[0 3 102 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 3 106 0 1 3 106 0 5 3 106 0 7 3 106 0 10 3 106 0 11 3 106 0 12 3 106 0 13 3 106 0 14 3 106 0 15 3 106 0 17 3 106 0 18 3 106 0 19 3 106 0 22 3 106 0 23 3 106 0 24 3 106 0 25 7 41 0 28 3 106 0 29 3 106 0 30 3 106 0 31 3 106 0 37 3 106 0 46 3 106 0 48 3 106 0 49 3 106 0 50 3 106 0 51 3 106 0 54 3 106 0 55 3 106 0 56 3 106 0 57 7 41 0 58 3 106 0 59 3 106 0 60 7 41 0 93 3 106 0 156 3 106 0 157 3 106 0 158] 
#[1 2 33 0 1 0 229 0 5 0 225 0 7 3 110 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 1 0 31 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 3 110 0 59 0 121 0 60 2 9 0 65 2 13 0 66 0 141 0 67 2 17 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 2 85 0 98 7 45 0 99 2 25 0 100 2 29 0 101 2 33 0 104 2 37 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 41 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 45 0 126 2 61 0 128 2 65 0 135 2 69 0 138 2 45 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 7 49 0 10 5 165 0 59 5 169 0 97 5 177 0 102 7 53 0 103] 
#[1 3 114 0 10 5 165 0 59 5 169 0 97 5 177 0 102 7 57 0 103] 
#[0 7 61 0 10] 
#[0 3 118 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 3 122 0 2 3 122 0 3 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72] 
#[1 3 126 0 2 3 126 0 3 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72] 
#[1 7 65 0 2 3 130 0 3 7 65 0 105] 
#[0 3 134 0 2 0 3] 
#[1 7 73 0 2 7 69 0 3 7 73 0 105] 
#[1 7 81 0 2 7 77 0 3 7 81 0 105] 
#[0 3 138 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 3 142 0 2 3 142 0 3 3 142 0 6 3 142 0 7 3 142 0 8 2 233 0 9 3 142 0 10 3 142 0 16 3 142 0 20 3 142 0 21 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 34 3 142 0 35 3 142 0 36 3 142 0 38 3 142 0 39 3 142 0 40 3 142 0 41 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 46 3 142 0 47 3 142 0 52 3 142 0 53 3 142 0 56 3 142 0 58 3 142 0 59 3 142 0 61 7 85 0 92 2 241 0 95 3 142 0 159] 
#[0 1 246 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 1 105 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 109 0 60 1 113 0 65 1 117 0 66 0 141 0 67 1 113 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 125 0 65 1 129 0 66 0 141 0 67 1 125 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 1 137 0 115 0 249 0 116 0 253 0 117 1 141 0 118 1 5 0 119 1 9 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 97 0 153 3 29 0 154 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 7 89 0 32 7 93 0 33 7 97 0 34 7 101 0 35 6 77 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 7 145 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 6 77 0 144] 
#[1 1 149 0 32 1 153 0 33 1 157 0 34 6 81 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72 6 85 0 144] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 153 0 65 2 157 0 66 0 141 0 67 2 153 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 97 0 153 3 149 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 198 0 3 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 198 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 36 2 165 0 37 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 198 0 52 0 198 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 0 198 0 61 2 173 0 66 2 197 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 2 197 0 123 2 201 0 124 2 197 0 125 2 197 0 126 2 65 0 135 2 69 0 138 2 201 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 2 165 0 37 2 185 0 46 2 185 0 48 2 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 121 0 60 2 173 0 66 2 217 0 68 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 2 185 0 113 2 189 0 114 0 169 0 115 2 193 0 116 0 165 0 117 1 1 0 118 1 5 0 119 1 89 0 120 2 41 0 122 2 217 0 123 2 221 0 124 2 217 0 125 2 217 0 126 2 65 0 135 2 69 0 138 2 221 0 139 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 149 0 65 0 137 0 66 0 141 0 67 7 149 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 146 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 150 0 20 0 21] 
#[1 2 30 0 32 2 30 0 33 2 30 0 34 2 30 0 35 2 30 0 38 2 30 0 39 2 30 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 30 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 42 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 2 58 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 58 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 2 70 0 33 2 70 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 70 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 2 82 0 33 2 82 0 34 2 82 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 82 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 38 2 94 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 94 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 2 106 0 33 2 106 0 34 2 106 0 35 2 106 0 38 2 106 0 39 2 106 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 106 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 118 0 32 2 118 0 33 2 118 0 34 2 118 0 35 2 118 0 38 2 118 0 39 2 118 0 40 2 118 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 118 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 38 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 130 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 38 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 142 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 38 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 154 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 2 166 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 166 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 3 85 0 47 2 178 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 2 190 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 202 0 52 1 209 0 53 1 213 0 61 1 217 0 70] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 153 0 66 7 157 0 67 3 237 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 7 161 0 137 0 169 0 141 0 169 0 142 0 169 0 143 7 165 0 145 1 25 0 150 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 154 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 60 0 156 0 157 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 173 0 66 7 177 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 3 109 0 46 3 109 0 48 3 97 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 153 0 66 7 157 0 67 3 237 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 3 109 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 7 185 0 137 0 169 0 141 0 169 0 142 0 169 0 143 7 189 0 145 1 25 0 150 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 7 193 0 66 7 197 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 7 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 7 201 0 28 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 205 0 66 7 209 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 213 0 112 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 3 113 0 137 0 169 0 141 0 169 0 142 0 169 0 143 3 117 0 145 3 129 0 148 3 133 0 149 1 25 0 150 7 217 0 151 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 162 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 166 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 3 170 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 7 221 0 28 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 205 0 66 7 209 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 7 225 0 137 0 169 0 141 0 169 0 142 0 169 0 143 7 229 0 145 1 25 0 150 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 174 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 142 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 178 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 182 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 7 233 0 16 0 112] 
#[0 3 186 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 7 241 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 7 237 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 7 237 0 87 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 7 241 0 108 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 7 237 0 129 2 117 0 135 4 169 0 136 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 3 190 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 7 245 0 28 6 217 0 56 6 217 0 135] 
#[1 3 194 0 2 3 194 0 3 3 194 0 6 3 194 0 8 3 194 0 9 3 194 0 10 3 194 0 16 3 194 0 20 3 194 0 21 3 194 0 28 3 194 0 31 5 61 0 32 5 65 0 33 5 69 0 34 5 73 0 35 3 194 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 5 117 0 52 1 209 0 53 3 194 0 58 3 194 0 59 1 213 0 61 1 217 0 70 1 225 0 72 3 194 0 159] 
#[0 3 198 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 202 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 206 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 210 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 3 214 0 2 0 10 0 28 0 58 0 59] 
#[0 3 218 0 31 0 33] 
#[0 3 222 0 31 0 33] 
#[1 2 1 0 31 7 249 0 101] 
#[0 3 226 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 230 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[1 2 1 0 31 7 253 0 101] 
#[0 3 234 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 3 238 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 3 242 0 8 3 242 0 28 2 117 0 56 2 117 0 135 2 121 0 136 8 1 0 137] 
#[0 3 246 0 3 0 6 0 8 0 16 0 28] 
#[0 3 250 0 8 0 28] 
#[1 3 254 0 6 3 254 0 8 3 254 0 16 3 254 0 28 8 5 0 56 8 5 0 135] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 8 9 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 8 9 0 129 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 2 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 6 0 6 0 16] 
#[1 2 30 0 2 2 30 0 3 2 30 0 6 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 16 2 30 0 20 2 30 0 21 2 30 0 28 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 38 2 30 0 39 2 30 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 30 0 52 1 209 0 53 2 30 0 58 2 30 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 30 0 159] 
#[1 2 42 0 2 2 42 0 3 2 42 0 6 2 42 0 8 2 42 0 9 2 42 0 10 2 42 0 16 2 42 0 20 2 42 0 21 2 42 0 28 2 42 0 31 5 61 0 32 5 65 0 33 5 69 0 34 5 73 0 35 2 42 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 42 0 52 1 209 0 53 2 42 0 58 2 42 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 42 0 159] 
#[1 2 58 0 2 2 58 0 3 2 58 0 6 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 16 2 58 0 20 2 58 0 21 2 58 0 28 2 58 0 31 5 61 0 32 2 58 0 33 5 69 0 34 5 73 0 35 2 58 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 58 0 52 1 209 0 53 2 58 0 58 2 58 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 58 0 159] 
#[1 2 70 0 2 2 70 0 3 2 70 0 6 2 70 0 8 2 70 0 9 2 70 0 10 2 70 0 16 2 70 0 20 2 70 0 21 2 70 0 28 2 70 0 31 5 61 0 32 2 70 0 33 2 70 0 34 5 73 0 35 2 70 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 70 0 52 1 209 0 53 2 70 0 58 2 70 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 70 0 159] 
#[1 2 82 0 2 2 82 0 3 2 82 0 6 2 82 0 8 2 82 0 9 2 82 0 10 2 82 0 16 2 82 0 20 2 82 0 21 2 82 0 28 2 82 0 31 5 61 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 82 0 52 1 209 0 53 2 82 0 58 2 82 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 82 0 159] 
#[1 2 94 0 2 2 94 0 3 2 94 0 6 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 16 2 94 0 20 2 94 0 21 2 94 0 28 2 94 0 31 5 61 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 38 2 94 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 94 0 52 1 209 0 53 2 94 0 58 2 94 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 94 0 159] 
#[1 2 106 0 2 2 106 0 3 2 106 0 6 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 16 2 106 0 20 2 106 0 21 2 106 0 28 2 106 0 31 5 61 0 32 2 106 0 33 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 38 2 106 0 39 2 106 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 106 0 52 1 209 0 53 2 106 0 58 2 106 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 106 0 159] 
#[1 2 118 0 2 2 118 0 3 2 118 0 6 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 16 2 118 0 20 2 118 0 21 2 118 0 28 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 38 2 118 0 39 2 118 0 40 2 118 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 118 0 52 1 209 0 53 2 118 0 58 2 118 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 118 0 159] 
#[1 2 130 0 2 2 130 0 3 2 130 0 6 2 130 0 8 2 130 0 9 2 130 0 10 2 130 0 16 2 130 0 20 2 130 0 21 2 130 0 28 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 36 2 130 0 38 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 130 0 52 1 209 0 53 2 130 0 58 2 130 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 130 0 159] 
#[1 2 142 0 2 2 142 0 3 2 142 0 6 2 142 0 8 2 142 0 9 2 142 0 10 2 142 0 16 2 142 0 20 2 142 0 21 2 142 0 28 2 142 0 31 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 36 2 142 0 38 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 142 0 52 1 209 0 53 2 142 0 58 2 142 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 142 0 159] 
#[1 2 154 0 2 2 154 0 3 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 16 2 154 0 20 2 154 0 21 2 154 0 28 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 36 2 154 0 38 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 154 0 52 1 209 0 53 2 154 0 58 2 154 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 154 0 159] 
#[1 2 166 0 2 2 166 0 3 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 16 2 166 0 20 2 166 0 21 2 166 0 28 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 36 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 2 166 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 166 0 52 1 209 0 53 2 166 0 58 2 166 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 166 0 159] 
#[1 2 178 0 2 2 178 0 3 2 178 0 6 2 178 0 8 2 178 0 9 2 178 0 10 2 178 0 16 2 178 0 20 2 178 0 21 2 178 0 28 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 5 113 0 47 2 178 0 52 1 209 0 53 2 178 0 58 2 178 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 178 0 159] 
#[1 2 190 0 2 2 190 0 3 2 190 0 6 2 190 0 8 2 190 0 9 2 190 0 10 2 190 0 16 2 190 0 20 2 190 0 21 2 190 0 28 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 2 190 0 52 1 209 0 53 2 190 0 58 2 190 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 190 0 159] 
#[1 2 202 0 2 2 202 0 3 2 202 0 6 2 202 0 8 2 202 0 9 2 202 0 10 2 202 0 16 2 202 0 20 2 202 0 21 2 202 0 28 2 202 0 31 5 61 0 32 5 65 0 33 5 69 0 34 5 73 0 35 2 202 0 36 5 77 0 38 5 81 0 39 5 85 0 40 5 89 0 41 5 93 0 42 5 97 0 43 5 101 0 44 5 105 0 45 5 109 0 46 5 113 0 47 2 202 0 52 1 209 0 53 2 202 0 58 2 202 0 59 1 213 0 61 1 217 0 70 1 225 0 72 2 202 0 159] 
#[0 4 10 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 4 14 0 2 0 3 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 61 0 159] 
#[0 4 18 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 60 0 156 0 157 0 158] 
#[0 4 22 0 10 0 59] 
#[0 4 26 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 8 13 0 10] 
#[0 4 30 0 10] 
#[0 4 34 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 4 38 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 5 189 0 66 5 193 0 67 8 21 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 8 21 0 132 2 117 0 135 8 25 0 136 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 42 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 8 29 0 2 7 245 0 28 6 217 0 56 8 29 0 105 6 217 0 135] 
#[0 4 46 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 50 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 33 0 66 3 193 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 37 0 66 3 205 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 41 0 66 3 221 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 8 45 0 66 7 157 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 7 161 0 137 0 169 0 141 0 169 0 142 0 169 0 143 7 165 0 145 1 25 0 150 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 49 0 66 3 245 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 53 0 66 4 1 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 57 0 66 4 13 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 61 0 66 4 25 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 65 0 66 4 37 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 69 0 66 4 49 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 73 0 66 4 61 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 77 0 66 4 73 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 81 0 66 4 85 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 85 0 66 4 97 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 89 0 66 4 109 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 54 0 20 0 21] 
#[1 2 70 0 3 2 70 0 16 1 149 0 32 2 70 0 33 2 70 0 34 1 161 0 35 6 77 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 70 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 1 225 0 72 6 77 0 144] 
#[1 2 74 0 3 2 74 0 16 1 149 0 32 2 74 0 33 2 74 0 34 1 161 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 74 0 52 1 229 0 70 1 233 0 71 1 237 0 72 6 85 0 144] 
#[0 4 58 0 16] 
#[0 4 62 0 3 0 16] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 1 125 0 65 1 129 0 66 0 141 0 67 1 125 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 1 137 0 77 1 137 0 78 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 86 1 137 0 90 1 137 0 91 0 213 0 94 0 217 0 104 1 137 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 1 137 0 115 0 249 0 116 0 253 0 117 1 141 0 118 1 5 0 119 1 9 0 120 1 137 0 141 1 137 0 142 1 137 0 143 1 25 0 150 1 29 0 153 1 137 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 4 66 0 3 4 66 0 16 7 89 0 32 7 93 0 33 7 97 0 34 8 93 0 35 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 7 145 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 4 70 0 3 4 70 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 153 0 65 2 157 0 66 0 141 0 67 2 153 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 74 0 16] 
#[0 4 78 0 3 0 16] 
#[1 4 82 0 3 4 82 0 16 7 89 0 32 7 93 0 33 7 97 0 34 8 93 0 35 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 7 145 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 4 86 0 3 4 86 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 8 97 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 205 0 66 7 209 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 8 97 0 112 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 3 113 0 137 0 169 0 141 0 169 0 142 0 169 0 143 3 117 0 145 3 129 0 148 3 133 0 149 1 25 0 150 8 101 0 151 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[1 7 89 0 32 7 93 0 33 7 97 0 34 8 93 0 35 6 77 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 7 145 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 6 77 0 144] 
#[1 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 70 1 233 0 71 1 237 0 72 6 85 0 144] 
#[0 4 90 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 94 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 4 98 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 5 241 0 46 5 241 0 48 5 229 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 117 0 56 0 113 0 57 0 121 0 60 7 205 0 66 7 209 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 5 241 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 2 117 0 135 2 121 0 136 8 105 0 137 0 169 0 141 0 169 0 142 0 169 0 143 8 109 0 145 1 25 0 150 1 97 0 153 3 141 0 154 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 8 113 0 16 0 112] 
#[0 4 102 0 3 0 16] 
#[0 4 106 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 110 0 3 0 8] 
#[0 4 114 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 8 5 0 56 0 135] 
#[0 4 118 0 2 0 10 0 28 0 58 0 59] 
#[0 4 122 0 2 0 10 0 28 0 58 0 59] 
#[0 4 126 0 8 0 28] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 0 81 0 37 0 237 0 46 0 237 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 2 97 0 66 2 101 0 67 8 117 0 68 0 149 0 69 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 0 237 0 113 0 241 0 114 0 169 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 8 117 0 129 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 130 0 2 0 3 0 6 0 8 0 16 0 28] 
#[0 4 134 0 2 0 3 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 159] 
#[0 3 130 0 2 0 3] 
#[0 4 138 0 2 0 3] 
#[1 8 125 0 2 8 121 0 3 8 125 0 105] 
#[0 4 142 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 30 0 3 2 30 0 16 2 30 0 32 2 30 0 33 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 38 2 30 0 39 2 30 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 30 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 42 0 3 2 42 0 16 7 89 0 32 7 93 0 33 7 97 0 34 8 93 0 35 2 42 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 42 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 58 0 3 2 58 0 16 7 89 0 32 2 58 0 33 7 97 0 34 8 93 0 35 2 58 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 58 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 7 89 0 32 2 70 0 33 2 70 0 34 8 93 0 35 6 77 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 70 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71 6 77 0 144] 
#[1 2 82 0 3 2 82 0 16 7 89 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 82 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 94 0 3 2 94 0 16 7 89 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 38 2 94 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 94 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 106 0 3 2 106 0 16 7 89 0 32 2 106 0 33 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 38 2 106 0 39 2 106 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 106 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 118 0 3 2 118 0 16 2 118 0 32 2 118 0 33 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 38 2 118 0 39 2 118 0 40 2 118 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 118 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 130 0 3 2 130 0 16 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 36 2 130 0 38 2 130 0 39 2 130 0 40 2 130 0 41 2 130 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 130 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 142 0 3 2 142 0 16 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 36 2 142 0 38 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 2 142 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 142 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 154 0 3 2 154 0 16 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 36 2 154 0 38 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 154 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 166 0 3 2 166 0 16 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 36 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 2 166 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 166 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 178 0 3 2 178 0 16 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 2 178 0 45 2 178 0 46 7 141 0 47 2 178 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 190 0 3 2 190 0 16 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 2 190 0 45 2 190 0 46 2 190 0 47 2 190 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 2 202 0 3 2 202 0 16 7 89 0 32 7 93 0 33 7 97 0 34 8 93 0 35 2 202 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 202 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[1 0 217 0 1 0 229 0 5 0 225 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 233 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 25 0 30 5 225 0 37 7 181 0 46 7 181 0 48 7 169 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 121 0 60 8 129 0 66 3 233 0 67 0 149 0 69 0 161 0 75 0 165 0 76 0 169 0 77 0 169 0 78 0 169 0 81 0 169 0 82 0 169 0 83 0 169 0 84 0 169 0 85 0 169 0 86 0 169 0 90 0 169 0 91 0 213 0 94 0 217 0 104 0 169 0 106 0 225 0 107 0 229 0 109 0 233 0 111 7 181 0 113 5 245 0 114 0 169 0 115 5 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 1 9 0 120 0 169 0 141 0 169 0 142 0 169 0 143 1 25 0 150 1 29 0 153 0 169 0 155 1 37 0 156 1 41 0 157 1 45 0 158] 
#[0 4 146 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 150 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 8 133 0 16 0 112] 
#[0 4 154 0 3 0 16] 
#[0 4 158 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 162 0 2 0 3 0 6 0 8 0 16 0 28] 
#[1 8 137 0 2 7 245 0 28 6 217 0 56 8 137 0 105 6 217 0 135] 
#[0 4 166 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[1 2 70 0 3 2 70 0 16 7 89 0 32 2 70 0 33 2 70 0 34 8 93 0 35 2 70 0 36 7 105 0 38 7 109 0 39 7 113 0 40 7 117 0 41 7 121 0 42 7 125 0 43 7 129 0 44 7 133 0 45 7 137 0 46 7 141 0 47 2 70 0 52 1 209 0 53 1 213 0 61 1 217 0 70 1 221 0 71] 
#[0 4 170 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159] 
#[0 4 174 0 1 0 2 0 3 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 61 0 159]
	).
]

{ #category : 'private' }
ElixirParser >> actionForCurrentToken [
	"LALR-mode entry point. Same runtime token rewriting as the GLR override on
	 #actionsForCurrentToken, minus state-duplication tricks that only work with multi-stack."

	| lookahead ids id action eolAction oldToken oldScope |
	"'not in' greedy-match split. The scanner's <in_op> regex matches
	 'not in' as a single token. That's correct for 'a not in [1,2]' but
	 wrong for 'not in_signed_set' where 'in_signed_set' is a single
	 identifier and 'not' is the unary operator. The DFA can't
	 distinguish without a lookahead. If the next source char is an
	 identifier continuation (letter, digit, _, ?, !), rewind the
	 scanner past 'not' and replace currentToken with a 3-char <unary_op>
	 'not'; the 'in' part will be re-tokenized as the start of the 'in_…'
	 identifier."
	(currentToken value = 'not in')
		ifTrue: [
			| contents afterPos afterCh |
			contents := scanner stream contents.
			afterPos := currentToken stopPosition + 1.
			(afterPos <= contents size) ifTrue: [
				afterCh := contents at: afterPos.
				(afterCh isLetter or: [ afterCh isDigit or: [ '_?!' includes: afterCh ] ])
					ifTrue: [
						| notEnd |
						notEnd := currentToken startPosition + 2.
						self position: notEnd.
						currentToken := currentToken class
							value: 'not'
							start: currentToken startPosition
							ids: { scanner unary_opId } ] ] ].
	scanner lastWasEol
		ifTrue: [
			eolAction := self actionFor: scanner eolId.
			(eolAction bitAnd: self actionMask) = self errorAction ifFalse: [
				| char shouldShift |
				char := currentToken value isEmpty
						ifTrue: [ $  ]
						ifFalse: [ currentToken value first ].
				shouldShift := (')|}<>' includes: char).
				shouldShift ifFalse: [ shouldShift := self shouldSuppressEol ].
				"Continuation keywords on a new line should not get an eol
				 separating them from the previous expression."
				shouldShift ifFalse: [ shouldShift := #('when' 'and' 'or' 'in') includes: currentToken value ].
				shouldShift ifTrue: [
					action := self actionFor: currentToken ids first.
					(action bitAnd: self actionMask) = self errorAction
						ifFalse: [ ^ action ] ].
				"For '}' specifically: don't inject eol — the close-curly may be
				 the end of an interpolation that the }-rescue path will
				 retokenize as <interpolatedStringMid/End>. If we inject eol
				 here, the parser shifts eol successfully but then can't get
				 back to the rescue."
				char = $} ifTrue: [ scanner lastWasEol: false ].
				char = $} ifFalse: [
					scanner lastWasEol: false.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
							value: ''
							start: currentToken startPosition
							ids: {scanner eolId}.
					^ eolAction ] ] ].
	currentToken ids first = scanner map_opId
		ifTrue: [
			| position |
			position := scanner position.
			currentToken := currentToken class
					value: '%'
					start: currentToken startPosition
					ids: {scanner struct_opId}.
			self position: position - 2 ].
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
				ifTrue: [
					ids := (id = scanner paren_identifierId
						or: [ id = scanner bracket_identifierId
						or: [ id = scanner do_identifierId ] ])
							ifTrue: [ {id} ]
							ifFalse: [ {id. scanner identifierId} ] ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].
	action := super actionForCurrentToken.
	((action bitAnd: self actionMask) = self errorAction
		and: [ (currentToken ids includes: scanner interpolatedStringEndId) not
				and: [ (currentToken ids includes: scanner interpolatedStringMidId) not
						and: [ currentToken value beginsWith: '}' ] ] ])
		ifTrue: [
			"Re-tokenize from interpolatedString scope so the closing '}' becomes part of an
			 interpolatedStringMid/End token instead of a plain close-curly."
			oldToken := currentToken.
			oldScope := self scope.
			self scope: #interpolatedString.
			self position: currentToken startPosition - 1.
			currentToken := nil.
			self getNextToken.
			self scope: oldScope.
			(currentToken ids first = scanner interpolatedStringMidId
				or: [ currentToken ids first = scanner interpolatedStringEndId ])
				ifTrue: [ ^ self actionForCurrentToken ].
			"Scanner could not tokenize the interpolated-string tail (typical
			 case: a literal hash that is not part of an interpolation start,
			 as in #{x}#main or #{x}/path%{y}). Walk the source forward to
			 find the next interpolation start or the closing string quote,
			 respecting backslash escapes, and synthesize the right token."
			oldToken ifNotNil: [ | contents pos size depth foundMid foundEnd |
				contents := scanner stream contents.
				size := contents size.
				pos := oldToken startPosition + 1.
				depth := 0.
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
				(foundMid or: [ foundEnd ]) ifTrue: [
					| endPos newId |
					endPos := foundMid ifTrue: [ pos + 1 ] ifFalse: [ pos ].
					newId := foundMid ifTrue: [ scanner interpolatedStringMidId ] ifFalse: [ scanner interpolatedStringEndId ].
					self position: endPos.
					currentToken := oldToken class
						value: (contents copyFrom: oldToken startPosition to: endPos)
						start: oldToken startPosition
						ids: { newId }.
					^ self actionForCurrentToken ] ].
			currentToken := oldToken.
			^ action ].
	^ action
]

{ #category : 'private' }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState oldScope oldToken char otherActions |
	scanner lastWasEol
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ char := currentToken value isEmpty
							ifTrue: [ $  ]
							ifFalse: [ currentToken value first ].
					(')|}<>:' includes: char)
						ifTrue: [ otherActions := super actionsForCurrentToken.
							otherActions notEmpty ifTrue: [ ^ otherActions ] ].
					self shouldSuppressEol
						ifTrue: [ otherActions := super actionsForCurrentToken.
							otherActions notEmpty ifTrue: [ ^ otherActions ] ].
					scanner lastWasEol: false.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class
							value: ''
							start: currentToken startPosition
							ids: {scanner eolId}.
					^ actions ] ].
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
							ifFalse: [ currentToken stopPosition + 1 = lookahead startPosition
									ifTrue: [ lookahead value = '['
											ifTrue: [ scanner bracket_identifierId ]
											ifFalse: [ lookahead value = '(' ifTrue: [ scanner paren_identifierId ] ] ] ] ].
			id notNil
				ifTrue: [
					"F2: paren_/bracket_/do_ identifiers are deterministic; no fallback fork.
					 The original code injected {id. identifierId} for every match, which forced
					 a GLR fork on every function call (~17 forks/char in real Elixir code)."
					ids := (id = scanner paren_identifierId
						or: [ id = scanner bracket_identifierId
						or: [ id = scanner do_identifierId ] ])
							ifTrue: [ {id} ]
							ifFalse: [ {id. scanner identifierId} ] ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].
	actions := super actionsForCurrentToken.
	(actions isEmpty
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
				ifFalse: [ currentToken := oldToken.
					^ actions ].
			^ self actionsForCurrentToken ].
	^ actions
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
