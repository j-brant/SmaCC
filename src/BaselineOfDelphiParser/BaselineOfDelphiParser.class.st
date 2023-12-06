Class {
	#name : #BaselineOfDelphiParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfDelphiParser
}

{ #category : #baseline }
BaselineOfDelphiParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.30' ].

		spec package: 'SmaCC_Delphi' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Delphi_Forms' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
