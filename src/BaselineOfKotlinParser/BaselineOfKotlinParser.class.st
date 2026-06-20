Class {
	#name : 'BaselineOfKotlinParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfKotlinParser',
	#package : 'BaselineOfKotlinParser'
}

{ #category : 'baseline' }
BaselineOfKotlinParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.167' ].

		spec package: 'SmaCC_Kotlin' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
