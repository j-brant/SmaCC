Class {
	#name : #ClojureParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Clojure'
}

{ #category : #'generated-accessing' }
ClojureParser class >> cacheId [
	^'2021-02-27T09:01:09.169851-06:00'
]

{ #category : #generated }
ClojureParser class >> definitionComment [
"%glr;

%root Expression;
%prefix Clojure;
%suffix Node;
%id <number>;
%hierarchy Literal (Number String RegularExpression Character Boolean Nil);
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
	| Boolean
	| Nil
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
Nil
	: ""nil"" 'value' {{}}
	;
Boolean
	: (""true"" 'value' | ""false"" 'value') {{}}
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
	#(52 0 #reduceActionForExpressions1: 2465793 false ) 
	#(33 1 #reduceActionForFile1: 1146881 false ) 
	#(36 1 #reduceActionForBoolean2: 1444866 false ) 
	#(35 1 #reduceActionForNil1: 1415169 false ) 
	#(36 1 #reduceActionForBoolean2: 1444865 false ) 
	#(47 0 #reduceActionForExpressions1: 2168833 false ) 
	#(58 1 #reduceActionForNumber1: 2732033 false ) 
	#(55 1 #reduceActionForCharacter1: 2595841 false ) 
	#(57 1 #reduceActionForString1: 2696193 false ) 
	#(56 1 #reduceActionForRegularExpression1: 2637825 false ) 
	#(54 1 #reduceActionForSymbol1: 2561025 false ) 
	#(53 1 #reduceActionForKeyword1: 2524161 false ) 
	#(52 2 #reduceActionForExpressions2: 2465794 false ) 
	#(34 1 #liftFirstValue: 1175558 false ) 
	#(34 1 #liftFirstValue: 1175557 false ) 
	#(34 1 #liftFirstValue: 1175573 false ) 
	#(34 1 #liftFirstValue: 1175572 false ) 
	#(34 1 #liftFirstValue: 1175571 false ) 
	#(34 1 #liftFirstValue: 1175570 false ) 
	#(34 1 #liftFirstValue: 1175569 false ) 
	#(34 1 #liftFirstValue: 1175566 false ) 
	#(34 1 #liftFirstValue: 1175568 false ) 
	#(34 1 #liftFirstValue: 1175567 false ) 
	#(34 1 #liftFirstValue: 1175565 false ) 
	#(34 1 #liftFirstValue: 1175564 false ) 
	#(34 1 #liftFirstValue: 1175563 false ) 
	#(34 1 #liftFirstValue: 1175562 false ) 
	#(34 1 #liftFirstValue: 1175561 false ) 
	#(34 1 #liftFirstValue: 1175560 false ) 
	#(34 1 #liftFirstValue: 1175559 false ) 
	#(34 1 #liftFirstValue: 1175556 false ) 
	#(34 1 #liftFirstValue: 1175555 false ) 
	#(34 1 #liftFirstValue: 1175554 false ) 
	#(34 1 #liftFirstValue: 1175553 false ) 
	#(39 2 #reduceActionForSymbolic1: 1690625 false ) 
	#(44 2 #reduceActionForVar2: 1979394 false ) 
	#(44 2 #reduceActionForVar2: 1979393 false ) 
	#(40 2 #reduceActionForDiscard1: 1741825 false ) 
	#(45 2 #reduceActionForQuote1: 2044929 false ) 
	#(41 2 #reduceActionForDeref1: 1796097 false ) 
	#(45 2 #reduceActionForQuote1: 2044930 false ) 
	#(42 2 #reduceActionForUnquote1: 1845249 false ) 
	#(42 2 #reduceActionForUnquote1: 1845250 false ) 
	#(38 3 #reduceActionForTaggedLiteral1: 1596417 false ) 
	#(38 3 #reduceActionForTaggedLiteral1: 1596418 false ) 
	#(43 3 #reduceActionForFn1: 1917953 false ) 
	#(37 3 #reduceActionForMetadata2: 1500162 false ) 
	#(49 3 #reduceActionForSet1: 2272257 false ) 
	#(51 3 #reduceActionForList1: 2403329 false ) 
	#(50 3 #reduceActionForVector1: 2334721 false ) 
	#(37 3 #reduceActionForMetadata2: 1500161 false ) 
	#(46 3 #reduceActionForMap1: 2110465 false ) 
	#(47 2 #reduceActionForExpressions2: 2168834 false ) 
	#(48 2 #reduceActionForMapPair1: 2211841 false )
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
	^ #('"#"' '"##"' '"#''"' '"#("' '"#^"' '"#_"' '"#{"' '"''"' '"("' '")"' '"@"' '"["' '"]"' '"^"' '"`"' '"false"' '"nil"' '"true"' '"{"' '"}"' '"~"' '"~@"' '<radixInteger>' '<number>' '<comment>' '<character>' '<string>' '<regularExpression>' '<symbol>' '<keyword>' '<whitespace>' 'B e g i n' 'File' 'Expression' 'Nil' 'Boolean' 'Metadata' 'TaggedLiteral' 'Symbolic' 'Discard' 'Deref' 'Unquote' 'Fn' 'Var' 'Quote' 'Map' 'MapPairs' 'MapPair' 'Set' 'Vector' 'List' 'Expressions' 'Keyword' 'Symbol' 'Character' 'RegularExpression' 'String' 'Number' 'E O F' 'error')
]

{ #category : #generated }
ClojureParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #ClojureFileNode #ClojureFileNode #ClojureExpressionNode #ClojureNilNode #ClojureBooleanNode #ClojureMetadataNode #ClojureTaggedLiteralNode #ClojureSymbolicNode #ClojureDiscardNode #ClojureDerefNode #ClojureUnquoteNode #ClojureFnNode #ClojureVarNode #ClojureQuoteNode #ClojureMapNode #OrderedCollection #ClojurePairNode #ClojureSetNode #ClojureVectorNode #ClojureListNode #OrderedCollection #ClojureKeywordNode #ClojureSymbolNode #ClojureCharacterNode #ClojureRegularExpressionNode #ClojureStringNode #ClojureNumberNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
ClojureParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 24 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 9 0 33 0 13 0 52 0 6 0 59] 
#[0 0 0 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 117 0 34 0 117 0 35 0 117 0 36 0 117 0 37 0 117 0 38 0 117 0 39 0 117 0 40 0 117 0 41 0 117 0 42 0 117 0 43 0 117 0 44 0 117 0 45 0 117 0 46 0 117 0 49 0 117 0 50 0 117 0 51 0 117 0 53 0 117 0 54 0 117 0 55 0 117 0 56 0 117 0 57 0 117 0 58 0 10 0 59] 
#[1 0 205 0 29 0 209 0 30] 
#[0 0 213 0 29] 
#[1 0 85 0 21 0 89 0 22 0 109 0 29 0 217 0 42 0 221 0 54] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 24 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 225 0 52] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 229 0 34 0 229 0 35 0 229 0 36 0 229 0 37 0 229 0 38 0 229 0 39 0 229 0 40 0 229 0 41 0 229 0 42 0 229 0 43 0 229 0 44 0 229 0 45 0 229 0 46 0 229 0 49 0 229 0 50 0 229 0 51 0 229 0 53 0 229 0 54 0 229 0 55 0 229 0 56 0 229 0 57 0 229 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 233 0 34 0 233 0 35 0 233 0 36 0 233 0 37 0 233 0 38 0 233 0 39 0 233 0 40 0 233 0 41 0 233 0 42 0 233 0 43 0 233 0 44 0 233 0 45 0 233 0 46 0 233 0 49 0 233 0 50 0 233 0 51 0 233 0 53 0 233 0 54 0 233 0 55 0 233 0 56 0 233 0 57 0 233 0 58] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 24 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 237 0 52] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 241 0 34 0 241 0 35 0 241 0 36 0 241 0 37 0 241 0 38 0 241 0 39 0 241 0 40 0 241 0 41 0 241 0 42 0 241 0 43 0 241 0 44 0 241 0 45 0 241 0 46 0 241 0 49 0 241 0 50 0 241 0 51 0 241 0 53 0 241 0 54 0 241 0 55 0 241 0 56 0 241 0 57 0 241 0 58] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 24 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 245 0 52] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 249 0 34 0 249 0 35 0 249 0 36 0 249 0 37 0 249 0 38 0 249 0 39 0 249 0 40 0 249 0 41 0 249 0 42 0 249 0 43 0 249 0 44 0 249 0 45 0 249 0 46 0 249 0 49 0 249 0 50 0 249 0 51 0 249 0 53 0 249 0 54 0 249 0 55 0 249 0 56 0 249 0 57 0 249 0 58] 
#[1 0 6 0 1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 24 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 253 0 52] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 1 0 34 1 1 0 35 1 1 0 36 1 1 0 37 1 1 0 38 1 1 0 39 1 1 0 40 1 1 0 41 1 1 0 42 1 1 0 43 1 1 0 44 1 1 0 45 1 1 0 46 1 1 0 49 1 1 0 50 1 1 0 51 1 1 0 53 1 1 0 54 1 1 0 55 1 1 0 56 1 1 0 57 1 1 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 5 0 34 1 5 0 35 1 5 0 36 1 5 0 37 1 5 0 38 1 5 0 39 1 5 0 40 1 5 0 41 1 5 0 42 1 5 0 43 1 5 0 44 1 5 0 45 1 5 0 46 1 5 0 49 1 5 0 50 1 5 0 51 1 5 0 53 1 5 0 54 1 5 0 55 1 5 0 56 1 5 0 57 1 5 0 58] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 26 0 1 0 26 0 2 0 26 0 3 0 26 0 4 0 26 0 5 0 26 0 6 0 26 0 7 0 26 0 8 0 26 0 9 0 26 0 11 0 26 0 12 0 26 0 14 0 26 0 15 0 26 0 16 0 26 0 17 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 26 0 22 0 26 0 24 0 26 0 26 0 26 0 27 0 26 0 28 0 26 0 29 0 26 0 30 1 9 0 47] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 13 0 34 1 13 0 35 1 13 0 36 1 13 0 37 1 13 0 38 1 13 0 39 1 13 0 40 1 13 0 41 1 13 0 42 1 13 0 43 1 13 0 44 1 13 0 45 1 13 0 46 1 13 0 49 1 13 0 50 1 13 0 51 1 13 0 53 1 13 0 54 1 13 0 55 1 13 0 56 1 13 0 57 1 13 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 17 0 34 1 17 0 35 1 17 0 36 1 17 0 37 1 17 0 38 1 17 0 39 1 17 0 40 1 17 0 41 1 17 0 42 1 17 0 43 1 17 0 44 1 17 0 45 1 17 0 46 1 17 0 49 1 17 0 50 1 17 0 51 1 17 0 53 1 17 0 54 1 17 0 55 1 17 0 56 1 17 0 57 1 17 0 58] 
#[0 0 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 21 0 34 1 21 0 35 1 21 0 36 1 21 0 37 1 21 0 38 1 21 0 39 1 21 0 40 1 21 0 41 1 21 0 42 1 21 0 43 1 21 0 44 1 21 0 45 1 21 0 46 1 21 0 49 1 21 0 50 1 21 0 51 1 21 0 53 1 21 0 54 1 21 0 55 1 21 0 56 1 21 0 57 1 21 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 25 0 34 1 25 0 35 1 25 0 36 1 25 0 37 1 25 0 38 1 25 0 39 1 25 0 40 1 25 0 41 1 25 0 42 1 25 0 43 1 25 0 44 1 25 0 45 1 25 0 46 1 25 0 49 1 25 0 50 1 25 0 51 1 25 0 53 1 25 0 54 1 25 0 55 1 25 0 56 1 25 0 57 1 25 0 58] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 1 29 0 10 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 117 0 34 0 117 0 35 0 117 0 36 0 117 0 37 0 117 0 38 0 117 0 39 0 117 0 40 0 117 0 41 0 117 0 42 0 117 0 43 0 117 0 44 0 117 0 45 0 117 0 46 0 117 0 49 0 117 0 50 0 117 0 51 0 117 0 53 0 117 0 54 0 117 0 55 0 117 0 56 0 117 0 57 0 117 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 33 0 34 1 33 0 35 1 33 0 36 1 33 0 37 1 33 0 38 1 33 0 39 1 33 0 40 1 33 0 41 1 33 0 42 1 33 0 43 1 33 0 44 1 33 0 45 1 33 0 46 1 33 0 49 1 33 0 50 1 33 0 51 1 33 0 53 1 33 0 54 1 33 0 55 1 33 0 56 1 33 0 57 1 33 0 58] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 1 37 0 20 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 117 0 34 0 117 0 35 0 117 0 36 0 117 0 37 0 117 0 38 0 117 0 39 0 117 0 40 0 117 0 41 0 117 0 42 0 117 0 43 0 117 0 44 0 117 0 45 0 117 0 46 0 117 0 49 0 117 0 50 0 117 0 51 0 117 0 53 0 117 0 54 0 117 0 55 0 117 0 56 0 117 0 57 0 117 0 58] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 1 41 0 10 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 117 0 34 0 117 0 35 0 117 0 36 0 117 0 37 0 117 0 38 0 117 0 39 0 117 0 40 0 117 0 41 0 117 0 42 0 117 0 43 0 117 0 44 0 117 0 45 0 117 0 46 0 117 0 49 0 117 0 50 0 117 0 51 0 117 0 53 0 117 0 54 0 117 0 55 0 117 0 56 0 117 0 57 0 117 0 58] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 1 45 0 13 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 0 117 0 34 0 117 0 35 0 117 0 36 0 117 0 37 0 117 0 38 0 117 0 39 0 117 0 40 0 117 0 41 0 117 0 42 0 117 0 43 0 117 0 44 0 117 0 45 0 117 0 46 0 117 0 49 0 117 0 50 0 117 0 51 0 117 0 53 0 117 0 54 0 117 0 55 0 117 0 56 0 117 0 57 0 117 0 58] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 49 0 34 1 49 0 35 1 49 0 36 1 49 0 37 1 49 0 38 1 49 0 39 1 49 0 40 1 49 0 41 1 49 0 42 1 49 0 43 1 49 0 44 1 49 0 45 1 49 0 46 1 49 0 49 1 49 0 50 1 49 0 51 1 49 0 53 1 49 0 54 1 49 0 55 1 49 0 56 1 49 0 57 1 49 0 58] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 1 53 0 20 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 57 0 34 1 57 0 35 1 57 0 36 1 57 0 37 1 57 0 38 1 57 0 39 1 57 0 40 1 57 0 41 1 57 0 42 1 57 0 43 1 57 0 44 1 57 0 45 1 57 0 46 1 61 0 48 1 57 0 49 1 57 0 50 1 57 0 51 1 57 0 53 1 57 0 54 1 57 0 55 1 57 0 56 1 57 0 57 1 57 0 58] 
#[0 0 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[0 0 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30 0 59] 
#[1 0 17 0 1 0 21 0 2 0 25 0 3 0 29 0 4 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 8 0 49 0 9 0 53 0 11 0 57 0 12 0 61 0 14 0 65 0 15 0 69 0 16 0 73 0 17 0 77 0 18 0 81 0 19 0 85 0 21 0 89 0 22 0 93 0 24 0 97 0 26 0 101 0 27 0 105 0 28 0 109 0 29 0 113 0 30 1 65 0 34 1 65 0 35 1 65 0 36 1 65 0 37 1 65 0 38 1 65 0 39 1 65 0 40 1 65 0 41 1 65 0 42 1 65 0 43 1 65 0 44 1 65 0 45 1 65 0 46 1 65 0 49 1 65 0 50 1 65 0 51 1 65 0 53 1 65 0 54 1 65 0 55 1 65 0 56 1 65 0 57 1 65 0 58] 
#[0 0 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 24 0 26 0 27 0 28 0 29 0 30]
	).
]

{ #category : #'generated-reduction actions' }
ClojureParser >> reduceActionForBoolean2: nodes [
	| result |
	result := ClojureBooleanNode new.
	result value: (nodes at: 1).
	^ result
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
ClojureParser >> reduceActionForNil1: nodes [
	| result |
	result := ClojureNilNode new.
	result value: (nodes at: 1).
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
