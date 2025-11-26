Class {
	#name : 'BaselineOfRubyParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRubyParser',
	#package : 'BaselineOfRubyParser'
}

{ #category : 'baseline' }
BaselineOfRubyParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.124' ].

		spec package: 'SmaCC_Ruby' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
