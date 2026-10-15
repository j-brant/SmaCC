Class {
	#name : 'BaselineOfPythonParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPythonParser',
	#package : 'BaselineOfPythonParser'
}

{ #category : 'accessing' }
BaselineOfPythonParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Python' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Python_Tests' with: [ spec requires: 'SmaCCRuntime' ] ]
]
