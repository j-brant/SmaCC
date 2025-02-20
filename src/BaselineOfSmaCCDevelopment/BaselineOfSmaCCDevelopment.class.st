Class {
	#name : #BaselineOfSmaCCDevelopment,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCDevelopment
}

{ #category : #baseline }
BaselineOfSmaCCDevelopment >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.96' ].

		spec package: 'SmaCC_Grammar_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
		spec package: 'SmaCC_Development' with: [
			spec requires: #(#SmaCCRuntime #SmaCC_Grammar_Parser) ].
		spec package: 'SmaCC_Development_UI' with: [
			spec requires: #(#SmaCC_Development) ].
		spec package: 'SmaCC_Debugging_Support' with: [
			spec requires: #(#SmaCC_Development) ].
		spec package: 'SmaCC_Tests' with: [
			spec requires: #(#SmaCC_Development) ].
	]
]
