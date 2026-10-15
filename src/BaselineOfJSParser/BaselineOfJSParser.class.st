Class {
	#name : 'BaselineOfJSParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfJSParser',
	#package : 'BaselineOfJSParser'
}

{ #category : 'accessing' }
BaselineOfJSParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Javascript_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
