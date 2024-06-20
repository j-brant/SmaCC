Class {
	#name : #BaselineOfSmaCC,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCC
}

{ #category : #baseline }
BaselineOfSmaCC >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'SmaCCDevelopment' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'SmaCCRewriteEngine' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'SmaCCSampleParsers' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'Antlr4Parser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'ClojureParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'CPPParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'CSharpParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'CSVParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'DelphiParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'DOTParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'GraphQLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'JavaParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'JSONParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'JSParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'PythonParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'RubyParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'RustParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'TeradataParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'VBNetParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
		spec
			baseline: 'YAMLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.58' ].
	]
]
