Class {
	#name : #BaselineOfCSSParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfCSSParser
}

{ #category : #accessing }
BaselineOfCSSParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_CSS' with: [ spec requires: 'SmaCCRuntime' ] ]
]
