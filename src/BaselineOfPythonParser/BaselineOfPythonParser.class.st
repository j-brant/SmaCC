Class {
	#name : #BaselineOfPythonParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfPythonParser
}

{ #category : #accessing }
BaselineOfPythonParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Python' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Python_Tests' with: [ spec requires: 'SmaCCRuntime' ] ]
]
