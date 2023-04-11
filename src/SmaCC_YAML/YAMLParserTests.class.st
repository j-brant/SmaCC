Class {
	#name : #YAMLParserTests,
	#superclass : #TestCase,
	#category : #'SmaCC_YAML-Tests'
}

{ #category : #parsing }
YAMLParserTests >> testComments [
	<gtExample>
	| ast |
	ast := YAMLParser
			parse: 'a : # comment\b : #comment\c : d #comment\d : no#comment' withCRs.
	self assert: ast comments size equals: 3.
	self assert: ast documents first mappings size equals: 4.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testCompactMappingListItem [
	<gtExample>
	| ast mapping |
	ast := YAMLParser parse: '- foo: bar'.
	mapping := ast documents first items first value mappings first.
	self assert: mapping key source equals: 'foo'.
	self assert: mapping value source equals: 'bar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testCompactMappingListItemContinued [
	<gtExample>
	| ast mapping |
	ast := YAMLParser parse: '- foo: bar\  fee : baz' withCRs.
	mapping := ast documents first items first value mappings first.
	self assert: mapping key source equals: 'foo'.
	self assert: mapping value source equals: 'bar'.
	mapping := ast documents first items first value mappings second.
	self assert: mapping key source equals: 'fee'.
	self assert: mapping value source equals: 'baz'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testDocWithLiteralString [
	<gtExample>
	| ast mapping |
	ast := YAMLParser parse: 'yaml: |\  ...\' withCRs.
	self assert: ast documents size equals: 1.
	mapping := ast documents first mappings first.
	self assert: mapping value object equals: '...' , String lf.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testDocumentStartEnd [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '---\foo\...' withCRs.
	self assert: ast documents size equals: 1.
	self assert: ast documents first object equals: 'foo'.
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testDoubleQuoteString [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '"Something\nelse\t\x20\u0020\U00000020"'.
	object := ast object.
	self assert: object equals: 'Something' , String lf , 'else	   '.
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testFoldString [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '>\ a\ b\  c\ d\\\' withCRs.
	object := ast object.
	self assert: object equals: ('a b\ c\d\' withCRs withLineEndings: String lf).
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testFoldStringIncludeAllNewlines [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '>+\ a\ b\  c\ d\\\' withCRs.
	object := ast object.
	self assert: object equals: ('a b\ c\d\\\' withCRs withLineEndings: String lf).
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testFoldStringStripNewline [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '>-\ a\ b\  c\ d\\\' withCRs.
	object := ast object.
	self assert: object equals: ('a b\ c\d' withCRs withLineEndings: String lf).
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testFoldStringWithIndents [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '>1\  a\  b\ c\ d\\\' withCRs.
	object := ast object.
	self assert: object equals: (' a\ b\c d\' withCRs withLineEndings: String lf).
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testFoldStringWithSpacesAtEnd [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: '>\ a \ b \ c' withCRs.
	object := ast object.
	self assert: object equals: 'a  b  c'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testFooBarFlowList [
	<gtExample>
	| ast items |
	ast := YAMLParser parse: '[ foo , bar ]'.
	items := ast documents first items.
	self assert: items size equals: 2.
	self assert: items first object equals: 'foo'.
	self assert: items second object equals: 'bar'.
	self assert: ast object asArray equals: #('foo' 'bar').
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testFooListItem [
	<gtExample>
	| ast items |
	ast := YAMLParser parse: '- foo'.
	items := ast documents first items.
	self assert: items size equals: 1.
	self assert: items first object equals: 'foo'.
	self assert: ast object asArray equals: #('foo').
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testFoobarFeebazFlowMappingList [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: '{ foo : bar , fee : baz }'.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 2.
	self assert: mappings first object equals: 'foo' -> 'bar'.
	self assert: mappings second object equals: 'fee' -> 'baz'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testFoobarFeebazNestedFlowList [
	<gtExample>
	| ast items |
	ast := YAMLParser parse: '[ { foo : bar } , [ fee , baz ] ]'.
	items := ast documents first items.
	self assert: items size equals: 2.
	self assert: items first mappings size equals: 1.
	self assert: items last items size equals: 2.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testFoobarFeebazNestedFlowMappingList [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: '{ foo : bar , fee : [ foobar, baz ] }'.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 2.
	self assert: mappings last value items size equals: 2.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testIndentedMappingList [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: '\    bar : baz\' withCRs.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 1.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testListWithMapping [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: '\jobs:\  steps:\  - run: yarn build\' withCRs.
	mappings := ast documents first mappings first value mappings.
	self assert: mappings size equals: 1.
	self assert: mappings first value items size equals: 1.
	self assert: mappings first value items first value mappings size equals: 1.
	self
		assert: mappings first value items first value mappings first object
		equals: 'run' -> 'yarn build'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testLiteralString [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '|\  foo\  bar\\\' withCRs.
	self assert: ast object equals: 'foo' , String lf , 'bar' , String lf.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testLiteralStringIncludeAllNewlines [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '|+\  foo\  bar\\\' withCRs.
	self
		assert: ast object
		equals: ('foo\bar\\\' copyReplaceAll: '\' with: String lf).
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testLiteralStringStripNewline [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '|-\  foo\  bar\\\' withCRs.
	self assert: ast object equals: 'foo' , String lf , 'bar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testLiteralStringWithIndents [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '|1\  foo\  bar\\\' withCRs.
	self assert: ast object equals: ' foo' , String lf , ' bar' , String lf.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testMappingWithNullAndNewMapping [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: 'foo:\bar: baz' withCRs.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 2.
	self assert: mappings first object equals: 'foo' -> nil.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testMappingWithNullValueAtEOF [
	<gtExample>
	| ast mappings |
	ast := YAMLParser parse: 'foo:'.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 1.
	self assert: mappings first object equals: 'foo' -> nil.
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testMultipartString [
	<gtExample>
	| ast object |
	ast := YAMLParser parse: 'a\ b\  c\ d' withCRs.
	object := ast object.
	self assert: object equals: 'a b c d'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testNestedListAndMappingList [
	<gtExample>
	| ast items |
	ast := YAMLParser parse: '-\  foo : bar\  fee :\    - baz\    - booz' withCRs.
	items := ast documents first items first value mappings last value items.
	self assert: items size equals: 2.
	self assert: items first object equals: 'baz'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testNestedMappingList [
	<gtExample>
	| ast mappings |
	ast := YAMLParser
			parse: 'foo :\  bar : foobar\  baz : foobaz\bar : foo' withCRs.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 2.
	mappings := mappings first value mappings.
	self assert: mappings size equals: 2.
	self assert: mappings first object equals: 'bar' -> 'foobar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testNestedMappingListWithList [
	<gtExample>
	| ast mappings items |
	ast := YAMLParser parse: 'foo :\  - bar\  - baz' withCRs.
	mappings := ast documents first mappings.
	self assert: mappings size equals: 1.
	items := mappings first value items.
	self assert: items size equals: 2.
	self assert: items first object equals: 'bar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testScalarStringFooBarWithColon [
	<gtExample>
	| ast |
	ast := YAMLParser parse: 'foo:bar'.
	self assert: ast object equals: 'foo:bar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testScalarStringFooBarWithSpaces [
	<gtExample>
	| ast |
	ast := YAMLParser parse: 'foo bar'.
	self assert: ast object equals: 'foo bar'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testSimpleMappingList [
	<gtExample>
	| ast |
	ast := YAMLParser parse: 'foo : bar\foobar : baz' withCRs.
	self assert: ast documents first mappings size equals: 2.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testSimpleNestedList [
	<gtExample>
	| ast items |
	ast := YAMLParser parse: '- \  - foo\  - bar' withCRs.
	items := ast documents first items.
	self assert: items size equals: 1.
	self assert: items first value items size equals: 2.
	^ ast
]

{ #category : #objects }
YAMLParserTests >> testSingleQuoteString [
	<gtExample>
	| ast object |
	ast := YAMLParser
			parse: '''This is a test''''quote\n
something'''.
	object := ast object.
	self assert: object equals: 'This is a test''quote\n something'.
	^ ast
]

{ #category : #parsing }
YAMLParserTests >> testSingleQuotedStringWithDoubledSingleQuotes [
	<gtExample>
	| ast |
	ast := YAMLParser parse: '''It is a ''''far'''' ''''far'''' better thing'''.
	self assert: ast object equals: 'It is a ''far'' ''far'' better thing'.
	^ ast
]
