Class {
	#name : #BaselineOfCSharpParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSharpParser
}

{ #category : #baseline }
BaselineOfCSharpParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.75' ].

		spec package: 'SmaCC_CSharp' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
