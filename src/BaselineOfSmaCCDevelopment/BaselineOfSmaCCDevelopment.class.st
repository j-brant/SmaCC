Class {
	#name : 'BaselineOfSmaCCDevelopment',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSmaCCDevelopment',
	#package : 'BaselineOfSmaCCDevelopment'
}

{ #category : 'accessing' }
BaselineOfSmaCCDevelopment >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Debugging_Support'
					with: [ spec requires: 'SmaCC_Development' ];
				package: 'SmaCC_Development'
					with: [ spec requires: #('SmaCCRuntime' 'SmaCC_Grammar_Parser') ];
				package: 'SmaCC_Development_UI'
					with: [ spec requires: 'SmaCC_Development' ];
				package: 'SmaCC_Grammar_Parser' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Tests' with: [ spec requires: 'SmaCC_Development' ] ]
]
