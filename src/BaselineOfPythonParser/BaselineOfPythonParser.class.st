Class {
	#name : #BaselineOfPythonParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfPythonParser
}

{ #category : #baseline }
BaselineOfPythonParser >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.59' ].

		spec package: 'SmaCC_Python' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Python_Tests' with: [
			spec requires: #('SmaCCRuntime') ].
	]
]
