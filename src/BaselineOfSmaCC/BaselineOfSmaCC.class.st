Class {
	#name : #BaselineOfSmaCC,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmaCC
}

{ #category : #baselines }
BaselineOfSmaCC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'SmaCC_Antlr_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_CSV_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_CPP_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_CSharp' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_C_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Delphi' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Delphi_Forms' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_GLR_Runtime' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Generic_Smalltalk_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Grammar_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_JSON_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Java' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Javascript_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Line_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Rewrite_Engine'
					with: [ spec
						requires: 'SmaCC_Runtime';
						requires: 'SmaCC_Source_Editing' ];
				package: 'SmaCC_Rewrite_Engine_Tests' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Runtime';
				package: 'SmaCC_Smalltalk_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Source_Editing';
				package: 'SmaCC_Swift' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_VB_NET_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ].
			spec
				group: 'All'
					with:
					#('SmaCC_Antlr_Parser' 'SmaCC_CSV_Parser' 'SmaCC_CPP_Parser' 'SmaCC_CSharp' 'SmaCC_C_Parser' 'SmaCC_Delphi' 'SmaCC_Delphi_Forms' 'SmaCC_Generic_Smalltalk_Parser' 'SmaCC_Grammar_Parser' 'SmaCC_JSON_Parser' 'SmaCC_Java' 'SmaCC_Javascript_Parser' 'SmaCC_Line_Parser' 'SmaCC_Rewrite_Engine_Tests' 'SmaCC_Smalltalk_Parser' 'SmaCC_Source_Editing' 'SmaCC_VB_NET_Parser');
				group: 'Runtime' with: #('SmaCC_Runtime');
				group: 'GLR Runtime' with: #('SmaCC_GLR_Runtime');
				group: 'Rewrites' with: #('SmaCC_Rewrite_Engine');
				group: 'C++' with: #('SmaCC_CPP_Parser');
				group: 'C#' with: #('SmaCC_CSharp');
				group: 'Delphi' with: #('SmaCC_Delphi' 'SmaCC_Delphi_Forms');
				group: 'Java' with: #('SmaCC_Java');
				group: 'Javascript' with: #('SmaCC_Javascript_Parser');
				group: 'withSource' with: #('SmaCC_Source_Editing')].
	spec
		for: #pharo
		do: [ spec
				package: 'SmaCC_Development'
					with: [ spec
						requires: 'SmaCC_GLR_Runtime';
						requires: 'SmaCC_Grammar_Parser' ];
				package: 'SmaCC_Debugging_Support'
					with: [ spec
						requires: 'SmaCC_Development';
						requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Development_UI' with: [ spec requires: 'SmaCC_Development' ];
				package: 'SmaCC_Parse_Tree_Comparison' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Rewrite_Engine_Command_Line' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Engine_UI' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Server';
				package: 'SmaCC_Rewrite_Server_Worker' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Tests' with: [ spec requires: 'SmaCC_Development' ];
				group: 'All'
					with:
					#('SmaCC_CSV_Parser' 'SmaCC_CPP_Parser' 'SmaCC_CSharp' 'SmaCC_C_Parser' 'SmaCC_Development' 'SmaCC_Debugging_Support' 'SmaCC_Delphi' 'SmaCC_Delphi_Forms' 'SmaCC_Development_UI' 'SmaCC_Generic_Smalltalk_Parser' 'SmaCC_JSON_Parser' 'SmaCC_Java' 'SmaCC_Javascript_Parser' 'SmaCC_Line_Parser' 'SmaCC_Parse_Tree_Comparison' 'SmaCC_Rewrite_Engine_Command_Line' 'SmaCC_Rewrite_Engine_Tests' 'SmaCC_Rewrite_Engine_UI' 'SmaCC_Rewrite_Server' 'SmaCC_Rewrite_Server_Worker' 'SmaCC_Smalltalk_Parser' 'SmaCC_Source_Editing' 'SmaCC_Tests' 'SmaCC_VB_NET_Parser');
				group: 'Tests' with: #('SmaCC_Rewrite_Engine_Tests' 'SmaCC_Tests');
				group: 'Development' with: #('SmaCC_Development_UI') ]
]
