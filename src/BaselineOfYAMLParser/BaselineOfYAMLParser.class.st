Class {
	#name : 'BaselineOfYAMLParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfYAMLParser',
	#package : 'BaselineOfYAMLParser'
}

{ #category : 'baseline' }
BaselineOfYAMLParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.139' ].

		spec package: 'SmaCC_YAML' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
