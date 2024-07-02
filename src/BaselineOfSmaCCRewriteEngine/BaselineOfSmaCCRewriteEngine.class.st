Class {
	#name : #BaselineOfSmaCCRewriteEngine,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCCRewriteEngine
}

{ #category : #baseline }
BaselineOfSmaCCRewriteEngine >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SmaCCRuntime' with: [
				spec repository: 'github://j-brant/SmaCC:v3.0.66' ].

		spec package: 'SmaCC_Parse_Tree_Comparison' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Rewrite_Engine' with: [
			spec requires: #('SmaCCRuntime') ].
		spec package: 'SmaCC_Rewrite_Engine_Command_Line' with: [
			spec requires: #('SmaCC_Rewrite_Engine') ].
		spec package: 'SmaCC_Rewrite_Engine_Tests' with: [
			spec requires: #('SmaCC_Rewrite_Engine') ].
		spec package: 'SmaCC_Rewrite_Engine_UI' with: [
			spec requires: #('SmaCC_Rewrite_Engine') ].
		spec package: 'SmaCC_Rewrite_Server'.
		spec package: 'SmaCC_Rewrite_Server_Worker' with: [
			spec requires: #('SmaCC_Rewrite_Engine') ].
	]
]
