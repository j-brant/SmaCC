Class {
	#name : #BaselineOfJSONParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfJSONParser
}

{ #category : #baseline }
BaselineOfJSONParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.94' ].

		spec package: 'SmaCC_JSON_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
