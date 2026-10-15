Class {
	#name : 'BaselineOfSmaCC',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSmaCC',
	#package : 'BaselineOfSmaCC'
}

{ #category : 'baselines' }
BaselineOfSmaCC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'SmaCCDevelopment'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'SmaCCNFAScanner'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'SmaCCRewriteEngine'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'SmaCCSampleParsers'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'Antlr4Parser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'ClojureParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'CPPParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'CSharpParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'CSSParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'CSVParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'DelphiParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'DOTParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'GraphQLParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'JavaParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'JSONParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'JSParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'KotlinParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'PythonParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'RubyParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'RustParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'TeradataParser'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'VBNetParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				baseline: 'YAMLParser' with: [ spec repository: 'github://j-brant/SmaCC:/src' ] ]
]
