Class {
	#name : #BaselineOfRubyParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfRubyParser
}

{ #category : #accessing }
BaselineOfRubyParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Ruby' with: [ spec requires: 'SmaCCRuntime' ] ]
]
