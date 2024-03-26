Class {
	#name : #BaselineOfAntlr4Parser,
	#superclass : #BaselineOf,
	#category : #BaselineOfAntlr4Parser
}

{ #category : #baseline }
BaselineOfAntlr4Parser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.46' ].

		spec package: 'SmaCC_Antlr_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
