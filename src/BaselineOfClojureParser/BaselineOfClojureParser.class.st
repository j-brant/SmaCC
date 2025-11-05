Class {
	#name : #BaselineOfClojureParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfClojureParser
}

{ #category : #baseline }
BaselineOfClojureParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.123' ].

		spec package: 'SmaCC_Clojure' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
