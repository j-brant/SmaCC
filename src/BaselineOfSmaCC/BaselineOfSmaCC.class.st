Class {
	#name : #BaselineOfSmaCC,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCC
}

{ #category : #baselines }
BaselineOfSmaCC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'SmaCCDevelopment'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'SmaCCRewriteEngine'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'SmaCCSampleParsers'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'Antlr4Parser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'ClojureParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'CPPParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'CSharpParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'CSSParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'CSVParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'DelphiParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'DOTParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'GraphQLParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'JavaParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'JSONParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'JSParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'PythonParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'RubyParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'RustParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'TeradataParser'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'VBNetParser' with: [ spec repository: 'github://j-brant/SmaCC' ];
				baseline: 'YAMLParser' with: [ spec repository: 'github://j-brant/SmaCC' ] ]
]
