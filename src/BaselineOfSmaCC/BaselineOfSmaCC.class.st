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
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'SmaCCDevelopment' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'SmaCCRewriteEngine' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'SmaCCSampleParsers' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'Antlr4Parser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'ClojureParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'CPPParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'CSharpParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'CSVParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'DelphiParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'DOTParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'GraphQLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'JavaParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'JSONParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'JSParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'PythonParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'RubyParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'RustParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'TeradataParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'VBNetParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
		spec
			baseline: 'YAMLParser' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.12' ].
	]
]
