Class {
	#name : #BaselineOfSmaCCSampleParsers,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCSampleParsers
}

{ #category : #baseline }
BaselineOfSmaCCSampleParsers >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.36' ].

		spec package: 'SmaCC_C_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Elixir_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Generic_Smalltalk_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Line_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Smalltalk_Parser' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
