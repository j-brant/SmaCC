Class {
	#name : #SmaCCDefinitionParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'acceptSyntaxErrors'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> cacheId [
	^'2025-08-25T16:29:26.937368-05:00'
]

{ #category : #generated }
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

%start ProductionRule RegexRule DirectiveLine File EmptyRule;

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
	| IgnoreCase
	| IgnoredVariables
	| IgnoreVariableWarning
	| AnnotateTokens
	| LR1
	| Unicode
	| Byte
	| ScannerSelectorsLine
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
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| RegexTerm 'regex' ""*"" 'count' {{RepeatRegex}}	
	| RegexTerm 'regex' ""+"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' ""?"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' <repeat> 'count' {{RepeatRegex}}
	| RegexTerm 'regex' <conditionCode> 'code' {{ConditionRegex}}
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

{ #category : #generated }
SmaCCDefinitionParser class >> reduceTable [
^#(
	#(89 0 #reduceActionForStartRegex1: 6190081 false) 
	#(59 0 #reduceActionForStartDirective1: 3814401 false) 
	#(53 0 #reduceActionForEmptyRule1: 3036161 false) 
	#(91 1 #liftFirstValue: 6280193 false) 
	#(99 0 #reduceActionForStartProduction1: 7307265 false) 
	#(50 1 #reduceActionForFile1: 2880513 false) 
	#(51 1 #reduceActionForRules1: 2920449 false) 
	#(52 1 #liftFirstValue: 2966532 false) 
	#(52 1 #liftFirstValue: 2966530 false) 
	#(52 1 #liftFirstValue: 2966531 false) 
	#(52 1 #liftFirstValue: 2966529 false) 
	#(54 1 #reduceActionForError2: 3075074 false) 
	#(51 2 #reduceActionForRules2: 2920450 false) 
	#(60 0 #reduceActionForEndDirective1: 3868673 false) 
	#(88 2 #reduceActionForRegexRule2: 6014978 false) 
	#(54 2 #reduceActionForError1: 3075073 false) 
	#(103 0 #reduceActionForTerms1: 7858177 false) 
	#(62 0 #reduceActionForTerms1: 3984385 false) 
	#(79 1 #reduceActionForGLR1: 5312513 false) 
	#(83 1 #reduceActionForGLR1: 5721089 false) 
	#(84 1 #reduceActionForGLR1: 5782529 false) 
	#(85 1 #reduceActionForGLR1: 5853185 false) 
	#(86 1 #reduceActionForGLR1: 5900289 false) 
	#(87 1 #reduceActionForGLR1: 5955585 false) 
	#(56 1 #liftFirstValue: 3342357 false) 
	#(56 1 #liftFirstValue: 3342338 false) 
	#(56 1 #liftFirstValue: 3342337 false) 
	#(56 1 #liftFirstValue: 3342339 false) 
	#(56 1 #liftFirstValue: 3342340 false) 
	#(56 1 #liftFirstValue: 3342341 false) 
	#(56 1 #liftFirstValue: 3342342 false) 
	#(56 1 #liftFirstValue: 3342343 false) 
	#(56 1 #liftFirstValue: 3342344 false) 
	#(56 1 #liftFirstValue: 3342345 false) 
	#(56 1 #liftFirstValue: 3342346 false) 
	#(56 1 #liftFirstValue: 3342347 false) 
	#(56 1 #liftFirstValue: 3342348 false) 
	#(56 1 #liftFirstValue: 3342349 false) 
	#(56 1 #liftFirstValue: 3342351 false) 
	#(56 1 #liftFirstValue: 3342352 false) 
	#(56 1 #liftFirstValue: 3342350 false) 
	#(56 1 #liftFirstValue: 3342353 false) 
	#(56 1 #liftFirstValue: 3342354 false) 
	#(56 1 #liftFirstValue: 3342355 false) 
	#(56 1 #liftFirstValue: 3342356 false) 
	#(100 0 #reduceActionForEndDirective1: 7357441 false) 
	#(101 1 #reduceActionForParserRules2: 7406594 false) 
	#(102 1 #reduceActionForParserRule1: 7504897 false) 
	#(61 2 #reduceActionForScopesLine1: 3917825 false) 
	#(63 2 #reduceActionForScopesLine1: 4024321 false) 
	#(64 2 #reduceActionForRootClassLine1: 4100097 false) 
	#(69 2 #reduceActionForRootClassLine1: 4576257 false) 
	#(70 2 #reduceActionForRootClassLine1: 4658177 false) 
	#(106 1 #reduceActionForTerm2: 8231938 false) 
	#(106 1 #reduceActionForTerm3: 8231939 false) 
	#(106 1 #reduceActionForTerm1: 8231937 false) 
	#(106 1 #reduceActionForTerm4: 8231940 false) 
	#(71 2 #reduceActionForLeftLine1: 4740097 false) 
	#(74 1 #reduceActionForRules1: 4968449 false) 
	#(72 2 #reduceActionForLeftLine1: 4810753 false) 
	#(73 2 #reduceActionForLeftLine1: 4883457 false) 
	#(76 1 #reduceActionForRules1: 5087233 false) 
	#(75 2 #reduceActionForIdMethodLine1: 5026817 false) 
	#(78 1 #reduceActionForRules1: 5226497 false) 
	#(77 2 #reduceActionForStartLine1: 5153793 false) 
	#(57 2 #reduceActionForScannerSelectorsLine1: 3694593 false) 
	#(58 1 #reduceActionForRules1: 3763201 false) 
	#(97 1 #reduceActionForRegexTerm7: 6537223 false) 
	#(97 1 #reduceActionForRegexTerm2: 6537218 false) 
	#(97 1 #reduceActionForRegexTerm2: 6537220 false) 
	#(97 1 #reduceActionForRegexTerm6: 6537222 false) 
	#(97 1 #reduceActionForRegexTerm2: 6537217 false) 
	#(97 1 #reduceActionForRegexTerm2: 6537219 false) 
	#(90 0 #reduceActionForEndDirective1: 6236161 false) 
	#(92 1 #liftFirstValue: 6308865 false) 
	#(95 1 #liftFirstValue: 6437889 false) 
	#(102 2 #reduceActionForParserRule2: 7504898 false) 
	#(102 2 #reduceActionForParserRule2: 7504899 false) 
	#(103 2 #reduceActionForRules2: 7858178 false) 
	#(104 1 #liftFirstValue: 7900161 false) 
	#(105 1 #liftFirstValue: 8155137 false) 
	#(62 2 #reduceActionForRules2: 3984386 false) 
	#(68 0 #reduceActionForTerms1: 4525057 false) 
	#(67 0 #reduceActionForTerms1: 4475905 false) 
	#(74 2 #reduceActionForRules2: 4968450 false) 
	#(76 2 #reduceActionForRules2: 5087234 false) 
	#(78 2 #reduceActionForRules2: 5226498 false) 
	#(58 2 #reduceActionForRules2: 3763202 false) 
	#(55 5 #reduceActionForDirectiveLine1: 3208193 false) 
	#(81 1 #reduceActionForRules1: 5487617 false) 
	#(80 3 #reduceActionForIgnoredVariables1: 5359617 false) 
	#(82 3 #reduceActionForIgnoreVariableWarning1: 5578753 false) 
	#(94 1 #reduceActionFor______barToken__ConcatenationRegex__item___1: 6368257 false) 
	#(92 2 #reduceActionForRegex2: 6308866 false) 
	#(97 2 #reduceActionForRegexTerm8: 6537224 false) 
	#(97 2 #reduceActionForRegexTerm8: 6537225 false) 
	#(97 2 #reduceActionForRegexTerm8: 6537226 false) 
	#(97 2 #reduceActionForRegexTerm8: 6537227 false) 
	#(97 2 #reduceActionForRegexTerm12: 6537228 false) 
	#(95 2 #reduceActionForConcatenationRegex2: 6437890 false) 
	#(96 1 #reduceActionForRules1: 6491137 false) 
	#(101 3 #reduceActionForParserRules1: 7406593 false) 
	#(98 6 #reduceActionForProductionRule1: 7156737 false) 
	#(102 3 #reduceActionForParserRule5: 7504901 false) 
	#(104 2 #reduceActionForSpecialTerm4: 7900164 false) 
	#(104 2 #reduceActionForSpecialTerm4: 7900163 false) 
	#(104 2 #reduceActionForSpecialTerm4: 7900162 false) 
	#(105 2 #reduceActionForNamedTerm2: 8155138 false) 
	#(81 2 #reduceActionForRules2: 5487618 false) 
	#(97 3 #reduceActionForRegexTerm5: 6537221 false) 
	#(88 6 #reduceActionForRegexRule1: 6014977 false) 
	#(93 2 #reduceActionFor______barToken__ConcatenationRegex__item__1: 6368257 false) 
	#(94 2 #reduceActionFor______barToken__ConcatenationRegex__item___2: 6368258 false) 
	#(96 2 #reduceActionForRules2: 6491138 false) 
	#(104 3 #reduceActionForSpecialTerm5: 7900165 false) 
	#(102 4 #reduceActionForParserRule4: 7504900 false) 
	#(65 5 #reduceActionForSuperclassLine1: 4184065 false) 
	#(68 2 #reduceActionForRules2: 4525058 false) 
	#(66 5 #reduceActionForAttributesLine1: 4330497 false) 
	#(67 2 #reduceActionForRules2: 4475906 false)
	).
]

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForDirectiveLine [
	^ 4
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForEmptyRule [
	^ 5
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForProductionRule [
	^ 2
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForRegexRule [
	^ 3
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolNames [
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<ignorevariablewarning>' '<annotate_tokens>' '<lr1>' '<unicode>' '<byte>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<scannerSelectors>' '<comment>' '<code>' '<immediateCode>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<error>' '<classLeft>' '<classRight>' '<patternToken>' '<conditionCode>' 'B e g i n' 'File' 'Rules' 'Rule' 'EmptyRule' 'Error' 'DirectiveLine' 'Directive' 'ScannerSelectorsLine' 'Symbol ''symbol''+' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreVariableWarning' 'IgnoreCase' 'AnnotateTokens' 'LR1' 'Unicode' 'Byte' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' '("|" ''barToken'' ConcatenationRegex ''item'')' '("|" ''barToken'' ConcatenationRegex ''item'')+' 'ConcatenationRegex' 'RegexTerm ''item'' +' 'RegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCGrammarDefinitionNode #SmaCCDefinitionErrorNode #SmaCCDirectiveNode #SmaCCDirectiveNode #SmaCCScannerSelectorsDirectiveNode #OrderedCollection nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCIgnoreVariableWarningDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #OrderedCollection #OrderedCollection #SmaCCRegexNode #OrderedCollection #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
SmaCCDefinitionParser class >> transitionTable [
^#(
#[1 0 6 0 28 0 25 0 29 0 10 0 37 0 29 0 50 0 33 0 51 0 37 0 52 0 37 0 54 0 37 0 55 0 49 0 59 0 37 0 88 0 57 0 89 0 61 0 91 0 37 0 98 0 69 0 108] 
#[1 0 73 0 29 0 77 0 98] 
#[1 0 6 0 28 0 61 0 29 0 85 0 88 0 57 0 89 0 61 0 91] 
#[1 0 10 0 37 0 89 0 55 0 49 0 59] 
#[1 0 93 0 53 0 14 0 107] 
#[1 0 18 0 28 0 18 0 29 0 22 0 36 0 97 0 99] 
#[0 0 0 0 107] 
#[1 0 6 0 28 0 25 0 29 0 10 0 37 0 101 0 52 0 101 0 54 0 101 0 55 0 49 0 59 0 101 0 88 0 57 0 89 0 61 0 91 0 101 0 98 0 26 0 107 0 69 0 108] 
#[0 0 30 0 28 0 29 0 37 0 107 0 108] 
#[0 0 34 0 28 0 29 0 37 0 107 0 108] 
#[0 0 38 0 28 0 29 0 37 0 107 0 108] 
#[0 0 105 0 37] 
#[0 0 42 0 28 0 29 0 37 0 107 0 108] 
#[0 0 109 0 28] 
#[1 0 6 0 28 0 61 0 29 0 113 0 88 0 57 0 89 0 61 0 91] 
#[0 0 46 0 28 0 29 0 37 0 107 0 108] 
#[1 0 50 0 28 0 50 0 29 0 50 0 37 0 117 0 38 0 50 0 107 0 50 0 108] 
#[1 0 22 0 36 0 97 0 99] 
#[0 0 0 0 107] 
#[0 0 18 0 28 0 29 0 38] 
#[0 0 0 0 107] 
#[0 0 0 0 107] 
#[0 0 0 0 107] 
#[0 0 121 0 36] 
#[0 0 54 0 28 0 29 0 37 0 107 0 108] 
#[1 0 125 0 7 0 129 0 8 0 133 0 9 0 137 0 10 0 141 0 11 0 145 0 12 0 149 0 13 0 153 0 14 0 157 0 15 0 161 0 16 0 165 0 17 0 169 0 18 0 173 0 19 0 177 0 20 0 58 0 21 0 58 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 31 0 201 0 56 0 201 0 57 0 209 0 60 0 201 0 61 0 201 0 63 0 201 0 64 0 201 0 65 0 201 0 66 0 201 0 69 0 201 0 70 0 201 0 71 0 201 0 72 0 201 0 73 0 201 0 75 0 201 0 77 0 201 0 79 0 201 0 80 0 201 0 82 0 201 0 83 0 201 0 84 0 201 0 85 0 201 0 86 0 201 0 87] 
#[0 1 37 0 36] 
#[0 0 62 0 28 0 29 0 37 0 107 0 108] 
#[0 0 66 0 28 0 29 0 37 0 107 0 108] 
#[1 0 70 0 1 0 70 0 6 0 70 0 28 0 70 0 29 0 70 0 30 0 70 0 33 0 70 0 34 0 70 0 38 0 70 0 44 0 70 0 45 1 41 0 101 1 45 0 102 1 49 0 103] 
#[1 0 74 0 29 0 74 0 38 1 53 0 62] 
#[1 0 74 0 29 0 74 0 38 1 57 0 62] 
#[0 1 61 0 29] 
#[0 1 65 0 29] 
#[0 1 69 0 29] 
#[0 1 73 0 29] 
#[0 1 77 0 29] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 1 93 0 44 1 97 0 74 1 101 0 106] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 1 93 0 44 1 105 0 74 1 101 0 106] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 1 93 0 44 1 109 0 74 1 101 0 106] 
#[1 1 113 0 28 1 117 0 76] 
#[1 1 121 0 29 1 125 0 78] 
#[0 0 78 0 38] 
#[0 0 82 0 38] 
#[0 0 86 0 38] 
#[0 0 90 0 38] 
#[0 0 94 0 38] 
#[0 0 98 0 38] 
#[1 1 133 0 29 1 129 0 58 1 133 0 91] 
#[1 0 58 0 38 1 137 0 60] 
#[0 0 102 0 38] 
#[1 1 141 0 21 1 145 0 22] 
#[0 0 106 0 38] 
#[0 0 110 0 38] 
#[0 0 114 0 38] 
#[0 0 118 0 38] 
#[0 0 122 0 38] 
#[0 0 126 0 38] 
#[0 0 130 0 38] 
#[0 0 134 0 38] 
#[0 0 138 0 38] 
#[0 0 142 0 38] 
#[0 0 146 0 38] 
#[0 0 150 0 38] 
#[0 0 154 0 38] 
#[0 0 158 0 38] 
#[0 0 162 0 38] 
#[0 0 166 0 38] 
#[0 0 170 0 38] 
#[0 0 174 0 38] 
#[0 0 178 0 38] 
#[0 0 182 0 38] 
#[1 1 149 0 1 1 153 0 28 1 157 0 37 1 161 0 39 1 165 0 40 1 169 0 42 1 173 0 43 1 177 0 92 1 181 0 95 1 185 0 97] 
#[1 1 189 0 6 0 186 0 38 1 193 0 100] 
#[0 0 190 0 2 0 6 0 38] 
#[1 1 197 0 1 0 194 0 2 0 194 0 6 1 81 0 28 1 85 0 29 1 89 0 30 1 201 0 33 1 205 0 34 0 194 0 38 1 93 0 44 1 209 0 45 1 213 0 104 1 213 0 105 1 221 0 106] 
#[1 1 225 0 29 0 198 0 38 1 225 0 91] 
#[1 1 225 0 29 0 202 0 38 1 225 0 91] 
#[0 0 206 0 38] 
#[0 1 229 0 1] 
#[0 1 233 0 1] 
#[0 0 210 0 38] 
#[0 0 214 0 38] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 35 0 38 0 44 0 45] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 35 0 38 0 44 0 45] 
#[0 0 226 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 35 0 38 0 44 0 45] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 35 0 38 0 44 0 45] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 0 234 0 38 1 93 0 44 1 237 0 106] 
#[0 0 238 0 28 0 29 0 30 0 38 0 44] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 0 242 0 38 1 93 0 44 1 237 0 106] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 0 246 0 38 1 93 0 44 1 237 0 106] 
#[0 0 250 0 28 0 38] 
#[1 1 241 0 28 0 254 0 38] 
#[0 1 2 0 29 0 38] 
#[1 1 245 0 29 1 6 0 38] 
#[1 1 249 0 29 1 10 0 38 1 249 0 91] 
#[0 1 14 0 29 0 38] 
#[0 1 253 0 38] 
#[1 2 1 0 29 2 5 0 81] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 1 93 0 44 2 9 0 74 1 101 0 106] 
#[1 1 149 0 1 1 153 0 28 1 157 0 37 1 161 0 39 1 165 0 40 1 169 0 42 1 173 0 43 2 13 0 92 1 181 0 95 1 185 0 97] 
#[0 1 18 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[1 1 42 0 38 2 17 0 90] 
#[1 1 46 0 2 2 21 0 6 1 46 0 38 2 25 0 93 2 29 0 94] 
#[1 1 149 0 1 1 50 0 2 2 33 0 3 2 37 0 4 2 41 0 5 1 50 0 6 1 153 0 28 1 157 0 37 1 50 0 38 1 161 0 39 1 165 0 40 2 45 0 41 1 169 0 42 1 173 0 43 2 49 0 48 2 53 0 96 2 57 0 97] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 28 0 70 0 29 0 70 0 30 0 70 0 33 0 70 0 34 0 70 0 38 0 70 0 44 0 70 0 45 2 61 0 102 1 49 0 103] 
#[0 2 65 0 38] 
#[1 0 70 0 1 0 70 0 2 0 70 0 6 0 70 0 28 0 70 0 29 0 70 0 30 0 70 0 33 0 70 0 34 0 70 0 44 0 70 0 45 2 69 0 101 1 45 0 102 1 49 0 103] 
#[0 1 54 0 2 0 6 0 38] 
#[0 1 58 0 2 0 6 0 38] 
#[1 2 73 0 29 2 77 0 46] 
#[1 1 62 0 1 1 62 0 2 2 81 0 3 2 85 0 4 2 89 0 5 1 62 0 6 1 62 0 28 1 62 0 29 1 62 0 30 1 62 0 33 1 62 0 34 1 62 0 38 1 62 0 44 1 62 0 45] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[1 1 70 0 1 1 70 0 2 1 70 0 3 1 70 0 4 1 70 0 5 1 70 0 6 1 70 0 28 1 70 0 29 1 70 0 30 1 70 0 33 1 70 0 34 2 93 0 35 1 70 0 38 1 70 0 44 1 70 0 45] 
#[0 1 74 0 29 0 38] 
#[1 1 78 0 2 1 78 0 29 2 97 0 68] 
#[1 1 82 0 2 1 82 0 29 2 101 0 67] 
#[0 1 86 0 28 0 29 0 30 0 38 0 44] 
#[0 1 90 0 28 0 38] 
#[0 1 94 0 29 0 38] 
#[0 1 98 0 29 0 38] 
#[0 1 102 0 28 0 29 0 37 0 107 0 108] 
#[0 1 106 0 29 0 38] 
#[1 2 105 0 29 1 110 0 38] 
#[1 1 81 0 28 1 85 0 29 1 89 0 30 1 114 0 38 1 93 0 44 1 237 0 106] 
#[0 2 109 0 2] 
#[0 2 113 0 38] 
#[1 1 149 0 1 1 153 0 28 1 157 0 37 1 161 0 39 1 165 0 40 1 169 0 42 1 173 0 43 2 117 0 95 1 185 0 97] 
#[0 1 118 0 2 0 6 0 38] 
#[1 1 122 0 2 2 21 0 6 1 122 0 38 2 121 0 93] 
#[0 1 126 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[1 1 149 0 1 1 146 0 2 1 146 0 6 1 153 0 28 1 157 0 37 1 146 0 38 1 161 0 39 1 165 0 40 1 169 0 42 1 173 0 43 2 125 0 97] 
#[1 1 150 0 1 1 150 0 2 2 33 0 3 2 37 0 4 2 41 0 5 1 150 0 6 1 150 0 28 1 150 0 37 1 150 0 38 1 150 0 39 1 150 0 40 2 45 0 41 1 150 0 42 1 150 0 43 2 49 0 48] 
#[0 1 154 0 2 0 6 0 38] 
#[0 1 158 0 28 0 29 0 37 0 107 0 108] 
#[1 2 129 0 2 1 189 0 6] 
#[0 2 133 0 46] 
#[0 1 162 0 2 0 6 0 38] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[1 2 137 0 2 2 141 0 29] 
#[1 2 145 0 2 2 149 0 29] 
#[0 1 182 0 29 0 38] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 48] 
#[0 1 190 0 28 0 29 0 37 0 107 0 108] 
#[0 1 194 0 2 0 6 0 38] 
#[0 1 198 0 2 0 6 0 38] 
#[1 1 202 0 1 1 202 0 2 2 33 0 3 2 37 0 4 2 41 0 5 1 202 0 6 1 202 0 28 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 2 45 0 41 1 202 0 42 1 202 0 43 2 49 0 48] 
#[0 1 206 0 1 0 2 0 3 0 4 0 5 0 6 0 28 0 29 0 30 0 33 0 34 0 38 0 44 0 45] 
#[0 1 210 0 2 0 6 0 38] 
#[0 1 214 0 38] 
#[0 1 218 0 2 0 29] 
#[0 1 222 0 38] 
#[0 1 226 0 2 0 29]
	).
]

{ #category : #private }
SmaCCDefinitionParser >> dismissErrorToken [
	self scope: #default.
	^ super dismissErrorToken
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForConcatenationRegex2: nodes [
	| result |
	result := SmaCCConcatenationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addNodes: (nodes at: 2) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForDirectiveLine1: nodes [
	| result |
	result := nodes at: 3.
	result directiveStartToken: (nodes at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEmptyRule1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEndDirective1: nodes [
	self scope: #default.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError1: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForError2: nodes [
	| result |
	result := SmaCCDefinitionErrorNode new.
	result smaccError: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForFile1: nodes [
	| result |
	result := SmaCCGrammarDefinitionNode new.
	result addNodes: (nodes at: 1) to: result rules.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForGLR1: nodes [
	| result |
	result := SmaCCFlagDirectiveNode new.
	result typeToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdMethodLine1: nodes [
	| result |
	result := SmaCCIdDirectiveNode new.
	result idToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoreVariableWarning1: nodes [
	| result |
	result := SmaCCIgnoreVariableWarningDirectiveNode new.
	result ignoreVariableWarningToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoredVariables1: nodes [
	| result |
	result := SmaCCIgnoreVariableDirectiveNode new.
	result ignoreVariablesToken: (nodes at: 2).
	result addTokens: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForLeftLine1: nodes [
	| result |
	result := SmaCCAssociativeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForNamedTerm2: nodes [
	| result |
	result := nodes at: 1.
	result variableNameToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule1: nodes [
	| result |
	result := SmaCCProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule2: nodes [
	| result |
	result := SmaCCCodeProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result code: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result classname: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule5: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex2: nodes [
	| result |
	result := SmaCCAlternationRegexNode new.
	result addNode: (nodes at: 1) to: result items.
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule1: nodes [
	| result |
	result := SmaCCTokenRuleNode new.
	result name: (nodes at: 2).
	result colon: (nodes at: 3).
	result regex: (nodes at: 4).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result states.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm12: nodes [
	| result |
	result := SmaCCConditionRegexNode new.
	result regex: (nodes at: 1).
	result code: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm2: nodes [
	| result |
	result := SmaCCCharacterRegexNode new.
	result char: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm5: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm6: nodes [
	| result |
	result := SmaCCCharacterBlockRegexNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm7: nodes [
	| result |
	result := SmaCCTokenRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm8: nodes [
	| result |
	result := SmaCCRepeatRegexNode new.
	result regex: (nodes at: 1).
	result count: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRootClassLine1: nodes [
	| result |
	result := SmaCCNodeNameDirectiveNode new.
	result typeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRules2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForScannerSelectorsLine1: nodes [
	| result |
	result := SmaCCScannerSelectorsDirectiveNode new.
	result scannerSelectorsToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForScopesLine1: nodes [
	| result |
	result := SmaCCScopeDirectiveNode new.
	result typeToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm4: nodes [
	| result |
	result := SmaCCPostfixTermNode new.
	result term: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSpecialTerm5: nodes [
	| result |
	result := SmaCCGroupTermNode new.
	result leftParen: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result barTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartDirective1: nodes [
	self scope: #directives.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartLine1: nodes [
	| result |
	result := SmaCCStartDirectiveNode new.
	result startToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result symbols.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartProduction1: nodes [
	self scope: #parser.
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartRegex1: nodes [
	self scope: #scanner.
	^ nil
]

{ #category : #'generated-reduction actions' }
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

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm1: nodes [
	| result |
	result := SmaCCKeywordSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm2: nodes [
	| result |
	result := SmaCCTokenSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm3: nodes [
	| result |
	result := SmaCCProductionSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm4: nodes [
	| result |
	result := SmaCCErrorSymbolNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionFor______barToken__ConcatenationRegex__item___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #testing }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
SmaCCDefinitionParser >> useAllTokenIds [
	^ false
]
