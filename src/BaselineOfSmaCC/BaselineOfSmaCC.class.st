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
				package: 'SmaCC_CPP_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_CSV_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_CSharp' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_C_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Clojure' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_DOT' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Debugging_Support' with: [ spec requires: #('SmaCC_Development' 'SmaCC_Runtime' 'SmaCC_Source_Editing') ];
				package: 'SmaCC_Delphi' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Delphi_Forms' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Development' with: [ spec requires: #('SmaCC_GLR_Runtime' 'SmaCC_Grammar_Parser') ];
				package: 'SmaCC_Development_UI' with: [ spec requires: 'SmaCC_Development' ];
				package: 'SmaCC_Elixir_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_GLR_Runtime' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Generic_Smalltalk_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Grammar_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_JSON_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Java' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Javascript_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Line_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Parse_Tree_Comparison' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Python' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Python_Tests' with: [ spec requires: 'SmaCC_Python' ];
				package: 'SmaCC_Rewrite_Engine' with: [ spec requires: #('SmaCC_Runtime' 'SmaCC_Source_Editing') ];
				package: 'SmaCC_Rewrite_Engine_Command_Line' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Engine_Tests' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Engine_UI' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Rewrite_Server';
				package: 'SmaCC_Rewrite_Server_Worker' with: [ spec requires: 'SmaCC_Rewrite_Engine' ];
				package: 'SmaCC_Ruby' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Runtime';
				package: 'SmaCC_Rust' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Smalltalk_Parser' with: [ spec requires: 'SmaCC_Runtime' ];
				package: 'SmaCC_Source_Editing';
				package: 'SmaCC_Swift' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Teradata_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ];
				package: 'SmaCC_Tests' with: [ spec requires: 'SmaCC_Development' ];
				package: 'SmaCC_VB_NET_Parser' with: [ spec requires: 'SmaCC_GLR_Runtime' ].
			spec
				group: 'All'
					with:
					#('SmaCC_Antlr_Parser' 'SmaCC_CPP_Parser' 'SmaCC_CSV_Parser' 'SmaCC_CSharp' 'SmaCC_C_Parser' 'SmaCC_Clojure' 'SmaCC_DOT' 'SmaCC_Debugging_Support' 'SmaCC_Delphi' 'SmaCC_Delphi_Forms' 'SmaCC_Development' 'SmaCC_Development_UI' 'SmaCC_Elixir_Parser' 'SmaCC_Generic_Smalltalk_Parser' 'SmaCC_Grammar_Parser' 'SmaCC_JSON_Parser' 'SmaCC_Java' 'SmaCC_Javascript_Parser' 'SmaCC_Line_Parser' 'SmaCC_Parse_Tree_Comparison' 'SmaCC_Python_Tests' 'SmaCC_Rewrite_Engine_Command_Line' 'SmaCC_Rewrite_Engine_Tests' 'SmaCC_Rewrite_Engine_UI' 'SmaCC_Rewrite_Server' 'SmaCC_Rewrite_Server_Worker' 'SmaCC_Ruby' 'SmaCC_Rust' 'SmaCC_Smalltalk_Parser' 'SmaCC_Source_Editing' 'SmaCC_Teradata_Parser' 'SmaCC_Tests' 'SmaCC_VB_NET_Parser');
				group: 'Runtime' with: #('SmaCC_Runtime');
				group: 'GLR Runtime' with: #('SmaCC_GLR_Runtime');
				group: 'Rewrites' with: #('SmaCC_Rewrite_Engine');
				group: 'C++' with: #('SmaCC_CPP_Parser');
				group: 'C#' with: #('SmaCC_CSharp');
				group: 'Delphi' with: #('SmaCC_Delphi' 'SmaCC_Delphi_Forms');
				group: 'Java' with: #('SmaCC_Java');
				group: 'Javascript' with: #('SmaCC_Javascript_Parser');
				group: 'Python' with: #('SmaCC_Python');
				group: 'Ruby' with: #('SmaCC_Ruby');
				group: 'withSource' with: #('SmaCC_Source_Editing');
				group: 'Tests' with: #('SmaCC_Rewrite_Engine_Tests' 'SmaCC_Tests');
				group: 'Development' with: #('SmaCC_Development_UI') ]
]
