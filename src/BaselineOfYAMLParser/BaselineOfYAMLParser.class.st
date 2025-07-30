Class {
	#name : #BaselineOfYAMLParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfYAMLParser
}

{ #category : #baseline }
BaselineOfYAMLParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.108' ].

		spec package: 'SmaCC_YAML' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
