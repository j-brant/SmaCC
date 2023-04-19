Class {
	#name : #BaselineOfCPPParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCPPParser
}

{ #category : #baseline }
BaselineOfCPPParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.10' ].

		spec package: 'SmaCC_CPP_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
