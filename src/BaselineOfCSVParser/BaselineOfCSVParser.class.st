Class {
	#name : #BaselineOfCSVParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSVParser
}

{ #category : #accessing }
BaselineOfCSVParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_CSV_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
