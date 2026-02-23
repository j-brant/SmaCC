Class {
	#name : 'BaselineOfJavaParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfJavaParser',
	#package : 'BaselineOfJavaParser'
}

{ #category : 'baseline' }
BaselineOfJavaParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.146' ].

		spec package: 'SmaCC_Java' with: [
			spec requires: #(#SmaCCRuntime) ].
	]
]
