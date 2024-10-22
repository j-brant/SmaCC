Class {
	#name : #BaselineOfTeradataParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfTeradataParser
}

{ #category : #baseline }
BaselineOfTeradataParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.84' ].

		spec package: 'SmaCC_Teradata_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
