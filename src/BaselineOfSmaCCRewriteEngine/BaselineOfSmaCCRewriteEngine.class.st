Class {
	#name : #BaselineOfSmaCCRewriteEngine,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCRewriteEngine
}

{ #category : #accessing }
BaselineOfSmaCCRewriteEngine >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCCRuntime'
					with: [ spec repository: 'github://j-brant/SmaCC' ];
				package: 'SmaCC_Parse_Tree_Comparison'
					with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Rewrite_Engine' with: [ spec requires: 'SmaCCRuntime' ];
				package: 'SmaCC_Rewrite_Engine_Command_Line'
					with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Engine_Tests'
					with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Engine_UI'
					with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Server';
				package: 'SmaCC_Rewrite_Server_Worker'
					with: [ spec requires: 'SmaCC_Rewrite_Engine' ] ]
]
