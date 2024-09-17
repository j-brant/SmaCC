Class {
	#name : #BaselineOfCSSParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSSParser
}

{ #category : #baseline }
BaselineOfCSSParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.77' ].

		spec package: 'SmaCC_CSS' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
