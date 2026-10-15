Class {
	#name : 'BaselineOfRubyParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRubyParser',
	#package : 'BaselineOfRubyParser'
}

{ #category : 'accessing' }
BaselineOfRubyParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Ruby' with: [ spec requires: 'SmaCCRuntime' ] ]
]
