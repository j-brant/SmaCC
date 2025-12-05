Class {
	#name : 'BaselineOfJSParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfJSParser',
	#package : 'BaselineOfJSParser'
}

{ #category : 'baseline' }
BaselineOfJSParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.125' ].

		spec package: 'SmaCC_Javascript_Parser' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
