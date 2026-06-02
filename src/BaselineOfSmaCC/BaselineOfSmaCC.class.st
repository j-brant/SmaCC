Class {
	#name : 'BaselineOfSmaCC',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSmaCC',
	#package : 'BaselineOfSmaCC'
}

{ #category : 'baseline' }
BaselineOfSmaCC >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'SmaCCDevelopment' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'SmaCCNFAScanner' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'SmaCCRewriteEngine' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'SmaCCSampleParsers' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'Antlr4Parser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'ClojureParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'CPPParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'CSharpParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'CSSParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'CSVParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'DelphiParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'DOTParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'GraphQLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'JavaParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'JSONParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'JSParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'KotlinParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'PythonParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'RubyParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'RustParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'TeradataParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'VBNetParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
		spec
			baseline: 'YAMLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.161' ].
	]
]
