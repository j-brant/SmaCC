Class {
	#name : #BaselineOfVBNetParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfVBNetParser
}

{ #category : #baseline }
BaselineOfVBNetParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.122' ].

		spec package: 'SmaCC_VB_NET_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
