Class {
	#name : #BaselineOfCPPParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCPPParser
}

{ #category : #accessing }
BaselineOfCPPParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_CPP_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
