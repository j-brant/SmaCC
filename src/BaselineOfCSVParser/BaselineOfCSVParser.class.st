Class {
	#name : #BaselineOfCSVParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSVParser
}

{ #category : #baseline }
BaselineOfCSVParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.111' ].

		spec package: 'SmaCC_CSV_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
