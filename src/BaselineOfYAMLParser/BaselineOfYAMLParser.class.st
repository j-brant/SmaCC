Class {
	#name : 'BaselineOfYAMLParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfYAMLParser',
	#package : 'BaselineOfYAMLParser'
}

{ #category : 'accessing' }
BaselineOfYAMLParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_YAML' with: [ spec requires: 'SmaCCRuntime' ] ]
]
