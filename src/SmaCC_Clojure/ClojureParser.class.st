Class {
	#name : #ClojureParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Clojure'
}

{ #category : #'generated-accessing' }
ClojureParser class >> cacheId [
	^'2021-02-21T13:54:05.410209-06:00'
]

{ #category : #generated }
ClojureParser class >> definitionComment [
"%glr;

%root Expression;
%prefix Clojure;
%suffix Node;
%id <number>;
<sign>
	: \+|\-
	;
<integer>
	: <sign>? (([1-9] \d*) | (0[0-7]+) | (0x[0-9A-F]+) | 0) N?	# 36rNUMBER
	;
<radixInteger>
	: ([2-9] | [1-2] [0-9] | 3 [0-6]) r 
	;
<float>
	: (\+|\-)? \d+ \. \d* ([Ee] <sign>? \d+)? M?
	;
<ratio>
	: <integer> \/ <integer>
	;
<number>
	: <integer>
	| <float>
	| <ratio>
	;
<comment>
	: \; [^\r\n]*
	| \,	# commas are treated as whitespace, but whitespace is not saved, so I made them comments instead
	;
<character>
	: \\ (. | u[0-9A-F]{4,4} | o[0-7]{3,3} | newline | return | space | tab | space | backspace | formfeed)	# other character types
	;
<string>
	: \"" ([^""\\] | <character>)* \""
	;
<regularExpression>
	: \# \"" [^""]* \""
	;
<firstSymbolChar>
	: [a-zA-Z!$%&*\-_+=<>\.?/\|]
	;
<symbolChars>
	: <firstSymbolChar> | \d | \# | \'
	;
<symbol>
	: (<firstSymbolChar> (<symbolChars> | \: <symbolChars>)* \/)? <firstSymbolChar> (<symbolChars> | \: <symbolChars>)*
	;
<keyword>
	: \:{1,2} (\d+ <symbol>? | \d* <symbol>)
	;
<whitespace>
	: \s+
	;
File
	: Expressions {{}}
	;
Expression 
	: Number
	| String
	| RegularExpression
	| Character
	| Symbol
	| Keyword
	| List
	| Vector
	| Set
	| Map
	| Quote
	| Unquote
	| Var
	| Fn
	| Deref
	| Discard
	| Symbolic
	| TaggedLiteral
	| Metadata
	;
Metadata
	: (""^"" 'uparrow' | ""#^"" 'uparrow') Expression 'metadata' Expression 'value' {{}}
	;
TaggedLiteral
	: ""#"" 'hash' (<symbol> 'name' | <keyword> 'name') Expression 'value' {{}}
	;
Symbolic
	: ""##"" 'hashes' <symbol> 'name' {{}}
	;
Discard
	: ""#_"" 'discard' Expression 'value' {{}}
	;
Deref
	: ""@"" 'deref' Expression 'value' {{}}
	;
Unquote
	: (""~"" 'unquote' | ""~@"" 'unquote') Expression 'value' {{}}
	;
Fn
	: ""#("" 'leftParen' Expressions "")"" 'rightParen' {{}}
	;
Var
	: ""#'"" 'varToken' (Symbol 'name' | Unquote 'name') {{}}
	;
Quote
	: (""'"" 'quote' | ""`"" 'quote') Expression 'value' {{}}
	;
Map
	: ""{"" 'leftBrace' MapPairs ""}"" 'rightBrace' {{}}
	;
MapPairs
	:
	| MapPairs MapPair 'pair'
	;
MapPair
	: Expression 'key' Expression 'value' {{Pair}}
	;
Set
	: ""#{"" 'leftBrace' Expressions ""}"" 'rightBrace' {{}}
	;
Vector
	: ""["" 'leftBracket' Expressions ""]"" 'rightBracket' {{}}
	;
List
	: ""("" 'leftParen' Expressions "")"" 'rightParen' {{}}
	;
Expressions
	:
	| Expressions Expression 'expression'
	;
Keyword
	: <keyword> 'name' {{}}
	;
Symbol
	: <symbol> 'name' {{}}
	;
Character
	: <character> 'value' {{}}
	;
RegularExpression
	: <regularExpression> 'value' {{}}
	;
String
	: <string> 'value' {{}}
	;
Number
	: <number> 'value' {{}}
	;"
]

{ #category : #'file types' }
ClojureParser class >> fileExtension [
	^ '.clj'
]

{ #category : #generated }
ClojureParser class >> reduceTable [
^#(
	#(47 0 #reduceActionForExpressions1: 2284545 false ) 
	#(30 1 #reduceActionForFile1: 1069057 false ) 
	#(42 0 #reduceActionForExpressions1: 1987585 false ) 
	#(53 1 #reduceActionForNumber1: 2550785 false ) 
	#(50 1 #reduceActionForCharacter1: 2414593 false ) 
	#(52 1 #reduceActionForString1: 2514945 false ) 
	#(51 1 #reduceActionForRegularExpression1: 2456577 false ) 
	#(49 1 #reduceActionForSymbol1: 2379777 false ) 
	#(48 1 #reduceActionForKeyword1: 2342913 false ) 
	#(47 2 #reduceActionForExpressions2: 2284546 false ) 
	#(31 1 #liftFirstValue: 1097747 false ) 
	#(31 1 #liftFirstValue: 1097746 false ) 
	#(31 1 #liftFirstValue: 1097745 false ) 
	#(31 1 #liftFirstValue: 1097744 false ) 
	#(31 1 #liftFirstValue: 1097743 false ) 
	#(31 1 #liftFirstValue: 1097740 false ) 
	#(31 1 #liftFirstValue: 1097742 false ) 
	#(31 1 #liftFirstValue: 1097741 false ) 
	#(31 1 #liftFirstValue: 1097739 false ) 
	#(31 1 #liftFirstValue: 1097738 false ) 
	#(31 1 #liftFirstValue: 1097737 false ) 
	#(31 1 #liftFirstValue: 1097736 false ) 
	#(31 1 #liftFirstValue: 1097735 false ) 
	#(31 1 #liftFirstValue: 1097734 false ) 
	#(31 1 #liftFirstValue: 1097733 false ) 
	#(31 1 #liftFirstValue: 1097732 false ) 
	#(31 1 #liftFirstValue: 1097731 false ) 
	#(31 1 #liftFirstValue: 1097730 false ) 
	#(31 1 #liftFirstValue: 1097729 false ) 
	#(34 2 #reduceActionForSymbolic1: 1509377 false ) 
	#(39 2 #reduceActionForVar2: 1798146 false ) 
	#(39 2 #reduceActionForVar2: 1798145 false ) 
	#(35 2 #reduceActionForDiscard1: 1560577 false ) 
	#(40 2 #reduceActionForQuote1: 1863681 false ) 
	#(36 2 #reduceActionForDeref1: 1614849 false ) 
	#(40 2 #reduceActionForQuote1: 1863682 false ) 
	#(37 2 #reduceActionForUnquote1: 1664001 false ) 
	#(37 2 #reduceActionForUnquote1: 1664002 false ) 
	#(33 3 #reduceActionForTaggedLiteral1: 1415169 false ) 
	#(33 3 #reduceActionForTaggedLiteral1: 1415170 false ) 
	#(38 3 #reduceActionForFn1: 1736705 false ) 
	#(32 3 #reduceActionForMetadata2: 1318914 false ) 
	#(44 3 #reduceActionForSet1: 2091009 false ) 
	#(46 3 #reduceActionForList1: 2222081 false ) 
	#(45 3 #reduceActionForVector1: 2153473 false ) 
	#(32 3 #reduceActionForMetadata2: 1318913 false ) 
	#(41 3 #reduceActionForMap1: 1929217 false ) 
	#(42 2 #reduceActionForExpressions2: 1987586 false ) 
	#(43 2 #reduceActionForMapPair1: 2030593 false )
	).
]

{ #category : #generated }
ClojureParser class >> scannerClass [
	^ClojureScanner
]

{ #category : #generated }
ClojureParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
ClojureParser class >> symbolNames [
	^ #('"#"' '"##"' '"#''"' '"#("' '"#^"' '"#_"' '"#{"' '"''"' '"("' '")"' '"@"' '"["' '"]"' '"^"' '"`"' '"{"' '"}"' '"~"' '"~@"' '<radixInteger>' '<number>' '<comment>' '<character>' '<string>' '<regularExpression>' '<symbol>' '<keyword>' '<whitespace>' 'B e g i n' 'File' 'Expression' 'Metadata' 'TaggedLiteral' 'Symbolic' 'Discard' 'Deref' 'Unquote' 'Fn' 'Var' 'Quote' 'Map' 'MapPairs' 'MapPair' 'Set' 'Vector' 'List' 'Expressions' 'Keyword' 'Symbol' 'Character' 'RegularExpression' 'String' 'Number' 'E O F' 'error')
]

{ #category : #generated }
ClojureParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ClojureFileNode #ClojureFileNode #ClojureExpressionNode #ClojureMetadataNode #ClojureTaggedLiteralNode #ClojureSymbolicNode #ClojureDiscardNode #ClojureDerefNode #ClojureUnquoteNode #ClojureFnNode #ClojureVarNode #ClojureQuoteNode #ClojureMapNode #OrderedCollection #ClojurePairNode #ClojureSetNode #ClojureVectorNode #ClojureListNode #OrderedCollection #ClojureKeywordNode #ClojureSymbolNode #ClojureCharacterNode #ClojureRegularExpressionNode #ClojureStringNode #ClojureNumberNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ClojureParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 9 0 30 0 13 0 47 0 6 0 54] 
#[0 0 0 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 105 0 31 0 105 0 32 0 105 0 33 0 105 0 34 0 105 0 35 0 105 0 36 0 105 0 37 0 105 0 38 0 105 0 39 0 105 0 40 0 105 0 41 0 105 0 44 0 105 0 45 0 105 0 46 0 105 0 48 0 105 0 49 0 105 0 50 0 105 0 51 0 105 0 52 0 105 0 53 0 10 0 54] 
#[1 0 185 0 26 0 189 0 27] 
#[0 0 193 0 26] 
#[1 0 73 0 18 0 77 0 19 0 97 0 26 0 197 0 37 0 201 0 49] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 205 0 47] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 209 0 31 0 209 0 32 0 209 0 33 0 209 0 34 0 209 0 35 0 209 0 36 0 209 0 37 0 209 0 38 0 209 0 39 0 209 0 40 0 209 0 41 0 209 0 44 0 209 0 45 0 209 0 46 0 209 0 48 0 209 0 49 0 209 0 50 0 209 0 51 0 209 0 52 0 209 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 213 0 31 0 213 0 32 0 213 0 33 0 213 0 34 0 213 0 35 0 213 0 36 0 213 0 37 0 213 0 38 0 213 0 39 0 213 0 40 0 213 0 41 0 213 0 44 0 213 0 45 0 213 0 46 0 213 0 48 0 213 0 49 0 213 0 50 0 213 0 51 0 213 0 52 0 213 0 53] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 217 0 47] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 221 0 31 0 221 0 32 0 221 0 33 0 221 0 34 0 221 0 35 0 221 0 36 0 221 0 37 0 221 0 38 0 221 0 39 0 221 0 40 0 221 0 41 0 221 0 44 0 221 0 45 0 221 0 46 0 221 0 48 0 221 0 49 0 221 0 50 0 221 0 51 0 221 0 52 0 221 0 53] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 225 0 47] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 229 0 31 0 229 0 32 0 229 0 33 0 229 0 34 0 229 0 35 0 229 0 36 0 229 0 37 0 229 0 38 0 229 0 39 0 229 0 40 0 229 0 41 0 229 0 44 0 229 0 45 0 229 0 46 0 229 0 48 0 229 0 49 0 229 0 50 0 229 0 51 0 229 0 52 0 229 0 53] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 233 0 47] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 237 0 31 0 237 0 32 0 237 0 33 0 237 0 34 0 237 0 35 0 237 0 36 0 237 0 37 0 237 0 38 0 237 0 39 0 237 0 40 0 237 0 41 0 237 0 44 0 237 0 45 0 237 0 46 0 237 0 48 0 237 0 49 0 237 0 50 0 237 0 51 0 237 0 52 0 237 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 241 0 31 0 241 0 32 0 241 0 33 0 241 0 34 0 241 0 35 0 241 0 36 0 241 0 37 0 241 0 38 0 241 0 39 0 241 0 40 0 241 0 41 0 241 0 44 0 241 0 45 0 241 0 46 0 241 0 48 0 241 0 49 0 241 0 50 0 241 0 51 0 241 0 52 0 241 0 53] 
#[1 0 14 0 1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 9 0 14 0 11 0 14 0 12 0 14 0 14 0 14 0 15 0 14 0 16 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 21 0 14 0 23 0 14 0 24 0 14 0 25 0 14 0 26 0 14 0 27 0 245 0 42] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 249 0 31 0 249 0 32 0 249 0 33 0 249 0 34 0 249 0 35 0 249 0 36 0 249 0 37 0 249 0 38 0 249 0 39 0 249 0 40 0 249 0 41 0 249 0 44 0 249 0 45 0 249 0 46 0 249 0 48 0 249 0 49 0 249 0 50 0 249 0 51 0 249 0 52 0 249 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 253 0 31 0 253 0 32 0 253 0 33 0 253 0 34 0 253 0 35 0 253 0 36 0 253 0 37 0 253 0 38 0 253 0 39 0 253 0 40 0 253 0 41 0 253 0 44 0 253 0 45 0 253 0 46 0 253 0 48 0 253 0 49 0 253 0 50 0 253 0 51 0 253 0 52 0 253 0 53] 
#[0 0 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 1 0 31 1 1 0 32 1 1 0 33 1 1 0 34 1 1 0 35 1 1 0 36 1 1 0 37 1 1 0 38 1 1 0 39 1 1 0 40 1 1 0 41 1 1 0 44 1 1 0 45 1 1 0 46 1 1 0 48 1 1 0 49 1 1 0 50 1 1 0 51 1 1 0 52 1 1 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 5 0 31 1 5 0 32 1 5 0 33 1 5 0 34 1 5 0 35 1 5 0 36 1 5 0 37 1 5 0 38 1 5 0 39 1 5 0 40 1 5 0 41 1 5 0 44 1 5 0 45 1 5 0 46 1 5 0 48 1 5 0 49 1 5 0 50 1 5 0 51 1 5 0 52 1 5 0 53] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 1 9 0 10 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 105 0 31 0 105 0 32 0 105 0 33 0 105 0 34 0 105 0 35 0 105 0 36 0 105 0 37 0 105 0 38 0 105 0 39 0 105 0 40 0 105 0 41 0 105 0 44 0 105 0 45 0 105 0 46 0 105 0 48 0 105 0 49 0 105 0 50 0 105 0 51 0 105 0 52 0 105 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 13 0 31 1 13 0 32 1 13 0 33 1 13 0 34 1 13 0 35 1 13 0 36 1 13 0 37 1 13 0 38 1 13 0 39 1 13 0 40 1 13 0 41 1 13 0 44 1 13 0 45 1 13 0 46 1 13 0 48 1 13 0 49 1 13 0 50 1 13 0 51 1 13 0 52 1 13 0 53] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 1 17 0 17 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 105 0 31 0 105 0 32 0 105 0 33 0 105 0 34 0 105 0 35 0 105 0 36 0 105 0 37 0 105 0 38 0 105 0 39 0 105 0 40 0 105 0 41 0 105 0 44 0 105 0 45 0 105 0 46 0 105 0 48 0 105 0 49 0 105 0 50 0 105 0 51 0 105 0 52 0 105 0 53] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 1 21 0 10 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 105 0 31 0 105 0 32 0 105 0 33 0 105 0 34 0 105 0 35 0 105 0 36 0 105 0 37 0 105 0 38 0 105 0 39 0 105 0 40 0 105 0 41 0 105 0 44 0 105 0 45 0 105 0 46 0 105 0 48 0 105 0 49 0 105 0 50 0 105 0 51 0 105 0 52 0 105 0 53] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 1 25 0 13 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 0 105 0 31 0 105 0 32 0 105 0 33 0 105 0 34 0 105 0 35 0 105 0 36 0 105 0 37 0 105 0 38 0 105 0 39 0 105 0 40 0 105 0 41 0 105 0 44 0 105 0 45 0 105 0 46 0 105 0 48 0 105 0 49 0 105 0 50 0 105 0 51 0 105 0 52 0 105 0 53] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 29 0 31 1 29 0 32 1 29 0 33 1 29 0 34 1 29 0 35 1 29 0 36 1 29 0 37 1 29 0 38 1 29 0 39 1 29 0 40 1 29 0 41 1 29 0 44 1 29 0 45 1 29 0 46 1 29 0 48 1 29 0 49 1 29 0 50 1 29 0 51 1 29 0 52 1 29 0 53] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 1 33 0 17 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 37 0 31 1 37 0 32 1 37 0 33 1 37 0 34 1 37 0 35 1 37 0 36 1 37 0 37 1 37 0 38 1 37 0 39 1 37 0 40 1 37 0 41 1 41 0 43 1 37 0 44 1 37 0 45 1 37 0 46 1 37 0 48 1 37 0 49 1 37 0 50 1 37 0 51 1 37 0 52 1 37 0 53] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27 0 54] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 18 0 77 0 19 0 81 0 21 0 85 0 23 0 89 0 24 0 93 0 25 0 97 0 26 0 101 0 27 1 45 0 31 1 45 0 32 1 45 0 33 1 45 0 34 1 45 0 35 1 45 0 36 1 45 0 37 1 45 0 38 1 45 0 39 1 45 0 40 1 45 0 41 1 45 0 44 1 45 0 45 1 45 0 46 1 45 0 48 1 45 0 49 1 45 0 50 1 45 0 51 1 45 0 52 1 45 0 53] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27] 
#[0 0 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 23 0 24 0 25 0 26 0 27]
	).
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForCharacter1: nodes [
	| result |
	result := ClojureCharacterNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForDeref1: nodes [
	| result |
	result := ClojureDerefNode new.
	result deref: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForDiscard1: nodes [
	| result |
	result := ClojureDiscardNode new.
	result discard: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForExpressions1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForExpressions2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForFile1: nodes [
	| result |
	result := ClojureFileNode new.
	result addNodes: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForFn1: nodes [
	| result |
	result := ClojureFnNode new.
	result leftParen: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result expressions.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForKeyword1: nodes [
	| result |
	result := ClojureKeywordNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForList1: nodes [
	| result |
	result := ClojureListNode new.
	result leftParen: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result expressions.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForMap1: nodes [
	| result |
	result := ClojureMapNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result pairs.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForMapPair1: nodes [
	| result |
	result := ClojurePairNode new.
	result key: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForMetadata2: nodes [
	| result |
	result := ClojureMetadataNode new.
	result uparrow: (nodes at: 1).
	result metadata: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForNumber1: nodes [
	| result |
	result := ClojureNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForQuote1: nodes [
	| result |
	result := ClojureQuoteNode new.
	result quote: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForRegularExpression1: nodes [
	| result |
	result := ClojureRegularExpressionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForSet1: nodes [
	| result |
	result := ClojureSetNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result expressions.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForString1: nodes [
	| result |
	result := ClojureStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForSymbol1: nodes [
	| result |
	result := ClojureSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForSymbolic1: nodes [
	| result |
	result := ClojureSymbolicNode new.
	result hashes: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForTaggedLiteral1: nodes [
	| result |
	result := ClojureTaggedLiteralNode new.
	result _hash: (nodes at: 1).
	result name: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForUnquote1: nodes [
	| result |
	result := ClojureUnquoteNode new.
	result unquote: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForVar2: nodes [
	| result |
	result := ClojureVarNode new.
	result varToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForVector1: nodes [
	| result |
	result := ClojureVectorNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result expressions.
	result rightBracket: (nodes at: 3).
	^ result
]
