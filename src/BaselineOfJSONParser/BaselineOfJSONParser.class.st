Class {
	#name : #BaselineOfJSONParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfJSONParser
}

{ #category : #accessing }
BaselineOfJSONParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_JSON_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
