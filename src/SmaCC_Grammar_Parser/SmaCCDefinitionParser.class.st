Class {
	#name : 'SmaCCDefinitionParser',
	#superclass : 'SmaCCGLRParser',
	#instVars : [
		'acceptSyntaxErrors'
	],
	#category : 'SmaCC_Grammar_Parser',
	#package : 'SmaCC_Grammar_Parser'
}

{ #category : 'generated-accessing' }
SmaCCDefinitionParser class >> cacheId [
	^'2026-02-02T11:38:38.294505-06:00'
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> definitionComment [
"%scopes default scanner directives parser;

directives <scopes>
	: scopes
	| states 
	;
directives <excludes> 
	: excludes 
	;
directives <root> 
	: root 
	;
directives <hierarchy> 
	: hierarchy 
	;
directives <attributes>
	: attributes
	;
directives <prefix> 
	: prefix 
	;
directives <suffix> 
	: suffix 
	;
directives <left> 
	: left 
	;
directives <right> 
	: right 
	;
directives <nonassoc> 
	: nonassoc 
	;
directives <id> 
	: id 
	;
directives <start> 
	: start 
	;
directives <nfa>
	: nfa
	;
directives <incremental>
	: incremental
	;
directives <glr>
	: glr
	;
directives <ignorecase>
	: ignorecase
	;
directives <ignorevariables>
	: ignore_variables
	;
directives <ignorevariablewarning>
	: ignore_variable_warning
	;
directives <annotate_tokens>
	: annotate_tokens
	;
directives <lr1>
	: lr1
	;
directives <unicode>
	: unicode
	;
directives <byte>
	: byte
	;
<name> 
	: (<isLetter> | _) (<isLetter> | _ | <isDigit>)*
	;
<directive> 
	: \%
	;
<whitespace>
	: \s+ 
	;
<tokenname>
	: \< <name> \>
	;
default directives parser <symbolname>
	: <name>
	;
directives parser <keyword>
	: (\"" [^\""]* \"") + 
	;
directives <scannerSelectors>
	:  scannerSelectors
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
parser <code>
	: \{ 
	;
parser <immediateCode>
	: \[
	;
parser <variablename>
	: \' <name> \' 
	;
<production>
	: \: (\: \=)? 
	;
<directive>
	: % 
	;
<semicolon>
	: \; 
	;
scanner <backslashcharacter>
	: \\ [^cx] 
	| \\ c [A-Z] 
	| \\ x [0-9A-Fa-f]{1,4}
	;
scanner <characterblock>
	: \[ ([^\[\]\\] | <backslashcharacter> )+ \] 
	;
scanner <repeat>
	: \{ [0-9]* \, [0-9]* \}
	;
scanner <character>
	: [^\ \t\v\\\r\n\{\(\[\.]
	; 
scanner <anycharacter>
	: \.
	;
parser <error>
	: error
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;
default parser <patternToken>
	: ` [^`]* `
	;

%glr;
%id <code> <immediateCode> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left	""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

%start ProductionRule RegexRule DirectiveLine File EmptyRule Rule;

%hierarchy Directive (
		ScopeDirective
		NodeNameDirective 
		SuperclassDirective
		AttributeDirective
		AssociativeDirective
		IdDirective
		StartDirective
		FlagDirective
		IgnoreVariableDirective
		IgnoreVariableWarningDirective
		ScannerSelectorsDirective
	);
%hierarchy Symbol (
		KeywordSymbol
		TokenSymbol
		ProductionSymbol
		ErrorSymbol
	);
%hierarchy ProductionExpression (
		CodeProductionExpression
		ClassProductionExpression
	);
%hierarchy Regex (
		CharacterRegex
		CharacterBlockRegex
		ConditionRegex
		AlternationRegex
		ConcatenationRegex
		TokenRegex
		RepeatRegex
	);
%prefix SmaCC;
%suffix Node;
%root Definition;
scanner <conditionCode>
	: \[\[
	;

File
	: Rules {{GrammarDefinition}}
	;
Rules
	: Rule 'rule'
	| Rules Rule 'rule'
	;
Rule 
	: ProductionRule 
	| DirectiveLine
	| RegexRule 
	| Error
	;
EmptyRule
	: {{GrammarDefinition}}
	;
Error
	: error 'smaccError' <semicolon> 'semicolon' {{DefinitionError}}
	| error 'smaccError' {{DefinitionError}}
	;
# Directives
DirectiveLine 
	: StartDirective <directive> 'directiveStartToken' Directive EndDirective <semicolon> 'semicolon' {{Directive}}
	;
Directive 
	: ExcludeScopesLine 
	| ScopesLine
	| RootClassLine
	| SuperclassLine
	| AttributesLine
	| PrefixLine
	| SuffixLine
	| LeftLine 
	| RightLine 
	| NonAssociativeLine
	| IdMethodLine
	| StartLine 
	| GLR
	| Incremental
	| NFA
	| IgnoreCase
	| IgnoredVariables
	| IgnoreVariableWarning
	| AnnotateTokens
	| LR1
	| Unicode
	| Byte
	| ScannerSelectorsLine
	;
Incremental
	: <incremental> 'typeToken' {{FlagDirective}}
	;
NFA
	: <nfa> 'typeToken' {{FlagDirective}}
	;
ScannerSelectorsLine
	: <scannerSelectors> 'scannerSelectorsToken' Symbol 'symbol'+ {{ScannerSelectorsDirective}}
	;
StartDirective 
	: {self scope: #directives. nil}
	;
EndDirective 
	: {self scope: #default. nil}
	;
ScopesLine 
	: <scopes> 'typeToken' Scopes {{ScopeDirective}}
	;
Scopes 
	: 
	| Scopes Symbol 'name'
	;
ExcludeScopesLine 
	: <excludes> 'typeToken' Scopes {{ScopeDirective}}
	;
RootClassLine 
	: <root> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
SuperclassLine
	: <hierarchy> 'hierarchyToken' <symbolname> 'superclass' ""("" 'leftParen' ClassList "")"" 'rightParen' {{SuperclassDirective}}
	;
AttributesLine
	: <attributes> 'attributesToken' <symbolname> 'classname' ""("" 'leftParen' IvarList "")"" 'rightParen' {{AttributeDirective}}
	;
IvarList	
	:
	| IvarList <symbolname> 'name'
	;
ClassList 
	:
	| ClassList <symbolname> 'name'
	;
PrefixLine
	: <prefix> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
SuffixLine
	: <suffix> 'typeToken' <symbolname> 'name' {{NodeNameDirective}}
	;
LeftLine
	: <left> 'typeToken' TokenList {{AssociativeDirective}}
	;
RightLine
	: <right> 'typeToken' TokenList {{AssociativeDirective}}
	;
NonAssociativeLine
	: <nonassoc> 'typeToken' TokenList {{AssociativeDirective}}
	;
TokenList
	: Term 'symbol'
	| TokenList Term 'symbol'
	;
IdMethodLine
	: <id> 'idToken' IdTokens {{IdDirective}}
	;
IdTokens
	: <tokenname> 'name'
	| IdTokens <tokenname> 'name'
	;
StartLine
	: <start> 'startToken' StartingTokens {{StartDirective}}
	;
StartingTokens
	: <symbolname> 'symbol'
	| StartingTokens <symbolname> 'symbol' 
	;
GLR
	: <glr> 'typeToken' {{FlagDirective}}
	;
IgnoredVariables
	: EndDirective <ignorevariables> 'ignoreVariablesToken' IgnoredVariableList {{IgnoreVariableDirective}}
	;
IgnoredVariableList
	: <symbolname> 'name'
	| IgnoredVariableList <symbolname> 'name'
	;
IgnoreVariableWarning
	: EndDirective <ignorevariablewarning> 'ignoreVariableWarningToken' TokenList {{IgnoreVariableWarningDirective}}
	;
IgnoreCase
	: <ignorecase> 'typeToken' {{FlagDirective}}
	;
AnnotateTokens
	: <annotate_tokens> 'typeToken' {{FlagDirective}}
	;
LR1
	: <lr1> 'typeToken' {{FlagDirective}}
	;
Unicode
	: <unicode> 'typeToken' {{FlagDirective}}
	;
Byte
	: <byte> 'typeToken' {{FlagDirective}}
	;
# Scanner
RegexRule 
	: StartRegex <tokenname> 'name' <production> 'colon' Regex 'regex' EndRegex <semicolon> 'semicolon' {{TokenRule}}
	| Symbol 'state' RegexRule {{TokenRule}}
	;
StartRegex
	: {self scope: #scanner. nil}
	;
EndRegex
	: {self scope: #default. nil}
	;
Symbol 
	: <symbolname> 
	;
Regex
	: ConcatenationRegex
	| ConcatenationRegex 'item'  (""|"" 'barToken' ConcatenationRegex 'item')+ {{AlternationRegex}}
	;
ConcatenationRegex
	: RegexTerm
	| RegexTerm 'item' RegexTerm 'item' + {{ConcatenationRegex}}
	;
RegexTerm
	: CharacterRegexTerm
	| <conditionCode> 'code' {{ConditionRegex}}
	;
CharacterRegexTerm
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| CharacterRegexTerm 'regex' ""*"" 'count' {{RepeatRegex}}	
	| CharacterRegexTerm 'regex' ""+"" 'count' {{RepeatRegex}}
	| CharacterRegexTerm 'regex' ""?"" 'count' {{RepeatRegex}}
	| CharacterRegexTerm 'regex' <repeat> 'count' {{RepeatRegex}}
	;
# Parser 
ProductionRule
	: <symbolname> 'name' StartProduction <production> 'colon' ParserRules EndProduction <semicolon> 'semicolon' {{ProductionRule}}
	;
StartProduction
	: {self scope: #parser. nil}
	;
EndProduction
	: {self scope: #default. nil}
	;
ParserRules
	: ParserRules ""|"" 'barToken' ParserRule 'expression'
	| ParserRule 'expression'
	;
ParserRule 
	: Terms {{ProductionExpression}}
	| Terms <code> 'code' {{CodeProductionExpression}}
	| Terms <immediateCode> 'code' {{CodeProductionExpression}}
	| Terms <classLeft> 'left' <symbolname> 'classname' <classRight> 'right' {{ClassProductionExpression}}
	| Terms <classLeft> 'left' <classRight> 'right' {{ClassProductionExpression}}
	;
Terms 
	:
	| Terms SpecialTerm 'term'
	;
SpecialTerm
	: NamedTerm
	| SpecialTerm 'term' ""?"" 'operator' {{PostfixTerm}}
	| SpecialTerm 'term' ""+"" 'operator' {{PostfixTerm}}
	| SpecialTerm 'term' ""*"" 'operator' {{PostfixTerm}}
	| ""("" 'leftParen' ParserRules "")"" 'rightParen' {{GroupTerm}}
	;
NamedTerm
	: Term
	| Term <variablename> 'variableNameToken' {{Symbol}}
	;
Term
	: <keyword> 'name' {{KeywordSymbol}}
	| <tokenname> 'name' {{TokenSymbol}}
	| <symbolname> 'name' {{ProductionSymbol}}
	| <error> 'name' {{ErrorSymbol}}
	;"
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> reduceTable [
^#(
	#(93 0 #reduceActionForStartRegex1: 6400001 false) 
	#(63 0 #reduceActionForStartDirective1: 4024321 false) 
	#(55 0 #reduceActionForEmptyRule1: 3112961 false) 
	#(95 1 #liftFirstValue: 6490113 false) 
	#(104 0 #reduceActionForStartProduction1: 7580673 false) 
	#(52 1 #reduceActionForFile1: 2957313 false) 
	#(53 1 #reduceActionForRules1: 2997249 false) 
	#(54 1 #liftFirstValue: 3043332 false) 
	#(54 1 #liftFirstValue: 3043330 false) 
	#(54 1 #liftFirstValue: 3043331 false) 
	#(54 1 #liftFirstValue: 3043329 false) 
	#(56 1 #reduceActionForError2: 3151874 false) 
	#(53 2 #reduceActionForRules2: 2997250 false) 
	#(64 0 #reduceActionForEndDirective1: 4078593 false) 
	#(92 2 #reduceActionForRegexRule2: 6224898 false) 
	#(56 2 #reduceActionForError1: 3151873 false) 
	#(108 0 #reduceActionForTerms1: 8131585 false) 
	#(66 0 #reduceActionForTerms1: 4194305 false) 
	#(60 1 #reduceActionForNFA1: 3857409 false) 
	#(59 1 #reduceActionForNFA1: 3793921 false) 
	#(83 1 #reduceActionForNFA1: 5522433 false) 
	#(87 1 #reduceActionForNFA1: 5931009 false) 
	#(88 1 #reduceActionForNFA1: 5992449 false) 
	#(89 1 #reduceActionForNFA1: 6063105 false) 
	#(90 1 #reduceActionForNFA1: 6110209 false) 
	#(91 1 #reduceActionForNFA1: 6165505 false) 
	#(58 1 #liftFirstValue: 3419150 false) 
	#(58 1 #liftFirstValue: 3419151 false) 
	#(58 1 #liftFirstValue: 3419159 false) 
	#(58 1 #liftFirstValue: 3419138 false) 
	#(58 1 #liftFirstValue: 3419137 false) 
	#(58 1 #liftFirstValue: 3419139 false) 
	#(58 1 #liftFirstValue: 3419140 false) 
	#(58 1 #liftFirstValue: 3419141 false) 
	#(58 1 #liftFirstValue: 3419142 false) 
	#(58 1 #liftFirstValue: 3419143 false) 
	#(58 1 #liftFirstValue: 3419144 false) 
	#(58 1 #liftFirstValue: 3419145 false) 
	#(58 1 #liftFirstValue: 3419146 false) 
	#(58 1 #liftFirstValue: 3419147 false) 
	#(58 1 #liftFirstValue: 3419148 false) 
	#(58 1 #liftFirstValue: 3419149 false) 
	#(58 1 #liftFirstValue: 3419153 false) 
	#(58 1 #liftFirstValue: 3419154 false) 
	#(58 1 #liftFirstValue: 3419152 false) 
	#(58 1 #liftFirstValue: 3419155 false) 
	#(58 1 #liftFirstValue: 3419156 false) 
	#(58 1 #liftFirstValue: 3419157 false) 
	#(58 1 #liftFirstValue: 3419158 false) 
	#(105 0 #reduceActionForEndDirective1: 7630849 false) 
	#(106 1 #reduceActionForParserRules2: 7680002 false) 
	#(107 1 #reduceActionForParserRule1: 7778305 false) 
	#(65 2 #reduceActionForScopesLine1: 4127745 false) 
	#(67 2 #reduceActionForScopesLine1: 4234241 false) 
	#(68 2 #reduceActionForRootClassLine1: 4310017 false) 
	#(73 2 #reduceActionForRootClassLine1: 4786177 false) 
	#(74 2 #reduceActionForRootClassLine1: 4868097 false) 
	#(111 1 #reduceActionForTerm2: 8505346 false) 
	#(111 1 #reduceActionForTerm3: 8505347 false) 
	#(111 1 #reduceActionForTerm1: 8505345 false) 
	#(111 1 #reduceActionForTerm4: 8505348 false) 
	#(75 2 #reduceActionForLeftLine1: 4950017 false) 
	#(78 1 #reduceActionForRules1: 5178369 false) 
	#(76 2 #reduceActionForLeftLine1: 5020673 false) 
	#(77 2 #reduceActionForLeftLine1: 5093377 false) 
	#(80 1 #reduceActionForRules1: 5297153 false) 
	#(79 2 #reduceActionForIdMethodLine1: 5236737 false) 
	#(82 1 #reduceActionForRules1: 5436417 false) 
	#(81 2 #reduceActionForStartLine1: 5363713 false) 
	#(61 2 #reduceActionForScannerSelectorsLine1: 3904513 false) 
	#(62 1 #reduceActionForRules1: 3973121 false) 
	#(102 1 #reduceActionForCharacterRegexTerm7: 6829063 false) 
	#(102 1 #reduceActionForCharacterRegexTerm2: 6829058 false) 
	#(102 1 #reduceActionForCharacterRegexTerm2: 6829060 false) 
	#(102 1 #reduceActionForCharacterRegexTerm6: 6829062 false) 
	#(102 1 #reduceActionForCharacterRegexTerm2: 6829057 false) 
	#(102 1 #reduceActionForCharacterRegexTerm2: 6829059 false) 
	#(101 1 #reduceActionForRegexTerm2: 6747138 false) 
	#(94 0 #reduceActionForEndDirective1: 6446081 false) 
	#(96 1 #liftFirstValue: 6518785 false) 
	#(99 1 #liftFirstValue: 6647809 false) 
	#(101 1 #liftFirstValue: 6747137 false) 
	#(107 2 #reduceActionForParserRule2: 7778306 false) 
	#(107 2 #reduceActionForParserRule2: 7778307 false) 
	#(108 2 #reduceActionForRules2: 8131586 false) 
	#(109 1 #liftFirstValue: 8173569 false) 
	#(110 1 #liftFirstValue: 8428545 false) 
	#(66 2 #reduceActionForRules2: 4194306 false) 
	#(72 0 #reduceActionForTerms1: 4734977 false) 
	#(71 0 #reduceActionForTerms1: 4685825 false) 
	#(78 2 #reduceActionForRules2: 5178370 false) 
	#(80 2 #reduceActionForRules2: 5297154 false) 
	#(82 2 #reduceActionForRules2: 5436418 false) 
	#(62 2 #reduceActionForRules2: 3973122 false) 
	#(57 5 #reduceActionForDirectiveLine1: 3284993 false) 
	#(85 1 #reduceActionForRules1: 5697537 false) 
	#(84 3 #reduceActionForIgnoredVariables1: 5569537 false) 
	#(86 3 #reduceActionForIgnoreVariableWarning1: 5788673 false) 
	#(98 1 #reduceActionFor______barToken__ConcatenationRegex__item___1: 6578177 false) 
	#(96 2 #reduceActionForRegex2: 6518786 false) 
	#(99 2 #reduceActionForConcatenationRegex2: 6647810 false) 
	#(100 1 #reduceActionForRules1: 6701057 false) 
	#(102 2 #reduceActionForCharacterRegexTerm8: 6829064 false) 
	#(102 2 #reduceActionForCharacterRegexTerm8: 6829065 false) 
	#(102 2 #reduceActionForCharacterRegexTerm8: 6829066 false) 
	#(102 2 #reduceActionForCharacterRegexTerm8: 6829067 false) 
	#(106 3 #reduceActionForParserRules1: 7680001 false) 
	#(103 6 #reduceActionForProductionRule1: 7430145 false) 
	#(107 3 #reduceActionForParserRule5: 7778309 false) 
	#(109 2 #reduceActionForSpecialTerm4: 8173572 false) 
	#(109 2 #reduceActionForSpecialTerm4: 8173571 false) 
	#(109 2 #reduceActionForSpecialTerm4: 8173570 false) 
	#(110 2 #reduceActionForNamedTerm2: 8428546 false) 
	#(85 2 #reduceActionForRules2: 5697538 false) 
	#(102 3 #reduceActionForCharacterRegexTerm5: 6829061 false) 
	#(92 6 #reduceActionForRegexRule1: 6224897 false) 
	#(97 2 #reduceActionFor______barToken__ConcatenationRegex__item__1: 6578177 false) 
	#(98 2 #reduceActionFor______barToken__ConcatenationRegex__item___2: 6578178 false) 
	#(100 2 #reduceActionForRules2: 6701058 false) 
	#(109 3 #reduceActionForSpecialTerm5: 8173573 false) 
	#(107 4 #reduceActionForParserRule4: 7778308 false) 
	#(69 5 #reduceActionForSuperclassLine1: 4393985 false) 
	#(72 2 #reduceActionForRules2: 4734978 false) 
	#(70 5 #reduceActionForAttributesLine1: 4540417 false) 
	#(71 2 #reduceActionForRules2: 4685826 false)
	).
]

{ #category : 'generated-accessing' }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForDirectiveLine [
	^ 4
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForEmptyRule [
	^ 5
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForProductionRule [
	^ 2
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForRegexRule [
	^ 3
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> startingStateForRule [
	^ 6
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> symbolNames [
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<nfa>' '<incremental>' '<glr>' '<ignorecase>' '<ignorevariables>' '<ignorevariablewarning>' '<annotate_tokens>' '<lr1>' '<unicode>' '<byte>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<scannerSelectors>' '<comment>' '<code>' '<immediateCode>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<error>' '<classLeft>' '<classRight>' '<patternToken>' '<conditionCode>' 'B e g i n' 'File' 'Rules' 'Rule' 'EmptyRule' 'Error' 'DirectiveLine' 'Directive' 'Incremental' 'NFA' 'ScannerSelectorsLine' 'Symbol ''symbol''+' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreVariableWarning' 'IgnoreCase' 'AnnotateTokens' 'LR1' 'Unicode' 'Byte' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' '("|" ''barToken'' ConcatenationRegex ''item'')' '("|" ''barToken'' ConcatenationRegex ''item'')+' 'ConcatenationRegex' 'RegexTerm ''item'' +' 'RegexTerm' 'CharacterRegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCGrammarDefinitionNode #SmaCCDefinitionErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCScannerSelectorsDirectiveNode #OrderedCollection nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCIgnoreVariableWarningDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #OrderedCollection #OrderedCollection #SmaCCRegexNode #OrderedCollection #SmaCCRegexNode #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
SmaCCDefinitionParser class >> transitionTable [
^#(
#[1 0 6 0 30 0 29 0 31 0 10 0 39 0 33 0 52 0 37 0 53 0 41 0 54 0 41 0 56 0 41 0 57 0 53 0 63 0 41 0 92 0 61 0 93 0 65 0 95 0 41 0 103 0 73 0 113] 
#[1 0 77 0 31 0 81 0 103] 
#[1 0 6 0 30 0 65 0 31 0 89 0 92 0 61 0 93 0 65 0 95] 
#[1 0 10 0 39 0 93 0 57 0 53 0 63] 
#[1 0 97 0 55 0 14 0 112] 
#[1 0 6 0 30 0 29 0 31 0 10 0 39 0 101 0 54 0 101 0 56 0 101 0 57 0 53 0 63 0 101 0 92 0 61 0 93 0 65 0 95 0 101 0 103 0 73 0 113] 
#[1 0 18 0 30 0 18 0 31 0 22 0 38 0 105 0 104] 
#[0 0 0 0 112] 
#[1 0 6 0 30 0 29 0 31 0 10 0 39 0 109 0 54 0 109 0 56 0 109 0 57 0 53 0 63 0 109 0 92 0 61 0 93 0 65 0 95 0 109 0 103 0 26 0 112 0 73 0 113] 
#[0 0 30 0 30 0 31 0 39 0 112 0 113] 
#[0 0 34 0 30 0 31 0 39 0 112 0 113] 
#[0 0 38 0 30 0 31 0 39 0 112 0 113] 
#[0 0 113 0 39] 
#[0 0 42 0 30 0 31 0 39 0 112 0 113] 
#[0 0 117 0 30] 
#[1 0 6 0 30 0 65 0 31 0 121 0 92 0 61 0 93 0 65 0 95] 
#[0 0 46 0 30 0 31 0 39 0 112 0 113] 
#[1 0 50 0 30 0 50 0 31 0 50 0 39 0 125 0 40 0 50 0 112 0 50 0 113] 
#[1 0 22 0 38 0 105 0 104] 
#[0 0 0 0 112] 
#[0 0 18 0 30 0 31 0 40] 
#[0 0 0 0 112] 
#[0 0 0 0 112] 
#[0 0 0 0 112] 
#[0 0 0 0 112] 
#[0 0 129 0 38] 
#[0 0 54 0 30 0 31 0 39 0 112 0 113] 
#[1 0 133 0 7 0 137 0 8 0 141 0 9 0 145 0 10 0 149 0 11 0 153 0 12 0 157 0 13 0 161 0 14 0 165 0 15 0 169 0 16 0 173 0 17 0 177 0 18 0 181 0 19 0 185 0 20 0 189 0 21 0 193 0 22 0 58 0 23 0 58 0 24 0 197 0 25 0 201 0 26 0 205 0 27 0 209 0 28 0 213 0 33 0 217 0 58 0 217 0 59 0 217 0 60 0 217 0 61 0 233 0 64 0 217 0 65 0 217 0 67 0 217 0 68 0 217 0 69 0 217 0 70 0 217 0 73 0 217 0 74 0 217 0 75 0 217 0 76 0 217 0 77 0 217 0 79 0 217 0 81 0 217 0 83 0 217 0 84 0 217 0 86 0 217 0 87 0 217 0 88 0 217 0 89 0 217 0 90 0 217 0 91] 
#[0 1 61 0 38] 
#[0 0 62 0 30 0 31 0 39 0 112 0 113] 
#[0 0 66 0 30 0 31 0 39 0 112 0 113] 
#[1 0 70 0 1 0 70 0 6 0 70 0 30 0 70 0 31 0 70 0 32 0 70 0 35 0 70 0 36 0 70 0 40 0 70 0 46 0 70 0 47 1 65 0 106 1 69 0 107 1 73 0 108] 
#[1 0 74 0 31 0 74 0 40 1 77 0 66] 
#[1 0 74 0 31 0 74 0 40 1 81 0 66] 
#[0 1 85 0 31] 
#[0 1 89 0 31] 
#[0 1 93 0 31] 
#[0 1 97 0 31] 
#[0 1 101 0 31] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 117 0 46 1 121 0 78 1 125 0 111] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 117 0 46 1 129 0 78 1 125 0 111] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 117 0 46 1 133 0 78 1 125 0 111] 
#[1 1 137 0 30 1 141 0 80] 
#[1 1 145 0 31 1 149 0 82] 
#[0 0 78 0 40] 
#[0 0 82 0 40] 
#[0 0 86 0 40] 
#[0 0 90 0 40] 
#[0 0 94 0 40] 
#[0 0 98 0 40] 
#[0 0 102 0 40] 
#[0 0 106 0 40] 
#[1 1 157 0 31 1 153 0 62 1 157 0 95] 
#[1 0 58 0 40 1 161 0 64] 
#[0 0 110 0 40] 
#[0 0 114 0 40] 
#[0 0 118 0 40] 
#[1 1 165 0 23 1 169 0 24] 
#[0 0 122 0 40] 
#[0 0 126 0 40] 
#[0 0 130 0 40] 
#[0 0 134 0 40] 
#[0 0 138 0 40] 
#[0 0 142 0 40] 
#[0 0 146 0 40] 
#[0 0 150 0 40] 
#[0 0 154 0 40] 
#[0 0 158 0 40] 
#[0 0 162 0 40] 
#[0 0 166 0 40] 
#[0 0 170 0 40] 
#[0 0 174 0 40] 
#[0 0 178 0 40] 
#[0 0 182 0 40] 
#[0 0 186 0 40] 
#[0 0 190 0 40] 
#[0 0 194 0 40] 
#[0 0 198 0 40] 
#[1 1 173 0 1 1 177 0 30 1 181 0 39 1 185 0 41 1 189 0 42 1 193 0 44 1 197 0 45 1 201 0 50 1 205 0 96 1 209 0 99 1 213 0 101 1 217 0 102] 
#[1 1 221 0 6 0 202 0 40 1 225 0 105] 
#[0 0 206 0 2 0 6 0 40] 
#[1 1 229 0 1 0 210 0 2 0 210 0 6 1 105 0 30 1 109 0 31 1 113 0 32 1 233 0 35 1 237 0 36 0 210 0 40 1 117 0 46 1 241 0 47 1 245 0 109 1 245 0 110 1 253 0 111] 
#[1 2 1 0 31 0 214 0 40 2 1 0 95] 
#[1 2 1 0 31 0 218 0 40 2 1 0 95] 
#[0 0 222 0 40] 
#[0 2 5 0 1] 
#[0 2 9 0 1] 
#[0 0 226 0 40] 
#[0 0 230 0 40] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 37 0 40 0 46 0 47] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 37 0 40 0 46 0 47] 
#[0 0 242 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 37 0 40 0 46 0 47] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 37 0 40 0 46 0 47] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 0 250 0 40 1 117 0 46 2 13 0 111] 
#[0 0 254 0 30 0 31 0 32 0 40 0 46] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 2 0 40 1 117 0 46 2 13 0 111] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 6 0 40 1 117 0 46 2 13 0 111] 
#[0 1 10 0 30 0 40] 
#[1 2 17 0 30 1 14 0 40] 
#[0 1 18 0 31 0 40] 
#[1 2 21 0 31 1 22 0 40] 
#[1 2 25 0 31 1 26 0 40 2 25 0 95] 
#[0 1 30 0 31 0 40] 
#[0 2 29 0 40] 
#[1 2 33 0 31 2 37 0 85] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 117 0 46 2 41 0 78 1 125 0 111] 
#[1 1 173 0 1 1 177 0 30 1 181 0 39 1 185 0 41 1 189 0 42 1 193 0 44 1 197 0 45 1 201 0 50 2 45 0 96 1 209 0 99 1 213 0 101 1 217 0 102] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 58 0 1 0 2 0 6 0 30 0 39 0 40 0 41 0 42 0 44 0 45 0 50] 
#[1 1 62 0 40 2 49 0 94] 
#[1 1 66 0 2 2 53 0 6 1 66 0 40 2 57 0 97 2 61 0 98] 
#[1 1 173 0 1 1 70 0 2 1 70 0 6 1 177 0 30 1 181 0 39 1 70 0 40 1 185 0 41 1 189 0 42 1 193 0 44 1 197 0 45 1 201 0 50 2 65 0 100 2 69 0 101 1 217 0 102] 
#[1 1 74 0 1 1 74 0 2 2 73 0 3 2 77 0 4 2 81 0 5 1 74 0 6 1 74 0 30 1 74 0 39 1 74 0 40 1 74 0 41 1 74 0 42 2 85 0 43 1 74 0 44 1 74 0 45 1 74 0 50] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 30 0 70 0 31 0 70 0 32 0 70 0 35 0 70 0 36 0 70 0 40 0 70 0 46 0 70 0 47 2 89 0 107 1 73 0 108] 
#[0 2 93 0 40] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 30 0 70 0 31 0 70 0 32 0 70 0 35 0 70 0 36 0 70 0 46 0 70 0 47 2 97 0 106 1 69 0 107 1 73 0 108] 
#[0 1 78 0 2 0 6 0 40] 
#[0 1 82 0 2 0 6 0 40] 
#[1 2 101 0 31 2 105 0 48] 
#[1 1 86 0 1 1 86 0 2 2 109 0 3 2 113 0 4 2 117 0 5 1 86 0 6 1 86 0 30 1 86 0 31 1 86 0 32 1 86 0 35 1 86 0 36 1 86 0 40 1 86 0 46 1 86 0 47] 
#[0 1 90 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[1 1 94 0 1 1 94 0 2 1 94 0 3 1 94 0 4 1 94 0 5 1 94 0 6 1 94 0 30 1 94 0 31 1 94 0 32 1 94 0 35 1 94 0 36 2 121 0 37 1 94 0 40 1 94 0 46 1 94 0 47] 
#[0 1 98 0 31 0 40] 
#[1 1 102 0 2 1 102 0 31 2 125 0 72] 
#[1 1 106 0 2 1 106 0 31 2 129 0 71] 
#[0 1 110 0 30 0 31 0 32 0 40 0 46] 
#[0 1 114 0 30 0 40] 
#[0 1 118 0 31 0 40] 
#[0 1 122 0 31 0 40] 
#[0 1 126 0 30 0 31 0 39 0 112 0 113] 
#[0 1 130 0 31 0 40] 
#[1 2 133 0 31 1 134 0 40] 
#[1 1 105 0 30 1 109 0 31 1 113 0 32 1 138 0 40 1 117 0 46 2 13 0 111] 
#[0 2 137 0 2] 
#[0 2 141 0 40] 
#[1 1 173 0 1 1 177 0 30 1 181 0 39 1 185 0 41 1 189 0 42 1 193 0 44 1 197 0 45 1 201 0 50 2 145 0 99 1 213 0 101 1 217 0 102] 
#[0 1 142 0 2 0 6 0 40] 
#[1 1 146 0 2 2 53 0 6 1 146 0 40 2 149 0 97] 
#[1 1 173 0 1 1 150 0 2 1 150 0 6 1 177 0 30 1 181 0 39 1 150 0 40 1 185 0 41 1 189 0 42 1 193 0 44 1 197 0 45 1 201 0 50 2 153 0 101 1 217 0 102] 
#[0 1 154 0 1 0 2 0 6 0 30 0 39 0 40 0 41 0 42 0 44 0 45 0 50] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 174 0 2 0 6 0 40] 
#[0 1 178 0 30 0 31 0 39 0 112 0 113] 
#[1 2 157 0 2 1 221 0 6] 
#[0 2 161 0 48] 
#[0 1 182 0 2 0 6 0 40] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[0 1 194 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[0 1 198 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[1 2 165 0 2 2 169 0 31] 
#[1 2 173 0 2 2 177 0 31] 
#[0 1 202 0 31 0 40] 
#[0 1 206 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 50] 
#[0 1 210 0 30 0 31 0 39 0 112 0 113] 
#[0 1 214 0 2 0 6 0 40] 
#[0 1 218 0 2 0 6 0 40] 
#[0 1 222 0 1 0 2 0 6 0 30 0 39 0 40 0 41 0 42 0 44 0 45 0 50] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 30 0 31 0 32 0 35 0 36 0 40 0 46 0 47] 
#[0 1 230 0 2 0 6 0 40] 
#[0 1 234 0 40] 
#[0 1 238 0 2 0 31] 
#[0 1 242 0 40] 
#[0 1 246 0 2 0 31]
	).
]

{ #category : 'private' }
SmaCCDefinitionParser >> dismissErrorToken [
	self scope: #default.
	^ super dismissErrorToken
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForAttributesLine1: nodes [
	| result |
	result := SmaCCAttributeDirectiveNode new.
	result attributesToken: (nodes at: 1).
	result classname: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result names.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm2: nodes [
	| result |
	result := SmaCCCharacterRegexNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm5: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm6: nodes [
	| result |
	result := SmaCCCharacterBlockRegexNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm7: nodes [
	| result |
	result := SmaCCTokenRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForCharacterRegexTerm8: nodes [
	| result |
	result := SmaCCRepeatRegexNode new.
	result regex: (nodes at: 1).
	result count: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForConcatenationRegex2: nodes [
	| result |
	result := SmaCCConcatenationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addNodes: (nodes at: 2) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForDirectiveLine1: nodes [
	| result |
	result := nodes at: 3.
	result directiveStartToken: (nodes at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEmptyRule1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEndDirective1: nodes [
	self scope: #default.
	^ nil
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError1: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError2: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForFile1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
	result addNodes: (nodes at: 1) to: result rules.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdMethodLine1: nodes [
	| result |
	result := SmaCCIdDirectiveNode new.
	result idToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoreVariableWarning1: nodes [
	| result |
	result := SmaCCIgnoreVariableWarningDirectiveNode new.
	result ignoreVariableWarningToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoredVariables1: nodes [
	| result |
	result := SmaCCIgnoreVariableDirectiveNode new.
	result ignoreVariablesToken: (nodes at: 2).
	result addTokens: (nodes at: 3) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForLeftLine1: nodes [
	| result |
	result := SmaCCAssociativeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForNFA1: nodes [
	| result |
	result := SmaCCFlagDirectiveNode new.
	result typeToken: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForNamedTerm2: nodes [
	| result |
	result := nodes at: 1.
	result variableNameToken: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule1: nodes [
	| result |
	result := SmaCCProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule2: nodes [
	| result |
	result := SmaCCCodeProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result code: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result classname: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule5: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForProductionRule1: nodes [
	| result |
	result := SmaCCProductionRuleNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 3).
	result addTokens: ((nodes at: 4) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex2: nodes [
	| result |
	result := SmaCCAlternationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result items.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule1: nodes [
	| result |
	result := SmaCCTokenRuleNode new.
	result name: (nodes at: 2).
	result colon: (nodes at: 3).
	result regex: (nodes at: 4).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result states.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm2: nodes [
	| result |
	result := SmaCCConditionRegexNode new.
	result code: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRootClassLine1: nodes [
	| result |
	result := SmaCCNodeNameDirectiveNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForScannerSelectorsLine1: nodes [
	| result |
	result := SmaCCScannerSelectorsDirectiveNode new.
	result scannerSelectorsToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForScopesLine1: nodes [
	| result |
	result := SmaCCScopeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm4: nodes [
	| result |
	result := SmaCCPostfixTermNode new.
	result term: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm5: nodes [
	| result |
	result := SmaCCGroupTermNode new.
	result leftParen: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartDirective1: nodes [
	self scope: #directives.
	^ nil
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartLine1: nodes [
	| result |
	result := SmaCCStartDirectiveNode new.
	result startToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartProduction1: nodes [
	self scope: #parser.
	^ nil
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartRegex1: nodes [
	self scope: #scanner.
	^ nil
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSuperclassLine1: nodes [
	| result |
	result := SmaCCSuperclassDirectiveNode new.
	result hierarchyToken: (nodes at: 1).
	result superclass: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result names.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm1: nodes [
	| result |
	result := SmaCCKeywordSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm2: nodes [
	| result |
	result := SmaCCTokenSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm3: nodes [
	| result |
	result := SmaCCProductionSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm4: nodes [
	| result |
	result := SmaCCErrorSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'testing' }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]

{ #category : 'testing' }
SmaCCDefinitionParser >> useAllTokenIds [
	^ false
]
