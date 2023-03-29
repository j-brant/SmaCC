Class {
	#name : #BaselineOfDOTParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfDOTParser
}

{ #category : #accessing }
BaselineOfDOTParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_DOT' with: [ spec requires: 'SmaCCRuntime' ] ]
]
