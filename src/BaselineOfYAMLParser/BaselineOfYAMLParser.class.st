Class {
	#name : #BaselineOfYAMLParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfYAMLParser
}

{ #category : #accessing }
BaselineOfYAMLParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_YAML' with: [ spec requires: 'SmaCCRuntime' ] ]
]
