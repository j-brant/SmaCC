Class {
	#name : 'BaselineOfRustParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRustParser',
	#package : 'BaselineOfRustParser'
}

{ #category : 'accessing' }
BaselineOfRustParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Rust' with: [ spec requires: 'SmaCCRuntime' ] ]
]
