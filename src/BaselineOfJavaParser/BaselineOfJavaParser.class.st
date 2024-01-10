Class {
	#name : #BaselineOfJavaParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfJavaParser
}

{ #category : #baseline }
BaselineOfJavaParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.38' ].

		spec package: 'SmaCC_Java' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
