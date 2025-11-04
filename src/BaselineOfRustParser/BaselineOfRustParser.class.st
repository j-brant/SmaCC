Class {
	#name : #BaselineOfRustParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfRustParser
}

{ #category : #baseline }
BaselineOfRustParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.121' ].

		spec package: 'SmaCC_Rust' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
