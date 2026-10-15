Class {
	#name : 'BaselineOfCSSParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCSSParser',
	#package : 'BaselineOfCSSParser'
}

{ #category : 'accessing' }
BaselineOfCSSParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_CSS' with: [ spec requires: 'SmaCCRuntime' ] ]
]
