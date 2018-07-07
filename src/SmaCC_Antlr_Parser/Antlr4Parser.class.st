Class {
	#name : #Antlr4Parser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Antlr_Parser'
}

{ #category : #'generated-accessing' }
Antlr4Parser class >> cacheId [
	^'2018-04-02T19:02:56.816937-05:00'
]

{ #category : #generated }
Antlr4Parser class >> definitionComment [
"# Converted to SmaCC from https://github.com/antlr/grammars-v4/tree/master/antlr4 commit f08f5d22947ff8dc7231aa0dbce60a72debee665
/*
 * [The ""BSD license""]
 *  Copyright (c) 2012-2014 Terence Parr
 *  Copyright (c) 2012-2014 Sam Harwell
 *  Copyright (c) 2015 Gerald Rosenberg
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  3. The name of the author may not be used to endorse or promote products
 *     derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 *  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 *  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/*	A grammar for ANTLR v4 written in ANTLR v4.
 *
 *	Modified 2015.06.16 gbr
 *	-- update for compatibility with Antlr v4.5
 *	-- add mode for channels
 *	-- moved members to LexerAdaptor
 * 	-- move fragments to imports
 */

#parser grammar ANTLRv4Parser;

#options
#   { tokenVocab = ANTLRv4Lexer; }

%glr;
%root Grammar;
%prefix Antlr4;
%suffix Node;
%scopes default;
%excludes action argAction lexerCharSet;

%id <actionBlock> <argActionBlock>;

action <actionBlock>
	: .
	;

argAction <argActionBlock>
	: .
	;

<semicolon>
    : \;
    ;

<bar>
    : \|
    ;

<lParen>
    : \(
    ;

<lBracket>
    : \[
    ;

<lBrace>
    : \{
    ;

<rParen>
    : \)
    ;

default lexerCharSet <rBracket>
    : \]
    ;

<rBrace>
    : \}
    ;

<comma>
    : ,
    ;

<lt>
    : <
    ;

<gt>
    : >
    ;

<dotDot>
    : \. \.
    ;

<dot>
    : \.
    ;

<tilde>
    : ~
    ;

<equal>
    : =
    ;

<plusEqual>
    : \+ =
    ;

<question>
    : \?
    ;

<star>
    : \*
    ;

<plus>
    : \+
    ;

<at>
    : @
    ;

<pound>
    : \#
    ;

<colon>
    : \:
    ;

<colonColon>
    : \:\:
    ;

<arrow>
    : \- >
    ;

<catch>
    : catch
    ;

<channels>
    : channels
    ;

<finally>
    : finally
    ;

<fragment>
    : fragment
    ;

<grammar>
    : grammar
    ;

<import>
    : import
    ;

<lexer>
    : lexer
    ;

<locals>
    : locals
    ;

<mode>
    : mode
    ;

<options>
    : options
    ;

<parser>
    : parser
    ;

<private>
    : private
    ;

<protected>
    : protected
    ;

<public>
    : public
    ;

<returns>
    : returns
    ;

<throws>
    : throws
    ;

<tokens>
    : tokens
    ;

<token_ref>
    : [A-Z] (<isLetter> | <isDigit> | _)*
    ;

<rule_ref>
    : [a-z] (<isLetter> | <isDigit> | _)*
    ;

<int>
    : 0 | [1-9][0-9]*
    ;

<escseq>
	: \\ ([btnfr'\\] | (u [0-9A-F]{1,4}) | .)
	;

<string_literal>
    : \' (<escseq> | [^'\r\n\\])* \'
    ;

lexerCharSet <lexer_char_set>
	: ([^\]\\] | <escseq> )+
	;

<doc_comment>
    : /\*\*([^*/]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
    ;

<comment>
	: \/\/ [^\r\n]* 
	| /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
	| <doc_comment>
 	;

<whitespace>
	: \s+
	;

# The main entry point for parsing a v4 grammar.
grammarSpec
   : grammarType identifier 'nameToken' <semicolon> 'semicolon' prequelConstruct 'prequel'* rules modeSpec 'mode'* {{}}
   ;

grammarType
   : (<lexer> 'grammarTypeToken' <grammar> 'grammarToken' | <parser> 'grammarTypeToken' <grammar> 'grammarToken' | <grammar> 'grammarToken')
   ;

# This is the list of all constructs that can be declared before
# the set of rules that compose the grammar, and is invoked 0..n
# times by the grammarPrequel rule.
prequelConstruct
   : optionsSpec
   | delegateGrammars
   | tokensSpec
   | channelsSpec
   | action
   ;

# ------------
# Options - things that affect analysis and/or code generation
optionsSpec
   : <options> 'optionsToken' <lBrace> 'leftBrace' (option 'option' <semicolon> 'semicolon')* <rBrace> 'rightBrace' {{}}
   ;

option
   : identifier 'nameToken' <equal> 'equal' optionValue 'value' {{}}
   ;

optionValue
   : identifier 'nameToken' (<dot> 'dot' identifier 'nameToken')* {{NamespaceName}}
   | <string_literal> 'value' {{StringLiteral}}
   | actionBlock 'actionBlock'
   | <int> 'value' {{IntegerLiteral}}
   ;

# ------------
# Delegates
delegateGrammars
   : <import> 'importToken' delegateGrammar 'import' (<comma> 'comma' delegateGrammar 'import')* <semicolon> 'semicolon' {{Import}}
   ;

delegateGrammar
   : identifier 'aliasNameToken' <equal> 'equal' identifier 'nameToken' {{}}
   | identifier 'nameToken' {{}}
   ;

# ------------
# Tokens & Channels
tokensSpec
   : <tokens> 'tokensToken' <lBrace> 'leftBrace' idList? <rBrace> 'rightBrace' {{}}
   ;

channelsSpec
   : <channels> 'channelsToken' <lBrace> 'leftBrace' idList? <rBrace> 'rightBrace' {{}}
   ;

idList
   : identifier 'nameToken' (<comma> 'comma' identifier 'nameToken')* <comma> 'comma'?
   ;

# Match stuff like @parser::members {int i;}
action
   : <at> 'atToken' (actionScopeName 'scopeName' <colonColon> 'colonColon')? identifier 'nameToken' actionBlock 'actionBlock' {{}}
   ;

# Scope names could collide with keywords; allow them as ids for action scopes
actionScopeName
   : identifier 'nameToken' 
   | <lexer> 'nameToken' 
   | <parser> 'nameToken' 
   ;

actionBlock
   : SwitchToAction <lBrace> 'leftBrace' <actionBlock> 'actionBlock'  <rBrace> 'rightBrace' {{}}
   ;

SwitchToAction
    : {self scope: #action. nil}
    ;

argActionBlock
   : SwitchToArgAction <lBracket> 'leftBracket' <argActionBlock> 'argActionBlock' <rBracket> 'rightBracket'
   ;

SwitchToArgAction
    : {self scope: #argAction. nil}
    ;

modeSpec
   : <mode> 'modeToken' identifier 'nameToken' <semicolon> 'semicolon' lexerRuleSpec 'lexerRule'* {{}}
   ;

rules
   : ruleSpec 'rule'*
   ;

ruleSpec
   : parserRuleSpec
   | lexerRuleSpec
   ;

parserRuleSpec
   : ruleModifiers? <rule_ref> 'nameToken' argActionBlock? ruleReturns? throwsSpec 'throws'? localsSpec 'locals'? rulePrequel 'prequel'* <colon> 'colon' ruleBlock <semicolon> 'semicolon' exceptionGroup {{}}
   ;

exceptionGroup
   : exceptionHandler 'handler'* finallyClause 'finally'? 
   ;

exceptionHandler
   : <catch> 'catchToken' argActionBlock actionBlock 'actionBlock' {{}}
   ;

finallyClause
   : <finally> 'finallyToken' actionBlock 'actionBlock' {{}}
   ;

rulePrequel
   : optionsSpec
   | ruleAction
   ;

ruleReturns
   : <returns> 'returnsToken' argActionBlock
   ;

# --------------
# Exception spec
throwsSpec
   : <throws> 'throwsToken' identifier 'nameToken' (<comma> 'comma' identifier 'nameToken')* {{}}
   ;

localsSpec
   : <locals> 'localsToken' argActionBlock {{}}
   ;

/** Match stuff like @init {int i;} */
ruleAction
   : <at> 'atToken' identifier 'nameToken' actionBlock 'actionBlock' {{}}
   ;

ruleModifiers
   : ruleModifier +
   ;

# An individual access modifier for a rule. The 'fragment' modifier
# is an internal indication for lexer rules that they do not match
# from the input but are like subroutines for other lexer rules to
# reuse for certain lexical patterns. The other modifiers are passed
# to the code generation templates and may be ignored by the template
# if they are of no use in that language.
ruleModifier
   : <public> 'modifier'
   | <private> 'modifier'
   | <protected> 'modifier'
   | <fragment> 'modifier'
   ;

ruleBlock
   : ruleAltList
   ;

ruleAltList
   : labeledAlt (<bar> 'bar' labeledAlt)*
   ;

labeledAlt
   : alternative (<pound> 'pound' identifier 'nameToken')?
   ;

# --------------------
# lexer rules
lexerRuleSpec
   : <fragment> 'modifier'? <token_ref> 'nameToken' <colon> 'colon' lexerRuleBlock <semicolon> 'semicolon' {{}}
   ;

lexerRuleBlock
   : lexerAltList
   ;

lexerAltList
   : lexerAlt 'lexerExpression' (<bar> 'bar' lexerAlt 'lexerExpression')*
   ;

lexerAlt
   : lexerElements lexerCommands 'lexerCommand'? {{}}
   | {{}}
   # explicitly allow empty alts
   ;

lexerElements
   : lexerElement 'lexerElement' +
   ;

lexerElement
   : labeledLexerElement 'labeledLexerElement' ebnfSuffix 'suffix'? {{}}
   | lexerAtom 'expression' ebnfSuffix 'suffix'? {{}}
   | lexerBlock 'expression' ebnfSuffix 'suffix'? {{}}
   | actionBlock 'actionBlock' <question> 'questionMark'? {{}}
   ;

# but preds can be anywhere
labeledLexerElement
   : identifier 'nameToken' (<equal> 'equal' | <plusEqual> 'equal') (lexerAtom 'expression' | lexerBlock 'expression') {{}}
   ;

lexerBlock
   : <lParen> 'leftParen' lexerAltList <rParen> 'rightParen' {{}}
   ;

# E.g., channel(HIDDEN), skip, more, mode(INSIDE), push(INSIDE), pop
lexerCommands
   : <arrow> 'arrow' lexerCommand 'command' (<comma> 'comma' lexerCommand 'command')* {{}}
   ;

lexerCommand
   : lexerCommandName <lParen> 'leftParen' lexerCommandExpr <rParen> 'rightParen' {{}}
   | lexerCommandName {{}}
   ;

lexerCommandName
   : identifier 'nameToken'
   | <mode> 'modeToken'
   ;

lexerCommandExpr
   : identifier 'nameToken'
   | <int> 'value'
   ;

# --------------------
# Rule Alts
altList
   : alternative (<bar> 'bar' alternative)*
   ;

alternative
   : elementOptions 'options'? element 'element' +
   |
   # explicitly allow empty alts
   ;

element
   : labeledElement (ebnfSuffix 'suffix' |) {{}}
   | atom 'value' (ebnfSuffix 'suffix' |) {{}}
   | ebnf
   | actionBlock 'actionBlock' <question> 'questionMark'? {{}}
   ;

labeledElement
   : identifier 'nameToken' (<equal> 'equal' | <plusEqual> 'equal') (atom 'value' | block 'value')
   ;

# --------------------
# EBNF and blocks
ebnf
   : block 'block' blockSuffix? {{}}
   ;

blockSuffix
   : ebnfSuffix 'suffix'
   ;

ebnfSuffix
   : <question> 'countToken' <question> 'nonGreedyToken'? {{}}
   | <star> 'countToken' <question> 'nonGreedyToken'? {{}}
   | <plus> 'countToken' <question> 'nonGreedyToken'? {{}}
   ;

lexerAtom
   : characterRange
   | terminal
   | notSet
   | lexerCharSet
   | <dot> 'dot' elementOptions 'options'? {{}}
   ;

atom
   : terminal
   | ruleref
   | notSet
   | <dot> 'dot' elementOptions 'options'? {{}}
   ;

# --------------------
# Inverted element set
notSet
   : <tilde> 'tilde' setElement 'expression' {{}}
   | <tilde> 'tilde' blockSet 'expression' {{}}
   ;

blockSet
   : <lParen> 'leftParen' setElement 'expression' (<bar> 'bar' setElement 'expression')* <rParen> 'rightParen' {{}}
   ;

setElement
   : <token_ref> 'nameToken' elementOptions 'options'? {{}}
   | <string_literal> 'value' elementOptions 'options'? {{}}
   | characterRange
   | lexerCharSet
   ;

lexerCharSet
	: SwitchToLexerCharSet <lBracket> 'leftBracket' <lexer_char_set> 'charSet' SwitchToDefault <rBracket> 'rightBracket' {{}}
	;
	
SwitchToLexerCharSet
	: {self scope: #lexerCharSet. nil}
	;
	
SwitchToDefault
	: {self scope: #default. nil}
	;

# -------------
# Grammar Block
block
   : <lParen> 'leftParen' (optionsSpec 'options'? ruleAction 'action'* <colon> 'colon')? altList <rParen> 'rightParen' {{}}
   ;

# ----------------
# Parser rule ref
ruleref
   : <rule_ref> 'nameToken' argActionBlock? elementOptions 'options'? {{}}
   ;

# ---------------
# Character Range
characterRange
   : <string_literal> 'from' <dotDot> 'dotDot' <string_literal> 'to' {{}}
   ;

terminal
   : <token_ref> 'nameToken' elementOptions 'options'? {{ReferenceTerminal}}
   | <string_literal> 'value' elementOptions 'options'? {{StringTerminal}}
   ;

# Terminals may be adorned with certain options when
# reference in the grammar: TOK<,,,>
elementOptions
   : <lt> 'lt' elementOption (<comma> 'comma' elementOption)* <gt> 'gt' {{}}
   ;

elementOption
   : identifier 'nameToken'
   | identifier <equal> 'equal' (identifier | <string_literal> 'value')
   ;

identifier
   : <rule_ref> 'nameToken'
   | <token_ref> 'nameToken'
   ;"
]

{ #category : #'generated-accessing' }
Antlr4Parser class >> scannerClass [
	^Antlr4Scanner
]

{ #category : #generated }
Antlr4Parser class >> startingStateForgrammarSpec [
	^ 1
]

{ #category : #generated }
Antlr4Parser >> ambiguousTransitions [
^#(
#[ 0 30 0 41] 
#[ 0 30 0 45]
	).
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForSwitchToAction1: nodes [
	self scope: #action.
	^ nil
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForSwitchToArgAction1: nodes [
	self scope: #argAction.
	^ nil
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForSwitchToLexerCharSet1: nodes [
	self scope: #lexerCharSet.
	^ nil
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__alternative_1: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__alternative__1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__alternative__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__labeledAlt_1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: ((nodes at: 2) at: 3).
	result at: 5 put: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__labeledAlt__1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__bar___bar__labeledAlt__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self add: ((nodes at: 2) at: 4) to: (result at: 2).
	self add: ((nodes at: 2) at: 5) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__comma___comma__delegateGrammar__import___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__comma___comma__elementOption_1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__comma___comma__elementOption__1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__comma___comma__elementOption__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__3: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor_actionScopeName__scopeName___colonColon___colonColon___1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor_optionsSpec__options___ruleAction__action____colon___colon__1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFor_optionsSpec__options___ruleAction__action____colon___colon___1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForaction1: nodes [
	| result |
	result := Antlr4ActionNode new.
	result atToken: (nodes at: 1).
	result scopeName: ((nodes at: 2) at: 1).
	result colonColon: ((nodes at: 2) at: 2).
	result nameToken: (nodes at: 3).
	result actionBlock: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForactionBlock1: nodes [
	| result |
	result := Antlr4ActionBlockNode new.
	result leftBrace: (nodes at: 2).
	result actionBlock: (nodes at: 3).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForaltList1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForalternative1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForalternative2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForargActionBlock1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForargActionBlock_1: nodes [
	| result |
	result := Array new: 3.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForatom4: nodes [
	| result |
	result := Antlr4AtomNode new.
	result dot: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForblock1: nodes [
	| result |
	result := Antlr4BlockNode new.
	result leftParen: (nodes at: 1).
	result addNode: ((nodes at: 2) at: 1) to: result optionses.
	result addNodes: ((nodes at: 2) at: 2) to: result actions.
	result colon: ((nodes at: 2) at: 3).
	result addNodes: ((nodes at: 3) at: 1) to: result optionses.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 3) to: result bars.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForblockSet1: nodes [
	| result |
	result := Antlr4BlockSetNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 1) to: result bars.
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForchannelsSpec1: nodes [
	| result |
	result := Antlr4ChannelsSpecNode new.
	result channelsToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addTokens: ((nodes at: 3) at: 1) to: result nameTokens.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForcharacterRange1: nodes [
	| result |
	result := Antlr4CharacterRangeNode new.
	result from: (nodes at: 1).
	result dotDot: (nodes at: 2).
	result to: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFordelegateGrammar1: nodes [
	| result |
	result := Antlr4DelegateGrammarNode new.
	result aliasNameToken: (nodes at: 1).
	result equal: (nodes at: 2).
	result nameToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFordelegateGrammar2: nodes [
	| result |
	result := Antlr4DelegateGrammarNode new.
	result nameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFordelegateGrammars1: nodes [
	| result |
	result := Antlr4ImportNode new.
	result importToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result imports.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addNodes: ((nodes at: 3) at: 2) to: result imports.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForebnf1: nodes [
	| result |
	result := Antlr4EbnfNode new.
	result block: (nodes at: 1).
	result suffix: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForebnfSuffix1: nodes [
	| result |
	result := Antlr4EbnfSuffixNode new.
	result countToken: (nodes at: 1).
	result nonGreedyToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelement1: nodes [
	| result |
	result := Antlr4ElementNode new.
	result nameToken: ((nodes at: 1) at: 1).
	result equal: ((nodes at: 1) at: 2).
	result value: ((nodes at: 1) at: 3).
	result suffix: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelement2: nodes [
	| result |
	result := Antlr4ElementNode new.
	result value: (nodes at: 1).
	result suffix: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelement4: nodes [
	| result |
	result := Antlr4ElementNode new.
	result actionBlock: (nodes at: 1).
	result questionMark: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelementOption1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelementOption2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	result at: 3 put: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForelementOptions1: nodes [
	| result |
	result := Antlr4ElementOptionsNode new.
	result lt: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result nameTokens.
	result addToken: ((nodes at: 2) at: 2) to: result equals.
	result addToken: ((nodes at: 2) at: 3) to: result values.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addTokens: ((nodes at: 3) at: 2) to: result nameTokens.
	result addTokens: ((nodes at: 3) at: 3) to: result equals.
	result addTokens: ((nodes at: 3) at: 4) to: result values.
	result gt: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForexceptionGroup1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForexceptionHandler1: nodes [
	| result |
	result := Antlr4ExceptionHandlerNode new.
	result catchToken: (nodes at: 1).
	result leftBracket: ((nodes at: 2) at: 1).
	result argActionBlock: ((nodes at: 2) at: 2).
	result rightBracket: ((nodes at: 2) at: 3).
	result actionBlock: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForfinallyClause1: nodes [
	| result |
	result := Antlr4FinallyClauseNode new.
	result finallyToken: (nodes at: 1).
	result actionBlock: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForgrammarSpec1: nodes [
	| result |
	result := Antlr4GrammarSpecNode new.
	result grammarTypeToken: ((nodes at: 1) at: 1).
	result grammarToken: ((nodes at: 1) at: 2).
	result nameToken: (nodes at: 2).
	result semicolon: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result prequels.
	result addNodes: (nodes at: 5) to: result rules.
	result addNodes: (nodes at: 6) to: result modes.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForgrammarType1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForidList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForidList_1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlabeledAlt1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	result at: 3 put: ((nodes at: 2) at: 1).
	result at: 4 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlabeledElement1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlabeledLexerElement1: nodes [
	| result |
	result := Antlr4LabeledLexerElementNode new.
	result nameToken: (nodes at: 1).
	result equal: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerAlt1: nodes [
	| result |
	result := Antlr4LexerAltNode new.
	result addNodes: (nodes at: 1) to: result lexerElements.
	result lexerCommand: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerAlt2: nodes [
	| result |
	result := Antlr4LexerAltNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerAltList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerAtom5: nodes [
	| result |
	result := Antlr4LexerAtomNode new.
	result dot: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerBlock1: nodes [
	| result |
	result := Antlr4LexerBlockNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result lexerExpressions.
	result addTokens: ((nodes at: 2) at: 2) to: result bars.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerCharSet1: nodes [
	| result |
	result := Antlr4LexerCharSetNode new.
	result leftBracket: (nodes at: 2).
	result charSet: (nodes at: 3).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerCommand1: nodes [
	| result |
	result := Antlr4LexerCommandNode new.
	result addToken: ((nodes at: 1) at: 1) to: result nameTokens.
	result modeToken: ((nodes at: 1) at: 2).
	result leftParen: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result nameTokens.
	result value: ((nodes at: 3) at: 2).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerCommand2: nodes [
	| result |
	result := Antlr4LexerCommandNode new.
	result addToken: ((nodes at: 1) at: 1) to: result nameTokens.
	result modeToken: ((nodes at: 1) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerCommandName1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerCommands1: nodes [
	| result |
	result := Antlr4LexerCommandsNode new.
	result arrow: (nodes at: 1).
	result addNode: (nodes at: 2) to: result commands.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addNodes: ((nodes at: 3) at: 2) to: result commands.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerElement1: nodes [
	| result |
	result := Antlr4LexerElementNode new.
	result labeledLexerElement: (nodes at: 1).
	result suffix: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerElement3: nodes [
	| result |
	result := Antlr4LexerElementNode new.
	result expression: (nodes at: 1).
	result suffix: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerElement4: nodes [
	| result |
	result := Antlr4LexerElementNode new.
	result actionBlock: (nodes at: 1).
	result questionMark: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlexerRuleSpec1: nodes [
	| result |
	result := Antlr4LexerRuleSpecNode new.
	result modifier: (nodes at: 1).
	result nameToken: (nodes at: 2).
	result colon: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result lexerExpressions.
	result addTokens: ((nodes at: 4) at: 2) to: result bars.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForlocalsSpec1: nodes [
	| result |
	result := Antlr4LocalsSpecNode new.
	result localsToken: (nodes at: 1).
	result leftBracket: ((nodes at: 2) at: 1).
	result argActionBlock: ((nodes at: 2) at: 2).
	result rightBracket: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFormodeSpec1: nodes [
	| result |
	result := Antlr4ModeSpecNode new.
	result modeToken: (nodes at: 1).
	result nameToken: (nodes at: 2).
	result semicolon: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result lexerRules.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFornotSet2: nodes [
	| result |
	result := Antlr4NotSetNode new.
	result tilde: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForoption1: nodes [
	| result |
	result := Antlr4OptionNode new.
	result nameToken: (nodes at: 1).
	result equal: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForoptionValue1: nodes [
	| result |
	result := Antlr4NamespaceNameNode new.
	result addToken: (nodes at: 1) to: result nameTokens.
	result addTokens: ((nodes at: 2) at: 1) to: result dots.
	result addTokens: ((nodes at: 2) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForoptionValue2: nodes [
	| result |
	result := Antlr4StringLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForoptionValue4: nodes [
	| result |
	result := Antlr4IntegerLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForoptionsSpec1: nodes [
	| result |
	result := Antlr4OptionsSpecNode new.
	result optionsToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result options.
	result addTokens: ((nodes at: 3) at: 2) to: result semicolons.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForparserRuleSpec1: nodes [
	| result |
	result := Antlr4ParserRuleSpecNode new.
	result addTokens: (nodes at: 1) to: result modifiers.
	result addToken: (nodes at: 2) to: result nameTokens.
	result addToken: ((nodes at: 3) at: 1) to: result leftBrackets.
	result addToken: ((nodes at: 3) at: 2) to: result argActionBlocks.
	result addToken: ((nodes at: 3) at: 3) to: result rightBrackets.
	result returnsToken: ((nodes at: 4) at: 1).
	result addToken: ((nodes at: 4) at: 2) to: result leftBrackets.
	result addToken: ((nodes at: 4) at: 3) to: result argActionBlocks.
	result addToken: ((nodes at: 4) at: 4) to: result rightBrackets.
	result throws: (nodes at: 5).
	result locals: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result prequels.
	result colon: (nodes at: 8).
	result addNodes: ((nodes at: 9) at: 1) to: result optionses.
	result addNodes: ((nodes at: 9) at: 2) to: result elements.
	result addTokens: ((nodes at: 9) at: 3) to: result pounds.
	result addTokens: ((nodes at: 9) at: 4) to: result nameTokens.
	result addTokens: ((nodes at: 9) at: 5) to: result bars.
	result semicolon: (nodes at: 10).
	result addNodes: ((nodes at: 11) at: 1) to: result handlers.
	result finally: ((nodes at: 11) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForprequelConstruct__prequel__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForprequelConstruct__prequel__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleAction1: nodes [
	| result |
	result := Antlr4RuleActionNode new.
	result atToken: (nodes at: 1).
	result nameToken: (nodes at: 2).
	result actionBlock: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleAltList1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleModifier__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleReturns1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleReturns_1: nodes [
	| result |
	result := Array new: 4.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForruleref1: nodes [
	| result |
	result := Antlr4RulerefNode new.
	result nameToken: (nodes at: 1).
	result leftBracket: ((nodes at: 2) at: 1).
	result argActionBlock: ((nodes at: 2) at: 2).
	result rightBracket: ((nodes at: 2) at: 3).
	result options: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForsetElement1: nodes [
	| result |
	result := Antlr4SetElementNode new.
	result nameToken: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForsetElement2: nodes [
	| result |
	result := Antlr4SetElementNode new.
	result value: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForterminal1: nodes [
	| result |
	result := Antlr4ReferenceTerminalNode new.
	result nameToken: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForterminal2: nodes [
	| result |
	result := Antlr4StringTerminalNode new.
	result value: (nodes at: 1).
	result options: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionForthrowsSpec1: nodes [
	| result |
	result := Antlr4ThrowsSpecNode new.
	result throwsToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result nameTokens.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addTokens: ((nodes at: 3) at: 2) to: result nameTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
Antlr4Parser >> reduceActionFortokensSpec1: nodes [
	| result |
	result := Antlr4TokensSpecNode new.
	result tokensToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addTokens: ((nodes at: 3) at: 1) to: result nameTokens.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #generated }
Antlr4Parser >> reduceTable [
^#(
	#(56 1 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__3:) 
	#(55 1 #reduceActionForgrammarType1:) 
	#(56 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(177 1 #liftFirstValue:) 
	#(53 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(87 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(78 0 #reduceActionFor_actionScopeName__scopeName___colonColon___colonColon___1:) 
	#(53 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(57 1 #liftFirstValue:) 
	#(54 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(86 1 #reduceActionForgrammarType1:) 
	#(117 0 #nil) 
	#(90 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(79 1 #liftFirstValue:) 
	#(78 1 #reduceActionForgrammarType1:) 
	#(70 0 #reduceActionForidList_1:) 
	#(67 0 #reduceActionForidList_1:) 
	#(68 1 #reduceActionFordelegateGrammar2:) 
	#(60 0 #reduceActionForidList_1:) 
	#(52 6 #reduceActionForgrammarSpec1:) 
	#(108 1 #liftFirstValue:) 
	#(117 1 #liftFirstValue:) 
	#(87 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(88 1 #liftFirstValue:) 
	#(90 1 #reduceActionForgrammarType1:) 
	#(106 1 #reduceActionForgrammarType1:) 
	#(107 1 #reduceActionForruleModifier__1:) 
	#(81 0 #reduceActionForSwitchToAction1:) 
	#(77 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(70 1 #reduceActionForgrammarType1:) 
	#(74 0 #reduceActionForidList_1:) 
	#(54 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(83 0 #reduceActionForSwitchToArgAction1:) 
	#(91 0 #reduceActionForargActionBlock_1:) 
	#(107 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(76 4 #reduceActionForaction1:) 
	#(71 4 #reduceActionForchannelsSpec1:) 
	#(75 0 #nil) 
	#(65 4 #reduceActionFordelegateGrammars1:) 
	#(67 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(68 3 #reduceActionFordelegateGrammar1:) 
	#(58 4 #reduceActionForoptionsSpec1:) 
	#(60 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(69 4 #reduceActionFortokensSpec1:) 
	#(91 1 #reduceActionForgrammarType1:) 
	#(92 0 #reduceActionForruleReturns_1:) 
	#(122 0 #reduceActionForlexerAlt2:) 
	#(162 0 #reduceActionForSwitchToLexerCharSet1:) 
	#(75 1 #liftFirstValue:) 
	#(74 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(72 3 #reduceActionForidList1:) 
	#(66 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(59 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(85 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(93 0 #nil) 
	#(92 1 #reduceActionForgrammarType1:) 
	#(143 0 #nil) 
	#(128 0 #nil) 
	#(118 1 #reduceActionForgrammarType1:) 
	#(121 0 #reduceActionForidList_1:) 
	#(123 0 #nil) 
	#(124 1 #reduceActionForgrammarType1:) 
	#(125 1 #reduceActionForruleModifier__1:) 
	#(127 0 #nil) 
	#(154 1 #liftFirstValue:) 
	#(73 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(62 1 #reduceActionForoptionValue4:) 
	#(62 1 #reduceActionForoptionValue2:) 
	#(61 3 #reduceActionForoption1:) 
	#(62 1 #liftFirstValue:) 
	#(64 0 #reduceActionForidList_1:) 
	#(84 4 #reduceActionFormodeSpec1:) 
	#(102 2 #reduceActionForruleReturns1:) 
	#(94 0 #nil) 
	#(93 1 #liftFirstValue:) 
	#(154 2 #reduceActionForlexerAtom5:) 
	#(143 1 #liftFirstValue:) 
	#(156 2 #reduceActionFornotSet2:) 
	#(160 1 #liftFirstValue:) 
	#(171 2 #reduceActionForterminal1:) 
	#(171 2 #reduceActionForterminal2:) 
	#(128 1 #liftFirstValue:) 
	#(126 2 #reduceActionForlexerElement4:) 
	#(116 5 #reduceActionForlexerRuleSpec1:) 
	#(119 2 #reduceActionForlexerAltList1:) 
	#(122 2 #reduceActionForlexerAlt1:) 
	#(123 1 #liftFirstValue:) 
	#(125 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(153 0 #nil) 
	#(126 2 #reduceActionForlexerElement1:) 
	#(127 1 #liftFirstValue:) 
	#(126 2 #reduceActionForlexerElement3:) 
	#(130 1 #liftFirstValue:) 
	#(80 4 #reduceActionForactionBlock1:) 
	#(62 2 #reduceActionForoptionValue1:) 
	#(85 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(82 4 #reduceActionForargActionBlock1:) 
	#(95 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(94 1 #liftFirstValue:) 
	#(132 3 #reduceActionForlexerBlock1:) 
	#(174 0 #reduceActionFor__comma___comma__elementOption__1:) 
	#(175 1 #reduceActionForelementOption1:) 
	#(159 0 #reduceActionForidList_1:) 
	#(160 2 #reduceActionForsetElement1:) 
	#(160 2 #reduceActionForsetElement2:) 
	#(170 3 #reduceActionForcharacterRange1:) 
	#(121 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(137 1 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__3:) 
	#(135 0 #reduceActionForidList_1:) 
	#(136 1 #reduceActionForlexerCommand2:) 
	#(137 1 #reduceActionForlexerCommandName1:) 
	#(153 1 #liftFirstValue:) 
	#(152 2 #reduceActionForebnfSuffix1:) 
	#(163 0 #reduceActionForSwitchToDefault1:) 
	#(129 3 #reduceActionForlabeledLexerElement1:) 
	#(131 1 #liftFirstValue:) 
	#(64 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(103 3 #reduceActionForthrowsSpec1:) 
	#(104 2 #reduceActionForlocalsSpec1:) 
	#(120 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(133 3 #reduceActionForlexerCommands1:) 
	#(63 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(142 0 #reduceActionForalternative2:) 
	#(101 1 #liftFirstValue:) 
	#(95 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(172 4 #reduceActionForelementOptions1:) 
	#(174 2 #reduceActionFor__comma___comma__elementOption__2:) 
	#(176 1 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__3:) 
	#(175 3 #reduceActionForelementOption2:) 
	#(176 1 #reduceActionForlexerCommandName1:) 
	#(157 4 #reduceActionForblockSet1:) 
	#(159 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(135 2 #reduceActionFor__comma___comma__delegateGrammar__import___2:) 
	#(138 1 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__3:) 
	#(138 1 #reduceActionForlexerCommandName1:) 
	#(161 5 #reduceActionForlexerCharSet1:) 
	#(109 1 #reduceActionForgrammarType1:) 
	#(112 0 #reduceActionFor__bar___bar__labeledAlt__1:) 
	#(115 0 #reduceActionFor_actionScopeName__scopeName___colonColon___colonColon___1:) 
	#(173 2 #reduceActionFor__comma___comma__elementOption_1:) 
	#(158 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(134 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(136 4 #reduceActionForlexerCommand1:) 
	#(105 3 #reduceActionForruleAction1:) 
	#(97 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(110 2 #reduceActionForruleAltList1:) 
	#(115 1 #reduceActionForgrammarType1:) 
	#(113 2 #reduceActionForlabeledAlt1:) 
	#(166 0 #reduceActionFor_optionsSpec__options___ruleAction__action____colon___colon___1:) 
	#(167 0 #nil) 
	#(142 2 #reduceActionForalternative1:) 
	#(144 1 #reduceActionForruleModifier__1:) 
	#(146 0 #nil) 
	#(145 1 #liftFirstValue:) 
	#(155 1 #liftFirstValue:) 
	#(150 0 #nil) 
	#(89 11 #reduceActionForparserRuleSpec1:) 
	#(98 0 #nil) 
	#(112 2 #reduceActionFor__bar___bar__labeledAlt__2:) 
	#(114 2 #reduceActionFor__lexer___grammarTypeToken___grammar___grammarToken_____parser___grammarTypeToken___grammar___grammarToken_____grammar___grammarToken__1:) 
	#(167 1 #liftFirstValue:) 
	#(166 1 #reduceActionForgrammarType1:) 
	#(168 0 #reduceActionForprequelConstruct__prequel__1:) 
	#(155 2 #reduceActionForatom4:) 
	#(145 2 #reduceActionForelement4:) 
	#(144 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(145 2 #reduceActionForelement1:) 
	#(146 1 #liftFirstValue:) 
	#(145 2 #reduceActionForelement2:) 
	#(149 2 #reduceActionForebnf1:) 
	#(150 1 #liftFirstValue:) 
	#(151 1 #liftFirstValue:) 
	#(96 2 #reduceActionForexceptionGroup1:) 
	#(97 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(98 1 #liftFirstValue:) 
	#(111 2 #reduceActionFor__bar___bar__labeledAlt_1:) 
	#(141 0 #reduceActionFor__bar___bar__alternative__1:) 
	#(169 3 #reduceActionForruleref1:) 
	#(147 3 #reduceActionForlabeledElement1:) 
	#(148 1 #liftFirstValue:) 
	#(100 2 #reduceActionForfinallyClause1:) 
	#(164 4 #reduceActionForblock1:) 
	#(139 2 #reduceActionForaltList1:) 
	#(165 3 #reduceActionFor_optionsSpec__options___ruleAction__action____colon___colon__1:) 
	#(168 2 #reduceActionForprequelConstruct__prequel__2:) 
	#(99 3 #reduceActionForexceptionHandler1:) 
	#(141 2 #reduceActionFor__bar___bar__alternative__2:) 
	#(140 2 #reduceActionFor__bar___bar__alternative_1:)
	).
]

{ #category : #generated }
Antlr4Parser >> symbolNames [
	^ #('<actionBlock>' '<argActionBlock>' '<semicolon>' '<bar>' '<lParen>' '<lBracket>' '<lBrace>' '<rParen>' '<rBracket>' '<rBrace>' '<comma>' '<lt>' '<gt>' '<dotDot>' '<dot>' '<tilde>' '<equal>' '<plusEqual>' '<question>' '<star>' '<plus>' '<at>' '<pound>' '<colon>' '<colonColon>' '<arrow>' '<catch>' '<channels>' '<finally>' '<fragment>' '<grammar>' '<import>' '<lexer>' '<locals>' '<mode>' '<options>' '<parser>' '<private>' '<protected>' '<public>' '<returns>' '<throws>' '<tokens>' '<token_ref>' '<rule_ref>' '<int>' '<string_literal>' '<lexer_char_set>' '<comment>' '<whitespace>' 'B e g i n' 'grammarSpec' 'prequelConstruct ''prequel''*' 'modeSpec ''mode''*' 'grammarType' '(<lexer> ''grammarTypeToken'' <grammar> ''grammarToken'' | <parser> ''grammarTypeToken'' <grammar> ''grammarToken'' | <grammar> ''grammarToken'')' 'prequelConstruct' 'optionsSpec' '(option ''option'' <semicolon> ''semicolon'')' '(option ''option'' <semicolon> ''semicolon'')*' 'option' 'optionValue' '(<dot> ''dot'' identifier ''nameToken'')' '(<dot> ''dot'' identifier ''nameToken'')*' 'delegateGrammars' '(<comma> ''comma'' delegateGrammar ''import'')' '(<comma> ''comma'' delegateGrammar ''import'')*' 'delegateGrammar' 'tokensSpec' 'idList?' 'channelsSpec' 'idList' '(<comma> ''comma'' identifier ''nameToken'')' '(<comma> ''comma'' identifier ''nameToken'')*' '<comma> ''comma''?' 'action' '(actionScopeName ''scopeName'' <colonColon> ''colonColon'')' '(actionScopeName ''scopeName'' <colonColon> ''colonColon'')?' 'actionScopeName' 'actionBlock' 'SwitchToAction' 'argActionBlock' 'SwitchToArgAction' 'modeSpec' 'lexerRuleSpec ''lexerRule''*' 'rules' 'ruleSpec ''rule''*' 'ruleSpec' 'parserRuleSpec' 'ruleModifiers?' 'argActionBlock?' 'ruleReturns?' 'throwsSpec ''throws''?' 'localsSpec ''locals''?' 'rulePrequel ''prequel''*' 'exceptionGroup' 'exceptionHandler ''handler''*' 'finallyClause ''finally''?' 'exceptionHandler' 'finallyClause' 'rulePrequel' 'ruleReturns' 'throwsSpec' 'localsSpec' 'ruleAction' 'ruleModifiers' 'ruleModifier +' 'ruleModifier' 'ruleBlock' 'ruleAltList' '(<bar> ''bar'' labeledAlt)' '(<bar> ''bar'' labeledAlt)*' 'labeledAlt' '(<pound> ''pound'' identifier ''nameToken'')' '(<pound> ''pound'' identifier ''nameToken'')?' 'lexerRuleSpec' '<fragment> ''modifier''?' 'lexerRuleBlock' 'lexerAltList' '(<bar> ''bar'' lexerAlt ''lexerExpression'')' '(<bar> ''bar'' lexerAlt ''lexerExpression'')*' 'lexerAlt' 'lexerCommands ''lexerCommand''?' 'lexerElements' 'lexerElement ''lexerElement'' +' 'lexerElement' 'ebnfSuffix ''suffix''?' '<question> ''questionMark''?' 'labeledLexerElement' '(<equal> ''equal'' | <plusEqual> ''equal'')' '(lexerAtom ''expression'' | lexerBlock ''expression'')' 'lexerBlock' 'lexerCommands' '(<comma> ''comma'' lexerCommand ''command'')' '(<comma> ''comma'' lexerCommand ''command'')*' 'lexerCommand' 'lexerCommandName' 'lexerCommandExpr' 'altList' '(<bar> ''bar'' alternative)' '(<bar> ''bar'' alternative)*' 'alternative' 'elementOptions ''options''?' 'element ''element'' +' 'element' '(ebnfSuffix ''suffix'' |)' 'labeledElement' '(atom ''value'' | block ''value'')' 'ebnf' 'blockSuffix?' 'blockSuffix' 'ebnfSuffix' '<question> ''nonGreedyToken''?' 'lexerAtom' 'atom' 'notSet' 'blockSet' '(<bar> ''bar'' setElement ''expression'')' '(<bar> ''bar'' setElement ''expression'')*' 'setElement' 'lexerCharSet' 'SwitchToLexerCharSet' 'SwitchToDefault' 'block' '(optionsSpec ''options''? ruleAction ''action''* <colon> ''colon'')' '(optionsSpec ''options''? ruleAction ''action''* <colon> ''colon'')?' 'optionsSpec ''options''?' 'ruleAction ''action''*' 'ruleref' 'characterRange' 'terminal' 'elementOptions' '(<comma> ''comma'' elementOption)' '(<comma> ''comma'' elementOption)*' 'elementOption' '(identifier | <string_literal> ''value'')' 'identifier' 'E O F' 'error')
]

{ #category : #generated }
Antlr4Parser >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #Antlr4GrammarSpecNode #Antlr4GrammarSpecNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4GrammarNode #Antlr4OptionsSpecNode #OrderedCollection #OrderedCollection #Antlr4OptionNode #Antlr4GrammarNode #OrderedCollection #OrderedCollection #Antlr4ImportNode #OrderedCollection #OrderedCollection #Antlr4DelegateGrammarNode #Antlr4TokensSpecNode #OrderedCollection #Antlr4ChannelsSpecNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #Antlr4ActionNode #OrderedCollection #OrderedCollection #SmaCCToken #Antlr4ActionBlockNode nil #OrderedCollection nil #Antlr4ModeSpecNode #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4GrammarNode #Antlr4ParserRuleSpecNode #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4ThrowsSpecNode #Antlr4LocalsSpecNode #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4FinallyClauseNode #Antlr4ExceptionHandlerNode #Antlr4FinallyClauseNode #Antlr4GrammarNode #OrderedCollection #Antlr4ThrowsSpecNode #Antlr4LocalsSpecNode #Antlr4RuleActionNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4LexerRuleSpecNode #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4LexerAltNode #Antlr4LexerCommandsNode #OrderedCollection #OrderedCollection #Antlr4LexerElementNode #Antlr4EbnfSuffixNode #SmaCCToken #Antlr4LabeledLexerElementNode #SmaCCToken #Antlr4GrammarNode #Antlr4LexerBlockNode #Antlr4LexerCommandsNode #OrderedCollection #OrderedCollection #Antlr4LexerCommandNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #Antlr4ElementOptionsNode #OrderedCollection #Antlr4GrammarNode #Antlr4EbnfSuffixNode #OrderedCollection #Antlr4GrammarNode #Antlr4EbnfNode #Antlr4EbnfSuffixNode #Antlr4EbnfSuffixNode #Antlr4EbnfSuffixNode #SmaCCToken #Antlr4GrammarNode #Antlr4GrammarNode #Antlr4NotSetNode #Antlr4BlockSetNode #OrderedCollection #OrderedCollection #Antlr4GrammarNode #Antlr4LexerCharSetNode nil nil #Antlr4BlockNode #OrderedCollection #OrderedCollection #Antlr4OptionsSpecNode #OrderedCollection #Antlr4RulerefNode #Antlr4CharacterRangeNode #Antlr4GrammarNode #Antlr4ElementOptionsNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken)
]

{ #category : #generated }
Antlr4Parser >> transitionTable [
^#(
#[1 0 9 0 31 0 13 0 33 0 17 0 37 0 21 0 52 0 25 0 55 0 29 0 56] 
#[0 0 6 0 44 0 45] 
#[0 0 33 0 31] 
#[0 0 37 0 31] 
#[0 0 0 0 178] 
#[0 0 49 0 44 0 45 0 177] 
#[0 0 10 0 44 0 45] 
#[0 0 14 0 44 0 45] 
#[0 0 14 0 44 0 45] 
#[0 0 18 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 13 0 15 0 17 0 22 0 24 0 25 0 34 0 36] 
#[0 0 18 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 13 0 15 0 17 0 18 0 22 0 24 0 25 0 34 0 36] 
#[0 0 53 0 3] 
#[1 0 22 0 22 0 22 0 28 0 22 0 30 0 22 0 32 0 22 0 35 0 22 0 36 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 43 0 22 0 44 0 22 0 45 0 57 0 53 0 22 0 178] 
#[1 0 61 0 22 0 65 0 28 0 26 0 30 0 69 0 32 0 26 0 35 0 73 0 36 0 26 0 38 0 26 0 39 0 26 0 40 0 77 0 43 0 26 0 44 0 26 0 45 0 81 0 57 0 81 0 58 0 81 0 65 0 81 0 69 0 81 0 71 0 81 0 76 0 105 0 86 0 109 0 87 0 26 0 178] 
#[1 0 129 0 33 0 129 0 37 0 7 0 44 0 11 0 45 0 121 0 77 0 125 0 78 0 129 0 79 0 129 0 177] 
#[0 0 137 0 7] 
#[1 0 145 0 44 0 145 0 45 0 141 0 68 0 145 0 177] 
#[0 0 149 0 7] 
#[0 0 153 0 7] 
#[0 0 34 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 38 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 38 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 38 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 38 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 38 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[1 0 42 0 35 0 157 0 54 0 42 0 178] 
#[1 0 161 0 30 0 46 0 35 0 197 0 38 0 197 0 39 0 197 0 40 0 50 0 44 0 54 0 45 0 177 0 88 0 177 0 89 0 185 0 90 0 189 0 106 0 193 0 107 0 197 0 108 0 177 0 116 0 205 0 117 0 46 0 178] 
#[0 0 58 0 25] 
#[0 0 58 0 25] 
#[0 0 62 0 44 0 45] 
#[0 0 209 0 44 0 45 0 177] 
#[0 0 213 0 25] 
#[0 0 58 0 25] 
#[1 0 66 0 10 0 225 0 44 0 225 0 45 0 217 0 70 0 221 0 72 0 225 0 177] 
#[1 0 70 0 3 0 70 0 11 0 229 0 67] 
#[1 0 74 0 3 0 74 0 11 0 233 0 17] 
#[1 0 78 0 10 0 78 0 44 0 78 0 45 0 237 0 60] 
#[1 0 66 0 10 0 225 0 44 0 225 0 45 0 241 0 70 0 221 0 72 0 225 0 177] 
#[1 0 245 0 35 0 249 0 84 0 82 0 178] 
#[1 0 86 0 30 0 86 0 38 0 86 0 39 0 86 0 40 0 90 0 44 0 86 0 45] 
#[0 0 86 0 30 0 38 0 39 0 40 0 45] 
#[0 0 86 0 30 0 38 0 39 0 40 0 45] 
#[0 0 86 0 30 0 38 0 39 0 40 0 45] 
#[0 0 94 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 0 98 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 0 253 0 45] 
#[0 0 102 0 45] 
#[1 1 5 0 30 1 5 0 38 1 5 0 39 1 5 0 40 0 106 0 45 1 5 0 108] 
#[0 0 110 0 30 0 38 0 39 0 40 0 45] 
#[0 0 98 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 1 9 0 44] 
#[1 0 114 0 7 1 13 0 80 1 17 0 81] 
#[0 0 118 0 44 0 45] 
#[0 1 21 0 10] 
#[0 0 122 0 10] 
#[1 0 126 0 10 0 126 0 11 1 25 0 74] 
#[1 1 29 0 3 1 33 0 11 1 37 0 66] 
#[0 1 41 0 44 0 45 0 177] 
#[1 1 45 0 10 1 57 0 44 1 57 0 45 1 49 0 59 1 53 0 61 1 57 0 177] 
#[0 1 61 0 10] 
#[0 1 65 0 44 0 45 0 177] 
#[0 0 130 0 35 0 178] 
#[1 0 134 0 6 0 138 0 22 0 138 0 24 0 138 0 34 0 138 0 36 0 138 0 41 0 138 0 42 1 69 0 82 1 73 0 83 1 77 0 91] 
#[0 0 86 0 30 0 38 0 39 0 40 0 45] 
#[0 0 142 0 30 0 38 0 39 0 40 0 45] 
#[0 1 81 0 24] 
#[0 0 146 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 1 85 0 7] 
#[0 0 150 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[1 0 154 0 10 1 89 0 11 1 93 0 73 1 97 0 75] 
#[0 0 158 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[1 0 145 0 44 0 145 0 45 1 101 0 68 0 145 0 177] 
#[0 0 162 0 3 0 11] 
#[0 0 166 0 3 0 11] 
#[0 0 170 0 22 0 24 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 0 174 0 10 0 44 0 45] 
#[0 1 105 0 3] 
#[0 1 109 0 17] 
#[0 0 178 0 22 0 28 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 178] 
#[0 1 113 0 3] 
#[0 0 182 0 3 0 4 0 5 0 7 0 8 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 34 0 36 0 41 0 42 0 44 0 45 0 47] 
#[0 1 117 0 6] 
#[1 0 186 0 22 0 186 0 24 0 186 0 34 0 186 0 36 1 121 0 41 0 186 0 42 1 125 0 92 1 129 0 102] 
#[1 0 190 0 3 0 190 0 4 1 133 0 5 0 194 0 6 0 114 0 7 1 137 0 15 1 141 0 16 1 145 0 44 1 213 0 45 1 149 0 47 1 153 0 80 1 17 0 81 1 157 0 118 1 161 0 119 1 165 0 122 1 169 0 124 1 173 0 125 1 177 0 126 1 181 0 129 1 185 0 132 1 189 0 154 1 189 0 156 1 189 0 161 1 201 0 162 1 189 0 170 1 189 0 171 1 213 0 177] 
#[0 1 217 0 1] 
#[1 0 198 0 10 1 221 0 44 1 221 0 45 1 221 0 177] 
#[0 0 202 0 10 0 11 0 22 0 24 0 34 0 36] 
#[0 0 206 0 10] 
#[0 0 210 0 3 0 11] 
#[0 0 214 0 10 0 44 0 45] 
#[1 0 114 0 7 1 241 0 44 1 241 0 45 1 225 0 46 1 229 0 47 1 233 0 62 1 233 0 80 1 17 0 81 1 241 0 177] 
#[1 0 218 0 30 0 218 0 35 0 218 0 44 1 245 0 85 0 218 0 178] 
#[0 1 249 0 2] 
#[1 0 134 0 6 1 253 0 82 1 73 0 83] 
#[1 0 222 0 22 0 222 0 24 0 222 0 34 0 222 0 36 2 1 0 42 2 5 0 93 2 5 0 103] 
#[0 0 226 0 22 0 24 0 34 0 36 0 42] 
#[1 0 190 0 4 1 133 0 5 0 194 0 6 0 114 0 7 0 190 0 8 1 137 0 15 1 141 0 16 1 145 0 44 1 213 0 45 1 149 0 47 1 153 0 80 1 17 0 81 2 13 0 119 1 165 0 122 1 169 0 124 1 173 0 125 1 177 0 126 1 181 0 129 1 185 0 132 1 189 0 154 1 189 0 156 1 189 0 161 1 201 0 162 1 189 0 170 1 189 0 171 1 213 0 177] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 21 0 143 2 21 0 172] 
#[1 2 29 0 5 0 194 0 6 2 33 0 44 2 37 0 47 2 41 0 157 2 45 0 160 2 45 0 161 1 201 0 162 2 45 0 170] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 18 0 17 0 18 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 57 0 143 2 57 0 172] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 2 61 0 14 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 65 0 143 2 65 0 172] 
#[1 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 15 0 234 0 16 2 73 0 19 0 234 0 26 0 234 0 44 0 234 0 45 0 234 0 47 2 73 0 128] 
#[0 2 77 0 3] 
#[0 0 238 0 3] 
#[1 0 242 0 3 0 242 0 4 0 242 0 8 2 81 0 121] 
#[1 0 246 0 3 0 246 0 4 0 246 0 8 2 85 0 26 2 89 0 123 2 89 0 133] 
#[1 0 250 0 3 0 250 0 4 1 133 0 5 0 194 0 6 0 114 0 7 0 250 0 8 1 137 0 15 1 141 0 16 0 250 0 26 1 145 0 44 1 213 0 45 1 149 0 47 1 153 0 80 1 17 0 81 2 97 0 126 1 181 0 129 1 185 0 132 1 189 0 154 1 189 0 156 1 189 0 161 1 201 0 162 1 189 0 170 1 189 0 171 1 213 0 177] 
#[0 0 254 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[1 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 15 1 2 0 16 2 101 0 19 2 105 0 20 2 109 0 21 1 2 0 26 1 2 0 44 1 2 0 45 1 2 0 47 2 113 0 127 2 113 0 152] 
#[1 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 15 1 2 0 16 2 101 0 19 2 105 0 20 2 109 0 21 1 2 0 26 1 2 0 44 1 2 0 45 1 2 0 47 2 121 0 127 2 121 0 152] 
#[1 1 2 0 3 1 2 0 4 1 2 0 5 1 2 0 6 1 2 0 7 1 2 0 8 1 2 0 15 1 2 0 16 2 101 0 19 2 105 0 20 2 109 0 21 1 2 0 26 1 2 0 44 1 2 0 45 1 2 0 47 2 125 0 127 2 125 0 152] 
#[0 1 6 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 1 6 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 2 129 0 6] 
#[0 1 6 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 1 6 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 2 141 0 17 0 18 0 130] 
#[0 2 145 0 10] 
#[0 1 10 0 10 0 11 0 22 0 24 0 34 0 36] 
#[0 1 14 0 3] 
#[0 1 18 0 3] 
#[0 1 22 0 3] 
#[0 1 26 0 3] 
#[1 1 30 0 3 1 30 0 15 2 149 0 64] 
#[1 0 205 0 30 1 34 0 35 0 50 0 44 2 157 0 116 0 205 0 117 1 34 0 178] 
#[0 2 161 0 9] 
#[0 1 38 0 22 0 24 0 34 0 36 0 42] 
#[0 2 165 0 44 0 45 0 177] 
#[1 1 42 0 22 1 42 0 24 2 169 0 34 1 42 0 36 2 173 0 94 2 173 0 104] 
#[0 1 46 0 22 0 24 0 34 0 36] 
#[0 2 181 0 8] 
#[1 2 189 0 44 2 189 0 45 2 185 0 175 2 189 0 177] 
#[0 1 50 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 1 54 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[1 0 194 0 6 2 33 0 44 2 37 0 47 2 193 0 160 2 193 0 161 1 201 0 162 2 193 0 170] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 197 0 143 2 197 0 172] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 2 61 0 14 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 201 0 143 2 201 0 172] 
#[0 1 58 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 58 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 62 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 62 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 66 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 2 205 0 47] 
#[0 1 70 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 74 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 23 0 26 0 44 0 45 0 47] 
#[0 1 78 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[0 1 82 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[1 1 86 0 3 2 209 0 4 1 86 0 8 2 213 0 120] 
#[1 2 217 0 35 2 229 0 44 2 229 0 45 2 221 0 136 2 225 0 137 2 229 0 177] 
#[0 1 90 0 3 0 4 0 8] 
#[0 1 94 0 3 0 4 0 8] 
#[0 1 98 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[1 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 15 1 102 0 16 2 237 0 19 1 102 0 23 1 102 0 26 1 102 0 44 1 102 0 45 1 102 0 47 2 237 0 153] 
#[1 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 15 1 102 0 16 2 241 0 19 1 102 0 23 1 102 0 26 1 102 0 44 1 102 0 45 1 102 0 47 2 241 0 153] 
#[1 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 15 1 102 0 16 2 245 0 19 1 102 0 23 1 102 0 26 1 102 0 44 1 102 0 45 1 102 0 47 2 245 0 153] 
#[0 1 106 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[0 1 110 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[0 1 114 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[0 1 114 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 26 0 44 0 45 0 47] 
#[0 2 249 0 48] 
#[0 1 118 0 5 0 6 0 15 0 16 0 44 0 45 0 47] 
#[0 1 118 0 5 0 6 0 15 0 16 0 44 0 45 0 47] 
#[1 1 133 0 5 0 194 0 6 1 137 0 15 1 141 0 16 2 253 0 44 1 149 0 47 3 1 0 131 3 1 0 132 3 1 0 154 3 1 0 156 3 1 0 161 1 201 0 162 3 1 0 170 3 1 0 171] 
#[0 1 122 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 22 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 32 0 35 0 36 0 38 0 39 0 40 0 43 0 44 0 45 0 47 0 178] 
#[1 1 126 0 3 3 13 0 15 3 17 0 63] 
#[0 0 90 0 44] 
#[0 1 130 0 30 0 35 0 44 0 178] 
#[0 1 134 0 3 0 4 0 5 0 7 0 8 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 34 0 36 0 41 0 42 0 44 0 45 0 47] 
#[1 0 126 0 11 0 126 0 22 0 126 0 24 0 126 0 34 0 126 0 36 3 21 0 74] 
#[1 0 134 0 6 3 25 0 82 1 73 0 83] 
#[1 1 138 0 22 1 138 0 24 1 138 0 36 3 29 0 95] 
#[0 1 142 0 22 0 24 0 36] 
#[0 1 146 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[1 1 150 0 11 1 150 0 13 3 33 0 174] 
#[1 1 154 0 11 1 154 0 13 3 37 0 17] 
#[1 1 158 0 4 1 158 0 8 3 41 0 159] 
#[0 1 162 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 166 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 170 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[1 0 190 0 3 0 190 0 4 1 133 0 5 0 194 0 6 0 114 0 7 0 190 0 8 1 137 0 15 1 141 0 16 1 145 0 44 1 213 0 45 1 149 0 47 1 153 0 80 1 17 0 81 3 45 0 122 1 169 0 124 1 173 0 125 1 177 0 126 1 181 0 129 1 185 0 132 1 189 0 154 1 189 0 156 1 189 0 161 1 201 0 162 1 189 0 170 1 189 0 171 1 213 0 177] 
#[0 1 174 0 3 0 4 0 8] 
#[0 1 178 0 3 0 4 0 5 0 8 0 11] 
#[1 1 182 0 3 1 182 0 4 1 182 0 8 1 182 0 11 3 49 0 135] 
#[1 1 186 0 3 1 186 0 4 3 53 0 5 1 186 0 8 1 186 0 11] 
#[0 1 190 0 3 0 4 0 5 0 8 0 11] 
#[0 1 194 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 23 0 26 0 44 0 45 0 47] 
#[0 1 198 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 23 0 26 0 44 0 45 0 47] 
#[0 1 198 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 23 0 26 0 44 0 45 0 47] 
#[0 1 198 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 23 0 26 0 44 0 45 0 47] 
#[1 1 202 0 9 3 57 0 163] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 26 0 230 0 44 0 230 0 45 0 230 0 47 2 57 0 143 2 57 0 172] 
#[0 1 206 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 1 210 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 1 210 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 26 0 44 0 45 0 47] 
#[0 3 61 0 44 0 45 0 177] 
#[0 1 214 0 3 0 15] 
#[1 3 65 0 11 1 218 0 22 1 218 0 24 1 218 0 34 1 218 0 36 1 93 0 73] 
#[0 1 222 0 22 0 24 0 36] 
#[1 3 69 0 22 3 73 0 24 0 73 0 36 3 81 0 58 3 81 0 101 3 81 0 105] 
#[1 3 89 0 11 3 93 0 13 3 97 0 173] 
#[1 3 109 0 44 3 109 0 45 3 101 0 47 3 105 0 176 3 109 0 177] 
#[1 3 113 0 4 3 117 0 8 3 121 0 158] 
#[0 1 226 0 3 0 4 0 8] 
#[1 1 230 0 3 1 230 0 4 1 230 0 8 3 125 0 11 3 129 0 134] 
#[1 3 141 0 44 3 141 0 45 3 133 0 46 3 137 0 138 3 141 0 177] 
#[0 3 145 0 9] 
#[0 1 234 0 3 0 15] 
#[0 1 221 0 44 0 45 0 177] 
#[0 3 149 0 44 0 45 0 177] 
#[1 1 238 0 3 1 238 0 4 0 230 0 5 0 230 0 7 2 17 0 12 0 230 0 15 0 230 0 16 1 238 0 23 0 230 0 44 0 230 0 45 0 230 0 47 3 153 0 109 3 157 0 110 3 161 0 113 3 165 0 142 3 169 0 143 3 169 0 172] 
#[0 1 242 0 22 0 24 0 36] 
#[0 1 246 0 22 0 24 0 36] 
#[0 1 242 0 22 0 24 0 36] 
#[1 2 189 0 44 2 189 0 45 3 173 0 175 2 189 0 177] 
#[0 1 250 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 1 254 0 11 0 13] 
#[0 2 2 0 11 0 13] 
#[0 2 6 0 11 0 13] 
#[0 2 10 0 11 0 13] 
#[1 0 194 0 6 2 33 0 44 2 37 0 47 3 177 0 160 3 177 0 161 1 201 0 162 3 177 0 170] 
#[0 2 14 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[0 2 18 0 4 0 8] 
#[1 2 217 0 35 2 229 0 44 2 229 0 45 3 181 0 136 2 225 0 137 2 229 0 177] 
#[0 2 22 0 3 0 4 0 8 0 11] 
#[0 2 26 0 8] 
#[0 3 185 0 8] 
#[0 2 30 0 8] 
#[0 2 34 0 3 0 4 0 5 0 6 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 26 0 44 0 45 0 47] 
#[1 0 114 0 7 3 189 0 80 1 17 0 81] 
#[0 3 193 0 3] 
#[0 2 38 0 3] 
#[1 2 42 0 3 2 42 0 4 3 197 0 112] 
#[1 2 46 0 3 2 46 0 4 3 201 0 23 3 205 0 114 3 209 0 115] 
#[1 3 213 0 5 0 114 0 7 3 217 0 15 1 141 0 16 1 145 0 44 3 221 0 45 3 225 0 47 3 229 0 80 1 17 0 81 3 233 0 144 3 237 0 145 3 241 0 147 3 237 0 149 3 249 0 155 3 249 0 156 4 1 0 164 3 249 0 169 3 249 0 171 4 13 0 177] 
#[0 2 50 0 11 0 13] 
#[0 2 54 0 4 0 8] 
#[0 2 58 0 3 0 4 0 8 0 11] 
#[0 2 62 0 3 0 4 0 8 0 11] 
#[0 2 66 0 22 0 24 0 36] 
#[1 2 70 0 27 2 70 0 29 2 70 0 30 2 70 0 35 2 70 0 38 2 70 0 39 2 70 0 40 2 70 0 44 2 70 0 45 4 17 0 96 4 21 0 97 2 70 0 178] 
#[1 2 74 0 3 4 25 0 4 4 29 0 111] 
#[0 4 33 0 44 0 45 0 177] 
#[0 2 78 0 3 0 4] 
#[0 2 82 0 3 0 4] 
#[1 2 86 0 4 2 86 0 5 2 86 0 7 2 86 0 8 2 86 0 12 2 86 0 15 2 86 0 16 2 90 0 22 2 90 0 24 0 73 0 36 2 86 0 44 2 86 0 45 2 86 0 47 4 49 0 58 4 41 0 165 4 45 0 166 4 49 0 167] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 44 0 230 0 45 0 230 0 47 4 53 0 143 4 53 0 172] 
#[1 0 138 0 3 0 138 0 4 0 138 0 5 0 134 0 6 0 138 0 7 0 138 0 8 0 138 0 12 0 138 0 15 0 138 0 16 0 18 0 17 0 18 0 18 0 138 0 19 0 138 0 20 0 138 0 21 0 138 0 23 0 138 0 44 0 138 0 45 0 138 0 47 1 69 0 82 1 73 0 83 4 57 0 91] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 44 0 230 0 45 0 230 0 47 2 65 0 143 2 65 0 172] 
#[1 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 7 0 234 0 8 0 234 0 15 0 234 0 16 4 61 0 19 0 234 0 23 0 234 0 44 0 234 0 45 0 234 0 47 4 61 0 128] 
#[1 2 94 0 3 2 94 0 4 3 213 0 5 0 114 0 7 2 94 0 8 3 217 0 15 1 141 0 16 2 94 0 23 1 145 0 44 3 221 0 45 3 225 0 47 3 229 0 80 1 17 0 81 4 65 0 145 3 241 0 147 4 65 0 149 3 249 0 155 3 249 0 156 4 1 0 164 3 249 0 169 3 249 0 171 4 13 0 177] 
#[0 2 98 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[1 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 7 2 102 0 8 2 102 0 15 2 102 0 16 2 101 0 19 2 105 0 20 2 109 0 21 2 102 0 23 2 102 0 44 2 102 0 45 2 102 0 47 4 69 0 146 4 69 0 152] 
#[0 2 106 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[1 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 7 2 102 0 8 2 102 0 15 2 102 0 16 2 101 0 19 2 105 0 20 2 109 0 21 2 102 0 23 2 102 0 44 2 102 0 45 2 102 0 47 4 77 0 146 4 77 0 152] 
#[0 2 110 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[1 2 114 0 3 2 114 0 4 2 114 0 5 2 114 0 7 2 114 0 8 2 114 0 15 2 114 0 16 2 101 0 19 2 105 0 20 2 109 0 21 2 114 0 23 2 114 0 44 2 114 0 45 2 114 0 47 4 81 0 150 4 81 0 151 4 81 0 152] 
#[0 2 110 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[0 2 110 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[0 4 93 0 17 0 18 0 130] 
#[0 2 118 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[1 4 97 0 27 4 101 0 29 2 122 0 30 2 122 0 35 2 122 0 38 2 122 0 39 2 122 0 40 2 122 0 44 2 122 0 45 4 105 0 98 4 109 0 99 4 105 0 100 2 122 0 178] 
#[1 1 238 0 3 1 238 0 4 0 230 0 5 0 230 0 7 2 17 0 12 0 230 0 15 0 230 0 16 1 238 0 23 0 230 0 44 0 230 0 45 0 230 0 47 4 117 0 113 3 165 0 142 3 169 0 143 3 169 0 172] 
#[0 2 126 0 3 0 4] 
#[0 2 130 0 3 0 4] 
#[0 2 134 0 22 0 24] 
#[0 2 138 0 4 0 5 0 7 0 8 0 12 0 15 0 16 0 44 0 45 0 47] 
#[1 1 238 0 4 0 230 0 5 0 230 0 7 1 238 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 44 0 230 0 45 0 230 0 47 4 121 0 139 4 125 0 142 3 169 0 143 3 169 0 172] 
#[1 2 142 0 22 2 142 0 24 4 129 0 168] 
#[0 2 146 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[1 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 7 0 230 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 23 0 230 0 44 0 230 0 45 0 230 0 47 4 133 0 143 4 133 0 172] 
#[0 2 150 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 154 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 158 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 162 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 166 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 170 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 174 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[0 2 178 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 23 0 44 0 45 0 47] 
#[1 3 213 0 5 3 217 0 15 1 141 0 16 2 253 0 44 4 137 0 45 3 225 0 47 4 141 0 148 4 141 0 155 4 141 0 156 4 141 0 164 4 141 0 169 4 141 0 171] 
#[1 0 134 0 6 4 153 0 82 1 73 0 83] 
#[1 0 114 0 7 4 157 0 80 1 17 0 81] 
#[0 2 182 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 2 186 0 27 0 29 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 2 190 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 2 194 0 3 0 4] 
#[0 4 161 0 8] 
#[1 2 198 0 4 2 198 0 8 4 165 0 141] 
#[1 3 69 0 22 4 169 0 24 4 173 0 105] 
#[0 2 202 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[1 0 138 0 3 0 138 0 4 0 138 0 5 0 134 0 6 0 138 0 7 0 138 0 8 0 138 0 12 0 138 0 15 0 138 0 16 0 138 0 19 0 138 0 20 0 138 0 21 0 138 0 23 0 138 0 44 0 138 0 45 0 138 0 47 1 69 0 82 1 73 0 83 4 57 0 91] 
#[0 2 206 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[0 2 210 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[0 2 210 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[1 0 114 0 7 4 177 0 80 1 17 0 81] 
#[0 2 214 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[0 2 218 0 3 0 4 0 5 0 7 0 8 0 15 0 16 0 19 0 20 0 21 0 23 0 44 0 45 0 47] 
#[1 4 181 0 4 2 222 0 8 4 185 0 140] 
#[0 2 226 0 4 0 5 0 7 0 8 0 12 0 15 0 16 0 44 0 45 0 47] 
#[0 2 230 0 22 0 24] 
#[0 2 234 0 27 0 29 0 30 0 35 0 38 0 39 0 40 0 44 0 45 0 178] 
#[1 1 238 0 4 0 230 0 5 0 230 0 7 1 238 0 8 2 17 0 12 0 230 0 15 0 230 0 16 0 230 0 44 0 230 0 45 0 230 0 47 4 189 0 142 3 169 0 143 3 169 0 172] 
#[0 2 238 0 4 0 8] 
#[0 2 242 0 4 0 8]
	).
]
