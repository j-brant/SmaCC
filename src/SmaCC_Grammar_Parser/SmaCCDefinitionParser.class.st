Class {
	#name : #SmaCCDefinitionParser,
	#superclass : #SmaCCParser,
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> cacheId [
	^'2018-04-16T15:27:51.226865-05:00'
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
directives <annotate_tokens>
	: annotate_tokens
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
<symbolname>
	: <name>
	;
<keyword>
	: (\"" [^\""]* \"") + 
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<code>
	: \{ 
	;
<variablename>
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
	: \[ ([^\]\\] | <backslashcharacter> )+ \] 
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
parser <optionalLeft>
	: \[
	;
parser <optionalRight>
	: \] 
	;
parser <repeatLeft> 
	: \<\% 
	;
parser <repeatRight> 
	: \%\> 
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;

%id <code> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left	""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

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
		AlternationRegex
		ConcatenationRegex
		TokenRegex
		NameRegex
		RepeatRegex
	);
%prefix SmaCC;
%suffix Node;
%root Definition;

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
	| AnnotateTokens
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
IgnoreCase
	: <ignorecase> 'typeToken' {{FlagDirective}}
	;
AnnotateTokens
	: <annotate_tokens> 'typeToken' {{FlagDirective}}
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
	: RegexTerm 
	| Regex 'left' ""|"" 'barToken' Regex 'right' {{AlternationRegex}}
	| Regex 'left' RegexTerm 'right' {{ConcatenationRegex}}
	;
RegexTerm
	: <character> 'char' {{CharacterRegex}}
	| <directive> 'char' {{CharacterRegex}}
	| <anycharacter> 'char' {{CharacterRegex}}
	| <backslashcharacter> 'char' {{CharacterRegex}}
	| ""("" 'leftParen' Regex "")"" 'rightParen' {{Regex}}
	| <characterblock> 'block' {{CharacterBlockRegex}}
	| <tokenname> 'name' {{TokenRegex}}
	| <symbolname> 'name' {{NameRegex}}
	| RegexTerm 'regex' ""*"" 'count' {{RepeatRegex}}	
	| RegexTerm 'regex' ""+"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' ""?"" 'count' {{RepeatRegex}}
	| RegexTerm 'regex' <repeat> 'count' {{RepeatRegex}}
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
	| ""error"" 'name' {{ErrorSymbol}}
	;"
]

{ #category : #'generated-accessing' }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
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
SmaCCDefinitionParser >> reduceActionForDirectiveLine1: nodes [
	| result |
	result := nodes at: 3.
	result directiveStartToken: (nodes at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEndDirective1: nodes [
	self scope: #default.
	^ nil
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
SmaCCDefinitionParser >> reduceActionForParserRule3: nodes [
	| result |
	result := SmaCCClassProductionExpressionNode new.
	result addNodes: (nodes at: 1) to: result terms.
	result left: (nodes at: 2).
	result classname: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
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
	result left: (nodes at: 1).
	result barToken: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex3: nodes [
	| result |
	result := SmaCCConcatenationRegexNode new.
	result left: (nodes at: 1).
	result right: (nodes at: 2).
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
	result := SmaCCNameRegexNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm9: nodes [
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

{ #category : #generated }
SmaCCDefinitionParser >> reduceTable [
^#(
	#(73 0 #reduceActionForStartRegex1:) 
	#(47 0 #reduceActionForStartDirective1:) 
	#(75 1 #liftFirstValue:) 
	#(79 0 #reduceActionForStartProduction1:) 
	#(42 1 #reduceActionForFile1:) 
	#(43 1 #reduceActionForRules1:) 
	#(44 1 #liftFirstValue:) 
	#(43 2 #reduceActionForRules2:) 
	#(48 0 #reduceActionForEndDirective1:) 
	#(72 2 #reduceActionForRegexRule2:) 
	#(83 0 #reduceActionForTerms1:) 
	#(50 0 #reduceActionForTerms1:) 
	#(67 1 #reduceActionForGLR1:) 
	#(70 1 #reduceActionForGLR1:) 
	#(71 1 #reduceActionForGLR1:) 
	#(46 1 #liftFirstValue:) 
	#(80 0 #reduceActionForEndDirective1:) 
	#(81 1 #reduceActionForParserRules2:) 
	#(82 1 #reduceActionForParserRule1:) 
	#(49 2 #reduceActionForScopesLine1:) 
	#(51 2 #reduceActionForScopesLine1:) 
	#(52 2 #reduceActionForRootClassLine1:) 
	#(57 2 #reduceActionForRootClassLine1:) 
	#(58 2 #reduceActionForRootClassLine1:) 
	#(86 1 #reduceActionForTerm4:) 
	#(86 1 #reduceActionForTerm2:) 
	#(86 1 #reduceActionForTerm3:) 
	#(86 1 #reduceActionForTerm1:) 
	#(59 2 #reduceActionForLeftLine1:) 
	#(62 1 #reduceActionForRules1:) 
	#(60 2 #reduceActionForLeftLine1:) 
	#(61 2 #reduceActionForLeftLine1:) 
	#(64 1 #reduceActionForRules1:) 
	#(63 2 #reduceActionForIdMethodLine1:) 
	#(66 1 #reduceActionForRules1:) 
	#(65 2 #reduceActionForStartLine1:) 
	#(77 1 #reduceActionForRegexTerm7:) 
	#(77 1 #reduceActionForRegexTerm8:) 
	#(77 1 #reduceActionForRegexTerm2:) 
	#(77 1 #reduceActionForRegexTerm6:) 
	#(74 0 #reduceActionForEndDirective1:) 
	#(76 1 #liftFirstValue:) 
	#(82 2 #reduceActionForParserRule2:) 
	#(83 2 #reduceActionForRules2:) 
	#(84 1 #liftFirstValue:) 
	#(85 1 #liftFirstValue:) 
	#(50 2 #reduceActionForRules2:) 
	#(56 0 #reduceActionForTerms1:) 
	#(55 0 #reduceActionForTerms1:) 
	#(62 2 #reduceActionForRules2:) 
	#(64 2 #reduceActionForRules2:) 
	#(66 2 #reduceActionForRules2:) 
	#(45 5 #reduceActionForDirectiveLine1:) 
	#(69 1 #reduceActionForRules1:) 
	#(68 3 #reduceActionForIgnoredVariables1:) 
	#(76 2 #reduceActionForRegex3:) 
	#(77 2 #reduceActionForRegexTerm9:) 
	#(81 3 #reduceActionForParserRules1:) 
	#(78 6 #reduceActionForProductionRule1:) 
	#(82 3 #reduceActionForParserRule4:) 
	#(84 2 #reduceActionForSpecialTerm4:) 
	#(85 2 #reduceActionForNamedTerm2:) 
	#(69 2 #reduceActionForRules2:) 
	#(77 3 #reduceActionForRegexTerm5:) 
	#(76 3 #reduceActionForRegex2:) 
	#(72 6 #reduceActionForRegexRule1:) 
	#(84 3 #reduceActionForSpecialTerm5:) 
	#(82 4 #reduceActionForParserRule3:) 
	#(53 5 #reduceActionForSuperclassLine1:) 
	#(56 2 #reduceActionForRules2:) 
	#(54 5 #reduceActionForAttributesLine1:) 
	#(55 2 #reduceActionForRules2:)
	).
]

{ #category : #generated }
SmaCCDefinitionParser >> symbolNames [
	^ #('"("' '")"' '"*"' '"+"' '"?"' '"error"' '"|"' '<scopes>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<annotate_tokens>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<comment>' '<code>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<classLeft>' '<classRight>' 'B e g i n' 'File' 'Rules' 'Rule' 'DirectiveLine' 'Directive' 'StartDirective' 'EndDirective' 'ScopesLine' 'Scopes' 'ExcludeScopesLine' 'RootClassLine' 'SuperclassLine' 'AttributesLine' 'IvarList' 'ClassList' 'PrefixLine' 'SuffixLine' 'LeftLine' 'RightLine' 'NonAssociativeLine' 'TokenList' 'IdMethodLine' 'IdTokens' 'StartLine' 'StartingTokens' 'GLR' 'IgnoredVariables' 'IgnoredVariableList' 'IgnoreCase' 'AnnotateTokens' 'RegexRule' 'StartRegex' 'EndRegex' 'Symbol' 'Regex' 'RegexTerm' 'ProductionRule' 'StartProduction' 'EndProduction' 'ParserRules' 'ParserRule' 'Terms' 'SpecialTerm' 'NamedTerm' 'Term' 'E O F' 'error')
]

{ #category : #generated }
SmaCCDefinitionParser >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCGrammarDefinitionNode #SmaCCGrammarDefinitionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCDirectiveNode #SmaCCDirectiveNode nil nil #SmaCCScopeDirectiveNode #OrderedCollection #SmaCCScopeDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCSuperclassDirectiveNode #SmaCCAttributeDirectiveNode #OrderedCollection #OrderedCollection #SmaCCNodeNameDirectiveNode #SmaCCNodeNameDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #SmaCCAssociativeDirectiveNode #OrderedCollection #SmaCCIdDirectiveNode #OrderedCollection #SmaCCStartDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCIgnoreVariableDirectiveNode #OrderedCollection #SmaCCFlagDirectiveNode #SmaCCFlagDirectiveNode #SmaCCTokenRuleNode nil nil #SmaCCToken #SmaCCRegexNode #SmaCCRegexNode #SmaCCProductionRuleNode nil nil #OrderedCollection #SmaCCProductionExpressionNode #OrderedCollection #SmaCCDefinitionNode #SmaCCSymbolNode #SmaCCSymbolNode #SmaCCToken #SmaCCToken)
]

{ #category : #generated }
SmaCCDefinitionParser >> transitionTable [
^#(
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 13 0 42 0 17 0 43 0 21 0 44 0 21 0 45 0 29 0 47 0 21 0 72 0 37 0 73 0 41 0 75 0 21 0 78] 
#[1 0 14 0 25 0 14 0 26 0 18 0 31 0 49 0 79] 
#[0 0 0 0 87] 
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 53 0 44 0 53 0 45 0 29 0 47 0 53 0 72 0 37 0 73 0 41 0 75 0 53 0 78 0 22 0 87] 
#[0 0 26 0 25 0 26 0 32 0 87] 
#[0 0 30 0 25 0 26 0 32 0 87] 
#[0 0 57 0 32] 
#[0 0 30 0 25 0 26 0 32 0 87] 
#[0 0 61 0 25] 
#[1 0 6 0 25 0 41 0 26 0 69 0 72 0 37 0 73 0 41 0 75] 
#[0 0 30 0 25 0 26 0 32 0 87] 
#[0 0 73 0 31] 
#[0 0 34 0 25 0 26 0 32 0 87] 
#[1 0 77 0 8 0 81 0 9 0 85 0 10 0 89 0 11 0 93 0 12 0 97 0 13 0 101 0 14 0 105 0 15 0 109 0 16 0 113 0 17 0 117 0 18 0 121 0 19 0 125 0 20 0 129 0 21 0 38 0 22 0 133 0 23 0 137 0 46 0 141 0 48 0 137 0 49 0 137 0 51 0 137 0 52 0 137 0 53 0 137 0 54 0 137 0 57 0 137 0 58 0 137 0 59 0 137 0 60 0 137 0 61 0 137 0 63 0 137 0 65 0 137 0 67 0 137 0 68 0 137 0 70 0 137 0 71] 
#[0 0 209 0 31] 
#[0 0 14 0 25 0 26 0 33] 
#[0 0 42 0 25 0 26 0 32 0 87] 
#[1 0 46 0 1 0 46 0 6 0 46 0 7 0 46 0 25 0 46 0 26 0 46 0 27 0 46 0 29 0 46 0 33 0 46 0 39 0 213 0 81 0 217 0 82 0 221 0 83] 
#[1 0 50 0 26 0 50 0 33 0 225 0 50] 
#[1 0 50 0 26 0 50 0 33 0 229 0 50] 
#[0 0 233 0 26] 
#[0 0 237 0 26] 
#[0 0 241 0 26] 
#[0 0 245 0 26] 
#[0 0 249 0 26] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 1 13 0 62 1 17 0 86] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 1 21 0 62 1 17 0 86] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 1 25 0 62 1 17 0 86] 
#[1 1 29 0 25 1 33 0 64] 
#[1 1 37 0 26 1 41 0 66] 
#[0 0 54 0 33] 
#[0 0 58 0 33] 
#[0 0 62 0 33] 
#[1 0 38 0 33 1 45 0 48] 
#[0 1 49 0 22] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[0 0 66 0 33] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 85 0 76 1 89 0 77] 
#[1 1 93 0 7 0 70 0 33 1 97 0 80] 
#[0 0 74 0 2 0 7 0 33] 
#[1 1 101 0 1 0 78 0 2 0 253 0 6 0 78 0 7 1 1 0 25 1 5 0 26 1 9 0 27 1 105 0 29 0 78 0 33 1 109 0 39 1 113 0 84 1 113 0 85 1 121 0 86] 
#[1 1 125 0 26 0 82 0 33 1 125 0 75] 
#[1 1 125 0 26 0 86 0 33 1 125 0 75] 
#[0 0 90 0 33] 
#[0 1 129 0 1] 
#[0 1 133 0 1] 
#[0 0 94 0 33] 
#[0 0 98 0 33] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 0 118 0 33 1 137 0 86] 
#[0 0 122 0 6 0 25 0 26 0 27 0 33] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 0 126 0 33 1 137 0 86] 
#[1 0 253 0 6 1 1 0 25 1 5 0 26 1 9 0 27 0 130 0 33 1 137 0 86] 
#[0 0 134 0 25 0 33] 
#[1 1 141 0 25 0 138 0 33] 
#[0 0 142 0 26 0 33] 
#[1 1 145 0 26 0 146 0 33] 
#[0 1 149 0 33] 
#[1 1 153 0 26 1 157 0 69] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 161 0 76 1 89 0 77] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 154 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 162 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 158 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 53 0 1 1 165 0 7 1 57 0 25 1 61 0 26 1 65 0 32 0 166 0 33 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 169 0 74 1 173 0 77] 
#[1 0 170 0 1 0 170 0 2 1 177 0 3 1 181 0 4 1 185 0 5 0 170 0 7 0 170 0 25 0 170 0 26 0 170 0 32 0 170 0 33 0 170 0 34 0 170 0 35 1 189 0 36 0 170 0 37 0 170 0 38] 
#[1 0 46 0 1 0 46 0 2 0 46 0 6 0 46 0 7 0 46 0 25 0 46 0 26 0 46 0 27 0 46 0 29 0 46 0 33 0 46 0 39 1 193 0 82 0 221 0 83] 
#[0 1 197 0 33] 
#[1 0 46 0 1 0 46 0 2 0 46 0 6 0 46 0 7 0 46 0 25 0 46 0 26 0 46 0 27 0 46 0 29 0 46 0 39 1 201 0 81 0 217 0 82 0 221 0 83] 
#[0 0 174 0 2 0 7 0 33] 
#[1 1 205 0 26 1 209 0 40] 
#[1 0 178 0 1 0 178 0 2 1 213 0 3 1 217 0 4 1 221 0 5 0 178 0 6 0 178 0 7 0 178 0 25 0 178 0 26 0 178 0 27 0 178 0 29 0 178 0 33 0 178 0 39] 
#[0 0 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[1 0 186 0 1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 7 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 29 1 225 0 30 0 186 0 33 0 186 0 39] 
#[0 0 190 0 26 0 33] 
#[1 0 194 0 2 0 194 0 26 1 229 0 56] 
#[1 0 198 0 2 0 198 0 26 1 233 0 55] 
#[0 0 202 0 6 0 25 0 26 0 27 0 33] 
#[0 0 206 0 25 0 33] 
#[0 0 210 0 26 0 33] 
#[0 0 214 0 25 0 26 0 32 0 87] 
#[0 0 218 0 26 0 33] 
#[1 1 237 0 26 0 222 0 33] 
#[1 1 53 0 1 1 241 0 2 1 165 0 7 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 173 0 77] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 245 0 76 1 89 0 77] 
#[0 1 249 0 33] 
#[1 0 226 0 1 0 226 0 2 1 177 0 3 1 181 0 4 1 185 0 5 0 226 0 7 0 226 0 25 0 226 0 26 0 226 0 32 0 226 0 33 0 226 0 34 0 226 0 35 1 189 0 36 0 226 0 37 0 226 0 38] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 234 0 2 0 7 0 33] 
#[0 0 238 0 25 0 26 0 32 0 87] 
#[1 1 253 0 2 1 93 0 7] 
#[0 2 1 0 40] 
#[0 0 242 0 2 0 7 0 33] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 0 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[1 2 5 0 2 2 9 0 26] 
#[1 2 13 0 2 2 17 0 26] 
#[0 0 254 0 26 0 33] 
#[0 1 2 0 1 0 2 0 3 0 4 0 5 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 53 0 1 1 6 0 2 1 6 0 7 1 57 0 25 1 61 0 26 1 65 0 32 1 6 0 33 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 173 0 77] 
#[0 1 10 0 25 0 26 0 32 0 87] 
#[0 1 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 25 0 26 0 27 0 29 0 33 0 39] 
#[0 1 18 0 2 0 7 0 33] 
#[0 1 22 0 33] 
#[0 1 26 0 2 0 26] 
#[0 1 30 0 33] 
#[0 1 34 0 2 0 26]
	).
]

{ #category : #testing }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]
