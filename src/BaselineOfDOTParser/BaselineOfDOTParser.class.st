Class {
	#name : #BaselineOfDOTParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfDOTParser
}

{ #category : #baseline }
BaselineOfDOTParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.119' ].

		spec package: 'SmaCC_DOT' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
