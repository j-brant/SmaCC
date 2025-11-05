Class {
	#name : #ElixirParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Elixir_Parser'
}

{ #category : #generated }
ElixirParser class >> ambiguousTransitions [
^#(
#[ 0 37 1 2] 
#[ 0 42 1 14] 
#[ 0 114 1 22] 
#[ 0 114 1 22 1 149] 
#[ 0 114 1 22 1 153] 
#[ 0 114 1 22 1 157] 
#[ 0 114 1 22 1 161] 
#[ 0 114 1 22 1 165] 
#[ 0 114 1 22 1 169] 
#[ 0 114 1 22 1 173] 
#[ 0 114 1 22 1 177] 
#[ 0 114 1 22 1 181] 
#[ 0 114 1 22 1 185] 
#[ 0 114 1 22 1 189] 
#[ 0 114 1 22 1 193] 
#[ 0 114 1 22 1 197] 
#[ 0 114 1 22 1 201] 
#[ 0 114 1 22 1 205] 
#[ 0 122 1 26] 
#[ 0 114 1 34] 
#[ 0 114 1 34 1 149] 
#[ 0 114 1 34 1 153] 
#[ 0 114 1 34 1 157] 
#[ 0 114 1 34 1 161] 
#[ 0 114 1 34 1 165] 
#[ 0 114 1 34 1 169] 
#[ 0 114 1 34 1 173] 
#[ 0 114 1 34 1 177] 
#[ 0 114 1 34 1 181] 
#[ 0 114 1 34 1 185] 
#[ 0 114 1 34 1 189] 
#[ 0 114 1 34 1 193] 
#[ 0 114 1 34 1 197] 
#[ 0 114 1 34 1 201] 
#[ 0 114 1 34 1 205] 
#[ 0 122 1 38] 
#[ 0 114 1 190] 
#[ 0 114 1 149 1 190] 
#[ 0 114 1 153 1 190] 
#[ 0 114 1 157 1 190] 
#[ 0 114 1 161 1 190] 
#[ 0 114 1 165 1 190] 
#[ 0 114 1 169 1 190] 
#[ 0 114 1 173 1 190] 
#[ 0 114 1 177 1 190] 
#[ 0 114 1 181 1 190] 
#[ 0 114 1 185 1 190] 
#[ 0 114 1 189 1 190] 
#[ 0 114 1 190 1 193] 
#[ 0 114 1 190 1 197] 
#[ 0 114 1 190 1 201] 
#[ 0 114 1 190 1 205] 
#[ 0 122 1 194] 
#[ 1 182 1 250] 
#[ 0 174 1 254] 
#[ 0 194 2 2] 
#[ 1 78 2 26] 
#[ 1 234 2 30] 
#[ 0 130 2 150] 
#[ 0 134 2 154] 
#[ 0 138 2 158] 
#[ 3 150 4 245]
	).
]

{ #category : #'generated-accessing' }
ElixirParser class >> cacheId [
	^'2025-11-05T08:25:54.065629-06:00'
]

{ #category : #generated }
ElixirParser class >> definitionComment [
"# Modified from https://github.com/elixir-lang/elixir/blob/master/lib/elixir/src/elixir_parser.yrl (f38895cebba0fa06f686e1dd9b74e5729aebcb45)
# Apache License 2.0: https://github.com/elixir-lang/elixir/blob/master/LICENSE

%glr;

%id <identifier> <do_identifier> <block_identifier> <bracket_identifier> <paren_identifier> <op_identifier> 
	<dot_call_op> <dot_op> <eol> <kw_identifier> <map_op> <struct_op> <semicolon> <alias> <string> <dual_op> <unary_op> <interpolatedStringMid> <interpolatedStringEnd>;

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
	: "" ([^\\""\#] | \\.)* ""
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

{ #category : #'file types' }
ElixirParser class >> fileExtensions [
	^ #('.exs' '.ex')
]

{ #category : #generated }
ElixirParser class >> reduceTable [
^#(
	#(62 0 #reduceActionForgrammar6: 5966854 false) 
	#(103 1 #liftFirstValue: 16781313 false) 
	#(108 1 #liftFirstValue: 16945153 false) 
	#(106 1 #liftFirstValue: 16891905 false) 
	#(76 1 #reduceActionForaccess_expr16: 13006864 false) 
	#(93 1 #reduceActionForfn_eoe1: 15541249 false) 
	#(76 1 #reduceActionForaccess_expr17: 13006865 false) 
	#(76 1 #reduceActionForaccess_expr15: 13006863 false) 
	#(110 1 #liftFirstValue: 16992257 false) 
	#(84 1 #reduceActionFornumber1: 14284801 false) 
	#(76 1 #reduceActionForaccess_expr25: 13006873 false) 
	#(80 1 #reduceActionForbin_string1: 14089217 false) 
	#(82 1 #reduceActionForbin_heredoc1: 14178305 false) 
	#(81 1 #reduceActionForlist_string1: 14132225 false) 
	#(83 1 #reduceActionForlist_heredoc1: 14230529 false) 
	#(92 1 #liftFirstValue: 15506433 false) 
	#(149 1 #liftFirstValue: 22737921 false) 
	#(112 1 #liftFirstValue: 17067010 false) 
	#(112 1 #liftFirstValue: 17067009 false) 
	#(84 1 #reduceActionFornumber2: 14284802 false) 
	#(84 1 #reduceActionFornumber3: 14284803 false) 
	#(76 1 #reduceActionForaccess_expr24: 13006872 false) 
	#(113 1 #reduceActionFordot_identifier1: 17139713 false) 
	#(114 1 #reduceActionFordot_alias1: 17268737 false) 
	#(92 1 #liftFirstValue: 15506434 false) 
	#(62 1 #reduceActionForgrammar2: 5966850 false) 
	#(63 1 #reduceActionForexpr_list1: 6214657 false) 
	#(64 1 #liftFirstValue: 6303745 false) 
	#(64 1 #liftFirstValue: 6303747 false) 
	#(64 1 #liftFirstValue: 6303746 false) 
	#(66 1 #reduceActionForunmatched_expr8: 8335368 false) 
	#(67 1 #reduceActionForno_parens_expr5: 8736773 false) 
	#(67 1 #reduceActionForno_parens_expr5: 8736774 false) 
	#(65 1 #reduceActionFormatched_expr5: 7974917 false) 
	#(65 1 #reduceActionFormatched_expr5: 7974918 false) 
	#(65 1 #reduceActionFormatched_expr5: 7974919 false) 
	#(76 1 #liftFirstValue: 13006871 false) 
	#(76 1 #liftFirstValue: 13006866 false) 
	#(76 1 #liftFirstValue: 13006867 false) 
	#(76 1 #liftFirstValue: 13006868 false) 
	#(76 1 #liftFirstValue: 13006869 false) 
	#(76 1 #liftFirstValue: 13006859 false) 
	#(76 1 #liftFirstValue: 13006875 false) 
	#(76 1 #liftFirstValue: 13006850 false) 
	#(76 1 #liftFirstValue: 13006849 false) 
	#(62 1 #reduceActionForgrammar1: 5966849 false) 
	#(76 1 #liftFirstValue: 13006858 false) 
	#(75 1 #liftFirstValue: 12687362 false) 
	#(76 1 #liftFirstValue: 13006874 false) 
	#(75 1 #liftFirstValue: 12687361 false) 
	#(119 1 #reduceActionFordot_call_identifier1: 18156545 false) 
	#(76 1 #liftFirstValue: 13006860 false) 
	#(76 1 #liftFirstValue: 13006862 false) 
	#(76 1 #liftFirstValue: 13006870 false) 
	#(76 1 #liftFirstValue: 13006861 false) 
	#(117 1 #reduceActionFordot_bracket_identifier1: 17857537 false) 
	#(116 1 #reduceActionFordot_do_identifier1: 17719297 false) 
	#(115 1 #reduceActionFordot_op_identifier1: 17579009 false) 
	#(118 1 #reduceActionFordot_paren_identifier1: 18010113 false) 
	#(93 2 #reduceActionForfn_eoe2: 15541250 false) 
	#(79 0 #reduceActionFor__interpolatedStringMid___part__expr__expression___1: 13993985 false) 
	#(152 1 #reduceActionForstruct_expr1: 23409665 false) 
	#(152 1 #reduceActionForstruct_expr1: 23409670 false) 
	#(152 1 #reduceActionForstruct_expr1: 23409667 false) 
	#(152 1 #reduceActionForstruct_expr1: 23409666 false) 
	#(153 2 #reduceActionFormap2: 23622658 false) 
	#(76 2 #reduceActionForaccess_expr3: 13006851 false) 
	#(66 2 #reduceActionForunmatched_expr7: 8335367 false) 
	#(65 2 #reduceActionFormatched_expr4: 7974916 false) 
	#(67 2 #reduceActionFormatched_expr4: 8736772 false) 
	#(66 2 #reduceActionForunmatched_expr7: 8335366 false) 
	#(65 2 #reduceActionFormatched_expr4: 7974915 false) 
	#(67 2 #reduceActionFormatched_expr4: 8736771 false) 
	#(62 2 #reduceActionForgrammar4: 5966852 false) 
	#(119 2 #reduceActionFordot_call_identifier2: 18156546 false) 
	#(65 2 #reduceActionFormatched_expr1: 7974913 false) 
	#(66 2 #reduceActionForunmatched_expr1: 8335361 false) 
	#(67 2 #reduceActionForno_parens_expr1: 8736769 false) 
	#(66 2 #reduceActionFormatched_expr1: 8335362 false) 
	#(66 2 #reduceActionFormatched_expr1: 8335363 false) 
	#(66 2 #reduceActionFormatched_expr1: 8335364 false) 
	#(65 2 #reduceActionFormatched_expr8: 7974920 false) 
	#(89 2 #reduceActionForbracket_expr2: 14998530 false) 
	#(62 2 #reduceActionForgrammar3: 5966851 false) 
	#(100 1 #reduceActionForstab_op_eol_and_expr1: 16543745 false) 
	#(134 1 #liftFirstValue: 20723713 false) 
	#(99 1 #reduceActionForstab_expr1: 16074753 false) 
	#(123 1 #liftFirstValue: 18697218 false) 
	#(124 1 #liftFirstValue: 18771969 false) 
	#(97 1 #reduceActionForstab1: 15831041 false) 
	#(99 1 #reduceActionForstab_expr1: 16074754 false) 
	#(125 1 #reduceActionForcall_args_no_parens_many2: 18823170 false) 
	#(122 1 #liftFirstValue: 18578433 false) 
	#(122 1 #liftFirstValue: 18578434 false) 
	#(122 1 #liftFirstValue: 18578435 false) 
	#(138 1 #reduceActionForcall_args_no_parens_kw1: 21131265 false) 
	#(123 1 #liftFirstValue: 18697217 false) 
	#(105 2 #reduceActionForempty_paren1: 16830465 false) 
	#(140 2 #reduceActionForlist1: 21467137 false) 
	#(128 1 #liftFirstValue: 19535873 false) 
	#(128 1 #liftFirstValue: 19535874 false) 
	#(128 1 #liftFirstValue: 19535875 false) 
	#(129 1 #reduceActionForcontainer_args_base1: 19612673 false) 
	#(139 1 #reduceActionForlist_args2: 21286914 false) 
	#(136 1 #reduceActionForkw1: 20971521 false) 
	#(139 1 #reduceActionForlist_args1: 21286913 false) 
	#(142 2 #reduceActionForbit_string1: 21754881 false) 
	#(130 1 #reduceActionForcontainer_args1: 19741697 false) 
	#(141 2 #reduceActionFortuple1: 21610497 false) 
	#(66 2 #reduceActionForunmatched_expr7: 8335365 false) 
	#(65 2 #reduceActionFormatched_expr4: 7974914 false) 
	#(67 2 #reduceActionFormatched_expr4: 8736770 false) 
	#(74 2 #reduceActionForno_parens_one_expr2: 12527618 false) 
	#(72 2 #reduceActionForno_parens_one_ambig_expr2: 12154882 false) 
	#(126 1 #reduceActionForcall_args_no_parens_many_strict1: 19073025 false) 
	#(73 2 #reduceActionForno_parens_many_expr2: 12337154 false) 
	#(74 2 #reduceActionForno_parens_one_expr2: 12527617 false) 
	#(72 2 #reduceActionForno_parens_one_ambig_expr2: 12154881 false) 
	#(73 2 #reduceActionForno_parens_many_expr2: 12337153 false) 
	#(94 1 #reduceActionFordo_eoe1: 15600641 false) 
	#(68 2 #reduceActionForblock_expr3: 9024515 false) 
	#(89 2 #reduceActionForbracket_expr2: 14998529 false) 
	#(85 2 #reduceActionForparens_call1: 14396417 false) 
	#(153 2 #reduceActionFormap2: 23622657 false) 
	#(152 2 #reduceActionFormatched_expr4: 23409668 false) 
	#(151 2 #reduceActionFormap_args1: 22938625 false) 
	#(144 1 #reduceActionForassoc_expr6: 21931014 false) 
	#(144 1 #reduceActionForassoc_expr6: 21931013 false) 
	#(147 1 #reduceActionForassoc_base1: 22574081 false) 
	#(148 1 #liftFirstValue: 22666241 false) 
	#(151 2 #reduceActionFormap_args1: 22938626 false) 
	#(152 2 #reduceActionFormatched_expr4: 23409669 false) 
	#(153 3 #reduceActionFormap3: 23622659 false) 
	#(90 3 #reduceActionForbracket_at_expr2: 15128578 false) 
	#(90 3 #reduceActionForbracket_at_expr2: 15128577 false) 
	#(63 3 #reduceActionForexpr_list2: 6214658 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473038 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317837 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109389 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473035 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317835 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109387 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109394 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473034 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317834 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109386 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473036 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317836 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109388 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473025 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317825 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109377 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473031 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317831 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109383 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473030 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317830 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109382 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473037 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317838 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109390 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473039 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317839 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109391 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109392 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109393 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473040 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473032 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317832 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109384 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473029 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317829 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109381 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473028 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317828 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109380 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473026 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317826 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109378 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473027 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317827 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109379 false) 
	#(69 2 #reduceActionFormatched_op_expr14: 9473033 false) 
	#(70 2 #reduceActionForunmatched_op_expr13: 10317833 false) 
	#(71 2 #reduceActionForno_parens_op_expr13: 11109385 false) 
	#(113 3 #reduceActionFordot_identifier2: 17139714 false) 
	#(114 3 #reduceActionFordot_alias2: 17268738 false) 
	#(117 3 #reduceActionFordot_bracket_identifier2: 17857538 false) 
	#(116 3 #reduceActionFordot_do_identifier2: 17719298 false) 
	#(115 3 #reduceActionFordot_op_identifier2: 17579010 false) 
	#(118 3 #reduceActionFordot_paren_identifier2: 18010114 false) 
	#(107 1 #liftFirstValue: 16917505 false) 
	#(87 1 #reduceActionForbracket_values1: 14623745 false) 
	#(88 2 #reduceActionForbracket_arg1: 14737409 false) 
	#(86 1 #liftFirstValue: 14568450 false) 
	#(86 1 #liftFirstValue: 14568449 false) 
	#(62 3 #reduceActionForgrammar5: 5966853 false) 
	#(100 2 #reduceActionForstab_op_eol_and_expr2: 16543746 false) 
	#(95 1 #reduceActionForend_eoe1: 15660033 false) 
	#(76 3 #reduceActionForaccess_expr4: 13006852 false) 
	#(99 2 #reduceActionForstab_expr3: 16074755 false) 
	#(99 2 #reduceActionForstab_expr3: 16074757 false) 
	#(99 2 #reduceActionForstab_expr3: 16074758 false) 
	#(137 2 #reduceActionForcall_args_no_parens_kw_expr1: 21013505 false) 
	#(137 2 #reduceActionForcall_args_no_parens_kw_expr1: 21013506 false) 
	#(104 1 #liftFirstValue: 16804865 false) 
	#(76 3 #reduceActionForaccess_expr9: 13006857 false) 
	#(76 3 #reduceActionForaccess_expr5: 13006853 false) 
	#(139 2 #reduceActionForlist_args3: 21286915 false) 
	#(135 2 #reduceActionForkw_base1: 20850689 false) 
	#(136 2 #reduceActionForkw2: 20971522 false) 
	#(140 3 #reduceActionForlist2: 21467138 false) 
	#(130 2 #reduceActionForcontainer_args2: 19741698 false) 
	#(109 1 #liftFirstValue: 16967681 false) 
	#(142 3 #reduceActionForbit_string2: 21754882 false) 
	#(111 1 #liftFirstValue: 17015809 false) 
	#(141 3 #reduceActionFortuple2: 21610498 false) 
	#(68 3 #reduceActionForblock_expr5: 9024517 false) 
	#(68 3 #reduceActionForblock_expr5: 9024516 false) 
	#(94 2 #reduceActionFordo_eoe2: 15600642 false) 
	#(91 2 #reduceActionFordo_block1: 15299585 false) 
	#(96 1 #reduceActionForblock_eoe1: 15724545 false) 
	#(101 1 #reduceActionForblock_item2: 16607234 false) 
	#(98 1 #reduceActionForstab_eoe1: 15907841 false) 
	#(102 1 #reduceActionForblock_list1: 16690177 false) 
	#(133 2 #reduceActionForcall_args_parens1: 20104193 false) 
	#(131 1 #liftFirstValue: 19886081 false) 
	#(131 1 #liftFirstValue: 19886082 false) 
	#(131 1 #liftFirstValue: 19886083 false) 
	#(132 1 #reduceActionForcall_args_parens_base1: 19970049 false) 
	#(68 3 #reduceActionForblock_expr5: 9024513 false) 
	#(85 3 #reduceActionForparens_call2: 14396418 false) 
	#(77 4 #reduceActionForinterpolated_string1: 13918209 false) 
	#(79 2 #reduceActionFor__interpolatedStringMid___part__expr__expression___2: 13993986 false) 
	#(143 1 #liftFirstValue: 21893121 false) 
	#(150 2 #reduceActionFormap_close1: 22768641 false) 
	#(151 3 #reduceActionFormap_args3: 22938627 false) 
	#(151 3 #reduceActionFormap_args3: 22938630 false) 
	#(148 2 #reduceActionForassoc2: 22666242 false) 
	#(150 2 #reduceActionFormap_close2: 22768642 false) 
	#(114 4 #reduceActionFordot_alias3: 17268739 false) 
	#(88 3 #reduceActionForbracket_arg2: 14737410 false) 
	#(88 3 #reduceActionForbracket_arg3: 14737411 false) 
	#(120 1 #liftFirstValue: 18316289 false) 
	#(120 1 #liftFirstValue: 18316290 false) 
	#(121 3 #reduceActionForcall_args_no_parens_comma_expr1: 18383873 false) 
	#(125 3 #reduceActionForcall_args_no_parens_many1: 18823169 false) 
	#(95 2 #reduceActionForend_eoe2: 15660034 false) 
	#(97 3 #reduceActionForstab2: 15831042 false) 
	#(127 3 #reduceActionForstab_parens_many2: 19324930 false) 
	#(127 3 #reduceActionForstab_parens_many2: 19324929 false) 
	#(121 3 #reduceActionForcall_args_no_parens_comma_expr2: 18383874 false) 
	#(125 3 #reduceActionForcall_args_no_parens_many1: 18823171 false) 
	#(138 3 #reduceActionForcall_args_no_parens_kw2: 21131266 false) 
	#(76 4 #reduceActionForaccess_expr8: 13006856 false) 
	#(76 4 #reduceActionForaccess_expr6: 13006854 false) 
	#(129 3 #reduceActionForcontainer_args_base2: 19612674 false) 
	#(139 3 #reduceActionForlist_args4: 21286916 false) 
	#(130 3 #reduceActionForcontainer_args3: 19741699 false) 
	#(126 3 #reduceActionForcall_args_no_parens_many_strict3: 19073027 false) 
	#(126 3 #reduceActionForcall_args_no_parens_many_strict3: 19073026 false) 
	#(96 2 #reduceActionForblock_eoe2: 15724546 false) 
	#(101 2 #reduceActionForblock_item1: 16607233 false) 
	#(98 2 #reduceActionForstab_eoe2: 15907842 false) 
	#(91 3 #reduceActionFordo_block2: 15299586 false) 
	#(102 2 #reduceActionForblock_list2: 16690178 false) 
	#(91 3 #reduceActionFordo_block3: 15299587 false) 
	#(133 3 #reduceActionForcall_args_parens2: 20104194 false) 
	#(133 3 #reduceActionForcall_args_parens2: 20104197 false) 
	#(133 3 #reduceActionForcall_args_parens3: 20104195 false) 
	#(68 4 #reduceActionForblock_expr2: 9024514 false) 
	#(78 2 #reduceActionFor__interpolatedStringMid___part__expr__expression__1: 13993985 false) 
	#(146 3 #reduceActionForassoc_update_kw1: 22430721 false) 
	#(145 3 #reduceActionForassoc_update1: 22258689 false) 
	#(144 3 #reduceActionForassoc_expr1: 21931009 false) 
	#(144 3 #reduceActionForassoc_expr1: 21931011 false) 
	#(146 3 #reduceActionForassoc_update_kw1: 22430722 false) 
	#(145 3 #reduceActionForassoc_update2: 22258690 false) 
	#(144 3 #reduceActionForassoc_expr1: 21931012 false) 
	#(144 3 #reduceActionForassoc_expr1: 21931010 false) 
	#(151 4 #reduceActionFormap_args4: 22938628 false) 
	#(151 4 #reduceActionFormap_args4: 22938629 false) 
	#(147 3 #reduceActionForassoc_base2: 22574082 false) 
	#(114 5 #reduceActionFordot_alias4: 17268740 false) 
	#(87 3 #reduceActionForbracket_values2: 14623746 false) 
	#(88 4 #reduceActionForbracket_arg4: 14737412 false) 
	#(99 4 #reduceActionForstab_expr4: 16074756 false) 
	#(99 4 #reduceActionForstab_expr4: 16074759 false) 
	#(76 5 #reduceActionForaccess_expr7: 13006855 false) 
	#(135 4 #reduceActionForkw_base2: 20850690 false) 
	#(91 4 #reduceActionFordo_block4: 15299588 false) 
	#(132 3 #reduceActionForcall_args_parens_base2: 19970050 false) 
	#(133 4 #reduceActionForcall_args_parens4: 20104196 false) 
	#(150 4 #reduceActionFormap_close3: 22768643 false) 
	#(133 5 #reduceActionForcall_args_parens6: 20104198 false) 
	#(133 6 #reduceActionForcall_args_parens7: 20104199 false)
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
	^ #('"("' '")"' '","' '";"' '"<<"' '">>"' '"["' '"]"' '"do"' '"end"' '"false"' '"fn"' '"nil"' '"true"' '"{"' '"}"' '<int>' '<atom>' '<interpolatedStringStart>' '<interpolatedStringMid>' '<interpolatedStringEnd>' '<string>' '<string_heredoc>' '<charlist>' '<charlist_heredoc>' '<whitespace>' '<comment>' '<eol>' '<struct_op>' '<map_op>' '<stab_op>' '<comp_op>' '<when_op>' '<type_op>' '<pipe_op>' '<assoc_op>' '<capture_op>' '<match_op>' '<or_op>' '<and_op>' '<rel_op>' '<arrow_op>' '<in_op>' '<three_op>' '<two_op>' '<dual_op>' '<mult_op>' '<unary_op>' '<at_op>' '<flt>' '<char>' '<in_match_op>' '<dot_op>' '<sigil>' '<identifier>' '<kw_identifier>' '<alias>' '<semicolon>' '<block_identifier>' '<dot_call_op>' 'B e g i n' 'grammar' 'expr_list' 'expr' 'matched_expr' 'unmatched_expr' 'no_parens_expr' 'block_expr' 'matched_op_expr' 'unmatched_op_expr' 'no_parens_op_expr' 'no_parens_one_ambig_expr' 'no_parens_many_expr' 'no_parens_one_expr' 'no_parens_zero_expr' 'access_expr' 'interpolated_string' '(<interpolatedStringMid> ''part'' expr ''expression'')' '(<interpolatedStringMid> ''part'' expr ''expression'')*' 'bin_string' 'list_string' 'bin_heredoc' 'list_heredoc' 'number' 'parens_call' 'bracket_value' 'bracket_values' 'bracket_arg' 'bracket_expr' 'bracket_at_expr' 'do_block' 'eoe' 'fn_eoe' 'do_eoe' 'end_eoe' 'block_eoe' 'stab' 'stab_eoe' 'stab_expr' 'stab_op_eol_and_expr' 'block_item' 'block_list' 'open_paren' 'close_paren' 'empty_paren' 'open_bracket' 'close_bracket' 'open_bit' 'close_bit' 'open_curly' 'close_curly' 'unary_op_eol' 'dot_identifier' 'dot_alias' 'dot_op_identifier' 'dot_do_identifier' 'dot_bracket_identifier' 'dot_paren_identifier' 'dot_call_identifier' 'call_args_no_parens_expr' 'call_args_no_parens_comma_expr' 'call_args_no_parens_all' 'call_args_no_parens_one' 'call_args_no_parens_ambig' 'call_args_no_parens_many' 'call_args_no_parens_many_strict' 'stab_parens_many' 'container_expr' 'container_args_base' 'container_args' 'call_args_parens_expr' 'call_args_parens_base' 'call_args_parens' 'kw_eol' 'kw_base' 'kw' 'call_args_no_parens_kw_expr' 'call_args_no_parens_kw' 'list_args' 'list' 'tuple' 'bit_string' 'assoc_op_eol' 'assoc_expr' 'assoc_update' 'assoc_update_kw' 'assoc_base' 'assoc' 'map_op' 'map_close' 'map_args' 'struct_expr' 'map' '<bracket_identifier>' '<do_identifier>' '<op_identifier>' '<paren_identifier>' 'E O F' 'error')
]

{ #category : #generated }
ElixirParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirGrammarNode #ElixirGrammarNode #ElixirExprListNode #ElixirProgramNode #ElixirMatchedExprNode #ElixirUnmatchedExprNode #ElixirNoParensExprNode #ElixirBlockExprNode #ElixirMatchedOpExprNode #ElixirUnmatchedOpExprNode #ElixirNoParensOpExprNode #ElixirNoParensOneAmbigExprNode #ElixirNoParensManyExprNode #ElixirNoParensOneExprNode #ElixirProgramNode #ElixirProgramNode #ElixirInterpolatedStringNode #OrderedCollection #OrderedCollection #ElixirBinStringNode #ElixirListStringNode #ElixirBinHeredocNode #ElixirListHeredocNode #ElixirNumberNode #ElixirParensCallNode #ElixirProgramNode #ElixirBracketValuesNode #ElixirBracketArgNode #ElixirBracketExprNode #ElixirBracketAtExprNode #ElixirDoBlockNode #SmaCCToken #ElixirFnEoeNode #ElixirDoEoeNode #ElixirEndEoeNode #ElixirBlockEoeNode #ElixirStabNode #ElixirStabEoeNode #ElixirStabExprNode #ElixirStabOpEolAndExprNode #ElixirBlockItemNode #ElixirBlockListNode #SmaCCToken #SmaCCToken #ElixirEmptyParenNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ElixirDotIdentifierNode #ElixirDotAliasNode #ElixirDotOpIdentifierNode #ElixirDotDoIdentifierNode #ElixirDotBracketIdentifierNode #ElixirDotParenIdentifierNode #ElixirDotCallIdentifierNode #ElixirProgramNode #ElixirCallArgsNoParensCommaExprNode #ElixirProgramNode #ElixirProgramNode #ElixirNoParensExprNode #ElixirCallArgsNoParensManyNode #ElixirCallArgsNoParensManyStrictNode #ElixirStabParensManyNode #ElixirProgramNode #ElixirContainerArgsBaseNode #ElixirContainerArgsNode #ElixirProgramNode #ElixirCallArgsParensBaseNode #ElixirCallArgsParensNode #SmaCCToken #ElixirKwBaseNode #ElixirKwNode #ElixirCallArgsNoParensKwExprNode #ElixirCallArgsNoParensKwNode #ElixirListArgsNode #ElixirListNode #ElixirTupleNode #ElixirBitStringNode #SmaCCToken #ElixirAssocExprNode #ElixirAssocUpdateNode #ElixirAssocUpdateKwNode #ElixirAssocBaseNode #ElixirProgramNode #SmaCCToken #ElixirMapCloseNode #ElixirMapArgsNode #ElixirStructExprNode #ElixirMapNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ElixirParser class >> transitionTable [
^#(
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 205 0 28 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 0 205 0 58 0 121 0 62 0 125 0 63 0 129 0 64 0 133 0 65 0 137 0 66 0 129 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 205 0 92 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 0 6 0 158] 
#[0 0 10 0 1 0 2 0 4 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[0 0 14 0 1 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 154 0 155 0 156 0 157] 
#[0 0 18 0 1 0 3 0 5 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[0 0 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 26 0 1 0 26 0 5 0 26 0 7 0 26 0 11 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 22 0 26 0 23 0 26 0 24 0 26 0 25 1 45 0 28 0 26 0 29 0 26 0 30 0 26 0 31 0 26 0 37 0 26 0 46 0 26 0 48 0 26 0 49 0 26 0 50 0 26 0 51 0 26 0 54 0 26 0 55 0 26 0 56 0 26 0 57 1 45 0 58 1 45 0 92 0 26 0 154 0 26 0 155 0 26 0 156 0 26 0 157] 
#[0 0 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 38 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[0 0 42 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 46 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 49 0 64 0 133 0 65 0 137 0 66 1 49 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 50 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 54 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 58 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 66 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 154 0 155 0 156 0 157 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 1 73 0 15 0 41 0 17 1 53 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 1 77 0 46 1 77 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 65 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 1 69 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 1 73 0 110 1 77 0 112 1 81 0 113 1 85 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 1 101 0 151 1 105 0 152 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 70 0 15] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 109 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 113 0 64 1 117 0 65 0 137 0 66 1 121 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 74 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 154 0 155 0 156 0 157] 
#[0 0 78 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 154 0 155 0 156 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 125 0 64 1 129 0 65 0 137 0 66 1 133 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 1 137 0 76 1 137 0 77 1 137 0 80 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 89 1 137 0 90 0 209 0 93 0 213 0 103 1 137 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 1 137 0 114 0 245 0 115 0 249 0 116 1 141 0 117 1 1 0 118 1 5 0 119 1 137 0 140 1 137 0 141 1 137 0 142 1 21 0 149 1 137 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 86 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 154 0 155 0 156 0 157 0 158] 
#[0 0 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 102 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 154 0 155 0 156 0 157 0 158] 
#[0 0 0 0 158] 
#[1 1 145 0 28 1 145 0 58 1 145 0 92 0 106 0 158] 
#[0 0 110 0 28 0 58 0 158] 
#[1 0 114 0 2 0 114 0 4 0 114 0 10 0 114 0 20 0 114 0 21 0 114 0 28 0 114 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 0 114 0 58 0 114 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 0 114 0 158] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 6 0 118 0 8 0 118 0 10 0 118 0 16 0 118 0 20 0 118 0 21 0 118 0 28 0 118 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 0 118 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 0 118 0 58 0 118 0 59 1 229 0 69 1 233 0 70 1 237 0 71 0 118 0 158] 
#[0 0 122 0 2 0 3 0 4 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 0 126 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 0 130 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 138 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 142 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 249 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 20 0 146 0 21 0 146 0 28 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 34 0 146 0 35 0 146 0 36 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 45 0 146 0 46 0 146 0 47 0 146 0 52 0 146 0 53 1 241 0 56 0 146 0 58 0 146 0 59 0 146 0 60 1 245 0 88 1 249 0 106 0 146 0 158] 
#[0 0 150 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 158 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 170 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 253 0 63 0 129 0 64 0 133 0 65 0 137 0 66 0 129 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 0 186 0 158] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 21 0 97 2 25 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 85 0 97 2 25 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 190 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 2 89 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 2 93 0 65 2 97 0 66 2 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 105 0 128 2 109 0 129 2 113 0 134 2 117 0 135 2 121 0 136 2 125 0 139 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 2 129 0 6 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 93 0 65 2 97 0 66 2 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 105 0 128 2 133 0 129 2 137 0 130 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 2 141 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 93 0 65 2 97 0 66 2 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 105 0 128 2 133 0 129 2 145 0 130 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 149 0 64 2 153 0 65 0 137 0 66 2 157 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 2 177 0 1 0 194 0 2 0 194 0 3 0 194 0 4 0 225 0 5 0 194 0 6 0 221 0 7 0 194 0 8 0 194 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 194 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 194 0 20 0 194 0 21 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 194 0 28 0 73 0 29 1 21 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 2 161 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 2 181 0 46 0 194 0 47 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 58 0 194 0 59 0 194 0 60 2 169 0 65 2 201 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 177 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 193 0 122 2 197 0 123 2 201 0 124 2 205 0 125 2 209 0 126 2 65 0 134 2 69 0 137 2 197 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 0 194 0 158] 
#[0 0 198 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 177 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 169 0 65 2 221 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 177 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 213 0 122 2 217 0 123 2 221 0 124 2 205 0 125 2 225 0 126 2 65 0 134 2 69 0 137 2 217 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 6 0 202 0 8 2 229 0 9 0 202 0 10 0 202 0 16 0 202 0 20 0 202 0 21 0 202 0 28 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 42 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 52 0 202 0 53 0 202 0 58 0 202 0 59 0 202 0 60 2 233 0 91 2 237 0 94 0 202 0 158] 
#[1 1 249 0 7 2 241 0 88 1 249 0 106] 
#[0 0 206 0 1] 
#[1 2 245 0 1 2 245 0 103 2 249 0 133] 
#[0 0 210 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 214 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 218 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 253 0 15 2 253 0 110 3 1 0 151] 
#[0 0 222 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 226 0 7] 
#[0 0 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 234 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[0 0 238 0 1] 
#[0 0 242 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[1 0 246 0 20 0 246 0 21 3 5 0 79] 
#[1 0 46 0 7 0 250 0 15 0 46 0 32 0 46 0 33 0 46 0 34 0 46 0 35 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 41 0 46 0 42 0 46 0 43 0 46 0 44 0 46 0 45 0 46 0 46 0 46 0 47 0 46 0 52 0 46 0 53 0 46 0 56 0 46 0 60] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 109 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 13 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 1 53 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 1 77 0 46 1 77 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 25 0 65 0 157 0 74 0 161 0 75 1 137 0 76 1 137 0 77 1 137 0 80 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 69 0 85 1 137 0 89 1 137 0 90 0 209 0 93 0 213 0 103 1 137 0 105 0 221 0 106 0 225 0 108 0 229 0 110 1 77 0 112 1 81 0 113 1 85 0 114 1 89 0 115 0 161 0 116 1 141 0 117 1 1 0 118 1 97 0 119 1 137 0 140 1 137 0 141 1 137 0 142 1 21 0 149 3 29 0 152 1 137 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 3 89 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 0 174 0 7 0 254 0 15 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 38 0 174 0 39 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 52 0 174 0 53 0 174 0 56 0 174 0 60] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 93 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 3 97 0 65 3 101 0 66 2 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 3 109 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 105 0 128 2 133 0 129 2 145 0 130 2 113 0 134 2 117 0 135 3 113 0 136 0 165 0 140 0 165 0 141 0 165 0 142 3 117 0 144 3 121 0 145 3 125 0 146 3 129 0 147 3 133 0 148 1 21 0 149 3 137 0 150 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 1 53 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 1 77 0 46 1 77 0 48 1 61 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 141 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 1 69 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 1 77 0 112 1 81 0 113 1 85 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 3 145 0 152 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 7 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 1 57 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 3 17 0 46 0 194 0 47 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 60 3 149 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 3 153 0 123 2 65 0 134 2 69 0 137 3 153 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 198 0 7 1 6 0 15 0 198 0 32 0 198 0 33 0 198 0 34 0 198 0 35 0 198 0 38 0 198 0 39 0 198 0 40 0 198 0 41 0 198 0 42 0 198 0 43 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 52 0 198 0 53 0 198 0 56 0 198 0 60] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 3 149 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 3 157 0 123 2 65 0 134 2 69 0 137 3 157 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 0 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 245 0 1 2 245 0 103 3 161 0 133] 
#[0 1 10 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 253 0 15 2 253 0 110 3 165 0 151] 
#[0 0 11 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 1 18 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 15 0 2 0 15 0 3 0 15 0 4 0 15 0 6 0 15 0 8 0 15 0 10 0 15 0 16 0 15 0 20 0 15 0 21 0 15 0 28 0 15 0 31 0 19 0 32 0 23 0 33 0 27 0 34 0 31 0 35 0 15 0 36 0 35 0 38 0 39 0 39 0 43 0 40 0 47 0 41 0 51 0 42 0 55 0 43 0 59 0 44 0 63 0 45 0 67 0 46 0 71 0 47 0 75 0 52 1 209 0 53 0 15 0 58 0 15 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 0 15 0 158] 
#[0 0 79 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 1 30 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 83 0 2 0 83 0 3 0 83 0 4 0 83 0 6 0 83 0 8 0 83 0 10 0 83 0 16 0 83 0 20 0 83 0 21 0 83 0 28 0 83 0 31 0 87 0 32 0 91 0 33 0 95 0 34 0 99 0 35 0 83 0 36 0 103 0 38 0 107 0 39 0 111 0 40 0 115 0 41 0 119 0 42 0 123 0 43 0 127 0 44 0 131 0 45 0 135 0 46 0 139 0 47 0 143 0 52 1 34 0 53 0 83 0 58 0 83 0 59 1 34 0 60 1 217 0 69 1 221 0 70 1 225 0 71 0 83 0 158] 
#[0 0 147 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 6 1 249 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 16 0 146 0 20 0 146 0 21 0 146 0 28 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 34 0 146 0 35 0 146 0 36 0 146 0 38 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 44 0 146 0 45 0 146 0 46 0 146 0 47 0 146 0 52 0 146 0 53 1 241 0 56 0 146 0 58 0 146 0 59 0 146 0 60 3 169 0 88 1 249 0 106 0 146 0 158] 
#[1 1 249 0 7 3 173 0 88 1 249 0 106] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 177 0 64 0 133 0 65 0 137 0 66 3 177 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 1 42 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 181 0 65 3 185 0 66 3 189 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 3 193 0 65 3 197 0 66 3 201 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 65 0 134 2 69 0 137 3 205 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 209 0 65 3 213 0 66 3 217 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 221 0 65 3 225 0 66 3 229 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 233 0 65 3 237 0 66 3 241 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 245 0 65 3 249 0 66 3 253 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 1 0 65 4 5 0 66 4 9 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 13 0 65 4 17 0 66 4 21 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 25 0 65 4 29 0 66 4 33 0 67 0 145 0 68 4 37 0 72 4 41 0 73 4 45 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 49 0 65 4 53 0 66 4 57 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 61 0 65 4 65 0 66 4 69 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 73 0 65 4 77 0 66 4 81 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 85 0 65 4 89 0 66 4 93 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 97 0 65 4 101 0 66 4 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 109 0 65 4 113 0 66 4 117 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 4 129 0 15 4 121 0 55 4 125 0 57 4 129 0 110 4 133 0 154 4 137 0 155 4 141 0 156 4 145 0 157] 
#[0 1 46 0 1] 
#[0 1 50 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 54 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 1 58 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 1 66 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 1 70 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 1 74 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 78 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 4 149 0 3 0 225 0 5 0 221 0 7 4 165 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 2 93 0 65 2 97 0 66 4 157 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 4 157 0 86 4 161 0 87 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 4 165 0 107 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 4 157 0 128 2 113 0 134 4 173 0 135 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 4 177 0 28 4 177 0 58 4 177 0 92 1 82 0 158] 
#[1 0 213 0 1 1 86 0 2 1 86 0 4 0 225 0 5 0 221 0 7 1 86 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 1 86 0 28 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 86 0 58 1 86 0 59 4 181 0 64 0 133 0 65 0 137 0 66 4 181 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 1 90 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 154 0 155 0 156 0 157] 
#[0 1 94 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 0 114 0 2 4 185 0 3 0 114 0 4 0 114 0 10 0 114 0 28 1 98 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 0 114 0 58 0 114 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71] 
#[1 0 122 0 2 0 122 0 4 0 122 0 10 0 122 0 28 1 102 0 31 0 122 0 58 0 122 0 59] 
#[1 4 189 0 10 4 193 0 28 4 193 0 58 4 193 0 92 4 197 0 95] 
#[0 1 106 0 2 0 4 0 10 0 28 0 58 0 59] 
#[0 1 110 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 85 0 97 2 25 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 4 201 0 125 2 61 0 127 2 65 0 134 2 69 0 137 4 205 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 7 0 190 0 10 0 190 0 28 2 1 0 31 0 190 0 32 4 209 0 33 0 190 0 34 0 190 0 35 0 190 0 38 0 190 0 39 0 190 0 40 0 190 0 41 0 190 0 42 0 190 0 43 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 47 0 190 0 52 0 190 0 53 0 190 0 56 0 190 0 58 0 190 0 59 0 190 0 60 4 213 0 100] 
#[1 1 114 0 2 4 217 0 3 1 114 0 4 1 114 0 6 1 114 0 8 1 114 0 9 1 114 0 10 1 114 0 16 1 114 0 20 1 114 0 21 1 114 0 28 1 114 0 31 1 114 0 32 1 114 0 33 1 114 0 34 1 114 0 35 1 114 0 36 1 114 0 38 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 42 1 114 0 43 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 52 1 114 0 53 1 114 0 58 1 114 0 59 1 114 0 60 1 114 0 158] 
#[1 2 1 0 31 4 221 0 100] 
#[0 1 118 0 31] 
#[0 1 122 0 9 0 31] 
#[0 1 126 0 9 0 31] 
#[1 2 1 0 31 4 225 0 33 4 229 0 100] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 4 233 0 65 4 237 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 1 130 0 2 4 241 0 3 1 130 0 4 1 130 0 6 1 130 0 8 1 130 0 9 1 130 0 10 1 130 0 16 1 130 0 20 1 130 0 21 1 130 0 28 1 130 0 31 1 130 0 32 1 130 0 33 1 130 0 34 1 130 0 35 1 130 0 36 1 130 0 38 1 130 0 39 1 130 0 40 1 130 0 41 1 130 0 42 1 130 0 43 1 130 0 44 1 130 0 45 1 130 0 46 1 130 0 47 1 130 0 52 1 130 0 53 1 130 0 58 1 130 0 59 1 130 0 60 1 130 0 158] 
#[0 1 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 138 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 33 0 1 4 253 0 2 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 4 249 0 97 2 25 0 99 2 29 0 100 2 33 0 103 4 253 0 104 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 5 9 0 2 5 1 0 4 5 5 0 28 5 5 0 58 5 5 0 92 5 9 0 104] 
#[0 1 142 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 1 146 0 2 1 146 0 3 1 146 0 6 1 146 0 8 1 146 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71] 
#[1 1 150 0 2 1 150 0 3 1 150 0 6 1 150 0 8 1 150 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71] 
#[0 1 154 0 2 0 3 0 6 0 8 0 16] 
#[0 1 158 0 3 0 6 0 8 0 16] 
#[1 5 13 0 3 1 162 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 93 0 65 2 97 0 66 5 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 5 17 0 128 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 5 21 0 3 1 166 0 6 1 166 0 8 1 166 0 16] 
#[0 1 170 0 8] 
#[0 5 25 0 8 0 107] 
#[0 1 174 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 5 29 0 3 1 178 0 6 1 178 0 16] 
#[0 5 37 0 6 0 109] 
#[0 1 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 5 45 0 16 0 111] 
#[0 1 186 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 6 0 151 0 8 0 151 0 10 0 151 0 16 0 151 0 20 0 151 0 21 0 151 0 28 0 151 0 31 0 155 0 32 0 159 0 33 0 163 0 34 0 167 0 35 0 151 0 36 0 171 0 38 0 175 0 39 0 179 0 40 0 183 0 41 0 187 0 42 0 191 0 43 0 195 0 44 0 199 0 45 0 203 0 46 0 207 0 47 0 211 0 52 1 209 0 53 0 151 0 58 0 151 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 0 151 0 158] 
#[0 0 215 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 109 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 5 49 0 65 5 53 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 5 57 0 65 5 61 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 1 137 0 76 1 137 0 77 1 137 0 80 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 89 1 137 0 90 0 209 0 93 0 213 0 103 1 137 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 1 137 0 114 2 189 0 115 0 161 0 116 1 141 0 117 1 1 0 118 1 97 0 119 1 137 0 140 1 137 0 141 1 137 0 142 1 21 0 149 1 137 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 1 98 0 2 4 185 0 3 1 98 0 4 1 98 0 6 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 16 1 98 0 20 1 98 0 21 1 98 0 28 1 98 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 1 98 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 5 121 0 52 1 209 0 53 1 98 0 58 1 98 0 59 1 213 0 60 1 217 0 69 1 225 0 71 1 98 0 158] 
#[0 1 102 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 33 0 1 2 77 0 2 2 81 0 4 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 85 0 97 2 25 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 5 125 0 125 2 61 0 127 2 65 0 134 2 69 0 137 5 129 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 5 133 0 65 5 137 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 2 177 0 1 0 194 0 2 0 194 0 3 0 194 0 4 0 225 0 5 0 194 0 6 0 221 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 194 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 194 0 20 0 194 0 21 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 194 0 28 0 73 0 29 1 21 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 2 161 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 2 181 0 46 0 194 0 47 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 58 0 194 0 59 0 194 0 60 2 169 0 65 5 141 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 177 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 3 153 0 123 5 141 0 124 5 145 0 125 2 209 0 126 2 65 0 134 2 69 0 137 3 153 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 0 194 0 158] 
#[1 2 177 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 169 0 65 5 149 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 177 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 3 157 0 123 5 149 0 124 5 145 0 125 2 225 0 126 2 65 0 134 2 69 0 137 3 157 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 2 229 0 9 5 153 0 91 2 237 0 94] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 6 1 198 0 8 1 118 0 9 1 198 0 10 1 198 0 16 1 198 0 20 1 198 0 21 1 198 0 28 1 198 0 31 1 198 0 32 1 198 0 33 1 198 0 34 1 198 0 35 1 198 0 36 1 198 0 38 1 198 0 39 1 198 0 40 1 198 0 41 1 198 0 42 1 198 0 43 1 198 0 44 1 198 0 45 1 198 0 46 1 198 0 47 1 198 0 52 1 198 0 53 1 198 0 58 1 198 0 59 1 198 0 60 1 198 0 158] 
#[1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 6 1 202 0 8 1 122 0 9 1 202 0 10 1 202 0 16 1 202 0 20 1 202 0 21 1 202 0 28 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 52 1 202 0 58 1 202 0 59 1 202 0 158] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 6 1 206 0 8 1 126 0 9 1 206 0 10 1 206 0 16 1 206 0 20 1 206 0 21 1 206 0 28 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 34 1 206 0 35 1 206 0 36 1 206 0 38 1 206 0 39 1 206 0 40 1 206 0 41 1 206 0 42 1 206 0 43 1 206 0 44 1 206 0 45 1 206 0 46 1 206 0 47 1 206 0 52 1 206 0 58 1 206 0 59 1 206 0 158] 
#[0 1 210 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 229 0 9 5 157 0 91 2 237 0 94] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 6 1 214 0 8 1 118 0 9 1 214 0 10 1 214 0 16 1 214 0 20 1 214 0 21 1 214 0 28 1 214 0 31 1 214 0 32 1 214 0 33 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 38 1 214 0 39 1 214 0 40 1 214 0 41 1 214 0 42 1 214 0 43 1 214 0 44 1 214 0 45 1 214 0 46 1 214 0 47 1 214 0 52 1 214 0 53 1 214 0 58 1 214 0 59 1 214 0 60 1 214 0 158] 
#[1 1 218 0 2 1 218 0 3 1 218 0 4 1 218 0 6 1 218 0 8 1 122 0 9 1 218 0 10 1 218 0 16 1 218 0 20 1 218 0 21 1 218 0 28 1 218 0 31 1 218 0 32 1 218 0 33 1 218 0 34 1 218 0 35 1 218 0 36 1 218 0 38 1 218 0 39 1 218 0 40 1 218 0 41 1 218 0 42 1 218 0 43 1 218 0 44 1 218 0 45 1 218 0 46 1 218 0 47 1 218 0 52 1 218 0 58 1 218 0 59 1 218 0 158] 
#[0 1 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 1 226 0 1 1 226 0 5 1 226 0 7 1 226 0 10 1 226 0 11 1 226 0 12 1 226 0 13 1 226 0 14 1 226 0 15 1 226 0 17 1 226 0 18 1 226 0 19 1 226 0 22 1 226 0 23 1 226 0 24 1 226 0 25 5 161 0 28 1 226 0 29 1 226 0 30 1 226 0 31 1 226 0 37 1 226 0 46 1 226 0 48 1 226 0 49 1 226 0 50 1 226 0 51 1 226 0 54 1 226 0 55 1 226 0 56 1 226 0 57 5 161 0 58 1 226 0 59 5 161 0 92 1 226 0 154 1 226 0 155 1 226 0 156 1 226 0 157] 
#[0 1 230 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 5 165 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 5 169 0 59 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 5 173 0 96 5 177 0 97 5 181 0 98 2 25 0 99 2 29 0 100 5 185 0 101 5 189 0 102 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 1 234 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 5 193 0 2 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 5 197 0 65 5 201 0 66 5 205 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 5 209 0 131 5 213 0 132 2 113 0 134 5 217 0 135 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 2 245 0 1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 6 1 238 0 7 1 238 0 8 2 229 0 9 1 238 0 10 1 238 0 16 1 238 0 20 1 238 0 21 1 238 0 28 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 34 1 238 0 35 1 238 0 36 1 238 0 38 1 238 0 39 1 238 0 40 1 238 0 41 1 238 0 42 1 238 0 43 1 238 0 44 1 238 0 45 1 238 0 46 1 238 0 47 1 238 0 52 1 238 0 53 1 238 0 56 1 238 0 58 1 238 0 59 1 238 0 60 5 221 0 91 2 237 0 94 2 245 0 103 5 225 0 133 1 238 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 5 229 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 5 241 0 65 5 245 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 5 253 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 3 113 0 136 0 165 0 140 0 165 0 141 0 165 0 142 3 117 0 144 3 121 0 145 3 125 0 146 3 129 0 147 3 133 0 148 1 21 0 149 3 137 0 150 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 1 242 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 6 5 0 20 6 9 0 21 6 13 0 78] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 25 0 65 0 157 0 74 0 161 0 75 1 137 0 76 1 137 0 77 1 137 0 80 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 89 1 137 0 90 0 209 0 93 0 213 0 103 1 137 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 1 137 0 114 1 89 0 115 0 161 0 116 1 141 0 117 1 1 0 118 1 97 0 119 1 137 0 140 1 137 0 141 1 137 0 142 1 21 0 149 1 137 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 3 33 0 32 1 22 0 33 1 22 0 34 1 22 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 1 22 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 141 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 1 57 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 3 17 0 46 0 194 0 47 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 60 3 149 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 3 153 0 123 2 65 0 134 2 69 0 137 3 153 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 1 34 0 32 1 34 0 33 1 34 0 34 1 34 0 35 1 34 0 38 1 34 0 39 1 34 0 40 1 34 0 41 1 34 0 42 1 34 0 43 1 34 0 44 1 34 0 45 1 34 0 46 1 34 0 47 1 34 0 52 1 34 0 53 1 34 0 60 1 217 0 69] 
#[0 1 246 0 15] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 17 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 21 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 25 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 29 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 33 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 37 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 41 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 45 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 49 0 65 4 45 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 53 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 57 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 61 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 65 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 69 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 1 57 0 37 3 17 0 46 3 17 0 48 3 9 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 73 0 65 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 3 17 0 112 3 21 0 113 0 165 0 114 1 89 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 1 250 0 2 1 250 0 3 1 250 0 4 1 250 0 6 0 219 0 7 1 250 0 8 1 250 0 9 1 250 0 10 1 250 0 16 1 250 0 20 1 250 0 21 1 250 0 28 1 250 0 31 0 219 0 32 0 219 0 33 0 219 0 34 0 219 0 35 1 250 0 36 0 219 0 38 0 219 0 39 0 219 0 40 0 219 0 41 0 219 0 42 0 219 0 43 0 219 0 44 0 219 0 45 0 219 0 46 0 219 0 47 0 219 0 52 0 219 0 53 0 219 0 56 1 250 0 58 1 250 0 59 0 219 0 60 1 250 0 158] 
#[1 1 146 0 3 1 146 0 16 1 149 0 32 1 153 0 33 1 157 0 34 6 77 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 6 85 0 143] 
#[1 1 150 0 3 1 150 0 16 1 149 0 32 1 153 0 33 1 157 0 34 6 89 0 35 6 93 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71 6 93 0 143] 
#[1 0 223 0 3 0 174 0 7 0 223 0 16 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 38 0 174 0 39 0 174 0 40 0 174 0 41 0 174 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 47 0 174 0 52 0 174 0 53 0 174 0 56 0 174 0 60] 
#[1 2 177 0 1 0 227 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 227 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 2 161 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 2 181 0 46 0 194 0 47 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 60 2 169 0 65 2 201 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 2 177 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 193 0 122 2 197 0 123 2 201 0 124 2 205 0 125 2 209 0 126 2 65 0 134 2 69 0 137 2 197 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 6 97 0 16 0 111] 
#[0 2 6 0 3 0 16] 
#[1 6 101 0 3 6 105 0 16 6 105 0 111] 
#[0 6 109 0 16 0 111] 
#[1 6 113 0 3 2 10 0 16] 
#[0 6 117 0 16 0 111] 
#[0 2 14 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 3 89 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[0 2 18 0 15] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 3 89 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[0 1 198 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 245 0 1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 15 1 238 0 16 1 238 0 20 1 238 0 21 1 238 0 28 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 34 1 238 0 35 1 238 0 36 1 238 0 38 1 238 0 39 1 238 0 40 1 238 0 41 1 238 0 42 1 238 0 43 1 238 0 44 1 238 0 45 1 238 0 46 1 238 0 47 1 238 0 52 1 238 0 53 1 238 0 56 1 238 0 58 1 238 0 59 1 238 0 60 2 245 0 103 6 121 0 133 1 238 0 158] 
#[0 2 22 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 231 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 0 235 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 2 34 0 28 0 58 0 158] 
#[1 2 38 0 2 2 38 0 3 2 38 0 4 2 38 0 6 2 38 0 8 2 38 0 10 2 38 0 16 2 38 0 20 2 38 0 21 2 38 0 28 2 38 0 31 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 38 2 38 0 39 2 38 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 38 0 52 1 209 0 53 2 38 0 58 2 38 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 38 0 158] 
#[1 2 42 0 2 2 42 0 3 2 42 0 4 2 42 0 6 2 42 0 8 2 42 0 10 2 42 0 16 2 42 0 20 2 42 0 21 2 42 0 28 2 42 0 31 2 42 0 32 2 42 0 33 2 42 0 34 2 42 0 35 2 42 0 36 2 42 0 38 2 42 0 39 2 42 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 42 0 52 2 42 0 58 2 42 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 42 0 158] 
#[0 2 46 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 50 0 2 2 50 0 3 2 50 0 4 2 50 0 6 2 50 0 8 2 50 0 10 2 50 0 16 2 50 0 20 2 50 0 21 2 50 0 28 2 50 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 50 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 50 0 52 1 209 0 53 2 50 0 58 2 50 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 50 0 158] 
#[1 2 54 0 2 2 54 0 3 2 54 0 4 2 54 0 6 2 54 0 8 2 54 0 10 2 54 0 16 2 54 0 20 2 54 0 21 2 54 0 28 2 54 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 54 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 54 0 52 2 54 0 58 2 54 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 54 0 158] 
#[0 2 58 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 2 62 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 66 0 2 2 66 0 3 2 66 0 4 2 66 0 6 2 66 0 8 2 66 0 10 2 66 0 16 2 66 0 20 2 66 0 21 2 66 0 28 2 66 0 31 1 149 0 32 2 66 0 33 1 157 0 34 1 161 0 35 2 66 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 66 0 52 1 209 0 53 2 66 0 58 2 66 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 66 0 158] 
#[1 2 70 0 2 2 70 0 3 2 70 0 4 2 70 0 6 2 70 0 8 2 70 0 10 2 70 0 16 2 70 0 20 2 70 0 21 2 70 0 28 2 70 0 31 1 149 0 32 2 70 0 33 1 157 0 34 1 161 0 35 2 70 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 70 0 52 2 70 0 58 2 70 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 70 0 158] 
#[0 2 74 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 78 0 2 2 78 0 3 2 78 0 4 2 78 0 6 2 78 0 8 2 78 0 10 2 78 0 16 2 78 0 20 2 78 0 21 2 78 0 28 2 78 0 31 1 149 0 32 2 78 0 33 2 78 0 34 1 161 0 35 2 78 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 78 0 52 1 209 0 53 2 78 0 58 2 78 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 78 0 158] 
#[1 2 82 0 2 2 82 0 3 2 82 0 4 2 82 0 6 2 82 0 8 2 82 0 10 2 82 0 16 2 82 0 20 2 82 0 21 2 82 0 28 2 82 0 31 1 149 0 32 2 82 0 33 2 82 0 34 1 161 0 35 2 82 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 82 0 52 2 82 0 58 2 82 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 82 0 158] 
#[0 2 86 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 6 2 90 0 8 2 90 0 10 2 90 0 16 2 90 0 20 2 90 0 21 2 90 0 28 2 90 0 31 1 149 0 32 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 90 0 52 1 209 0 53 2 90 0 58 2 90 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 90 0 158] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 6 2 94 0 8 2 94 0 10 2 94 0 16 2 94 0 20 2 94 0 21 2 94 0 28 2 94 0 31 1 149 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 94 0 52 2 94 0 58 2 94 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 94 0 158] 
#[0 2 98 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 10 2 102 0 16 2 102 0 20 2 102 0 21 2 102 0 28 2 102 0 31 1 149 0 32 2 102 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 38 2 102 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 102 0 52 1 209 0 53 2 102 0 58 2 102 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 102 0 158] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 6 2 106 0 8 2 106 0 10 2 106 0 16 2 106 0 20 2 106 0 21 2 106 0 28 2 106 0 31 1 149 0 32 2 106 0 33 2 106 0 34 2 106 0 35 2 106 0 36 2 106 0 38 2 106 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 106 0 52 2 106 0 58 2 106 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 106 0 158] 
#[0 2 110 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 6 2 114 0 8 2 114 0 10 2 114 0 16 2 114 0 20 2 114 0 21 2 114 0 28 2 114 0 31 1 149 0 32 2 114 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 38 2 114 0 39 2 114 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 114 0 52 1 209 0 53 2 114 0 58 2 114 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 114 0 158] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 6 2 118 0 8 2 118 0 10 2 118 0 16 2 118 0 20 2 118 0 21 2 118 0 28 2 118 0 31 1 149 0 32 2 118 0 33 2 118 0 34 2 118 0 35 2 118 0 36 2 118 0 38 2 118 0 39 2 118 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 118 0 52 2 118 0 58 2 118 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 118 0 158] 
#[0 2 122 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 10 2 126 0 16 2 126 0 20 2 126 0 21 2 126 0 28 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 38 2 126 0 39 2 126 0 40 2 126 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 126 0 52 1 209 0 53 2 126 0 58 2 126 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 126 0 158] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 6 2 130 0 8 2 130 0 10 2 130 0 16 2 130 0 20 2 130 0 21 2 130 0 28 2 130 0 31 2 130 0 32 2 130 0 33 2 130 0 34 2 130 0 35 2 130 0 36 2 130 0 38 2 130 0 39 2 130 0 40 2 130 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 130 0 52 2 130 0 58 2 130 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 130 0 158] 
#[0 2 134 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 138 0 2 2 138 0 3 2 138 0 4 2 138 0 6 2 138 0 8 2 138 0 10 2 138 0 16 2 138 0 20 2 138 0 21 2 138 0 28 2 138 0 31 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 38 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 138 0 52 1 209 0 53 2 138 0 58 2 138 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 138 0 158] 
#[1 2 142 0 2 2 142 0 3 2 142 0 4 2 142 0 6 2 142 0 8 2 142 0 10 2 142 0 16 2 142 0 20 2 142 0 21 2 142 0 28 2 142 0 31 2 142 0 32 2 142 0 33 2 142 0 34 2 142 0 35 2 142 0 36 2 142 0 38 2 142 0 39 2 142 0 40 2 142 0 41 2 142 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 142 0 52 2 142 0 58 2 142 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 142 0 158] 
#[0 2 146 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 239 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 243 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 0 247 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 6 2 162 0 8 2 162 0 10 2 162 0 16 2 162 0 20 2 162 0 21 2 162 0 28 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 162 0 52 1 209 0 53 2 162 0 58 2 162 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 162 0 158] 
#[1 2 166 0 2 2 166 0 3 2 166 0 4 2 166 0 6 2 166 0 8 2 166 0 10 2 166 0 16 2 166 0 20 2 166 0 21 2 166 0 28 2 166 0 31 2 166 0 32 2 166 0 33 2 166 0 34 2 166 0 35 2 166 0 36 2 166 0 38 2 166 0 39 2 166 0 40 2 166 0 41 2 166 0 42 2 166 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 166 0 52 2 166 0 58 2 166 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 166 0 158] 
#[0 2 170 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 174 0 2 2 174 0 3 2 174 0 4 2 174 0 6 2 174 0 8 2 174 0 10 2 174 0 16 2 174 0 20 2 174 0 21 2 174 0 28 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 174 0 52 1 209 0 53 2 174 0 58 2 174 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 174 0 158] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 6 2 178 0 8 2 178 0 10 2 178 0 16 2 178 0 20 2 178 0 21 2 178 0 28 2 178 0 31 2 178 0 32 2 178 0 33 2 178 0 34 2 178 0 35 2 178 0 36 2 178 0 38 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 42 2 178 0 43 2 178 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 178 0 52 2 178 0 58 2 178 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 178 0 158] 
#[0 2 182 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 186 0 2 2 186 0 3 2 186 0 4 2 186 0 6 2 186 0 8 2 186 0 10 2 186 0 16 2 186 0 20 2 186 0 21 2 186 0 28 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 186 0 52 1 209 0 53 2 186 0 58 2 186 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 186 0 158] 
#[1 2 190 0 2 2 190 0 3 2 190 0 4 2 190 0 6 2 190 0 8 2 190 0 10 2 190 0 16 2 190 0 20 2 190 0 21 2 190 0 28 2 190 0 31 2 190 0 32 2 190 0 33 2 190 0 34 2 190 0 35 2 190 0 36 2 190 0 38 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 42 2 190 0 43 2 190 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 190 0 52 2 190 0 58 2 190 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 190 0 158] 
#[0 2 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 198 0 2 2 198 0 3 2 198 0 4 2 198 0 6 2 198 0 8 2 198 0 10 2 198 0 16 2 198 0 20 2 198 0 21 2 198 0 28 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 1 201 0 47 2 198 0 52 1 209 0 53 2 198 0 58 2 198 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 198 0 158] 
#[1 2 202 0 2 2 202 0 3 2 202 0 4 2 202 0 6 2 202 0 8 2 202 0 10 2 202 0 16 2 202 0 20 2 202 0 21 2 202 0 28 2 202 0 31 2 202 0 32 2 202 0 33 2 202 0 34 2 202 0 35 2 202 0 36 2 202 0 38 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 42 2 202 0 43 2 202 0 44 2 202 0 45 2 202 0 46 1 201 0 47 2 202 0 52 2 202 0 58 2 202 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 202 0 158] 
#[0 2 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 210 0 2 2 210 0 3 2 210 0 4 2 210 0 6 2 210 0 8 2 210 0 10 2 210 0 16 2 210 0 20 2 210 0 21 2 210 0 28 2 210 0 31 2 210 0 32 2 210 0 33 2 210 0 34 2 210 0 35 2 210 0 36 2 210 0 38 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 44 2 210 0 45 2 210 0 46 2 210 0 47 2 210 0 52 1 209 0 53 2 210 0 58 2 210 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 210 0 158] 
#[1 2 214 0 2 2 214 0 3 2 214 0 4 2 214 0 6 2 214 0 8 2 214 0 10 2 214 0 16 2 214 0 20 2 214 0 21 2 214 0 28 2 214 0 31 2 214 0 32 2 214 0 33 2 214 0 34 2 214 0 35 2 214 0 36 2 214 0 38 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 42 2 214 0 43 2 214 0 44 2 214 0 45 2 214 0 46 2 214 0 47 2 214 0 52 2 214 0 58 2 214 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 214 0 158] 
#[0 2 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 222 0 2 2 222 0 3 2 222 0 4 2 222 0 6 2 222 0 8 2 222 0 10 2 222 0 16 2 222 0 20 2 222 0 21 2 222 0 28 2 222 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 222 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 222 0 52 1 209 0 53 2 222 0 58 2 222 0 59 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 2 222 0 158] 
#[1 2 226 0 2 2 226 0 3 2 226 0 4 2 226 0 6 2 226 0 8 2 226 0 10 2 226 0 16 2 226 0 20 2 226 0 21 2 226 0 28 2 226 0 31 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 2 226 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 226 0 52 2 226 0 58 2 226 0 59 1 229 0 69 1 233 0 70 1 237 0 71 2 226 0 158] 
#[0 2 230 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 154 0 155 0 156 0 157 0 158] 
#[0 2 238 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 6 125 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 93 0 65 2 97 0 66 2 105 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 105 0 128 2 133 0 129 6 129 0 130 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 2 242 0 7] 
#[0 2 246 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 2 250 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 154 0 155 0 156 0 157] 
#[0 2 254 0 1] 
#[0 6 133 0 8 0 107] 
#[0 3 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 6 0 3 0 8] 
#[1 6 137 0 3 6 141 0 8 6 141 0 107] 
#[0 3 10 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 14 0 3 0 8] 
#[1 6 145 0 3 3 18 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 3 177 0 64 0 133 0 65 0 137 0 66 3 177 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157 3 22 0 158] 
#[0 3 26 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 6 149 0 65 6 157 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 6 157 0 120 2 65 0 134 2 69 0 137 6 161 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 30 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 6 165 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 6 169 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 34 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 6 173 0 2 1 126 0 31 6 173 0 104] 
#[1 6 177 0 2 1 134 0 31 6 177 0 104] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 181 0 64 0 133 0 65 0 137 0 66 6 181 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 38 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 6 149 0 65 6 185 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 6 185 0 120 2 65 0 134 2 69 0 137 6 189 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 42 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 193 0 64 0 133 0 65 0 137 0 66 6 193 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 46 0 2 0 4 0 10 0 28 0 58 0 59] 
#[1 3 50 0 2 3 50 0 3 3 50 0 4 3 50 0 6 3 50 0 8 3 50 0 9 3 50 0 10 3 50 0 16 3 50 0 20 3 50 0 21 3 50 0 28 3 50 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 3 50 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 5 121 0 52 1 209 0 53 3 50 0 58 3 50 0 59 1 213 0 60 1 217 0 69 1 225 0 71 3 50 0 158] 
#[0 3 54 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 65 0 56 2 65 0 134 2 69 0 137 6 197 0 138] 
#[0 3 58 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 6 205 0 2 6 201 0 4 5 5 0 28 5 5 0 58 5 5 0 92 6 205 0 104] 
#[0 3 62 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 6 209 0 2 0 104] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 6 169 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 66 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 3 70 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 2 93 0 65 2 97 0 66 6 213 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 6 213 0 128 2 113 0 134 2 117 0 135 6 217 0 136 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 74 0 2 0 3 0 6 0 8 0 16] 
#[1 3 78 0 6 3 78 0 8 3 78 0 16 6 221 0 56 6 221 0 134] 
#[0 3 82 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 3 86 0 6 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 86 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 2 93 0 65 2 97 0 66 6 213 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 6 213 0 128 2 113 0 134 2 117 0 135 6 225 0 136 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 90 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 94 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 98 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 16 1 22 0 20 1 22 0 21 1 22 0 28 1 22 0 31 5 65 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 1 22 0 52 1 209 0 53 1 22 0 58 1 22 0 59 1 213 0 60 1 217 0 69 1 225 0 71 1 22 0 158] 
#[0 1 26 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 1 34 0 2 1 34 0 3 1 34 0 4 1 34 0 6 1 34 0 8 1 34 0 9 1 34 0 10 1 34 0 16 1 34 0 20 1 34 0 21 1 34 0 28 1 34 0 31 1 34 0 32 1 34 0 33 1 34 0 34 1 34 0 35 1 34 0 36 1 34 0 38 1 34 0 39 1 34 0 40 1 34 0 41 1 34 0 42 1 34 0 43 1 34 0 44 1 34 0 45 1 34 0 46 1 34 0 47 1 34 0 52 1 34 0 53 1 34 0 58 1 34 0 59 1 34 0 60 1 217 0 69 1 225 0 71 1 34 0 158] 
#[0 1 38 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 229 0 65 3 189 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 6 233 0 65 3 201 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 65 0 134 2 69 0 137 3 205 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 237 0 65 3 217 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 241 0 65 3 229 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 245 0 65 3 241 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 249 0 65 3 253 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 6 253 0 65 4 9 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 1 0 65 4 21 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 5 0 65 4 33 0 67 4 37 0 72 4 41 0 73 4 45 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 9 0 65 4 57 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 13 0 65 4 69 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 17 0 65 4 81 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 21 0 65 4 93 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 25 0 65 4 105 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 29 0 65 4 117 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 7 33 0 2 1 126 0 31 7 33 0 104] 
#[1 7 37 0 2 1 134 0 31 7 37 0 104] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 6 1 190 0 8 1 190 0 9 1 190 0 10 1 190 0 16 1 190 0 20 1 190 0 21 1 190 0 28 1 190 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 1 190 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 5 121 0 52 1 209 0 53 1 190 0 58 1 190 0 59 1 213 0 60 1 217 0 69 1 225 0 71 1 190 0 158] 
#[0 1 194 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 202 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 206 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 1 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 3 106 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 3 110 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 3 114 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 154 0 155 0 156 0 157] 
#[0 3 118 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 3 122 0 1 3 122 0 5 3 122 0 7 3 122 0 10 3 122 0 11 3 122 0 12 3 122 0 13 3 122 0 14 3 122 0 15 3 122 0 17 3 122 0 18 3 122 0 19 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 7 41 0 28 3 122 0 29 3 122 0 30 3 122 0 31 3 122 0 37 3 122 0 46 3 122 0 48 3 122 0 49 3 122 0 50 3 122 0 51 3 122 0 54 3 122 0 55 3 122 0 56 3 122 0 57 7 41 0 58 3 122 0 59 7 41 0 92 3 122 0 154 3 122 0 155 3 122 0 156 3 122 0 157] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 3 126 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 3 126 0 59 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 7 45 0 97 7 49 0 98 2 25 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 4 189 0 10 7 53 0 28 7 53 0 58 3 130 0 59 7 53 0 92 7 57 0 95] 
#[1 5 169 0 59 5 173 0 96 5 185 0 101 7 61 0 102] 
#[1 3 134 0 10 5 169 0 59 5 173 0 96 5 185 0 101 7 65 0 102] 
#[0 7 69 0 10] 
#[0 3 138 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 3 142 0 2 3 142 0 3 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71] 
#[1 3 146 0 2 3 146 0 3 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71] 
#[1 0 251 0 2 3 150 0 3 7 73 0 104] 
#[0 3 154 0 2 0 3] 
#[1 7 81 0 2 7 77 0 3 7 81 0 104] 
#[1 7 89 0 2 7 85 0 3 7 89 0 104] 
#[0 3 158 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 3 162 0 2 3 162 0 3 3 162 0 4 3 162 0 6 3 162 0 7 3 162 0 8 2 229 0 9 3 162 0 10 3 162 0 16 3 162 0 20 3 162 0 21 3 162 0 28 3 162 0 31 3 162 0 32 3 162 0 33 3 162 0 34 3 162 0 35 3 162 0 36 3 162 0 38 3 162 0 39 3 162 0 40 3 162 0 41 3 162 0 42 3 162 0 43 3 162 0 44 3 162 0 45 3 162 0 46 3 162 0 47 3 162 0 52 3 162 0 53 3 162 0 56 3 162 0 58 3 162 0 59 3 162 0 60 7 93 0 91 2 237 0 94 3 162 0 158] 
#[0 1 250 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 1 109 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 113 0 64 1 117 0 65 0 137 0 66 1 113 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 1 125 0 64 1 129 0 65 0 137 0 66 1 125 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 1 137 0 76 1 137 0 77 1 137 0 80 1 137 0 81 1 137 0 82 1 137 0 83 1 137 0 84 1 137 0 85 1 137 0 89 1 137 0 90 0 209 0 93 0 213 0 103 1 137 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 1 137 0 114 0 245 0 115 0 249 0 116 1 141 0 117 1 1 0 118 1 5 0 119 1 137 0 140 1 137 0 141 1 137 0 142 1 21 0 149 1 137 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 7 97 0 32 7 101 0 33 7 105 0 34 7 109 0 35 6 85 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 7 153 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 6 85 0 143] 
#[1 1 149 0 32 1 153 0 33 1 157 0 34 6 89 0 35 6 93 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71 6 93 0 143] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 149 0 64 2 153 0 65 0 137 0 66 2 149 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 2 2 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 2 2 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 2 161 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 2 181 0 46 0 194 0 47 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 60 2 169 0 65 2 193 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 193 0 122 2 197 0 123 2 193 0 124 2 193 0 125 2 65 0 134 2 69 0 137 2 197 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 161 0 37 2 181 0 46 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 2 169 0 65 2 213 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 213 0 122 2 217 0 123 2 213 0 124 2 213 0 125 2 65 0 134 2 69 0 137 2 217 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 157 0 64 0 133 0 65 0 137 0 66 7 157 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 166 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 170 0 20 0 21] 
#[1 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 38 2 38 0 39 2 38 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 38 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 50 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 2 66 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 66 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 2 78 0 33 2 78 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 78 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 2 90 0 33 2 90 0 34 2 90 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 90 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 2 102 0 33 2 102 0 34 2 102 0 35 2 102 0 38 2 102 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 102 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 2 114 0 33 2 114 0 34 2 114 0 35 2 114 0 38 2 114 0 39 2 114 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 114 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 38 2 126 0 39 2 126 0 40 2 126 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 126 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 38 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 138 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 162 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 174 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 186 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 3 85 0 47 2 198 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 2 210 0 32 2 210 0 33 2 210 0 34 2 210 0 35 2 210 0 38 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 44 2 210 0 45 2 210 0 46 2 210 0 47 2 210 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 3 33 0 32 3 37 0 33 3 41 0 34 3 45 0 35 3 49 0 38 3 53 0 39 3 57 0 40 3 61 0 41 3 65 0 42 3 69 0 43 3 73 0 44 3 77 0 45 3 81 0 46 3 85 0 47 2 222 0 52 1 209 0 53 1 213 0 60 1 217 0 69] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 7 161 0 65 7 165 0 66 3 229 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 3 109 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 7 169 0 136 0 165 0 140 0 165 0 141 0 165 0 142 7 173 0 144 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 174 0 1 0 5 0 7 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 57 0 154 0 155 0 156 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 177 0 65 7 181 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 7 161 0 65 7 165 0 66 3 229 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 3 109 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 7 189 0 136 0 165 0 140 0 165 0 141 0 165 0 142 7 193 0 144 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 7 197 0 65 7 201 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 178 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 7 213 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 7 205 0 65 7 209 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 7 213 0 111 5 249 0 112 5 253 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 3 113 0 136 0 165 0 140 0 165 0 141 0 165 0 142 3 117 0 144 3 129 0 147 3 133 0 148 1 21 0 149 7 217 0 150 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 182 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 186 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 3 190 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 7 205 0 65 7 209 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 5 253 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 7 221 0 136 0 165 0 140 0 165 0 141 0 165 0 142 7 225 0 144 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 194 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 162 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 198 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 7 229 0 16 0 111] 
#[0 3 202 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 7 237 0 8 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 2 93 0 65 2 97 0 66 7 233 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 7 233 0 86 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 7 237 0 107 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 7 233 0 128 2 113 0 134 4 173 0 135 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 3 206 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 6 221 0 56 0 134] 
#[1 3 210 0 2 3 210 0 3 3 210 0 4 3 210 0 6 3 210 0 8 3 210 0 9 3 210 0 10 3 210 0 16 3 210 0 20 3 210 0 21 3 210 0 28 3 210 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 3 210 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 5 121 0 52 1 209 0 53 3 210 0 58 3 210 0 59 1 213 0 60 1 217 0 69 1 225 0 71 3 210 0 158] 
#[0 3 214 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 3 218 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 3 222 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 3 226 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 3 230 0 2 0 4 0 10 0 28 0 58 0 59] 
#[0 3 234 0 31 0 33] 
#[0 3 238 0 31 0 33] 
#[1 2 1 0 31 7 241 0 100] 
#[0 3 242 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 3 246 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[1 2 1 0 31 7 245 0 100] 
#[0 3 250 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 7 249 0 2 0 104] 
#[0 3 254 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 2 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 6 0 3 0 6 0 8 0 16] 
#[0 4 10 0 8] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 2 93 0 65 2 97 0 66 7 253 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 7 253 0 128 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 14 0 6 0 16] 
#[1 2 38 0 2 2 38 0 3 2 38 0 4 2 38 0 6 2 38 0 8 2 38 0 9 2 38 0 10 2 38 0 16 2 38 0 20 2 38 0 21 2 38 0 28 2 38 0 31 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 38 2 38 0 39 2 38 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 38 0 52 1 209 0 53 2 38 0 58 2 38 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 38 0 158] 
#[1 2 50 0 2 2 50 0 3 2 50 0 4 2 50 0 6 2 50 0 8 2 50 0 9 2 50 0 10 2 50 0 16 2 50 0 20 2 50 0 21 2 50 0 28 2 50 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 2 50 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 50 0 52 1 209 0 53 2 50 0 58 2 50 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 50 0 158] 
#[1 2 66 0 2 2 66 0 3 2 66 0 4 2 66 0 6 2 66 0 8 2 66 0 9 2 66 0 10 2 66 0 16 2 66 0 20 2 66 0 21 2 66 0 28 2 66 0 31 5 65 0 32 2 66 0 33 5 73 0 34 5 77 0 35 2 66 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 66 0 52 1 209 0 53 2 66 0 58 2 66 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 66 0 158] 
#[1 2 78 0 2 2 78 0 3 2 78 0 4 2 78 0 6 2 78 0 8 2 78 0 9 2 78 0 10 2 78 0 16 2 78 0 20 2 78 0 21 2 78 0 28 2 78 0 31 5 65 0 32 2 78 0 33 2 78 0 34 5 77 0 35 2 78 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 78 0 52 1 209 0 53 2 78 0 58 2 78 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 78 0 158] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 6 2 90 0 8 2 90 0 9 2 90 0 10 2 90 0 16 2 90 0 20 2 90 0 21 2 90 0 28 2 90 0 31 5 65 0 32 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 90 0 52 1 209 0 53 2 90 0 58 2 90 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 90 0 158] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 6 2 102 0 8 2 102 0 9 2 102 0 10 2 102 0 16 2 102 0 20 2 102 0 21 2 102 0 28 2 102 0 31 5 65 0 32 2 102 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 38 2 102 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 102 0 52 1 209 0 53 2 102 0 58 2 102 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 102 0 158] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 6 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 16 2 114 0 20 2 114 0 21 2 114 0 28 2 114 0 31 5 65 0 32 2 114 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 38 2 114 0 39 2 114 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 114 0 52 1 209 0 53 2 114 0 58 2 114 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 114 0 158] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 6 2 126 0 8 2 126 0 9 2 126 0 10 2 126 0 16 2 126 0 20 2 126 0 21 2 126 0 28 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 38 2 126 0 39 2 126 0 40 2 126 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 126 0 52 1 209 0 53 2 126 0 58 2 126 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 126 0 158] 
#[1 2 138 0 2 2 138 0 3 2 138 0 4 2 138 0 6 2 138 0 8 2 138 0 9 2 138 0 10 2 138 0 16 2 138 0 20 2 138 0 21 2 138 0 28 2 138 0 31 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 38 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 138 0 52 1 209 0 53 2 138 0 58 2 138 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 138 0 158] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 6 2 162 0 8 2 162 0 9 2 162 0 10 2 162 0 16 2 162 0 20 2 162 0 21 2 162 0 28 2 162 0 31 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 162 0 52 1 209 0 53 2 162 0 58 2 162 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 162 0 158] 
#[1 2 174 0 2 2 174 0 3 2 174 0 4 2 174 0 6 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 16 2 174 0 20 2 174 0 21 2 174 0 28 2 174 0 31 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 174 0 52 1 209 0 53 2 174 0 58 2 174 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 174 0 158] 
#[1 2 186 0 2 2 186 0 3 2 186 0 4 2 186 0 6 2 186 0 8 2 186 0 9 2 186 0 10 2 186 0 16 2 186 0 20 2 186 0 21 2 186 0 28 2 186 0 31 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 186 0 52 1 209 0 53 2 186 0 58 2 186 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 186 0 158] 
#[1 2 198 0 2 2 198 0 3 2 198 0 4 2 198 0 6 2 198 0 8 2 198 0 9 2 198 0 10 2 198 0 16 2 198 0 20 2 198 0 21 2 198 0 28 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 5 117 0 47 2 198 0 52 1 209 0 53 2 198 0 58 2 198 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 198 0 158] 
#[1 2 210 0 2 2 210 0 3 2 210 0 4 2 210 0 6 2 210 0 8 2 210 0 9 2 210 0 10 2 210 0 16 2 210 0 20 2 210 0 21 2 210 0 28 2 210 0 31 2 210 0 32 2 210 0 33 2 210 0 34 2 210 0 35 2 210 0 36 2 210 0 38 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 44 2 210 0 45 2 210 0 46 2 210 0 47 2 210 0 52 1 209 0 53 2 210 0 58 2 210 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 210 0 158] 
#[1 2 222 0 2 2 222 0 3 2 222 0 4 2 222 0 6 2 222 0 8 2 222 0 9 2 222 0 10 2 222 0 16 2 222 0 20 2 222 0 21 2 222 0 28 2 222 0 31 5 65 0 32 5 69 0 33 5 73 0 34 5 77 0 35 2 222 0 36 5 81 0 38 5 85 0 39 5 89 0 40 5 93 0 41 5 97 0 42 5 101 0 43 5 105 0 44 5 109 0 45 5 113 0 46 5 117 0 47 2 222 0 52 1 209 0 53 2 222 0 58 2 222 0 59 1 213 0 60 1 217 0 69 1 225 0 71 2 222 0 158] 
#[0 4 18 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 4 22 0 2 0 3 0 4 0 6 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 58 0 59 0 60 0 158] 
#[0 4 26 0 1 0 5 0 7 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 18 0 19 0 22 0 23 0 24 0 25 0 29 0 30 0 31 0 37 0 46 0 48 0 49 0 50 0 51 0 54 0 55 0 56 0 57 0 59 0 154 0 155 0 156 0 157] 
#[1 3 130 0 10 8 1 0 28 8 1 0 58 3 130 0 59 8 1 0 92] 
#[0 4 30 0 10 0 59] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 6 165 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 4 34 0 59 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 6 169 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 38 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 8 5 0 10] 
#[0 4 42 0 10] 
#[0 4 46 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 4 50 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 5 197 0 65 5 201 0 66 8 13 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 8 13 0 131 2 113 0 134 8 17 0 135 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 54 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 8 21 0 2 6 221 0 56 8 21 0 104 6 221 0 134] 
#[0 4 58 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 62 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 25 0 65 3 185 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 29 0 65 3 197 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 33 0 65 3 213 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 113 0 56 0 113 0 57 8 37 0 65 7 165 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 3 105 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 5 253 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 113 0 134 2 117 0 135 7 169 0 136 0 165 0 140 0 165 0 141 0 165 0 142 7 173 0 144 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 41 0 65 3 237 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 45 0 65 3 249 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 49 0 65 4 5 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 53 0 65 4 17 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 57 0 65 4 29 0 66 0 145 0 68 4 45 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 61 0 65 4 53 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 65 0 65 4 65 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 69 0 65 4 77 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 73 0 65 4 89 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 77 0 65 4 101 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 81 0 65 4 113 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 66 0 20 0 21] 
#[1 2 78 0 3 2 78 0 16 1 149 0 32 2 78 0 33 2 78 0 34 1 161 0 35 6 85 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 78 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 1 225 0 71 6 85 0 143] 
#[1 2 82 0 3 2 82 0 16 1 149 0 32 2 82 0 33 2 82 0 34 1 161 0 35 6 93 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 2 82 0 52 1 229 0 69 1 233 0 70 1 237 0 71 6 93 0 143] 
#[0 4 70 0 16] 
#[0 4 74 0 3 0 16] 
#[1 4 78 0 3 4 78 0 16 7 97 0 32 7 101 0 33 7 105 0 34 8 85 0 35 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 7 153 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 4 82 0 3 4 82 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71] 
#[1 0 213 0 1 0 194 0 3 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 194 0 16 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 194 0 36 2 161 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 2 181 0 46 0 194 0 47 2 181 0 48 2 165 0 49 0 97 0 50 0 101 0 51 0 194 0 52 0 194 0 53 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 0 194 0 60 2 169 0 65 2 193 0 67 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 2 181 0 112 2 185 0 113 0 165 0 114 2 189 0 115 0 161 0 116 0 253 0 117 1 1 0 118 1 97 0 119 2 41 0 121 2 193 0 122 2 197 0 123 2 193 0 124 2 193 0 125 2 65 0 134 2 69 0 137 2 197 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 86 0 16] 
#[0 4 90 0 3 0 16] 
#[1 4 94 0 3 4 94 0 16 7 97 0 32 7 101 0 33 7 105 0 34 8 85 0 35 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 7 153 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 4 98 0 3 4 98 0 16 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71] 
#[1 7 97 0 32 7 101 0 33 7 105 0 34 8 85 0 35 6 85 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 7 153 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 6 85 0 143] 
#[1 1 149 0 32 1 153 0 33 1 157 0 34 1 161 0 35 6 93 0 36 1 165 0 38 1 169 0 39 1 173 0 40 1 177 0 41 1 181 0 42 1 185 0 43 1 189 0 44 1 193 0 45 1 197 0 46 1 201 0 47 1 205 0 52 1 229 0 69 1 233 0 70 1 237 0 71 6 93 0 143] 
#[0 4 102 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 106 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 8 89 0 16 0 111] 
#[0 4 110 0 3 0 16] 
#[0 4 114 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 118 0 3 0 8] 
#[0 4 122 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 126 0 2 0 4 0 10 0 28 0 58 0 59] 
#[0 4 130 0 2 0 4 0 10 0 28 0 58 0 59] 
#[0 4 134 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[0 4 138 0 2 0 3 0 6 0 8 0 16] 
#[1 2 33 0 1 0 225 0 5 0 221 0 7 4 34 0 10 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 2 1 0 31 0 81 0 37 0 233 0 46 0 233 0 48 0 93 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 2 65 0 56 0 113 0 57 4 34 0 59 2 9 0 64 2 13 0 65 0 137 0 66 2 17 0 67 0 145 0 68 0 149 0 72 0 153 0 73 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 6 169 0 99 2 29 0 100 2 33 0 103 2 37 0 105 0 221 0 106 0 225 0 108 0 229 0 110 0 233 0 112 0 237 0 113 0 165 0 114 0 245 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 2 41 0 121 2 45 0 122 2 45 0 123 2 45 0 124 2 45 0 125 2 61 0 127 2 65 0 134 2 69 0 137 2 45 0 138 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 142 0 2 0 3 0 4 0 6 0 8 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 58 0 59 0 158] 
#[0 3 150 0 2 0 3] 
#[0 4 146 0 2 0 3] 
#[1 8 97 0 2 8 93 0 3 8 97 0 104] 
#[0 4 150 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 38 0 3 2 38 0 16 2 38 0 32 2 38 0 33 2 38 0 34 2 38 0 35 2 38 0 36 2 38 0 38 2 38 0 39 2 38 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 38 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 50 0 3 2 50 0 16 7 97 0 32 7 101 0 33 7 105 0 34 8 85 0 35 2 50 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 50 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 66 0 3 2 66 0 16 7 97 0 32 2 66 0 33 7 105 0 34 8 85 0 35 2 66 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 66 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 7 97 0 32 2 78 0 33 2 78 0 34 8 85 0 35 6 85 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 78 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70 6 85 0 143] 
#[1 2 90 0 3 2 90 0 16 7 97 0 32 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 90 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 102 0 3 2 102 0 16 7 97 0 32 2 102 0 33 2 102 0 34 2 102 0 35 2 102 0 36 2 102 0 38 2 102 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 102 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 114 0 3 2 114 0 16 7 97 0 32 2 114 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 38 2 114 0 39 2 114 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 114 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 126 0 3 2 126 0 16 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 38 2 126 0 39 2 126 0 40 2 126 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 126 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 138 0 3 2 138 0 16 2 138 0 32 2 138 0 33 2 138 0 34 2 138 0 35 2 138 0 36 2 138 0 38 2 138 0 39 2 138 0 40 2 138 0 41 2 138 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 138 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 162 0 3 2 162 0 16 2 162 0 32 2 162 0 33 2 162 0 34 2 162 0 35 2 162 0 36 2 162 0 38 2 162 0 39 2 162 0 40 2 162 0 41 2 162 0 42 2 162 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 162 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 174 0 3 2 174 0 16 2 174 0 32 2 174 0 33 2 174 0 34 2 174 0 35 2 174 0 36 2 174 0 38 2 174 0 39 2 174 0 40 2 174 0 41 2 174 0 42 2 174 0 43 2 174 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 174 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 186 0 3 2 186 0 16 2 186 0 32 2 186 0 33 2 186 0 34 2 186 0 35 2 186 0 36 2 186 0 38 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 42 2 186 0 43 2 186 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 186 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 198 0 3 2 198 0 16 2 198 0 32 2 198 0 33 2 198 0 34 2 198 0 35 2 198 0 36 2 198 0 38 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 44 2 198 0 45 2 198 0 46 7 149 0 47 2 198 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 210 0 3 2 210 0 16 2 210 0 32 2 210 0 33 2 210 0 34 2 210 0 35 2 210 0 36 2 210 0 38 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 44 2 210 0 45 2 210 0 46 2 210 0 47 2 210 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 2 222 0 3 2 222 0 16 7 97 0 32 7 101 0 33 7 105 0 34 8 85 0 35 2 222 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 222 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[1 0 213 0 1 0 225 0 5 0 221 0 7 0 21 0 11 0 25 0 12 0 29 0 13 0 33 0 14 0 229 0 15 0 41 0 17 0 45 0 18 0 49 0 19 0 53 0 22 0 57 0 23 0 61 0 24 0 65 0 25 0 73 0 29 1 21 0 30 5 233 0 37 5 249 0 46 5 249 0 48 5 237 0 49 0 97 0 50 0 101 0 51 0 105 0 54 0 109 0 55 0 113 0 57 8 101 0 65 3 225 0 66 0 145 0 68 0 157 0 74 0 161 0 75 0 165 0 76 0 165 0 77 0 165 0 80 0 165 0 81 0 165 0 82 0 165 0 83 0 165 0 84 0 165 0 85 0 165 0 89 0 165 0 90 0 209 0 93 0 213 0 103 0 165 0 105 0 221 0 106 0 225 0 108 0 229 0 110 5 249 0 112 7 185 0 113 0 165 0 114 6 1 0 115 0 249 0 116 0 253 0 117 1 1 0 118 1 5 0 119 0 165 0 140 0 165 0 141 0 165 0 142 1 21 0 149 0 165 0 153 1 29 0 154 1 33 0 155 1 37 0 156 1 41 0 157] 
#[0 4 154 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 8 105 0 2 6 221 0 56 8 105 0 104 6 221 0 134] 
#[0 4 158 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158] 
#[1 2 78 0 3 2 78 0 16 7 97 0 32 2 78 0 33 2 78 0 34 8 85 0 35 2 78 0 36 7 113 0 38 7 117 0 39 7 121 0 40 7 125 0 41 7 129 0 42 7 133 0 43 7 137 0 44 7 141 0 45 7 145 0 46 7 149 0 47 2 78 0 52 1 209 0 53 1 213 0 60 1 217 0 69 1 221 0 70] 
#[0 4 162 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 9 0 10 0 15 0 16 0 20 0 21 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 52 0 53 0 56 0 58 0 59 0 60 0 158]
	).
]

{ #category : #private }
ElixirParser >> actionsForCurrentToken [
	| lookahead ids id actions token position previousState oldScope |
	scanner lastWasEol
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ scanner lastWasEol: false.
					position := scanner position.
					token := currentToken.
					previousState := currentState.
					currentToken := currentToken class
							value: ''
							start: token startPosition
							ids: {scanner eolId}.
					currentState := self duplicateState.
					self position: position - token size.
					self parseCurrentToken.
					currentToken := token.
					self position: position.
					self parseCurrentToken.
					self restoreState: previousState.
					currentToken := token ] ].
	currentToken ids first = scanner dual_opId
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner eolId to: actions.
			actions notEmpty ifTrue: [ ^ actions ] ].
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
				ifTrue: [ ids := {id.
							scanner identifierId} ] ].
	(currentToken ids includes: scanner dot_opId)
		ifTrue: [ self peekNextToken value = '(' ifTrue: [ ids := {scanner dot_call_opId} ] ].
	ids notNil ifTrue: [ currentToken ids: ids ].
	actions := super actionsForCurrentToken.
	(actions isEmpty
		and: [ (currentToken ids includes: scanner interpolatedStringEndId) not
				and: [ (currentToken ids includes: scanner interpolatedStringMidId) not
						and: [ currentToken value beginsWith: '}' ] ] ])
		ifTrue: [ oldScope := self scope.
			self scope: #interpolatedString.
			self position: currentToken startPosition - 1.
			currentToken := nil.
			self getNextToken.
			self scope: oldScope.
			^ self actionsForCurrentToken ].
	^ actions
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFor__interpolatedStringMid___part__expr__expression___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
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
ElixirParser >> reduceActionForaccess_expr24: nodes [
	| result |
	result := ElixirSigilNode new.
	result sigil: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr25: nodes [
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
	result addToken: (nodes at: 3) to: result semis.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr8: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
	result stab: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForaccess_expr9: nodes [

	| result |
	result := ElixirAccessExprNode new.
	result leftParen: (nodes at: 1).
	result addToken: (nodes at: 2) to: result semis.
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
ElixirParser >> reduceActionForbracket_values1: nodes [

	| result |
	result := ElixirBracketValuesNode new.
	result addNode: (nodes at: 1) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForbracket_values2: nodes [

	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addNode: (nodes at: 3) to: result values.
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
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionFordot_op_identifier2: nodes [

	| result |
	result := ElixirDotOpIdentifierNode new.
	result expression: (nodes at: 1).
	result op: (nodes at: 2).
	result identifier: (nodes at: 3).
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
ElixirParser >> reduceActionForgrammar6: nodes [
	| result |
	result := ElixirGrammarNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw1: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw2: nodes [

	| result |
	result := ElixirKwNode new.
	result kw: (nodes at: 1).
	result com: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base1: nodes [
	| result |
	result := ElixirKwBaseNode new.
	result addToken: (nodes at: 1) to: result keys.
	result addNode: (nodes at: 2) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
ElixirParser >> reduceActionForkw_base2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result coms.
	result addToken: (nodes at: 3) to: result keys.
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
ElixirParser >> reduceActionForstab_eoe2: nodes [

	| result |
	result := ElixirStabEoeNode new.
	result stab: (nodes at: 1).
	result eoe: (nodes at: 2).
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
	result when: (nodes at: 2).
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
	result rightParen: (nodes at: 3).
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
		or: [ (currentToken ids includes: scanner op_identifierId)
				or: [ currentToken ids includes: scanner block_identifierId ] ]
]
