Class {
	#name : 'BaselineOfDelphiParser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfDelphiParser',
	#package : 'BaselineOfDelphiParser'
}

{ #category : 'accessing' }
BaselineOfDelphiParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC:/src' ];
				package: 'SmaCC_Delphi' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Delphi_Forms' with: [ spec requires: 'SmaCCRuntime' ] ]
]
