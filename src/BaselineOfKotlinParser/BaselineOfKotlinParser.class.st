Class {
	#name : 'BaselineOfKotlinParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfKotlinParser',
	#package : 'BaselineOfKotlinParser'
}

{ #category : 'baselines' }
BaselineOfKotlinParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Kotlin_Parser' with: [ spec requires: 'SmaCCRuntime' ] ]
]
