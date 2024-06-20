Class {
	#name : #CSharpParser,
	#superclass : #SmaCCGLRParser,
	#classInstVars : [
		'keywords'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSharpParser class >> ambiguousTransitions [
^#(
#[ 0 14 0 113] 
#[ 0 14 0 141] 
#[ 0 14 0 153] 
#[ 0 14 0 161] 
#[ 0 14 0 165] 
#[ 0 14 0 181] 
#[ 0 14 0 197] 
#[ 0 14 0 201] 
#[ 0 14 0 213] 
#[ 0 14 0 233] 
#[ 0 14 0 241] 
#[ 0 14 0 253] 
#[ 0 18 1 1] 
#[ 0 14 1 9] 
#[ 0 14 1 13] 
#[ 0 14 0 18] 
#[ 0 14 1 25] 
#[ 0 14 1 53] 
#[ 0 14 1 57] 
#[ 0 14 0 18 1 65] 
#[ 0 14 1 69] 
#[ 0 14 1 81] 
#[ 0 14 1 101] 
#[ 0 74 0 86 0 90] 
#[ 0 142 5 201] 
#[ 1 22 1 26] 
#[ 1 58 1 62] 
#[ 1 66 1 70] 
#[ 1 74 6 157] 
#[ 1 78 6 173] 
#[ 1 114 6 181] 
#[ 1 134 6 193] 
#[ 1 134 6 197] 
#[ 1 134 6 201] 
#[ 1 134 6 213] 
#[ 1 138 6 217] 
#[ 1 254 7 33] 
#[ 2 6 7 37] 
#[ 2 214 3 53] 
#[ 2 218 2 222] 
#[ 0 153 2 214] 
#[ 0 161 2 214] 
#[ 0 165 2 214] 
#[ 0 181 2 214] 
#[ 0 197 2 214] 
#[ 0 201 2 214] 
#[ 0 213 2 214] 
#[ 0 233 2 214] 
#[ 0 241 2 214] 
#[ 0 253 2 214] 
#[ 1 9 2 214] 
#[ 1 13 2 214] 
#[ 1 25 2 214] 
#[ 1 53 2 214] 
#[ 1 57 2 214] 
#[ 1 69 2 214] 
#[ 1 81 2 214] 
#[ 2 214 5 53] 
#[ 2 226 5 185] 
#[ 1 22 1 26 6 145] 
#[ 2 242 7 217] 
#[ 2 246 7 225] 
#[ 2 246 7 229] 
#[ 2 254 7 241] 
#[ 2 254 7 245] 
#[ 2 254 7 249] 
#[ 2 254 7 253] 
#[ 2 254 8 1] 
#[ 2 254 8 5] 
#[ 3 2 8 9] 
#[ 3 2 8 13] 
#[ 3 6 8 17] 
#[ 3 10 8 21] 
#[ 3 14 8 25] 
#[ 3 18 8 29] 
#[ 3 22 8 33] 
#[ 3 22 8 37] 
#[ 3 26 8 41] 
#[ 3 118 3 122 3 126 3 130] 
#[ 3 134 8 141] 
#[ 3 134 8 149] 
#[ 3 134 8 153] 
#[ 3 134 8 157] 
#[ 3 134 8 161] 
#[ 0 74 0 86 0 90 3 122] 
#[ 3 134 8 165] 
#[ 3 134 8 169] 
#[ 3 134 8 173] 
#[ 0 90 3 118 3 126 3 134] 
#[ 3 134 8 181] 
#[ 3 134 8 185] 
#[ 3 146 8 189] 
#[ 3 134 8 193] 
#[ 3 118 3 122 3 126 3 130 3 150] 
#[ 3 158 9 77] 
#[ 3 226 3 230 3 234 3 238 3 242] 
#[ 3 226 3 238 3 242] 
#[ 3 226 3 230 3 238 3 242] 
#[ 3 246 3 250 3 254 4 2 4 6] 
#[ 3 246 4 2 4 6] 
#[ 3 246 3 250 4 2 4 6] 
#[ 4 10 4 14 4 18 4 22 4 26] 
#[ 4 10 4 22 4 26] 
#[ 4 10 4 14 4 22 4 26] 
#[ 4 30 4 34 4 38 4 42 4 46] 
#[ 4 30 4 42 4 46] 
#[ 4 30 4 34 4 42 4 46] 
#[ 4 50 4 54 4 58 4 62 4 66] 
#[ 4 50 4 62 4 66] 
#[ 4 50 4 54 4 62 4 66] 
#[ 4 82 4 86] 
#[ 4 82 4 90] 
#[ 4 82 4 94] 
#[ 4 82 4 86 4 90 4 94 4 98] 
#[ 4 82 4 86 4 94 4 98] 
#[ 4 82 4 98] 
#[ 4 146 4 150 4 154 4 158] 
#[ 4 146 4 154 4 158] 
#[ 1 22 6 145] 
#[ 1 22 1 26 2 230] 
#[ 2 234 10 73] 
#[ 1 66 1 70 4 234] 
#[ 1 130 11 69] 
#[ 5 2 11 117] 
#[ 5 30 5 34] 
#[ 5 54 11 237] 
#[ 5 70 11 245] 
#[ 5 194 11 237] 
#[ 2 214 7 189] 
#[ 6 46 6 50 6 54] 
#[ 3 222 6 46 6 50 6 54 6 58] 
#[ 6 46 6 50 6 54 6 58] 
#[ 3 222 6 46] 
#[ 6 50 6 54] 
#[ 3 222 6 46 6 54 6 58] 
#[ 6 66 6 70 6 74 6 78] 
#[ 6 66 6 70 6 78 6 82] 
#[ 6 66 6 70 6 74 6 78 6 82 6 86] 
#[ 6 66 6 70 6 78 6 82 6 86] 
#[ 6 66 6 78] 
#[ 6 70 6 74 6 78 6 82 13 101] 
#[ 6 66 6 70 6 74 6 78 6 82 6 86 6 90 7 57] 
#[ 6 66 6 70 6 74 6 78 6 86] 
#[ 6 94 6 98 6 102 6 106] 
#[ 3 226 6 94 6 102 6 106 6 110] 
#[ 6 94 6 102 6 106 6 110 6 118] 
#[ 3 226 3 230 3 234 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 114 6 118] 
#[ 3 226 3 230 3 234 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 114] 
#[ 6 94 6 102 6 106 6 110] 
#[ 3 226 3 238 3 242 6 106] 
#[ 3 242 6 98] 
#[ 3 242 6 94 6 102] 
#[ 3 226 6 98 6 102 6 106 6 110] 
#[ 3 226 3 230 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 118] 
#[ 6 94 6 98 6 102 6 106 6 118] 
#[ 6 122 6 126 6 130 6 134] 
#[ 3 246 6 122 6 126 6 130 6 138] 
#[ 6 122 6 126 6 130 6 138] 
#[ 3 246 3 250 3 254 4 2 4 6 6 122 6 126 6 130 6 134 6 138 6 142] 
#[ 3 246 4 2 4 6 6 122] 
#[ 4 6 6 134] 
#[ 4 6 6 126 6 130] 
#[ 3 246 6 122 6 130 6 134 6 138] 
#[ 3 246 3 250 4 2 4 6 6 122 6 126 6 130 6 134 6 138] 
#[ 6 146 6 150 6 154] 
#[ 6 146 6 150 6 154 6 158] 
#[ 6 150 6 154] 
#[ 6 146 6 150 6 158] 
#[ 6 162 6 166 6 170 6 174] 
#[ 4 10 6 162 6 170 6 174 6 178] 
#[ 6 162 6 170 6 174 6 178 6 186] 
#[ 4 10 4 14 4 18 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 182 6 186] 
#[ 4 10 4 14 4 18 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 182] 
#[ 6 162 6 170 6 174 6 178] 
#[ 4 10 4 22 4 26 6 174] 
#[ 4 26 6 166] 
#[ 4 26 6 162 6 170] 
#[ 4 10 6 162 6 166 6 174 6 178] 
#[ 4 10 4 14 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 186] 
#[ 6 162 6 166 6 170 6 174 6 186] 
#[ 6 190 6 194 6 198 6 202] 
#[ 4 30 6 190 6 194 6 202 6 206] 
#[ 6 190 6 194 6 202 6 206 6 214] 
#[ 4 30 4 34 4 38 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 210 6 214] 
#[ 4 30 4 34 4 38 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 210] 
#[ 6 190 6 194 6 202 6 206] 
#[ 4 30 4 42 4 46 6 190] 
#[ 4 46 6 198] 
#[ 4 46 6 194 6 202] 
#[ 4 30 6 190 6 194 6 198 6 206] 
#[ 4 30 4 34 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 214] 
#[ 6 190 6 194 6 198 6 202 6 214] 
#[ 6 218 6 222 6 226 6 230 6 234] 
#[ 4 50 6 222 6 230 6 234 6 238] 
#[ 6 222 6 226 6 230 6 234 6 238 6 246] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 230 6 234 6 238 6 242 6 246] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 230 6 234 6 238 6 242] 
#[ 6 222 6 230 6 234 6 238] 
#[ 4 50 4 62 4 66 6 234] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 226 6 230 6 234 6 238 6 242 6 246] 
#[ 4 66 6 218] 
#[ 4 66 6 222 6 230] 
#[ 4 50 6 218 6 222 6 226 6 234 6 238] 
#[ 4 50 4 54 4 62 4 66 6 218 6 222 6 226 6 230 6 234 6 238 6 246] 
#[ 6 218 6 222 6 226 6 230 6 234 6 246] 
#[ 4 70 6 250] 
#[ 6 254 7 2 7 6] 
#[ 4 74 6 254 7 2 7 6 7 10] 
#[ 6 254 7 2 7 6 7 10] 
#[ 4 74 7 2] 
#[ 6 254 7 6] 
#[ 4 74 7 2 7 6 7 10] 
#[ 7 14 7 18 7 22 7 26] 
#[ 4 78 7 14 7 22 7 30] 
#[ 7 14 7 18 7 22 7 30 13 109] 
#[ 4 78 7 14 7 22 7 26 7 30] 
#[ 7 14 7 22 7 30] 
#[ 4 78 7 14] 
#[ 4 78 7 14 7 18 7 22 7 26 7 30] 
#[ 4 78 7 14 7 18 7 22 7 26 7 30 7 57] 
#[ 7 14 7 18 7 22 7 26 7 34] 
#[ 4 82 7 38 7 42 7 46 7 50 7 54] 
#[ 4 82 4 86 7 42 7 50 7 54 7 58] 
#[ 4 82 7 58] 
#[ 4 82 7 38] 
#[ 4 82 7 38 7 42 7 50 7 54 7 58 7 62] 
#[ 4 82 4 86 4 90 4 94 4 98 7 42 7 46 7 50 7 54 7 58 7 62] 
#[ 4 82 4 86 4 90 4 94 4 98 7 42 7 46 7 50 7 54 7 58] 
#[ 4 82 7 42 7 50 7 54 7 58] 
#[ 4 82 4 86 4 94 4 98 7 54] 
#[ 4 82 4 86 4 90 4 94 4 98 7 38 7 42 7 46 7 50 7 54 7 58 7 62] 
#[ 4 82 4 98 7 46] 
#[ 4 82 4 98 7 42 7 50] 
#[ 4 82 4 86 7 38 7 42 7 46 7 54 7 58] 
#[ 4 82 7 46] 
#[ 4 82 7 38 7 42 7 46 7 50 7 54 7 62] 
#[ 7 66 7 70 7 74] 
#[ 7 66 7 70 7 74 7 78] 
#[ 7 66 7 70] 
#[ 7 70 7 74 7 78] 
#[ 7 150 7 154 7 158 7 162] 
#[ 4 146 7 158 7 162 7 166] 
#[ 7 154 7 158 7 162 7 166 7 170 15 33] 
#[ 4 146 4 150 4 154 4 158 7 150 7 158 7 162 7 166 7 170] 
#[ 4 146 4 150 4 154 4 158 7 150 7 158 7 162 7 166] 
#[ 7 158 7 162 7 166] 
#[ 4 146 4 150 4 154 4 158 7 150 7 154 7 158 7 162 7 166 7 170] 
#[ 4 158 7 150] 
#[ 4 158 7 158 7 162] 
#[ 4 146 7 150 7 154 7 162 7 166 15 37] 
#[ 7 150 7 154 7 158 7 162 7 170] 
#[ 7 186 9 77] 
#[ 1 22 1 26 8 166] 
#[ 1 22 8 166] 
#[ 2 234 6 161] 
#[ 3 74 7 121] 
#[ 7 217 9 34] 
#[ 7 217 9 38] 
#[ 7 225 9 42] 
#[ 7 229 9 42] 
#[ 7 225 9 46] 
#[ 7 229 9 46] 
#[ 2 234 9 66 17 157] 
#[ 3 74 17 157] 
#[ 7 241 9 94] 
#[ 7 245 9 94] 
#[ 7 249 9 94] 
#[ 7 253 9 94] 
#[ 8 1 9 94] 
#[ 8 5 9 94] 
#[ 7 241 9 98] 
#[ 7 245 9 98] 
#[ 7 249 9 98] 
#[ 7 253 9 98] 
#[ 8 1 9 98] 
#[ 8 5 9 98] 
#[ 8 9 9 102] 
#[ 8 13 9 102] 
#[ 8 17 9 106] 
#[ 8 21 9 110] 
#[ 8 25 9 114] 
#[ 8 29 9 122] 
#[ 9 162 17 225] 
#[ 4 82 7 42] 
#[ 4 82 7 50] 
#[ 4 82 7 62] 
#[ 5 70 18 189] 
#[ 0 105 10 230] 
#[ 0 109 10 230] 
#[ 3 53 10 230] 
#[ 0 117 10 230] 
#[ 0 121 10 230] 
#[ 0 125 10 230] 
#[ 0 129 10 230] 
#[ 0 133 10 230] 
#[ 3 57 10 230] 
#[ 0 145 10 230] 
#[ 0 149 10 230] 
#[ 0 153 10 230] 
#[ 0 161 10 230] 
#[ 0 165 10 230] 
#[ 3 61 10 230] 
#[ 0 181 10 230] 
#[ 0 185 10 230] 
#[ 0 189 10 230] 
#[ 0 197 10 230] 
#[ 0 201 10 230] 
#[ 0 205 10 230] 
#[ 0 213 10 230] 
#[ 3 65 10 230] 
#[ 0 233 10 230] 
#[ 0 241 10 230] 
#[ 0 245 10 230] 
#[ 0 249 10 230] 
#[ 0 253 10 230] 
#[ 1 9 10 230] 
#[ 1 13 10 230] 
#[ 1 17 10 230] 
#[ 1 21 10 230] 
#[ 1 25 10 230] 
#[ 1 33 10 230] 
#[ 3 69 10 230] 
#[ 1 41 10 230] 
#[ 1 49 10 230] 
#[ 1 53 10 230] 
#[ 1 57 10 230] 
#[ 3 73 10 230] 
#[ 1 69 10 230] 
#[ 1 77 10 230] 
#[ 1 81 10 230] 
#[ 1 97 10 230] 
#[ 3 77 10 230] 
#[ 1 105 10 230] 
#[ 1 109 10 230] 
#[ 1 113 10 230] 
#[ 1 117 10 230] 
#[ 0 22 10 230] 
#[ 1 121 10 230] 
#[ 0 26 10 230] 
#[ 1 125 10 230] 
#[ 1 129 10 230] 
#[ 6 90 11 166] 
#[ 6 145 11 182] 
#[ 6 90 11 222] 
#[ 12 46 21 209] 
#[ 11 53 12 70] 
#[ 12 94 22 29] 
#[ 13 30 13 34] 
#[ 13 42 13 46] 
#[ 11 69 13 242] 
#[ 14 50 24 81] 
#[ 14 50 24 85] 
#[ 14 50 24 89] 
#[ 2 238 4 170] 
#[ 4 170 6 241] 
#[ 4 170 6 245] 
#[ 4 170 6 249] 
#[ 4 170 6 253] 
#[ 4 170 7 1] 
#[ 4 170 7 5] 
#[ 4 170 7 9] 
#[ 4 170 7 13] 
#[ 4 170 7 17] 
#[ 4 170 7 21] 
#[ 4 170 7 25] 
#[ 2 234 17 157] 
#[ 0 185 15 42] 
#[ 3 134 28 1] 
#[ 3 134 28 5] 
#[ 3 134 28 9] 
#[ 3 134 28 13] 
#[ 3 134 28 17] 
#[ 3 134 28 21] 
#[ 3 118 3 126 16 226] 
#[ 1 70 11 186] 
#[ 6 66 6 70 6 74 6 78 6 82 6 86 7 57] 
#[ 3 226 3 230 3 234 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 114 6 118 17 74] 
#[ 3 226 3 230 3 234 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 114 17 74] 
#[ 3 226 3 230 3 238 3 242 6 94 6 98 6 102 6 106 6 110 6 118 17 74] 
#[ 3 246 3 250 3 254 4 2 4 6 6 122 6 126 6 130 6 134 6 138 6 142 17 78] 
#[ 3 246 3 250 4 2 4 6 6 122 6 126 6 130 6 134 6 138 17 78] 
#[ 4 10 4 14 4 18 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 182 6 186 17 82] 
#[ 4 10 4 14 4 18 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 182 17 82] 
#[ 4 10 4 14 4 22 4 26 6 162 6 166 6 170 6 174 6 178 6 186 17 82] 
#[ 4 30 4 34 4 38 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 210 6 214 17 86] 
#[ 4 30 4 34 4 38 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 210 17 86] 
#[ 4 30 4 34 4 42 4 46 6 190 6 194 6 198 6 202 6 206 6 214 17 86] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 230 6 234 6 238 6 242 6 246 17 90] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 230 6 234 6 238 6 242 17 90] 
#[ 4 50 4 54 4 58 4 62 4 66 6 218 6 222 6 226 6 230 6 234 6 238 6 242 6 246 17 90] 
#[ 4 50 4 54 4 62 4 66 6 218 6 222 6 226 6 230 6 234 6 238 6 246 17 90] 
#[ 4 82 4 86 4 90 4 94 4 98 7 42 7 46 7 50 7 54 7 58 7 62 17 94] 
#[ 4 82 4 86 4 90 4 94 4 98 7 42 7 46 7 50 7 54 7 58 17 94] 
#[ 4 82 4 86 4 90 4 94 4 98 7 38 7 42 7 46 7 50 7 54 7 58 7 62 17 94] 
#[ 7 154 7 158 7 162 7 166 7 170 28 141] 
#[ 6 94 6 102] 
#[ 6 126 6 130 17 118] 
#[ 6 126 6 130] 
#[ 6 162 6 170] 
#[ 6 194 6 202] 
#[ 6 222 6 230] 
#[ 4 82 7 42 7 50] 
#[ 7 158 7 162]
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> cacheId [
	^'2024-06-20T16:30:37.752978-05:00'
]

{ #category : #generated }
CSharpParser class >> definitionComment [
"%glr;
%id <Identifier> <gt> <gtgt> <rightBrace>;

%scopes default interpolatedString interpolatedVerbatimString;

%start compilation_unit namespace_member_declaration statement expression block class_member_declaration;

%ignore_variables commaToken _leftParen _rightParen semicolonToken;

%root Program;
%prefix CS;
%suffix Node;

%annotate_tokens;

%hierarchy TypeParameterList (
	VariantTypeParameterList
);
%hierarchy UsingDirective (
	UsingAliasDirective
	UsingNamespaceDirective
	UsingStaticDirective
);
%hierarchy Declaration (
	ClassDeclaration
	ConstantDeclaration
	ConstructorDeclaration
	DelegateDeclaration
	EnumDeclaration
	EventDeclaration
	FieldDeclaration
	FixedSizeBufferDeclaration
	IndexerDeclaration
	InterfaceDeclaration
	InterfaceEventDeclaration
	InterfaceIndexerDeclaration
	InterfaceMethodDeclaration
	InterfacePropertyDeclaration
	LocalConstantDeclaration
	LocalVariableDeclaration
	MethodDeclaration
	NamespaceDeclaration
	OperatorDeclaration
	PropertyDeclaration
	StaticConstructorDeclaration
	StructDeclaration
);
%hierarchy Statement (
	BlockStatement
	BreakStatement
	CheckedStatement
	ContinueStatement
	DeclarationStatement
	DoStatement
	EmptyStatement
	ExpressionStatement
	FixedStatement
	ForeachStatement
	ForStatement
	GotoStatement
	IfStatement
	LabeledStatement
	LocalFunctionDeclarationStatement
	LockStatement
	ReturnStatement
	SwitchStatement
	ThrowStatement
	TryStatement
	UncheckedStatement
	UnsafeStatement
	UsingStatement
	WhileStatement
	YieldStatement
);
%hierarchy Expression (
	AnonymousMethodExpression
	AnonymousObjectCreationExpression
	ArrayCreationExpression
	Assignment
	AwaitExpression
	BaseAccess
	BaseExpression
	BinaryExpression
	CastExpression
	CheckedExpression
	ConditionalExpression
	DeclarationExpression
	DeconstructionExpression
	DefaultValueExpression
	DelegateCreationExpression
	ElementAccess
	InterpolatedStringExpression
	InvocationExpression
	LambdaExpression
	LiteralExpression
	MemberAccess
	NamedEntity
	NameofExpression
	ObjectCreationExpression
	PrefixExpression
	PointerElementAccess
	PointerMemberAccess
	PostExpression
	QueryExpression
	RefExpression
	SimpleName
	SizeofExpression
	StackallocExpression
	ThisAccess
	ThrowExpression
	TupleExpression
	TypeExpression
	TypeofExpression
	UncheckedExpression
);

%hierarchy LiteralExpression (
	BooleanLiteralExpression
 	IntegerLiteralExpression
	RealLiteralExpression
	CharacterLiteralExpression
	StringLiteralExpression
	NullLiteralExpression
);

%hierarchy MemberAccess (
	NullConditionalMemberAccess
);
%hierarchy Type (
	ArrayType
	NullableType
	PointerType
	QualifiedAliasMember
	SimpleType
	TupleType
	TypeName
	VarType
	VoidType
);

default <gt>
	: \>
	;
default <gtgt>
	: <gt> <gt>
	;
default <rightBrace>
	: \}
	;
<LineTerminator>
	: \r
	| \n
	| \r\n
#	| \x85
#	| \x2028
#	| \x2029
	;
default <comment>
	: \/\/ [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<Identifier>
	: (<isLetter> | _ | <UnicodeCharacterEscapeSequence>) (<isLetter> | <isDigit> | _ | <UnicodeCharacterEscapeSequence>)*
	| \@ (<isLetter> | _ | <UnicodeCharacterEscapeSequence>) (<isLetter> | <isDigit> | _ | <UnicodeCharacterEscapeSequence>)*
	;
<IntegerSuffix>
	: [Uu]
	| [Ll]
	| [Uu][Ll]
	| [Ll][Uu]
	;
default <IntegerLiteral>
	: <decimalInteger> <IntegerSuffix>?
	| 0[Xx] (_* [0-9A-Fa-f])+ <IntegerSuffix>?
	| 0[bB] (_* [0-1])+ <IntegerSuffix>?
	;
<ExponentPart>
	: [Ee] [\+\-]? <decimalInteger>
	;
<RealSuffix>
	: [Ff]
	| [Dd]
	| [Mm]
	;
default <RealLiteral>
	: <decimalInteger>? \. <decimalInteger> <ExponentPart>? <RealSuffix>?
	| <decimalInteger> <ExponentPart> <RealSuffix>?
	| <decimalInteger> <RealSuffix>
	;
<SimpleEscapeSequence>
	: \\\'
	| \\\""
	| \\\\
	| \\0
	| \\a
	| \\b
	| \\f
	| \\n
	| \\r
	| \\t
	| \\v
	;
<HexadecimalEscapeSequence>
	: \\x [0-9A-Fa-f]{1,4}
	;
<UnicodeCharacterEscapeSequence>
	: \\u ([0-9A-Fa-f]{4,4})
	| \\U ([0-9A-Fa-f]{8,8})
	;
<Character>
	: [^\'\\\n]
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	;
default <CharacterLiteral>
	: \' <Character> \'
	;
<SingleRegularStringLiteralCharacter>
	: [^\""\\\n\r\x85\x2028\x2029]
	;
<RegularStringLiteralCharacter>
	: <SingleRegularStringLiteralCharacter>
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	;
<RegularStringLiteral>
	: \"" <RegularStringLiteralCharacter>* \""
	;
<InterpolatedSingleRegularStringLiteralCharacter>
	: [^\""\\\n\{]
	;
<InterpolatedRegularStringLiteralCharacter>
	: <InterpolatedSingleRegularStringLiteralCharacter>
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	| \{ \{
	;
default <InterpolatedRegularStringWhole>
	: \$\"" <InterpolatedRegularStringLiteralCharacter>* \""
	;
default <InterpolatedRegularStringStart>
	: \$\"" <InterpolatedRegularStringLiteralCharacter>* \{ 
	;
interpolatedString <InterpolatedRegularStringEnd>
	: \} <InterpolatedRegularStringLiteralCharacter>* \""
	;
interpolatedString <InterpolatedRegularStringMid>
	: \} <InterpolatedRegularStringLiteralCharacter>* \{
	;
<VerbatimStringLiteralCharacter>
	: [^\""]
	| \""\""
	;
<VerbatimStringLiteral>
	: \@\"" <VerbatimStringLiteralCharacter>* \""
	;
<InterpolatedVerbatimStringLiteralCharacter>
	: [^\""\{]
	| \""\""
	| \{ \{
	;
default <InterpolatedVerbatimStringLiteral>
	: \$\@\"" <InterpolatedVerbatimStringLiteralCharacter>* \""
	;
default <InterpolatedVerbatimStringStart>
	: (\$\@ | \@\$) \"" <InterpolatedVerbatimStringLiteralCharacter>* \{
	;
interpolatedVerbatimString <InterpolatedVerbatimStringEnd>
	: \} <InterpolatedVerbatimStringLiteralCharacter>* \""
	;
interpolatedVerbatimString <InterpolatedVerbatimStringMid>
	: \} <InterpolatedVerbatimStringLiteralCharacter>* \{
	;
default <StringLiteral>
	: <RegularStringLiteral>
	| <VerbatimStringLiteral>
	;
default <NullLiteral>
	: null
	;
default <whitespace>
	: (\s|\xA0)+
	;
default <preprocessorDirective>
	: \# [^\r\n]*
	;


<patternToken>
	: (\`  [^\`]* \`)+
	;
<decimalInteger>
	: \d (_* \d)*
	;

# B.2

# B.2.6 Namespaces
compilation_unit
	: _extern_alias_directives _using_directives _global_attributes _namespace_member_declarations {{}}
	;
namespace_declaration
	: ""namespace"" qualified_identifier 'identifier' namespace_body _semicolon {{}}
	;
qualified_identifier
	: <Identifier> 'name' {{}}
	| qualified_identifier ""."" <Identifier> 'name' {{}}
	;
namespace_body
	: ""{"" _extern_alias_directives _using_directives _namespace_member_declarations <rightBrace>
	;
_extern_alias_directives
	:
	| extern_alias_directives
	;
extern_alias_directives
	: extern_alias_directive 'directive'
	| extern_alias_directives extern_alias_directive 'directive'
	;
extern_alias_directive
	: ""extern"" ""alias"" <Identifier> "";"" {{}}
	;
_using_directives
	:
	| using_directives
	;
using_directives
	: using_directive 'directive'
	| using_directives using_directive 'directive'
	;
using_directive
	: using_alias_directive
	| using_namespace_directive
	| using_static_directive
	;
using_alias_directive
	: ""using"" <Identifier> 'name' ""="" namespace_or_type_name 'namespace' "";"" {{}}
	;
using_namespace_directive
	: ""using"" namespace_name 'namespace' "";"" {{}}
	;
using_static_directive
	: ""using"" ""static"" type_name 'namespace' "";"" {{}}
	;
_namespace_member_declarations
	: 
	| namespace_member_declarations
	;
namespace_member_declarations
	: namespace_member_declaration 'declaration'
	| namespace_member_declarations namespace_member_declaration 'declaration'
	;
namespace_member_declaration
	: namespace_declaration
	| type_declaration
	;
type_declaration
	: class_declaration
	| struct_declaration
	| interface_declaration
	| enum_declaration
	| delegate_declaration
	;
qualified_alias_member
	: <Identifier> 'global' ""::"" <Identifier> 'name' _type_argument_list 'typeArguments' {{}}
	;

# B.2.1
namespace_name
	: namespace_or_type_name
	;
type_name
	: namespace_or_type_name
	;
namespace_or_type_name
	: <Identifier> 'name' _type_argument_list 'typeArguments' {{TypeName}}
	| namespace_or_type_name 'namespace' ""."" <Identifier> 'name' _type_argument_list 'typeArguments' {{TypeName}}
	| qualified_alias_member 
	;

# B.2.2
_type
	:
	| type 'type'
	;
type
	: value_type
	| reference_type
	| type_parameter
	;
value_type
	: non_nullable_value_type
	| nullable_value_type
	;
nullable_value_type
	: non_nullable_value_type 'type' ""?"" {{NullableType}}
	;
struct_type
	: type_name
	| simple_type
	| tuple_type
	;
tuple_type
	: ""("" 'leftParen' tuple_type_element 'element' ("","" tuple_type_element 'element')+ "")"" 'rightParen' {{}}
	;
tuple_type_element
	: type 'type' <Identifier> 'name'? {{}}
	;
simple_type
	: numeric_type 'token' {{}}
	| ""bool"" 'token' {{}}
	;
numeric_type
	: integral_type
	| floating_point_type
	| ""decimal""
	;
integral_type
	: ""sbyte""
	| ""byte""
	| ""short""
	| ""ushort""
	| ""int""
	| ""uint""
	| ""long""
	| ""ulong""
	| ""char""
	;
floating_point_type
	: ""float""
	| ""double""
	;
non_nullable_value_type
	: struct_type
#	| enum_type	# handled by struct_type
	;
enum_type
	: type_name
	;
reference_type
	: class_type
#	| interface_type	## handled by class_type
	| array_type
#	| delegate_type	## handled by class_type
	| ""dynamic"" 'token' {{SimpleType}}
	;
class_type
	: type_name
	| ""object"" 'token' {{SimpleType}}
	| ""string"" 'token' {{SimpleType}}
	;
interface_type
	: type_name
	;
array_type
	: non_array_type 'type' rank_specifiers {{}}
	;
non_array_type
	: value_type
	| class_type
#	| interface_type	## handled by class_type
#	| delegate_type	## handled by class_type
	| ""dynamic"" 'token' {{SimpleType}}
	| type_parameter
	| pointer_type	# unsafe
	;
_rank_specifiers
	: 
	| rank_specifiers
	;
rank_specifiers
	: rank_specifier 'rankSpecifier'
	| rank_specifiers rank_specifier 'rankSpecifier'
	;
rank_specifier
	: ""["" _dim_separators ""]"" {{}}
	;
_dim_separators
	: 
	| dim_separators
	;
dim_separators
	: "",""
	| dim_separators "",""
	;
delegate_type
	: type_name
	;
type_argument_list
	: ""<"" type_arguments <gt> 'greaterThanToken' {{}}
	;
type_arguments
	: type_argument 'type'
	| type_arguments "","" type_argument 'type'
	;
type_argument
	: type
	;

# B.2.3 Variables
variable_reference
	: expression
	;
pattern
	: declaration_pattern
	| constant_pattern
	| var_pattern
	;
var_pattern
	: VarType 'type' designation {{DeclarationExpression}}
	;
designation
	: simple_designation
	;
constant_pattern
	: constant_expression
	;
declaration_pattern
	: type 'type' simple_designation {{DeclarationExpression}}
	;
simple_designation
	: single_variable_designation
	;
single_variable_designation
	: <Identifier> 'name'
	;

# B.2.4 Expressions
_argument_list
	:
	| argument_list
	;

# B.2.4
argument_list
	: argument 'argument'
	| argument_list "","" argument 'argument'
	;
argument
	: _argument_name argument_value {{}}
	;
_argument_name
	:
	| argument_name
	;
argument_name
	: <Identifier> 'identifier' "":""
	;
argument_value
	: expression 'expression' 
	| ""in"" variable_reference 'expression' 
	| ""ref"" variable_reference 'expression' 
	| ""out"" variable_reference 'expression'
	;
primary_expression
	: primary_no_array_creation_expression
	| array_creation_expression
	;
primary_no_array_creation_expression
	: literal 
	| interpolated_string_expression
	| simple_name 
	| parenthesized_expression 
	| tuple_expression
	| member_access 
	| null_conditional_member_access
	| invocation_expression 
	| element_access 
	| null_conditional_element_access
	| this_access 
	| base_access 
	| post_increment_expression 
	| post_decrement_expression 
	| object_creation_expression 
	| delegate_creation_expression 
	| anonymous_object_creation_expression 
	| typeof_expression 
	| sizeof_expression
	| checked_expression 
	| unchecked_expression 
	| default_value_expression 
	| nameof_expression
	| anonymous_method_expression 
	| stackalloc_expression
	;
interpolated_string_expression
	: interpolated_regular_string {{}}
	| interpolated_verbatim_string {{}}
	;
interpolated_regular_string
	: <InterpolatedRegularStringWhole> 'stringPart'
	| StartInterpolatedString <InterpolatedRegularStringStart> 'stringPart' interpolated_regular_string_body <InterpolatedRegularStringEnd> 'stringPart'
	;
StartInterpolatedString
	: [#interpolatedString]
	;
interpolated_regular_string_body
	: interpolation 'interpolation'
	| interpolated_regular_string_body <InterpolatedRegularStringMid> 'stringPart' interpolation 'interpolation'
	;
interpolation
	: expression 'expression' ("","" constant_expression 'constant')? Regular_Interpolation_Format? {{}}
	;
Regular_Interpolation_Format
	: ScanFormat 'format' "":"" 'colon' 
	;
ScanFormat
	: [self scanFormat]
	;
interpolated_verbatim_string
	: <InterpolatedVerbatimStringLiteral> 'stringPart'
	| StartInterpolatedVerbatimString <InterpolatedVerbatimStringStart> 'stringPart' interpolated_verbatim_string_body <InterpolatedVerbatimStringEnd> 'stringPart'
	;
StartInterpolatedVerbatimString
	: [#interpolatedVerbatimString]
	;
interpolated_verbatim_string_body
	: interpolation 'interpolation'
	| interpolated_verbatim_string_body <InterpolatedVerbatimStringMid> 'stringPart' interpolation 'interpolation'
	;
simple_name
	: <Identifier> _type_argument_list 'typeArguments' {{}}
	;
_type_argument_list
	: 
	| type_argument_list
	;
parenthesized_expression
	: ""("" '_leftParen' expression "")"" '_rightParen' {{Expression}}
	;
tuple_expression
	: ""("" 'leftParen' tuple_element 'element' ("","" tuple_element 'element')+ "")"" 'rightParen' {{}}
	;
tuple_element
	: (<Identifier> 'name' "":"" 'colon')? expression 'value' {{}}
	;
deconstruction_expression
	: VarType 'type' deconstruction_tuple {{}}
	;
deconstruction_tuple
	: ""("" 'leftParen' deconstruction_element 'element' ("","" deconstruction_element 'element')+ "")"" 'rightParen' {{}}
	;
deconstruction_element
	: deconstruction_tuple
	| <Identifier> 'name' {{VariableDeclarator}}
	;
member_access
	: primary_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| predefined_type_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| qualified_alias_member_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	;
qualified_alias_member_expression
	: qualified_alias_member 'type' {{TypeExpression}}
	;
predefined_type_expression
	: predefined_type 'type' {{TypeExpression}}
	;
predefined_type
	: ""bool"" 'token' {{SimpleType}}
	| ""byte"" 'token' {{SimpleType}}
	| ""char"" 'token' {{SimpleType}}
	| ""decimal"" 'token' {{SimpleType}}
	| ""double"" 'token' {{SimpleType}}
	| ""float"" 'token' {{SimpleType}}
	| ""int"" 'token' {{SimpleType}}
	| ""long"" 'token' {{SimpleType}}
	| ""object"" 'token' {{SimpleType}}
	| ""sbyte"" 'token' {{SimpleType}}
	| ""short"" 'token' {{SimpleType}}
	| ""string"" 'token' {{SimpleType}}
	| ""uint"" 'token' {{SimpleType}}
	| ""ulong"" 'token' {{SimpleType}}
	| ""ushort"" 'token' {{SimpleType}}
	;
invocation_expression
	: primary_expression 'expression' ""("" _argument_list "")"" {{}}
	;
element_access
	: primary_no_array_creation_expression 'baseExpression' ""["" expression_list ""]"" {{}}
	;
expression_list
	: expression 'expression'
	| expression_list	"","" expression 'expression'
	;
this_access
	: ""this"" {{}}
	;
base_access
	: ""base"" ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| ""base"" ""["" expression_list ""]"" {{}}
	;
post_increment_expression
	: primary_expression 'expression' ""++"" 'operator' {{PostExpression}}
	;
post_decrement_expression
	: primary_expression 'expression' ""--"" 'operator' {{PostExpression}}
	;
object_creation_expression
	: ""new"" type 'type' ""("" _argument_list "")"" _object_or_collection_initializer 'initializer' {{}}
	| ""new"" type 'type' object_or_collection_initializer 'initializer' {{}}
	;
_object_or_collection_initializer
	:
	| object_or_collection_initializer
	;
object_or_collection_initializer
	: object_initializer
	| collection_initializer
	;
object_initializer
	: ""{"" _member_initializer_list <rightBrace> {{}}
	| ""{"" member_initializer_list "","" <rightBrace> {{}}
	;
_member_initializer_list
	: 
	| member_initializer_list
	;
member_initializer_list
	: member_initializer 'initializer'
	| member_initializer_list "","" member_initializer 'initializer'
	;
member_initializer
	: initializer_target ""="" initializer_value 'value' {{}}
	;
initializer_target
	: <Identifier> 'identifier'
	| ""["" argument_list ""]""
	;
initializer_value
	: expression
	| object_or_collection_initializer
	;
collection_initializer
	: ""{"" element_initializer_list <rightBrace> {{}}
	| ""{"" element_initializer_list "","" <rightBrace> {{}}
	;
element_initializer_list
	: element_initializer 'initializer'
	| element_initializer_list "","" element_initializer 'initializer'
	;
element_initializer
	: non_assignment_expression 'expression' {{}}
	| ""{"" expression_list <rightBrace> {{}}
	;
array_creation_expression
	: ""new"" non_array_type 'type' ""["" expression_list ""]"" _rank_specifiers _array_initializer 'arrayInitializer' {{}}
	| ""new"" array_type 'type' array_initializer 'arrayInitializer' {{}}
	| ""new"" rank_specifier 'rankSpecifier' array_initializer 'arrayInitializer' {{}}
	;
delegate_creation_expression
	: ""new"" delegate_type 'type' ""("" expression 'expression' "")"" {{}}
	;
anonymous_object_creation_expression
	: ""new"" anonymous_object_initializer {{}}
	;
anonymous_object_initializer
	: ""{"" _member_declarator_list <rightBrace>
	| ""{"" member_declarator_list "","" <rightBrace>
	;
_member_declarator_list
	: 
	| member_declarator_list
	;
member_declarator_list
	: member_declarator 'declarator'
	| member_declarator_list "","" member_declarator 'declarator'
	;
member_declarator
	: simple_name 'name' {{}}
	| member_access 'access' {{}}
	| null_conditional_projection_initializer 'access' {{}}
	| base_access 'access' {{}}
	| <Identifier> ""="" expression 'value' {{}}
	;
typeof_expression
	: ""typeof"" ""("" type 'type' "")"" {{}}
	| ""typeof"" ""("" unbound_type_name 'type' "")"" {{}}
	| ""typeof"" ""("" void_type 'type' "")"" {{}}
	;
unbound_type_name
	: <Identifier> _generic_dimension_specifier {{}}
	| <Identifier> ""::"" <Identifier> _generic_dimension_specifier {{}}
	| unbound_type_name 'type' ""."" <Identifier> _generic_dimension_specifier {{}}
	;
_generic_dimension_specifier
	: 
	| generic_dimension_specifier
	;
generic_dimension_specifier
	: ""<"" _commas <gt>
	;
_commas
	: 
	| commas
	;
commas
	: "","" 'comma'
	| commas "","" 'comma'
	;
checked_expression
	: ""checked"" ""("" expression 'expression' "")"" {{}}
	;
unchecked_expression
	: ""unchecked"" ""("" expression 'expression' "")"" {{}}
	;
default_value_expression
	: ""default"" (""("" type 'type' "")"")? {{}}
	;
stackalloc_expression
	: ""stackalloc"" unmanaged_type 'type' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' {{}}
	| ""stackalloc"" unmanaged_type 'type' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' stackalloc_initializer {{}}
	;
nameof_expression
	: ""nameof"" ""("" named_entity 'name' "")"" {{}}
	;
named_entity
	: named_entity_target 'target' (""."" <Identifier> _type_argument_list 'typeArguments')* {{}}
	;
named_entity_target 
	: simple_name
	| ""this"" {{ThisAccess}}
	| ""base"" {{BaseExpression}}
	| predefined_type_expression
	| qualified_alias_member_expression
	;
unary_expression
	: primary_expression
	| ""+"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""-"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""!"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""~"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| pre_increment_expression
	| pre_decrement_expression
	| cast_expression
	| await_expression
	;
null_conditional_member_access
	: primary_expression 'expression' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' dependent_access 'access'* {{}}
	;
dependent_access
	: ""."" <Identifier> 'name' _type_argument_list 'typeArguments' {{MemberAccess}}
	| ""["" 'leftBracket' argument_list ""]"" 'rightBracket' {{ElementAccess}}
	| ""("" 'leftParen' _argument_list "")"" 'rightParen' {{InvocationAccess}}
	;
null_conditional_projection_initializer
	: primary_expression 'expression' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' {{NullConditionalMemberAccess}}
	;
null_conditional_invocation_expression
	: null_conditional_member_access 'expression' ""("" _argument_list "")"" {{InvocationExpression}}
	| null_conditional_element_access 'expression' ""("" _argument_list "")"" {{InvocationExpression}}
	;
null_conditional_element_access
	: primary_no_array_creation_expression 'baseExpression' ""?"" ""["" expression_list ""]"" {{ElementAccess}}
	;
pre_increment_expression
	: ""++"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
pre_decrement_expression
	: ""--"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
cast_expression
	: ""("" type 'type' "")"" unary_expression 'expression' {{}}
	;
await_expression
	: ""await"" unary_expression 'expression' {{}}
	;
multiplicative_expression
	: unary_expression
	| multiplicative_expression 'left' ""*"" 'operator' unary_expression 'right' {{BinaryExpression}}
	| multiplicative_expression 'left' ""/"" 'operator' unary_expression 'right' {{BinaryExpression}}
	| multiplicative_expression 'left' ""%"" 'operator' unary_expression 'right' {{BinaryExpression}}
	;
additive_expression
	: multiplicative_expression
	| additive_expression 'left' ""+"" 'operator' multiplicative_expression 'right' {{BinaryExpression}}
	| additive_expression 'left' ""-"" 'operator' multiplicative_expression 'right' {{BinaryExpression}}
	;
shift_expression
	: additive_expression
	| shift_expression 'left' ""<<"" 'operator' additive_expression 'right' {{BinaryExpression}}
	| shift_expression 'left' <gtgt> 'operator' additive_expression 'right' {{BinaryExpression}}
	;
relational_expression
	: shift_expression
	| relational_expression 'left' ""<"" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' <gt> 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' ""<="" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' "">="" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' ""is"" 'operator' type 'right' {{BinaryExpression}}
	| relational_expression 'left' ""is"" 'operator' pattern 'right' {{BinaryExpression}}
	| relational_expression 'left' ""as"" 'operator' type 'right' {{BinaryExpression}}
	;
equality_expression
	: relational_expression
	| equality_expression 'left' ""=="" 'operator' relational_expression 'right' {{BinaryExpression}}
	| equality_expression 'left' ""!="" 'operator' relational_expression 'right' {{BinaryExpression}}
	;
and_expression
	: equality_expression
	| and_expression 'left' ""&"" 'operator' equality_expression 'right' {{BinaryExpression}}
	;
exclusive_or_expression
	: and_expression
	| exclusive_or_expression 'left' ""^"" 'operator' and_expression 'right' {{BinaryExpression}}
	;
inclusive_or_expression
	: exclusive_or_expression
	| inclusive_or_expression 'left' ""|"" 'operator' exclusive_or_expression 'right' {{BinaryExpression}}
	;
conditional_and_expression
	: inclusive_or_expression
	| conditional_and_expression 'left' ""&&"" 'operator' inclusive_or_expression 'right' {{BinaryExpression}}
	;
conditional_or_expression
	: conditional_and_expression
	| conditional_or_expression 'left' ""||"" 'operator' conditional_and_expression 'right' {{BinaryExpression}}
	;
null_coalescing_expression
	: conditional_or_expression
	| conditional_or_expression 'left' ""??"" 'operator' null_coalescing_expression 'right' {{BinaryExpression}}
	| throw_expression
	;
throw_expression
	: ""throw"" null_coalescing_expression 'expression' {{}}
	;
declaration_expression
	: local_variable_type 'type' <Identifier> 'name' {{}}
	;
conditional_expression
	: null_coalescing_expression
	| null_coalescing_expression 'booleanExpression' ""?"" expression 'trueExpression' "":"" expression 'falseExpression' {{}}
	| null_coalescing_expression 'booleanExpression' ""?"" RefExpression 'trueExpression' "":"" RefExpression 'falseExpression' {{}}
	;
lambda_expression
	: ""async""? anonymous_function_signature 'signature' ""=>"" anonymous_function_body 'body' {{}}
	;
anonymous_method_expression
	: ""async""? ""delegate"" _explicit_anonymous_function_signature 'signature' block 'block' {{}}
	;
anonymous_function_signature
	: explicit_anonymous_function_signature
	| implicit_anonymous_function_signature
	;
_explicit_anonymous_function_signature
	:
	| explicit_anonymous_function_signature
	;
explicit_anonymous_function_signature
	: ""("" _explicit_anonymous_function_paramenter_list "")"" {{}}
	;
_explicit_anonymous_function_paramenter_list
	: 
	| explicit_anonymous_function_paramenter_list
	;
explicit_anonymous_function_paramenter_list
	: explicit_anonymous_function_paramenter 'parameter'
	| explicit_anonymous_function_paramenter_list "","" explicit_anonymous_function_paramenter 'parameter'
	;
explicit_anonymous_function_paramenter
	: _anonymous_function_parameter_modifier type 'type' <Identifier> 'name' {{AnonymousFunctionParameter}}
	;
_anonymous_function_parameter_modifier
	: 
	| anonymous_function_parameter_modifier 'modifier'
	;
anonymous_function_parameter_modifier
	: ""ref""
	| ""out""
	| ""in""
	;
implicit_anonymous_function_signature
	: ""("" _implicit_anonymous_function_parameter_list "")"" {{}}
	| implicit_anonymous_function_parameter 'name' {{}}
	;
_implicit_anonymous_function_parameter_list
	: 
	| implicit_anonymous_function_parameter_list
	;
implicit_anonymous_function_parameter_list
	: implicit_anonymous_function_parameter 'name'
	| implicit_anonymous_function_parameter_list "","" implicit_anonymous_function_parameter 'name'
	;
implicit_anonymous_function_parameter
	: <Identifier>
	;
anonymous_function_body
	: null_conditional_invocation_expression
	| expression
	| RefExpression 
	| block
	;
RefExpression
	: ""ref"" variable_reference 'expression' {{}}
	;
query_expression
	: from_clause query_body {{}}
	;
from_clause
	: ""from"" _type <Identifier> ""in"" expression 'expression'
	;
query_body
	: _query_body_clauses select_or_group_clause _query_continuation
	;
_query_body_clauses
	: 
	| query_body_clauses
	;
query_body_clauses
	: query_body_clause
	| query_body_clauses query_body_clause
	;
query_body_clause
	: from_clause
	| let_clause
	| where_clause
	| join_clause
	| join_into_clause
	| orderby_clause
	;
let_clause
	: ""let"" <Identifier> ""="" expression 'expression'
	;
where_clause
	: ""where"" boolean_expression 'expression'
	;
join_clause
	: ""join"" _type <Identifier> ""in"" expression 'joinInExpression'""on"" expression 'joinOnExpression' ""equals"" expression 'joinEqualsExpression'
	;
join_into_clause
	: ""join"" _type <Identifier> ""in"" expression 'joinInExpression' ""on"" expression 'joinOnExpression' ""equals"" expression 'joinEqualsExpression' ""into"" <Identifier>
	;
orderby_clause
	: ""orderby"" orderings
	;
orderings
	: ordering
	| orderings "","" ordering
	;
ordering
	: expression 'expression' _ordering_direction
	;
_ordering_direction
	: 
	| ordering_direction
	;
ordering_direction
	: ""ascending""
	| ""descending""
	;
select_or_group_clause
	: select_clause
	| group_clause
	;
select_clause
	: ""select"" expression 'expression'
	;
group_clause
	: ""group"" expression 'groupExpression' ""by"" expression 'groupByExpression'
	;
_query_continuation
	: 
	| query_continuation
	;
query_continuation
	: ""into"" <Identifier> query_body
	;
assignment
	: unary_expression 'lhs' assignment_operator expression 'rhs' {{}}
	;
assignment_operator
	: ""="" 'operator' ""ref""?
	| ""+="" 'operator'
	| ""-="" 'operator'
	| ""*="" 'operator'
	| ""/="" 'operator'
	| ""%="" 'operator'
	| ""&="" 'operator'
	| ""|="" 'operator'
	| ""^="" 'operator'
	| ""<<="" 'operator'
	| "">>="" 'operator'
	;
_expression
	:
	| expression 'expression'
	;
expression
	: non_assignment_expression 
	| assignment 
	;
non_assignment_expression
	: declaration_expression
	| conditional_expression 
	| lambda_expression 
	| query_expression 
	;
constant_expression
	: expression
	;
boolean_expression
	: expression
	;

# B.2.5 Statements
statement
	: labeled_statement
	| declaration_statement
	| embedded_statement
	;
embedded_statement
	: block
	| empty_statement
	| expression_statement
	| selection_statement
	| iteration_statement
	| jump_statement
	| try_statement
	| checked_statement
	| unchecked_statement
	| lock_statement
	| using_statement
	| yield_statement
	;
block
	: ""{"" _statement_list <rightBrace> {{BlockStatement}}
	;
_statement_list
	: 
	| statement_list
	;
statement_list
	: statement 'statement'
	| statement_list statement 'statement'
	;
empty_statement
	: "";"" {{}}
	;
labeled_statement
	: <Identifier> "":"" statement 'statement' {{}}
	;
declaration_statement
	: local_variable_declaration 'declaration' "";"" {{}}
	| local_constant_declaration 'declaration' "";"" {{}}
	| local_function_declaration
	;
local_function_declaration
	: LocalFunctionHeader 'header'
      local_function_body 'body' {{LocalFunctionDeclarationStatement}}
    | RefLocalFunctionHeader 'header' ref_local_function_body 'body' {{LocalFunctionDeclarationStatement}}
	;
RefLocalFunctionHeader
	: ref_local_function_modifier 'modifier'* ref_kind ref_return_type 'returnType'
      local_function_header
	;
LocalFunctionHeader
	: local_function_modifier 'modifier'* return_type 'returnType' local_function_header {{MethodHeader}}
	;
local_function_header
	: <Identifier> 'name' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' {{MethodHeader}}
	| <Identifier> 'name' type_parameter_list 'typeParameters' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses {{MethodHeader}}
	;
local_function_modifier
	: ref_local_function_modifier
	| ""async""
	;
ref_local_function_modifier
	: ""static""
	| unsafe_modifier
	;
local_function_body
	: block 'block' {{MethodBody}}
	| ""=>"" null_conditional_invocation_expression 'expression' "";"" {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	;
ref_local_function_body
	: block 'block' {{MethodBody}}
	| ""=>"" ""ref"" variable_reference 'expression' "";"" 'semicolon' {{MethodBody}}
	;
local_variable_declaration
	: implicitly_typed_local_variable_declaration {{}}
    | explicitly_typed_local_variable_declaration
    | ref_local_variable_declaration {{}}
	;
implicitly_typed_local_variable_declaration
	: VarType 'type' implicitly_typed_local_variable_declarator 'declarator'
    | ref_kind VarType 'type' ref_local_variable_declarator 'declarator'
	;
ref_local_variable_declarator
	: <Identifier> 'name' ""="" ""ref"" variable_reference 'expression' {{LocalVariableDeclarator}}
	;
ref_kind
	: ""ref""
	| ""ref"" ""readonly""
	;
implicitly_typed_local_variable_declarator
	: <Identifier> 'name' ""="" expression 'expression' {{LocalVariableDeclarator}}
	;
explicitly_typed_local_variable_declaration
	: type 'type' explicitly_typed_local_variable_declarators {{LocalVariableDeclarator}}
	;
explicitly_typed_local_variable_declarators
	: explicitly_typed_local_variable_declarator 'declarator' ("","" explicitly_typed_local_variable_declarator 'declarator')*
	;
explicitly_typed_local_variable_declarator
	: <Identifier> 'name' (""="" local_variable_initializer 'expression')? {{LocalVariableDeclarator}}
	;
ref_local_variable_declaration
	: ref_kind type 'type' ref_local_variable_declarators
	;
ref_local_variable_declarators
	: ref_local_variable_declarator 'declarator' ("","" ref_local_variable_declarator 'declarator')*
	;
local_variable_type
	: type
	| VarType
	;
VarType
	: ""var"" {{}}
	;
local_variable_declarator
#	: <Identifier> 'name' {{}}
#	| <Identifier> 'name' ""="" local_variable_initializer 'expression' {{}}
	: _local_variable_declarator_name 'name' {{}}
	| _local_variable_declarator_name 'name' ""="" local_variable_initializer 'expression' {{}}
	;
_local_variable_declarator_name	# Here to create a parse node
	: <Identifier> {{SimpleName}}
	;
local_variable_initializer
	: expression
	| array_initializer
	;
local_constant_declaration
	: ""const"" type 'type' const_declarators {{}}
	;
const_declarators
	: const_declarator 'declarator' 
	| const_declarators "","" const_declarator 'declarator'
	;
const_declarator
	: <Identifier> 'name' ""="" constant_expression 'expression' {{ConstantDeclarator}}
	;
expression_statement
	: statement_expression 'expression' "";"" {{}}
	;
statement_expression
	: null_conditional_invocation_expression
	| invocation_expression
	| object_creation_expression
	| assignment
	| post_increment_expression
	| post_decrement_expression
	| pre_increment_expression
	| pre_decrement_expression
	| await_expression
	;
selection_statement
	: if_statement
	| switch_statement
	;
if_statement
	: ""if"" ""("" boolean_expression 'expression' "")"" embedded_statement 'thenStatement' {{}}
	| ""if"" ""("" boolean_expression 'expression' "")"" embedded_statement 'thenStatement' ""else"" embedded_statement 'elseStatement' {{}}
	;
switch_statement
	: ""switch"" ""("" expression 'expression' "")"" switch_block {{}}
	;
switch_block
	: ""{"" _switch_sections <rightBrace>
	;
_switch_sections
	:
	| switch_sections
	;
switch_sections
	: switch_section 'section'
	| switch_sections switch_section 'section'
	;
switch_section
	: switch_labels statement_list {{}}
	;
switch_labels
	: switch_label 'label'
	| switch_labels switch_label 'label'
	;
switch_label
	: ""case"" pattern 'expression' case_guard? "":"" {{}}
	| ""default"" "":"" {{}}
	;
case_guard
	: ""when"" expression 'whenExpression'
	;
iteration_statement
	: while_statement
	| do_statement
	| for_statement
	| foreach_statement
	;
while_statement
	: ""while"" ""("" boolean_expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
do_statement
	: ""do"" embedded_statement 'statement' ""while"" ""("" boolean_expression 'expression' "")"" "";"" {{}}
	;
for_statement
	: ""for"" ""("" _for_initializer "";"" _for_condition "";"" _for_iterator "")"" embedded_statement 'statement' {{}}
	;
_for_initializer
	: 
	| for_initializer 'initializer'
	;
for_initializer
	: local_variable_declaration
	| statement_expression_list {{StatementList}}
	;
_for_condition
	:
	| for_condition 'condition'
	;
for_condition
	: boolean_expression
	;
_for_iterator
	: 
	| for_iterator 'iterator'
	;
for_iterator
	: statement_expression_list {{StatementList}}
	;
statement_expression_list
	: statement_expression 'expression'
	| statement_expression_list "","" statement_expression 'expression'
	;
foreach_statement
	: ""foreach"" ""("" ref_kind? local_variable_type 'type' <Identifier> 'name' ""in"" expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
jump_statement
	: break_statement
	| continue_statement
	| goto_statement
	| return_statement
	| throw_statement
	;
break_statement
	: ""break"" "";"" {{}}
	;
continue_statement
	: ""continue"" "";"" {{}}
	;
goto_statement
	: ""goto"" <Identifier> "";"" {{}}
	| ""goto"" ""case"" constant_expression 'expression' "";"" {{}}
	| ""goto"" ""default"" "";"" {{}}
	;
return_statement
	: ""return"" _expression "";"" {{}}
	| ""return"" ""ref"" variable_reference 'expression' {{}}
	;
throw_statement
	: ""throw"" _expression "";"" {{}}
	;
try_statement
	: ""try"" block 'block' catch_clauses {{}}
	| ""try"" block 'block' finally_clause 'finally' {{}}
	| ""try"" block 'block' catch_clauses finally_clause 'finally' {{}}
	;
catch_clauses
	: specific_catch_clause 'clause'+
    | specific_catch_clause 'clause'* general_catch_clause 'clause'
	;
specific_catch_clause
	: ""catch"" exception_specifier _exception_filter block 'block' {{CatchClause}}
	| ""catch"" exception_filter 'filter' block 'block' {{CatchClause}}
	;
_exception_specifier
	:
	| exception_specifier
	;
exception_specifier
	: ""("" type 'type' _identifier "")""
	;
_exception_filter
	:
	| exception_filter 'filter'
	;
exception_filter
	: ""when"" ""("" boolean_expression 'expression' "")"" {{}}
	;
general_catch_clause
	: ""catch"" block 'block' {{CatchClause}}
	;
finally_clause
	: ""finally"" block 'block' {{}}
	;
checked_statement
	: ""checked"" block 'block' {{}}
	;
unchecked_statement
	: ""unchecked"" block 'block' {{}}
	;
lock_statement
	: ""lock"" ""("" expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
using_statement
	: ""using"" ""("" resource_acquisition 'expression' "")"" embedded_statement 'statement' {{}}
	;
resource_acquisition
	: local_variable_declaration
	| expression
	;
yield_statement
	: ""yield"" ""return"" expression 'expression' "";"" {{}}
	| ""yield"" ""break"" "";"" {{}}
	;


# B.2.7 Classes
class_declaration
	: _attributes _class_modifiers _partial ""class"" <Identifier> 'name' _type_parameter_list _class_base _type_parameter_constraints_clauses class_body _semicolon {{}}
	;
_class_modifiers
	:
	| class_modifiers
	;
class_modifiers
	: class_modifier 'modifier'
	| class_modifiers class_modifier 'modifier'
	;
class_modifier
	: ""new"" 
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""abstract""
	| ""sealed""
	| ""static""
	| unsafe_modifier
	;
_type_parameter_list
	: 
	| type_parameter_list 'typeParameters'
	;
type_parameter_list
	: ""<"" 'lessThan' type_parameters <gt> 'greaterThan' {{}}
	;
type_parameters
	: _attributes type_parameter 'parameter'
	| type_parameters "","" _attributes type_parameter 'parameter'
	;
type_parameter
	: <Identifier> 'name'  {{TypeName}}
	;
_class_base
	: 
	| class_base
	;
class_base
	: "":"" class_type 'supertype'
#	| "":"" interface_type_list	# handled by one below
	| "":"" class_type 'supertype' "","" interface_type_list
	;
interface_type_list
	: interface_type 'supertype'
	| interface_type_list "","" 'comma' interface_type 'supertype'
	;
_type_parameter_constraints_clauses
	: 
	| type_parameter_constraints_clauses
	;
type_parameter_constraints_clauses
	: type_parameter_constraints_clause 'constraintClause'
	| type_parameter_constraints_clauses type_parameter_constraints_clause 'constraintClause'
	;
type_parameter_constraints_clause
	: ""where"" 'whereToken' type_parameter 'parameter' "":"" 'colon' type_parameter_constraints {{}}
	;
type_parameter_constraints
	: primary_constraint  'constraint'
	| secondary_constraints
	| constructor_constraint 'constraint'
	| primary_constraint 'constraint' "","" secondary_constraints
	| primary_constraint 'constraint' "","" constructor_constraint 'constraint'
	| secondary_constraints "","" constructor_constraint 'constraint'
	| primary_constraint 'constraint' "","" secondary_constraints "","" constructor_constraint 'constraint'
	;
primary_constraint
	: class_type 'type' {{TypeConstraint}}
	| ""class"" {{}}
	| ""struct"" {{}}
	| ""unmanaged"" {{}}
	;
secondary_constraints
	: interface_type_constraint 'constraint'
	| type_parameter 'constraint'
	| secondary_constraints "","" interface_type_constraint 'constraint'
	| secondary_constraints "","" type_parameter 'constraint'
	;
## added Interface_type_constraint
interface_type_constraint
	: interface_type 'type' {{TypeConstraint}}
	;
constructor_constraint
	: ""new"" ""("" "")"" {{}}
	;
class_body
	: ""{"" _class_member_declarations <rightBrace>
	;
_class_member_declarations
	: 
	| class_member_declarations
	;
class_member_declarations
	: class_member_declaration 'declaration'
	| class_member_declarations class_member_declaration 'declaration'
	;
class_member_declaration
	: constant_declaration
	| field_declaration
	| method_declaration
	| property_declaration
	| event_declaration
	| indexer_declaration
	| operator_declaration
	| constructor_declaration
	| finalizer_declaration
	| static_constructor_declaration
	| type_declaration
	;
constant_declaration
	: _attributes _constant_modifiers ""const"" type 'type' constant_declarators "";"" {{}}
	;
_constant_modifiers
	: 
	| constant_modifers
	;
constant_modifers
	: constant_modifer 'modifier'
	| constant_modifers constant_modifer 'modifier'
	;
constant_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
constant_declarators
	: constant_declarator 'declarator'
	| constant_declarators "","" constant_declarator 'declarator'
	;
constant_declarator
	: <Identifier> ""="" constant_expression 'expression' {{}}
	;
field_declaration
	: _attributes _field_modifiers type 'type' variable_declarators "";"" {{}}
	;
_field_modifiers
	: 
	| field_modifiers
	;
field_modifiers
	: field_modifier 'modifier'
	| field_modifiers field_modifier 'modifier'
	;
field_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""readonly""
	| ""volatile""
	| unsafe_modifier
	;
variable_declarators
	: variable_declarator 'declarator'
	| variable_declarators "","" variable_declarator 'declarator'
	;
variable_declarator
	: <Identifier> {{}}
	| <Identifier> ""="" variable_initializer 'initializer' {{}}
	;
variable_initializer
	: expression
	| array_initializer
	;
method_declaration
	: method_header 'header' method_body 'body' {{}}
	| RefMethodHeader 'header' ref_method_body 'body' {{}}
	;
RefMethodHeader
	: _attributes ref_method_modifier 'modifier'* ref_kind ref_return_type 'returnType' member_name _type_parameter_list ""("" _formal_parameters_list "")"" _type_parameter_constraints_clauses {{MethodHeader}}
	;
method_header
	: _attributes _method_modifiers _partial return_type 'returnType' member_name _type_parameter_list ""("" _formal_parameters_list "")"" _type_parameter_constraints_clauses {{}}
	;
_method_modifiers
	: 
	| method_modifiers
	;
method_modifiers
	: method_modifier 'modifier'
	| method_modifiers method_modifier 'modifier'
	;
method_modifier
	: ref_method_modifier
	| ""async""
	;
ref_method_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	;
return_type
	: type
	| void_type
	;
ref_return_type
	: type
	;
member_name
	: <Identifier> 'name'
	| interface_type 'interface' ""."" <Identifier> 'name'
	;
method_body
	: block 'block' {{}}
	| ""=>"" null_conditional_invocation_expression 'expression' "";"" {{}}
	| ""=>"" expression 'expression' "";"" {{}}
	| "";"" {{}}
	;
ref_method_body
	: block 'block' {{MethodBody}}
	| ""=>"" ""ref"" variable_reference 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
_formal_parameters_list
	: 
	| formal_parameters_list
	;
formal_parameters_list
	: fixed_parameters
	| fixed_parameters "","" 'comma' parameter_array 'parameter'
	| parameter_array 'parameter'
	;
fixed_parameters
	: fixed_parameter 'parameter'
	| fixed_parameters "","" 'comma' fixed_parameter 'parameter'
	;
fixed_parameter
	: _attributes _parameter_modifier type 'type' <Identifier> 'name' _default_argument {{FixedParameter}}
	;
_default_argument
	:
	| default_argument
	;
default_argument
	: ""="" expression 'expression'
	;
_parameter_modifier
	:
	| parameter_modifier 'modifier'
	;
parameter_modifier
	: parameter_mode_modifier
	| ""this""
	;
parameter_mode_modifier
	: ""ref"" 
	| ""out""
	| ""in""
	;
parameter_array
	: _attributes ""params"" 'paramsToken' array_type 'type' <Identifier> 'name' {{ArrayParameter}}
	;
property_declaration
	: _attributes _property_modifiers type 'type' member_name property_body {{}}
	| _attributes _property_modifiers ref_kind type 'type' member_name ref_property_body {{}}
	;
_property_modifiers
	:
	| property_modifiers
	;
property_modifiers
	: property_modifier 'modifier'
	| property_modifiers property_modifier 'modifier'
	;
property_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;
property_body
	: ""{"" accessor_declarations <rightBrace> _property_initializer
	| ""=>"" expression 'expression' "";"" 'semicolon'
	;
_property_initializer
	:
	| property_initializer
	;
property_initializer
	: ""="" variable_initializer 'initializer' "";"" 'semicolon'
	;
ref_property_body
	: ""{"" ref_get_accessor_declaration 'getAccessor' <rightBrace> _property_initializer
	| ""=>"" ""ref"" variable_reference'expression' "";"" 'semicolon'
	;
accessor_declarations
	: get_accessor_declaration 'getAccessor' _set_accessor_declaration 'setAccessor'
	| set_accessor_declaration 'setAccessor' _get_accessor_declaration 'getAccessor'
	;
_get_accessor_declaration
	:
	| get_accessor_declaration
	;
get_accessor_declaration
	: _attributes _accessor_modifiers ""get"" accessor_body {{}}
	;
_set_accessor_declaration
	:
	| set_accessor_declaration
	;
set_accessor_declaration
	: _attributes _accessor_modifiers ""set"" accessor_body {{}}
	;
_accessor_modifiers
	:
	| accessor_modifiers
	;
accessor_modifiers
	: ""protected"" 'modifier'
	| ""internal"" 'modifier'
	| ""private"" 'modifier'
	| ""protected"" 'modifier' ""internal"" 'modifier'
	| ""internal"" 'modifier' ""protected"" 'modifier'
	| ""protected"" 'modifier' ""private"" 'modifier'
	| ""private"" 'modifier' ""protected"" 'modifier'
	;
accessor_body
	: block 'body'
	| ""=>"" expression 'expression' "";""
	| "";""
	;
ref_get_accessor_declaration
	: _attributes _accessor_modifiers ""get"" ref_accessor_body {{GetAccessorDeclaration}}
	;
ref_accessor_body
	: block 'body'
	| ""=>"" ""ref"" variable_reference 'expression' "";"" 
	| "";""
	;
event_declaration
	: _attributes _event_modifiers ""event"" type 'type' variable_declarators "";"" {{}}
	| _attributes _event_modifiers ""event"" type 'type' member_name ""{"" event_accessor_declarations <rightBrace> {{}}
	;
_event_modifiers
	:
	| event_modifiers
	;
event_modifiers
	: event_modifier 'modifier'
	| event_modifiers event_modifier 'modifier'
	;
event_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;
event_accessor_declarations
	: add_accessor_declaration 'addDeclaration' remove_accessor_declaration 'removeDeclaration'
	| remove_accessor_declaration 'removeDeclaration' add_accessor_declaration 'addDeclaration'
	;
add_accessor_declaration
	: _attributes ""add"" block 'block' {{}}
	;
remove_accessor_declaration
	: _attributes ""remove"" block 'block' {{}}
	;
indexer_declaration
	: _attributes _indexer_modifiers indexer_declarator indexer_body {{}}
	| _attributes _indexer_modifiers ref_kind indexer_declarator ref_indexer_body {{}}
	;
_indexer_modifiers
	:
	| indexer_modifiers
	;
indexer_modifiers
	: indexer_modifier 'modifier'
	| indexer_modifiers indexer_modifier 'modifier'
	;
indexer_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;
indexer_declarator
	: type 'returnType' ""this"" ""["" formal_parameters_list ""]""
	| type 'returnType' interface_type 'type' ""."" ""this"" ""["" formal_parameters_list ""]""
	;
indexer_body
	: ""{"" accessor_declarations <rightBrace>
	| ""=>"" expression 'expression' "";""
	;
ref_indexer_body
	: ""{"" ref_get_accessor_declaration 'getAccessor' <rightBrace>
	| ""=>"" ""ref"" variable_reference 'expression' "";""
	;
operator_declaration
	: _attributes operator_modifiers operator_declarator operator_body 'body' {{}}
	;
operator_modifiers
	: operator_modifier 'modifier'
	| operator_modifiers operator_modifier 'modifier'
	;
operator_modifier
	: ""public""
	| ""static""
	| ""extern""
	| unsafe_modifier
	;
operator_declarator
	: unary_operator_declarator
	| binary_operator_declarator
	| conversion_operator_declarator
	;
unary_operator_declarator
	: type 'returnType' ""operator"" overloadable_unary_operator 'operator' ""("" fixed_parameter 'parameter' "")""
	;
overloadable_unary_operator
	: ""+""
	| ""-""
	| ""!""
	| ""~""
	| ""++""
	| ""--""
	| ""true""
	| ""false""
	;
binary_operator_declarator
	: type 'returnType' ""operator"" overloadable_binary_operator 'operator' ""("" fixed_parameter 'parameter' "","" fixed_parameter 'parameter' "")""
	;
overloadable_binary_operator
	: ""+""
	| ""-""
	| ""*""
	| ""/""
	| ""%""
	| ""&""
	| ""|""
	| ""^""
	| ""<<""
	| <gtgt>
	| ""==""
	| ""!=""
	| <gt>
	| ""<""
	| "">=""
	| ""<=""
	;
conversion_operator_declarator
	: ""implicit"" ""operator"" type 'returnType' ""("" fixed_parameter 'parameter' "")""
	| ""explicit"" ""operator"" type 'returnType' ""("" fixed_parameter 'parameter' "")""
	;
operator_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
constructor_declaration
	: _attributes _constructor_modifiers constructor_declarator constructor_body 'body' {{}}
	;
_constructor_modifiers
	: 
	| constructor_modifiers
	;
constructor_modifiers
	: constructor_modifier 'modifier'
	| constructor_modifiers constructor_modifier 'modifier'
	;
constructor_modifier
	: ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""extern""
	| unsafe_modifier
	;
constructor_declarator
	: <Identifier> ""("" _formal_parameters_list "")"" _constructor_initializer
	;
_constructor_initializer
	: 
	| constructor_initializer 'initializer'
	;
constructor_initializer
	: "":"" ""base"" ""("" _argument_list "")"" {{}}
	| "":"" ""this"" ""("" _argument_list "")"" {{}}
	;
constructor_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
static_constructor_declaration
	: _attributes static_constructor_modifiers <Identifier> ""("" "")"" static_constructor_body {{}}
	;
# redefined in the unsafe section
static_constructor_modifiers
	: ""static""
	| ""static"" ""extern"" 'modifier' unsafe_modifier?
	| ""static"" unsafe_modifier ""extern"" 'modifier'
	| ""extern"" 'modifier' ""static"" unsafe_modifier?
	| ""extern"" 'modifier' unsafe_modifier ""static""
	| unsafe_modifier ""static"" ""extern"" 'modifier'
	| unsafe_modifier ""extern"" 'modifier' ""static""
	;
static_constructor_body
	: block 'block'
	| ""=>"" expression 'expression' "";""
	| "";""
	;
# redefined in the unsafe section
#destructor_declaration
#	: _attributes _extern ""~"" <Identifier> ""("" "")"" destructor_body
#	;
#destructor_body
#	: block
#	| "";""
#	;

# B.2.8 Structs
struct_declaration
	: _attributes _struct_modifiers ""ref""? _partial ""struct"" <Identifier> _type_parameter_list _struct_interfaces _type_parameter_constraints_clauses struct_body _semicolon {{}}
	;
_struct_modifiers
	: 
	| struct_modifiers
	;
struct_modifiers
	: struct_modifier 'modifier'
	| struct_modifiers struct_modifier 'modifier'
	;
struct_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""readonly""
	| unsafe_modifier
	;
_struct_interfaces
	:
	| struct_interfaces
	;
struct_interfaces
	: "":"" interface_type_list
	;
struct_body
	: ""{"" _struct_member_declarations <rightBrace>
	;
_struct_member_declarations
	: 
	| struct_member_declarations
	;
struct_member_declarations
	: struct_member_declaration 'declaration'
	| struct_member_declarations struct_member_declaration 'declaration'
	;
struct_member_declaration
	: constant_declaration
	| field_declaration
	| method_declaration
	| property_declaration
	| event_declaration
	| indexer_declaration
	| operator_declaration
	| constructor_declaration
	| static_constructor_declaration
	| type_declaration
	| fixed_size_buffer_declaration
	;

# B.2.9 Arrays
_array_initializer
	:
	| array_initializer
	;
array_initializer
	: ""{"" _variable_initializer_list <rightBrace> {{}}
	| ""{"" variable_initializer_list "","" <rightBrace> {{}}
	;
_variable_initializer_list
	:
	| variable_initializer_list
	;
variable_initializer_list
	: variable_initializer 'initializer'
	| variable_initializer_list "","" variable_initializer 'initializer'
	;
variable_initializer
	: expression
	| array_initializer
	;

# B.2.10 Interfaces
interface_declaration
	: _attributes _interface_modifiers _partial ""interface"" 'interfaceToken' <Identifier> 'name' _variant_type_parameter_list _interface_base _type_parameter_constraints_clauses interface_body _semicolon {{}}
	;
_interface_modifiers
	:
	| interface_modifiers
	;
interface_modifiers
	: interface_modifier 'modifier'
	| interface_modifiers interface_modifier 'modifier'
	;
interface_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| unsafe_modifier
	;
_variant_type_parameter_list
	:
	| variant_type_parameter_list 'typeParameters'
	;
variant_type_parameter_list
	: ""<"" 'lessThan' variant_type_parameters <gt> 'greaterThan' {{}}
	;
variant_type_parameters
	: _attributes _variance_annotation type_parameter 'parameter'
	| variant_type_parameters "","" _attributes _variance_annotation type_parameter 'parameter'
	;
_variance_annotation
	:
	| variance_annotation 'annotation'
	;
variance_annotation
	: ""in""
	| ""out""
	;
_interface_base
	: 
	| interface_base
	;
interface_base
	: "":"" 'colon' interface_type_list
	;
interface_body
	: ""{"" 'leftBrace' _interface_member_declarations <rightBrace> 'rightBrace'
	;
_interface_member_declarations
	:
	| interface_member_declarations
	;
interface_member_declarations
	: interface_member_declaration 'declaration'
	| interface_member_declarations interface_member_declaration 'declaration'
	;
interface_member_declaration
	: interface_method_declaration
	| property_declaration	## changed from antlr
	| interface_event_declaration
	| indexer_declaration	## changed from antlr
	;
interface_method_declaration
	: _attributes _new 'modifier' return_type 'type' interface_method_header {{}}
	| _attributes _new 'modifier' ref_kind ref_return_type 'type' interface_method_header {{}}
	;
interface_method_header
	: <Identifier> 'name' _type_parameter_list ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses method_body 'body'	## method_body?
	;
interface_property_declaration
	: _attributes _new 'modifier' type 'type' <Identifier> 'name' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' #{{}}
	| _attributes _new 'modifier' ref_kind type 'type' <Identifier> 'name' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' #{{}}
	;
interface_accessors	#This was changed to use the interface_(g/s)et_accessor
	: interface_get_accessor 'getAccessor'
	| interface_set_accessor 'setAccessor'
	| interface_get_accessor 'getAccessor' interface_set_accessor 'setAccessor'
	| interface_set_accessor 'setAccessor' interface_get_accessor 'getAccessor'
	;
ref_interface_accessor
	: interface_get_accessor 'getAccessor'
	;
interface_get_accessor
	: _attributes ""get"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;
interface_set_accessor
	: _attributes ""set"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;
interface_event_declaration
	: _attributes _new 'modifier' ""event"" 'eventToken' type 'type' <Identifier> 'name' "";"" 'semicolon' {{}}
	;
interface_indexer_declaration
	: _attributes _new 'modifier' type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' #{{}}
	| _attributes _new 'modifier' ref_kind type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' #{{}}
	;

# B.2.11 Enums
enum_declaration
	: _attributes _enum_modifers ""enum"" 'enumToken' <Identifier> 'name' _enum_base enum_body _semicolon {{}}
	;
_enum_base
	:
	| enum_base
	;
enum_base
	: "":"" integral_type 'typeToken'
	| "":"" integral_type_name 'typeToken'
	;
integral_type_name
	: type_name
	;
enum_body
	: ""{"" 'leftBrace' _enum_member_declarations <rightBrace> 'rightBrace'
	| ""{"" 'leftBrace' enum_member_declarations "","" 'comma' <rightBrace> 'rightBrace'
	;
_enum_modifers
	:
	| enum_modifers
	;
enum_modifers
	: enum_modifer 'modifier'
	| enum_modifers enum_modifer 'modifier'
	;
enum_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;
_enum_member_declarations
	:
	| enum_member_declarations
	;
enum_member_declarations
	: enum_member_declaration 'declaration'
	| enum_member_declarations "","" 'comma' enum_member_declaration 'declaration'
	;
enum_member_declaration
	: _attributes <Identifier> 'name' (""="" 'equal' constant_expression 'value')? {{EnumDeclaration}}
	;

# B.2.12 Delegates
delegate_declaration
	: _attributes _delegate_modifiers ""delegate"" 'delegateToken' return_type 'type' delegate_header {{}}
	| _attributes _delegate_modifiers ""delegate"" 'delegateToken' ref_kind ref_return_type 'type' delegate_header {{}}
	;
delegate_header
	: <Identifier> 'name' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' "";"" 'semicolon'
	| <Identifier> 'name' variant_type_parameter_list 'typeParameters' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses "";"" 'semicolon'
	;
_delegate_modifiers
	:
	| delegate_modifiers
	;
delegate_modifiers
	: delegate_modifier 'modifier'
	| delegate_modifiers delegate_modifier 'modifier'
	;
delegate_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| unsafe_modifier
	;

# B.2.13 Attributes
_global_attributes
	:
	| global_attributes
	;
global_attributes
	: global_attribute_sections
	;
global_attribute_sections
	: global_attribute_section 'attribute'
	| global_attribute_sections global_attribute_section 'attribute'
	;
global_attribute_section
	: ""["" 'leftBracket' global_attribute_target_specifier attribute_list ""]"" 'rightBracket' {{Attribute}}
	| ""["" 'leftBracket' global_attribute_target_specifier attribute_list "","" 'comma' ""]"" 'rightBracket' {{Attribute}}
	;
global_attribute_target_specifier
	: global_attribute_target 'target' "":"" 'colon'
	;
global_attribute_target
	: <Identifier>
	;
_attributes
	:
	| attributes
	;
attributes
	: attribute_sections
	;
attribute_sections
	: attribute_section 'attribute'
	| attribute_sections attribute_section 'attribute'
	;
attribute_section
	: ""["" 'leftBracket' _attribute_target_specifier attribute_list ""]"" 'rightBracket' {{Attribute}}
	| ""["" 'leftBracket' _attribute_target_specifier attribute_list "","" 'comma' ""]"" 'rightBracket' {{Attribute}}
	;
_attribute_target_specifier
	: 
	| attribute_target_specifier
	;
attribute_target_specifier
	: attribute_target 'target' "":"" 'colon'
	;
attribute_target	# changed from antlr definition
	: ""field""
	| ""event""
	| ""method""
	| ""param""
	| ""property""
	| ""return""
	| ""type""
	;
attribute_list
	: attribute 'attributeValue'
	| attribute_list "","" 'comma' attribute 'attributeValue'
	;
attribute
	: attribute_name 'name' _attribute_arguments {{AttributeValue}}
	;
attribute_name
	: type_name
	;
_attribute_arguments
	: 
	| attribute_arguments
	;
attribute_arguments
	: ""("" 'leftParen' _positional_argument_list "")"" 'rightParen'
	| ""("" 'leftParen' positional_argument_list "","" 'comma' named_argument_list "")"" 'rightParen'
	| ""("" 'leftParen' named_argument_list "")"" 'rightParen'
	;
_positional_argument_list
	:
	| positional_argument_list
	;
positional_argument_list
	: positional_argument 'argument'
	| positional_argument_list "","" 'comma' positional_argument 'argument'
	;
positional_argument
	: _argument_name attribute_argument_expression 'expression' {{Argument}}
	;
named_argument_list
	: named_argument 'argument'
	| named_argument_list "","" 'comma' named_argument 'argument'
	;
named_argument
	: <Identifier> 'name' ""="" 'equal' attribute_argument_expression 'value' {{NamedArgument}}
	;
attribute_argument_expression
	: expression
	;

# B.1.8 Literals
literal
	: boolean_literal 'token' {{BooleanLiteralExpression}}
	| <IntegerLiteral> 'token' {{IntegerLiteralExpression}}
	| <RealLiteral> 'token' {{RealLiteralExpression}}
	| <CharacterLiteral> 'token' {{CharacterLiteralExpression}}
	| <StringLiteral> 'token' {{StringLiteralExpression}}
	| <NullLiteral> 'token' {{NullLiteralExpression}}
	;
boolean_literal
	: ""true""
	| ""false""
	;

# Misc
_semicolon
	:
	| "";"" 'semicolon'
	;
_new
	:
	| ""new""
	;
_partial
	:
	| ""partial"" 'partialToken'
	;
_extern
	:
	| ""extern"" 'modifier'
	;
_identifier
	:
	| <Identifier> 'name'
	;

# B.3 Unsafe code
class_modifier
	: ""unsafe""
	;
struct_modifier
	: ""unsafe""
	;
interface_modifier
	: ""unsafe""
	;
delegate_modifier
	: ""unsafe""
	;
field_modifier
	: ""unsafe""
	;
method_modifier
	: ""unsafe""
	;
property_modifier
	: ""unsafe""
	;
event_modifier
	: ""unsafe""
	;
indexer_modifier
	: ""unsafe""
	;
operator_modifier
	: ""unsafe""
	;
constructor_modifier
	: ""unsafe""
	;
finalizer_declaration	# Changed from destructor_body to method_body since they are the same
	: _attributes _extern unsafe_modifier? ""~"" <Identifier> ""("" "")"" finalizer_body 'body' {{}}
	| _attributes unsafe_modifier _extern ""~"" <Identifier> ""("" "")"" finalizer_body 'body' {{}}
	;
finalizer_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
unsafe_modifier
	: ""unsafe"" 'modifier'
	;
static_constructor_modifiers
	: ""static""
	| ""static"" ""extern"" 'modifier' unsafe_modifier?
	| ""static"" unsafe_modifier _extern
	| ""extern"" 'modifier' ""static"" unsafe_modifier?
	| ""extern"" 'modifier' unsafe_modifier ""static""
	| unsafe_modifier ""static"" _extern
	| unsafe_modifier ""extern"" 'modifier' ""static""
	;
embedded_statement
	: unsafe_statement
	;
unsafe_statement
	: ""unsafe"" block 'block' {{UnsafeStatement}}
	;
type
	: pointer_type
	;
pointer_type
	: value_type 'type' ""*""+ {{}}
	| void_type 'type' ""*""+ {{}}
	;
unmanaged_type
	: value_type
	| pointer_type
	;
primary_no_array_creation_expression
	: pointer_member_access
#	| pointer_element_access	# handled by element_access
	;
unary_expression
	: pointer_indirection_expression
	| addressof_expression
	;
pointer_indirection_expression
	: ""*"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
pointer_member_access
	: primary_expression 'expression' ""->"" 'arrowToken' <Identifier> 'name' _type_argument_list 'typeArguments' {{}}
	;
pointer_element_access
	: primary_no_array_creation_expression 'expression' ""["" expression 'indexExpression' ""]"" {{}}
	;
addressof_expression
	: ""&"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
sizeof_expression
	: ""sizeof"" ""("" unmanaged_type 'type' "")"" {{}}
	;
embedded_statement
	: fixed_statement
	;
fixed_statement
	: ""fixed"" ""("" pointer_type 'type' fixed_pointer_declarators "")"" embedded_statement 'statement' {{}}
	;
fixed_pointer_declarators
	: fixed_pointer_declarator 'declarator'
	| fixed_pointer_declarators "","" fixed_pointer_declarator 'declarator'
	;
fixed_pointer_declarator
	: <Identifier> ""="" fixed_pointer_initializer {{}}
	;
fixed_pointer_initializer
	: ""&"" variable_reference 'expression'
	| expression 'expression'
	;
struct_member_declaration
	: fixed_size_buffer_declaration
	;
fixed_size_buffer_declaration
	: _attributes _fixed_size_buffer_modifiers ""fixed"" buffer_element_type 'type' fixed_size_buffer_declarators "";"" {{}}
	;
_fixed_size_buffer_modifiers
	: 
	| fixed_size_buffer_modifiers
	;
fixed_size_buffer_modifiers
	: fixed_size_buffer_modifier 'modifier'
	| fixed_size_buffer_modifiers fixed_size_buffer_modifier 'modifier'
	;
fixed_size_buffer_modifier
	: ""new""
	| ""public""
	| ""protected""	# not in antlr?
	| ""internal""
	| ""private""
	| ""unsafe""
	;
buffer_element_type
	: type
	;
fixed_size_buffer_declarators
	: fixed_size_buffer_declarator 'declarator'
	| fixed_size_buffer_declarators fixed_size_buffer_declarator 'declarator'
	;
fixed_size_buffer_declarator
	: <Identifier> 'name' ""["" constant_expression 'expression' ""]"" {{}}
	;
local_variable_initializer
	: stackalloc_initializer
	;
stackalloc_initializer
	: ""{"" 'leftBrace' stackalloc_initializer_element_list <rightBrace> 'rightBrace'
	;
stackalloc_initializer_element_list
	: (stackalloc_element_initializer "","")* stackalloc_element_initializer
	;
stackalloc_element_initializer
	: expression 'initializer'
	;
# Additions
void_type
	: ""void"" {{}}
	;"
]

{ #category : #'file types' }
CSharpParser class >> fileExtension [
	^ '.cs'
]

{ #category : #'file types' }
CSharpParser class >> fileExtensionType [
	^ 'C# files'
]

{ #category : #private }
CSharpParser class >> keywords [
	^ keywords
		ifNil:
			[ keywords := #('abstract' 'as' 'base' 'bool' 'break' 'byte' 'case' 'catch' 'char' 'checked' 'class' 'const' 'continue' 'decimal' 'default' 'delegate' 'do' 'double' 'else' 'enum' 'event' 'explicit' 'extern' 'false' 'finally' 'fixed' 'float' 'for' 'foreach' 'goto' 'if' 'implicit' 'in' 'int' 'interface' 'internal' 'is' 'lock' 'long' 'namespace' 'new' 'null' 'object' 'operator' 'out' 'override' 'params' 'private' 'protected' 'public' 'readonly' 'ref' 'return' 'sbyte' 'sealed' 'short' 'sizeof' 'stackalloc' 'static' 'string' 'struct' 'switch' 'this' 'throw' 'true' 'try' 'typeof' 'uint' 'ulong' 'unchecked' 'unsafe' 'ushort' 'using' 'virtual' 'void' 'volatile' 'while')
				asSet ]
]

{ #category : #accessing }
CSharpParser class >> parseBlock: aString onError: aBlock [
	^ self
		parse: aString
		startingAt: self startingStateForblock
		onError: aBlock
]

{ #category : #generated }
CSharpParser class >> reduceTable [
^#(
	#(180 0 #reduceActionFor_extern_alias_directives1: 6611969 false) 
	#(636 0 #reduceActionFor_extern_alias_directives1: 57827329 false) 
	#(389 0 #reduceActionFor_extern_alias_directives1: 29688833 false) 
	#(387 0 #nil 29553665 false) 
	#(244 0 #reduceActionForStartInterpolatedString1: 12348417 true) 
	#(250 0 #reduceActionForStartInterpolatedVerbatimString1: 13061121 true) 
	#(183 0 #reduceActionFor_extern_alias_directives1: 6871041 false) 
	#(180 1 #reduceActionFor_extern_alias_directives2: 6611970 false) 
	#(181 1 #reduceActionForextern_alias_directives1: 6671361 false) 
	#(640 0 #reduceActionFor_attribute_target_specifier1: 58238977 false) 
	#(191 1 #liftFirstValue: 7613441 false) 
	#(191 1 #liftFirstValue: 7613442 false) 
	#(192 1 #liftFirstValue: 7692289 false) 
	#(192 1 #liftFirstValue: 7692290 false) 
	#(192 1 #liftFirstValue: 7692291 false) 
	#(192 1 #liftFirstValue: 7692292 false) 
	#(192 1 #liftFirstValue: 7692293 false) 
	#(465 0 #reduceActionFor_extern_alias_directives1: 37089281 false) 
	#(627 0 #reduceActionFor_extern_alias_directives1: 56924161 false) 
	#(619 0 #reduceActionFor_extern_alias_directives1: 55811073 false) 
	#(591 0 #reduceActionFor_extern_alias_directives1: 52074497 false) 
	#(577 0 #reduceActionFor_extern_alias_directives1: 50413569 false) 
	#(636 1 #reduceActionFor_extern_alias_directives2: 57827330 false) 
	#(637 1 #reduceActionFor_extern_alias_directives2: 57860097 false) 
	#(638 1 #reduceActionForextern_alias_directives1: 57896961 false) 
	#(382 1 #reduceActionForempty_statement1: 29015041 false) 
	#(206 1 #reduceActionForsimple_type2: 8770562 false) 
	#(267 1 #reduceActionForsimple_type2: 14583809 false) 
	#(208 1 #liftFirstValue: 8909826 false) 
	#(267 1 #reduceActionForsimple_type2: 14583810 false) 
	#(208 1 #liftFirstValue: 8909833 false) 
	#(267 1 #reduceActionForsimple_type2: 14583811 false) 
	#(207 1 #liftFirstValue: 8839171 false) 
	#(267 1 #reduceActionForsimple_type2: 14583812 false) 
	#(302 1 #reduceActionFordefault_value_expression1: 18821121 false) 
	#(337 0 #nil 24798209 false) 
	#(209 1 #liftFirstValue: 9023490 false) 
	#(267 1 #reduceActionForsimple_type2: 14583813 false) 
	#(212 1 #reduceActionForsimple_type2: 9180163 false) 
	#(216 1 #reduceActionForsimple_type2: 9545731 false) 
	#(655 1 #liftFirstValue: 59966466 false) 
	#(209 1 #liftFirstValue: 9023489 false) 
	#(267 1 #reduceActionForsimple_type2: 14583814 false) 
	#(208 1 #liftFirstValue: 8909829 false) 
	#(267 1 #reduceActionForsimple_type2: 14583815 false) 
	#(208 1 #liftFirstValue: 8909831 false) 
	#(267 1 #reduceActionForsimple_type2: 14583816 false) 
	#(213 1 #reduceActionForsimple_type2: 9353218 false) 
	#(267 1 #reduceActionForsimple_type2: 14583817 false) 
	#(398 1 #reduceActionForref_kind1: 31062017 false) 
	#(372 0 #nil 28148737 false) 
	#(208 1 #liftFirstValue: 8909825 false) 
	#(267 1 #reduceActionForsimple_type2: 14583818 false) 
	#(208 1 #liftFirstValue: 8909827 false) 
	#(267 1 #reduceActionForsimple_type2: 14583819 false) 
	#(213 1 #reduceActionForsimple_type2: 9353219 false) 
	#(267 1 #reduceActionForsimple_type2: 14583820 false) 
	#(271 1 #reduceActionForthis_access1: 15416321 false) 
	#(655 1 #liftFirstValue: 59966465 false) 
	#(208 1 #liftFirstValue: 8909830 false) 
	#(267 1 #reduceActionForsimple_type2: 14583821 false) 
	#(208 1 #liftFirstValue: 8909832 false) 
	#(267 1 #reduceActionForsimple_type2: 14583822 false) 
	#(208 1 #liftFirstValue: 8909828 false) 
	#(267 1 #reduceActionForsimple_type2: 14583823 false) 
	#(410 1 #reduceActionForVarType1: 31956993 false) 
	#(689 1 #reduceActionForvoid_type1: 64041985 false) 
	#(380 0 #reduceActionFor_extern_alias_directives1: 28888065 false) 
	#(253 0 #nil 13390849 false) 
	#(471 1 #reduceActionFortype_parameter1: 37648385 false) 
	#(654 1 #reduceActionForliteral2: 59616258 false) 
	#(654 1 #reduceActionForliteral3: 59616259 false) 
	#(654 1 #reduceActionForliteral4: 59616260 false) 
	#(243 1 #reduceActionForinterpolated_regular_string1: 12112897 false) 
	#(249 1 #reduceActionForinterpolated_regular_string1: 12810241 false) 
	#(654 1 #reduceActionForliteral5: 59616261 false) 
	#(654 1 #reduceActionForliteral6: 59616262 false) 
	#(196 1 #liftFirstValue: 8041475 false) 
	#(265 1 #reduceActionForqualified_alias_member_expression1: 14415873 false) 
	#(201 1 #liftFirstValue: 8524801 false) 
	#(213 1 #liftFirstValue: 9353217 false) 
	#(195 1 #liftFirstValue: 8001537 false) 
	#(198 1 #liftFirstValue: 8320001 false) 
	#(216 1 #liftFirstValue: 9545729 false) 
	#(199 1 #liftFirstValue: 8379394 false) 
	#(210 1 #liftFirstValue: 9070593 false) 
	#(201 1 #liftFirstValue: 8524803 false) 
	#(201 1 #liftFirstValue: 8524802 false) 
	#(206 1 #reduceActionForsimple_type2: 8770561 false) 
	#(207 1 #liftFirstValue: 8839169 false) 
	#(207 1 #liftFirstValue: 8839170 false) 
	#(199 1 #liftFirstValue: 8379393 false) 
	#(198 1 #liftFirstValue: 8320002 false) 
	#(212 1 #liftFirstValue: 9180161 false) 
	#(216 1 #liftFirstValue: 9545730 false) 
	#(212 1 #liftFirstValue: 9180162 false) 
	#(309 1 #liftFirstValue: 19496961 false) 
	#(240 1 #liftFirstValue: 11215873 false) 
	#(241 1 #liftFirstValue: 11309058 false) 
	#(242 1 #reduceActionForinterpolated_string_expression1: 12003329 false) 
	#(242 1 #reduceActionForinterpolated_string_expression1: 12003330 false) 
	#(241 1 #liftFirstValue: 11309059 false) 
	#(241 1 #liftFirstValue: 11309060 false) 
	#(241 1 #liftFirstValue: 11309061 false) 
	#(241 1 #liftFirstValue: 11309062 false) 
	#(266 1 #reduceActionForqualified_alias_member_expression1: 14507009 false) 
	#(241 1 #liftFirstValue: 11309064 false) 
	#(418 1 #liftFirstValue: 32790530 false) 
	#(241 1 #liftFirstValue: 11309065 false) 
	#(241 1 #liftFirstValue: 11309067 false) 
	#(241 1 #liftFirstValue: 11309068 false) 
	#(241 1 #liftFirstValue: 11309069 false) 
	#(418 1 #liftFirstValue: 32790533 false) 
	#(241 1 #liftFirstValue: 11309070 false) 
	#(418 1 #liftFirstValue: 32790534 false) 
	#(241 1 #liftFirstValue: 11309071 false) 
	#(418 1 #liftFirstValue: 32790531 false) 
	#(240 1 #liftFirstValue: 11215874 false) 
	#(241 1 #liftFirstValue: 11309072 false) 
	#(241 1 #liftFirstValue: 11309073 false) 
	#(241 1 #liftFirstValue: 11309074 false) 
	#(241 1 #liftFirstValue: 11309076 false) 
	#(241 1 #liftFirstValue: 11309077 false) 
	#(241 1 #liftFirstValue: 11309078 false) 
	#(241 1 #liftFirstValue: 11309081 false) 
	#(241 1 #liftFirstValue: 11309079 false) 
	#(241 1 #liftFirstValue: 11309063 false) 
	#(418 1 #liftFirstValue: 32790529 false) 
	#(241 1 #liftFirstValue: 11309066 false) 
	#(309 1 #liftFirstValue: 19496966 false) 
	#(418 1 #liftFirstValue: 32790535 false) 
	#(309 1 #liftFirstValue: 19496967 false) 
	#(418 1 #liftFirstValue: 32790536 false) 
	#(309 1 #liftFirstValue: 19496968 false) 
	#(309 1 #liftFirstValue: 19496969 false) 
	#(418 1 #liftFirstValue: 32790537 false) 
	#(241 1 #liftFirstValue: 11309080 false) 
	#(418 1 #liftFirstValue: 32790532 false) 
	#(377 1 #liftFirstValue: 28478467 false) 
	#(378 1 #liftFirstValue: 28561409 false) 
	#(378 1 #liftFirstValue: 28561410 false) 
	#(377 1 #liftFirstValue: 28478465 false) 
	#(377 1 #liftFirstValue: 28478466 false) 
	#(384 1 #liftFirstValue: 29116419 false) 
	#(395 1 #reduceActionForlocal_variable_declaration1: 30556161 false) 
	#(395 1 #liftFirstValue: 30556162 false) 
	#(395 1 #reduceActionForlocal_variable_declaration3: 30556163 false) 
	#(378 1 #liftFirstValue: 28561411 false) 
	#(378 1 #liftFirstValue: 28561412 false) 
	#(419 1 #liftFirstValue: 33065985 false) 
	#(419 1 #liftFirstValue: 33065986 false) 
	#(378 1 #liftFirstValue: 28561413 false) 
	#(429 1 #liftFirstValue: 33923073 false) 
	#(429 1 #liftFirstValue: 33923074 false) 
	#(429 1 #liftFirstValue: 33923075 false) 
	#(429 1 #liftFirstValue: 33923076 false) 
	#(378 1 #liftFirstValue: 28561414 false) 
	#(441 1 #liftFirstValue: 35037185 false) 
	#(441 1 #liftFirstValue: 35037186 false) 
	#(441 1 #liftFirstValue: 35037187 false) 
	#(441 1 #liftFirstValue: 35037188 false) 
	#(441 1 #liftFirstValue: 35037189 false) 
	#(378 1 #liftFirstValue: 28561415 false) 
	#(378 1 #liftFirstValue: 28561416 false) 
	#(378 1 #liftFirstValue: 28561417 false) 
	#(378 1 #liftFirstValue: 28561418 false) 
	#(378 1 #liftFirstValue: 28561419 false) 
	#(378 1 #liftFirstValue: 28561420 false) 
	#(198 1 #liftFirstValue: 8320003 false) 
	#(216 1 #liftFirstValue: 9545732 false) 
	#(241 1 #liftFirstValue: 11309057 false) 
	#(654 1 #reduceActionForliteral1: 59616257 false) 
	#(378 1 #liftFirstValue: 28561421 false) 
	#(198 1 #liftFirstValue: 8320004 false) 
	#(216 1 #liftFirstValue: 9545733 false) 
	#(309 1 #liftFirstValue: 19496970 false) 
	#(241 1 #liftFirstValue: 11309082 false) 
	#(309 1 #liftFirstValue: 19496971 false) 
	#(241 1 #liftFirstValue: 11309075 false) 
	#(378 1 #liftFirstValue: 28561422 false) 
	#(342 0 #nil 25450497 false) 
	#(345 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 25777153 false) 
	#(339 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 24990721 false) 
	#(197 0 #nil 8292353 false) 
	#(347 1 #liftFirstValue: 26070017 false) 
	#(409 1 #liftFirstValue: 31913985 false) 
	#(320 1 #liftFirstValue: 21229569 false) 
	#(321 1 #liftFirstValue: 21577729 false) 
	#(322 1 #liftFirstValue: 21835777 false) 
	#(323 1 #liftFirstValue: 22070273 false) 
	#(324 1 #liftFirstValue: 22755329 false) 
	#(325 1 #liftFirstValue: 23003137 false) 
	#(326 1 #liftFirstValue: 23136257 false) 
	#(327 1 #liftFirstValue: 23277569 false) 
	#(328 1 #liftFirstValue: 23437313 false) 
	#(329 1 #liftFirstValue: 23604225 false) 
	#(330 1 #liftFirstValue: 23775233 false) 
	#(333 1 #liftFirstValue: 24127489 false) 
	#(330 1 #liftFirstValue: 23775235 false) 
	#(374 1 #liftFirstValue: 28255233 false) 
	#(374 1 #liftFirstValue: 28255234 false) 
	#(374 1 #liftFirstValue: 28255235 false) 
	#(336 1 #liftFirstValue: 24681473 false) 
	#(336 1 #liftFirstValue: 24681474 false) 
	#(344 1 #reduceActionForimplicit_anonymous_function_signature2: 25619458 false) 
	#(374 1 #liftFirstValue: 28255236 false) 
	#(353 0 #reduceActionFor_query_body_clauses1: 26514433 false) 
	#(373 1 #liftFirstValue: 28194818 false) 
	#(373 1 #liftFirstValue: 28194817 false) 
	#(409 1 #liftFirstValue: 31913986 false) 
	#(486 1 #liftFirstValue: 39633931 false) 
	#(486 1 #liftFirstValue: 39633921 false) 
	#(486 1 #liftFirstValue: 39633922 false) 
	#(486 1 #liftFirstValue: 39633923 false) 
	#(486 1 #liftFirstValue: 39633924 false) 
	#(486 1 #liftFirstValue: 39633925 false) 
	#(486 1 #liftFirstValue: 39633926 false) 
	#(486 1 #liftFirstValue: 39633927 false) 
	#(486 1 #liftFirstValue: 39633928 false) 
	#(486 1 #liftFirstValue: 39633930 false) 
	#(549 0 #reduceActionFor_extern_alias_directives1: 46577665 false) 
	#(504 0 #reduceActionFor_extern_alias_directives1: 41713665 false) 
	#(524 0 #reduceActionFor_extern_alias_directives1: 43569153 false) 
	#(494 0 #reduceActionFor_extern_alias_directives1: 40587265 false) 
	#(502 0 #reduceActionFor_extern_alias_directives1: 41323521 false) 
	#(488 0 #reduceActionFor_extern_alias_directives1: 40045569 false) 
	#(542 0 #reduceActionFor_extern_alias_directives1: 45708289 false) 
	#(659 0 #nil 60116993 false) 
	#(566 0 #reduceActionFor_extern_alias_directives1: 48721921 false) 
	#(486 1 #liftFirstValue: 39633929 false) 
	#(630 0 #reduceActionFor_extern_alias_directives1: 57207809 false) 
	#(183 1 #reduceActionFor_extern_alias_directives2: 6871042 false) 
	#(184 1 #reduceActionForextern_alias_directives1: 6916097 false) 
	#(185 1 #liftFirstValue: 7017473 false) 
	#(185 1 #liftFirstValue: 7017474 false) 
	#(185 1 #liftFirstValue: 7017475 false) 
	#(181 2 #reduceActionForextern_alias_directives2: 6671362 false) 
	#(642 1 #liftFirstValue: 58378242 false) 
	#(642 1 #liftFirstValue: 58378241 false) 
	#(642 1 #liftFirstValue: 58378243 false) 
	#(642 1 #liftFirstValue: 58378244 false) 
	#(642 1 #liftFirstValue: 58378245 false) 
	#(642 1 #liftFirstValue: 58378246 false) 
	#(642 1 #liftFirstValue: 58378247 false) 
	#(640 1 #reduceActionFor_extern_alias_directives2: 58238978 false) 
	#(178 1 #reduceActionForqualified_identifier1: 6389761 false) 
	#(467 1 #liftFirstValue: 37227526 false) 
	#(467 1 #liftFirstValue: 37227524 false) 
	#(629 1 #liftFirstValue: 57080836 false) 
	#(621 1 #liftFirstValue: 55937028 false) 
	#(593 1 #liftFirstValue: 52237316 false) 
	#(579 1 #liftFirstValue: 50558980 false) 
	#(467 1 #liftFirstValue: 37227521 false) 
	#(629 1 #liftFirstValue: 57080833 false) 
	#(621 1 #liftFirstValue: 55937025 false) 
	#(593 1 #liftFirstValue: 52237313 false) 
	#(579 1 #liftFirstValue: 50558977 false) 
	#(467 1 #liftFirstValue: 37227525 false) 
	#(629 1 #liftFirstValue: 57080837 false) 
	#(621 1 #liftFirstValue: 55937029 false) 
	#(593 1 #liftFirstValue: 52237317 false) 
	#(579 1 #liftFirstValue: 50558981 false) 
	#(467 1 #liftFirstValue: 37227523 false) 
	#(629 1 #liftFirstValue: 57080835 false) 
	#(621 1 #liftFirstValue: 55937027 false) 
	#(593 1 #liftFirstValue: 52237315 false) 
	#(579 1 #liftFirstValue: 50558979 false) 
	#(467 1 #liftFirstValue: 37227522 false) 
	#(629 1 #liftFirstValue: 57080834 false) 
	#(621 1 #liftFirstValue: 55937026 false) 
	#(593 1 #liftFirstValue: 52237314 false) 
	#(579 1 #liftFirstValue: 50558978 false) 
	#(579 1 #liftFirstValue: 50558982 false) 
	#(467 1 #liftFirstValue: 37227527 false) 
	#(467 1 #liftFirstValue: 37227528 false) 
	#(663 1 #liftFirstValue: 60988417 false) 
	#(467 1 #liftFirstValue: 37227530 false) 
	#(629 1 #liftFirstValue: 57080839 false) 
	#(593 1 #liftFirstValue: 52237319 false) 
	#(579 1 #liftFirstValue: 50558984 false) 
	#(658 0 #nil 60072961 false) 
	#(465 1 #reduceActionFor_extern_alias_directives2: 37089282 false) 
	#(466 1 #reduceActionForextern_alias_directives1: 37132289 false) 
	#(577 1 #reduceActionFor_extern_alias_directives2: 50413570 false) 
	#(578 1 #reduceActionForextern_alias_directives1: 50459649 false) 
	#(591 1 #reduceActionFor_extern_alias_directives2: 52074498 false) 
	#(592 1 #reduceActionForextern_alias_directives1: 52125697 false) 
	#(619 1 #reduceActionFor_extern_alias_directives2: 55811074 false) 
	#(620 1 #reduceActionForextern_alias_directives1: 55849985 false) 
	#(627 1 #reduceActionFor_extern_alias_directives2: 56924162 false) 
	#(628 1 #reduceActionForextern_alias_directives1: 56973313 false) 
	#(467 1 #liftFirstValue: 37227529 false) 
	#(629 1 #liftFirstValue: 57080838 false) 
	#(593 1 #liftFirstValue: 52237318 false) 
	#(579 1 #liftFirstValue: 50558983 false) 
	#(638 2 #reduceActionForextern_alias_directives2: 57896962 false) 
	#(309 2 #reduceActionForunary_expression4: 19496964 false) 
	#(671 2 #reduceActionForunary_expression4: 62186497 false) 
	#(205 1 #reduceActionFortuple_type_element1: 8706049 false) 
	#(258 1 #reduceActionFortuple_element1: 13654017 false) 
	#(668 2 #reduceActionForunary_expression4: 61814785 false) 
	#(309 2 #reduceActionForunary_expression4: 19496962 false) 
	#(316 2 #reduceActionForunary_expression4: 20882433 false) 
	#(309 2 #reduceActionForunary_expression4: 19496963 false) 
	#(317 2 #reduceActionForunary_expression4: 20982785 false) 
	#(319 2 #reduceActionForawait_expression1: 21161985 false) 
	#(442 2 #reduceActionForbreak_statement1: 35155969 false) 
	#(458 2 #reduceActionForchecked_statement1: 36386817 false) 
	#(443 2 #reduceActionForcontinue_statement1: 35195905 false) 
	#(337 1 #liftFirstValue: 24798210 false) 
	#(433 0 #nil 34371585 false) 
	#(220 0 #reduceActionFor_extern_alias_directives1: 9963521 false) 
	#(291 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 17701889 false) 
	#(222 1 #liftFirstValue: 10053633 false) 
	#(289 2 #reduceActionForanonymous_object_creation_expression1: 17490945 false) 
	#(398 2 #reduceActionForref_kind2: 31062018 false) 
	#(372 1 #liftFirstValue: 28148738 false) 
	#(667 1 #liftFirstValue: 61562881 false) 
	#(667 1 #liftFirstValue: 61562882 false) 
	#(450 0 #reduceActionFor_extern_alias_directives1: 35785729 false) 
	#(459 2 #reduceActionForunchecked_statement1: 36441089 false) 
	#(664 2 #reduceActionForunsafe_statement1: 61391873 false) 
	#(381 1 #reduceActionForextern_alias_directives1: 28930049 false) 
	#(380 1 #reduceActionFor_extern_alias_directives2: 28888066 false) 
	#(309 2 #reduceActionForunary_expression4: 19496965 false) 
	#(253 1 #liftFirstValue: 13390850 false) 
	#(252 2 #reduceActionForsimple_name1: 13317121 false) 
	#(196 2 #reduceActionFornamespace_or_type_name1: 8041473 false) 
	#(404 1 #reduceActionForexplicitly_typed_local_variable_declarator1: 31542273 false) 
	#(400 2 #reduceActionForexplicitly_typed_local_variable_declaration1: 31232001 false) 
	#(403 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 31474689 false) 
	#(666 1 #reduceActionForextern_alias_directives1: 61518849 false) 
	#(665 2 #reduceActionForpointer_type1: 61484033 false) 
	#(200 2 #reduceActionFornullable_value_type1: 8444929 false) 
	#(215 2 #reduceActionForarray_type1: 9484289 false) 
	#(218 1 #reduceActionForextern_alias_directives1: 9806849 false) 
	#(237 0 #reduceActionFor_attribute_target_specifier1: 10951681 false) 
	#(234 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 10769409 false) 
	#(273 2 #reduceActionForpost_increment_expression1: 15585281 false) 
	#(274 2 #reduceActionForpost_increment_expression1: 15686657 false) 
	#(371 1 #reduceActionForref_kind1: 27902983 false) 
	#(371 1 #reduceActionForref_kind1: 27902984 false) 
	#(371 1 #reduceActionForref_kind1: 27902981 false) 
	#(371 1 #reduceActionForref_kind1: 27902979 false) 
	#(371 1 #reduceActionForref_kind1: 27902980 false) 
	#(371 1 #reduceActionForref_kind1: 27902982 false) 
	#(371 1 #reduceActionForref_kind1: 27902987 false) 
	#(371 1 #reduceActionForref_kind1: 27902977 false) 
	#(371 1 #reduceActionForref_kind1: 27902988 false) 
	#(371 1 #reduceActionForref_kind1: 27902986 false) 
	#(371 1 #reduceActionForref_kind1: 27902985 false) 
	#(394 1 #reduceActionForref_local_function_body1: 30416897 false) 
	#(385 2 #reduceActionForlocal_function_declaration2: 29281282 false) 
	#(392 1 #liftFirstValue: 30163969 false) 
	#(387 2 #liftFirstValue: 29553666 false) 
	#(392 1 #liftFirstValue: 30163970 false) 
	#(393 1 #reduceActionForref_local_function_body1: 30227457 false) 
	#(385 2 #reduceActionForlocal_function_declaration2: 29281281 false) 
	#(391 1 #liftFirstValue: 30093314 false) 
	#(508 1 #liftFirstValue: 42080257 false) 
	#(389 2 #reduceActionForextern_alias_directives2: 29688834 false) 
	#(391 1 #liftFirstValue: 30093313 false) 
	#(508 1 #liftFirstValue: 42080258 false) 
	#(384 2 #reduceActionFordeclaration_statement1: 29116417 false) 
	#(396 2 #reduceActionForimplicitly_typed_local_variable_declaration1: 30734337 false) 
	#(384 2 #reduceActionFordeclaration_statement1: 29116418 false) 
	#(417 2 #reduceActionForexpression_statement1: 32718849 false) 
	#(665 2 #reduceActionForpointer_type1: 61484034 false) 
	#(343 1 #liftFirstValue: 25550851 false) 
	#(343 1 #liftFirstValue: 25550850 false) 
	#(343 1 #liftFirstValue: 25550849 false) 
	#(339 1 #reduceActionFor_extern_alias_directives2: 24990722 false) 
	#(340 1 #reduceActionForinterpolated_regular_string1: 25092097 false) 
	#(342 1 #liftFirstValue: 25450498 false) 
	#(345 1 #reduceActionFor_extern_alias_directives2: 25777154 false) 
	#(346 1 #reduceActionForinterpolated_regular_string1: 25876481 false) 
	#(197 1 #liftFirstValue: 8292354 false) 
	#(331 2 #reduceActionForthrow_expression1: 23966721 false) 
	#(355 1 #reduceActionForquery_body_clause1: 26649601 false) 
	#(350 2 #reduceActionForquery_expression1: 26305537 false) 
	#(353 1 #reduceActionFor_extern_alias_directives2: 26514434 false) 
	#(354 1 #reduceActionForquery_body_clauses1: 26564609 false) 
	#(355 1 #reduceActionForquery_body_clause2: 26649602 false) 
	#(355 1 #reduceActionForquery_body_clause3: 26649603 false) 
	#(355 1 #reduceActionForquery_body_clause4: 26649604 false) 
	#(355 1 #reduceActionForquery_body_clause5: 26649605 false) 
	#(355 1 #reduceActionForquery_body_clause6: 26649606 false) 
	#(332 2 #reduceActionFordeclaration_expression1: 24044545 false) 
	#(512 1 #reduceActionForref_method_body3: 42401795 false) 
	#(512 1 #reduceActionForref_local_function_body1: 42401793 false) 
	#(500 2 #reduceActionFormethod_declaration2: 41160706 false) 
	#(511 1 #reduceActionForref_method_body3: 42238980 false) 
	#(511 1 #reduceActionForref_local_function_body1: 42238977 false) 
	#(500 2 #reduceActionFormethod_declaration2: 41160705 false) 
	#(507 1 #liftFirstValue: 41913354 false) 
	#(551 1 #liftFirstValue: 46728201 false) 
	#(526 1 #liftFirstValue: 43725834 false) 
	#(544 1 #liftFirstValue: 45846538 false) 
	#(506 1 #liftFirstValue: 41859074 false) 
	#(551 1 #liftFirstValue: 46728202 false) 
	#(507 1 #liftFirstValue: 41913355 false) 
	#(557 1 #liftFirstValue: 47515651 false) 
	#(526 1 #liftFirstValue: 43725835 false) 
	#(544 1 #liftFirstValue: 45846539 false) 
	#(568 1 #liftFirstValue: 48898053 false) 
	#(659 1 #liftFirstValue: 60116994 false) 
	#(551 1 #liftFirstValue: 46728196 false) 
	#(496 1 #liftFirstValue: 40726532 false) 
	#(526 1 #liftFirstValue: 43725828 false) 
	#(507 1 #liftFirstValue: 41913348 false) 
	#(544 1 #liftFirstValue: 45846532 false) 
	#(490 1 #liftFirstValue: 40198148 false) 
	#(568 1 #liftFirstValue: 48898051 false) 
	#(507 1 #liftFirstValue: 41913345 false) 
	#(551 1 #liftFirstValue: 46728193 false) 
	#(526 1 #liftFirstValue: 43725825 false) 
	#(496 1 #liftFirstValue: 40726529 false) 
	#(544 1 #liftFirstValue: 45846529 false) 
	#(490 1 #liftFirstValue: 40198145 false) 
	#(507 1 #liftFirstValue: 41913353 false) 
	#(526 1 #liftFirstValue: 43725833 false) 
	#(551 1 #liftFirstValue: 46728200 false) 
	#(544 1 #liftFirstValue: 45846537 false) 
	#(526 1 #liftFirstValue: 43725829 false) 
	#(496 1 #liftFirstValue: 40726533 false) 
	#(551 1 #liftFirstValue: 46728197 false) 
	#(507 1 #liftFirstValue: 41913349 false) 
	#(544 1 #liftFirstValue: 45846533 false) 
	#(490 1 #liftFirstValue: 40198149 false) 
	#(568 1 #liftFirstValue: 48898052 false) 
	#(507 1 #liftFirstValue: 41913347 false) 
	#(526 1 #liftFirstValue: 43725827 false) 
	#(496 1 #liftFirstValue: 40726531 false) 
	#(551 1 #liftFirstValue: 46728195 false) 
	#(544 1 #liftFirstValue: 45846531 false) 
	#(490 1 #liftFirstValue: 40198147 false) 
	#(568 1 #liftFirstValue: 48898050 false) 
	#(496 1 #liftFirstValue: 40726530 false) 
	#(526 1 #liftFirstValue: 43725826 false) 
	#(557 1 #liftFirstValue: 47515649 false) 
	#(551 1 #liftFirstValue: 46728194 false) 
	#(507 1 #liftFirstValue: 41913346 false) 
	#(544 1 #liftFirstValue: 45846530 false) 
	#(490 1 #liftFirstValue: 40198146 false) 
	#(568 1 #liftFirstValue: 48898049 false) 
	#(496 1 #liftFirstValue: 40726535 false) 
	#(551 1 #liftFirstValue: 46728199 false) 
	#(507 1 #liftFirstValue: 41913352 false) 
	#(526 1 #liftFirstValue: 43725832 false) 
	#(544 1 #liftFirstValue: 45846536 false) 
	#(507 1 #liftFirstValue: 41913350 false) 
	#(557 1 #liftFirstValue: 47515650 false) 
	#(526 1 #liftFirstValue: 43725830 false) 
	#(496 1 #liftFirstValue: 40726534 false) 
	#(544 1 #liftFirstValue: 45846534 false) 
	#(574 1 #reduceActionForstatic_constructor_modifiers1: 49593345 false) 
	#(557 1 #liftFirstValue: 47515653 false) 
	#(526 1 #liftFirstValue: 43725837 false) 
	#(496 1 #liftFirstValue: 40726538 false) 
	#(551 1 #liftFirstValue: 46728204 false) 
	#(506 1 #liftFirstValue: 41859075 false) 
	#(544 1 #liftFirstValue: 45846541 false) 
	#(568 1 #liftFirstValue: 48898055 false) 
	#(551 1 #liftFirstValue: 46728198 false) 
	#(526 1 #liftFirstValue: 43725831 false) 
	#(507 1 #liftFirstValue: 41913351 false) 
	#(544 1 #liftFirstValue: 45846535 false) 
	#(496 1 #liftFirstValue: 40726536 false) 
	#(488 1 #reduceActionFor_extern_alias_directives2: 40045570 false) 
	#(489 1 #reduceActionForextern_alias_directives1: 40094721 false) 
	#(494 1 #reduceActionFor_extern_alias_directives2: 40587266 false) 
	#(495 1 #reduceActionForextern_alias_directives1: 40631297 false) 
	#(504 1 #reduceActionFor_extern_alias_directives2: 41713666 false) 
	#(505 1 #reduceActionForextern_alias_directives1: 41759745 false) 
	#(506 1 #liftFirstValue: 41859073 false) 
	#(524 1 #reduceActionFor_extern_alias_directives2: 43569154 false) 
	#(525 1 #reduceActionForextern_alias_directives1: 43618305 false) 
	#(542 1 #reduceActionFor_extern_alias_directives2: 45708290 false) 
	#(543 1 #reduceActionForextern_alias_directives1: 45751297 false) 
	#(549 1 #reduceActionFor_extern_alias_directives2: 46577666 false) 
	#(550 1 #reduceActionForextern_alias_directives1: 46624769 false) 
	#(556 1 #reduceActionForextern_alias_directives1: 47408129 false) 
	#(566 1 #reduceActionFor_extern_alias_directives2: 48721922 false) 
	#(567 1 #reduceActionForextern_alias_directives1: 48778241 false) 
	#(496 1 #liftFirstValue: 40726537 false) 
	#(557 1 #liftFirstValue: 47515652 false) 
	#(551 1 #liftFirstValue: 46728203 false) 
	#(526 1 #liftFirstValue: 43725836 false) 
	#(544 1 #liftFirstValue: 45846540 false) 
	#(568 1 #liftFirstValue: 48898054 false) 
	#(194 1 #liftFirstValue: 7956481 false) 
	#(189 0 #reduceActionFor_extern_alias_directives1: 7382017 false) 
	#(630 1 #reduceActionFor_extern_alias_directives2: 57207810 false) 
	#(631 1 #reduceActionFor_extern_alias_directives2: 57254913 false) 
	#(632 1 #reduceActionForextern_alias_directives1: 57306113 false) 
	#(184 2 #reduceActionForextern_alias_directives2: 6916098 false) 
	#(645 1 #liftFirstValue: 58701825 false) 
	#(643 1 #reduceActionForinterpolated_regular_string1: 58514433 false) 
	#(646 0 #reduceActionFor_attribute_arguments1: 58733569 false) 
	#(641 2 #reduceActionForref_kind2: 58305537 false) 
	#(656 0 #nil 60015617 false) 
	#(658 1 #liftFirstValue: 60072962 false) 
	#(466 2 #reduceActionForextern_alias_directives2: 37132290 false) 
	#(578 2 #reduceActionForextern_alias_directives2: 50459650 false) 
	#(592 2 #reduceActionForextern_alias_directives2: 52125698 false) 
	#(620 2 #reduceActionForextern_alias_directives2: 55849986 false) 
	#(628 2 #reduceActionForextern_alias_directives2: 56973314 false) 
	#(205 2 #reduceActionFortuple_type_element2: 8706050 false) 
	#(204 1 #reduceActionFor_____tuple_type_element__element___1: 8643585 false) 
	#(257 1 #reduceActionFor_____tuple_type_element__element___1: 13596673 false) 
	#(254 3 #reduceActionForparenthesized_expression1: 13441025 false) 
	#(270 1 #reduceActionForinterpolated_regular_string1: 15321089 false) 
	#(414 3 #reduceActionForlocal_constant_declaration1: 32422913 false) 
	#(415 1 #reduceActionForinterpolated_regular_string1: 32500737 false) 
	#(335 3 #reduceActionForanonymous_method_expression1: 24554497 false) 
	#(434 1 #liftFirstValue: 34429953 false) 
	#(439 1 #reduceActionForinterpolated_regular_string1: 34733057 false) 
	#(433 1 #liftFirstValue: 34371586 false) 
	#(434 1 #reduceActionForfor_initializer2: 34429954 false) 
	#(375 1 #liftFirstValue: 28383233 false) 
	#(444 3 #reduceActionForgoto_statement3: 35241987 false) 
	#(444 3 #reduceActionForgoto_statement1: 35241985 false) 
	#(376 1 #liftFirstValue: 28421121 false) 
	#(308 1 #reduceActionFornamed_entity_target3: 19333123 false) 
	#(308 1 #reduceActionForthis_access1: 19333122 false) 
	#(308 1 #liftFirstValue: 19333121 false) 
	#(308 1 #liftFirstValue: 19333125 false) 
	#(308 1 #liftFirstValue: 19333124 false) 
	#(307 0 #reduceActionFor______Identifier___type_argument_list__typeArguments___1: 19267585 false) 
	#(221 1 #reduceActionForextern_alias_directives1: 10005505 false) 
	#(220 1 #reduceActionFor_extern_alias_directives2: 9963522 false) 
	#(293 1 #reduceActionFormember_declarator1: 17884161 false) 
	#(293 1 #reduceActionFormember_declarator2: 17884162 false) 
	#(293 1 #reduceActionFormember_declarator2: 17884164 false) 
	#(291 1 #reduceActionFor_extern_alias_directives2: 17701890 false) 
	#(292 1 #reduceActionForinterpolated_regular_string1: 17760257 false) 
	#(293 1 #reduceActionFormember_declarator2: 17884163 false) 
	#(279 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 16284673 false) 
	#(275 3 #reduceActionForobject_creation_expression2: 15788034 false) 
	#(277 1 #liftFirstValue: 16070657 false) 
	#(277 1 #liftFirstValue: 16070658 false) 
	#(588 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 51554305 false) 
	#(287 3 #reduceActionForarray_creation_expression2: 17087490 false) 
	#(287 3 #reduceActionForarray_creation_expression3: 17087491 false) 
	#(445 3 #reduceActionForreturn_statement2: 35383298 false) 
	#(226 1 #liftFirstValue: 10291201 false) 
	#(445 3 #reduceActionForreturn_statement1: 35383297 false) 
	#(446 3 #reduceActionForthrow_statement1: 35493889 false) 
	#(447 3 #reduceActionFortry_statement1: 35546113 false) 
	#(448 1 #reduceActionFor_extern_alias_directives2: 35729409 false) 
	#(449 1 #reduceActionForextern_alias_directives1: 35746817 false) 
	#(447 3 #reduceActionFortry_statement2: 35546114 false) 
	#(296 0 #reduceActionFor_generic_dimension_specifier1: 18475009 false) 
	#(462 1 #liftFirstValue: 36708354 false) 
	#(462 1 #liftFirstValue: 36708353 false) 
	#(463 3 #reduceActionForyield_statement2: 36777986 false) 
	#(379 3 #reduceActionForblock1: 28822529 false) 
	#(381 2 #reduceActionForextern_alias_directives2: 28930050 false) 
	#(383 3 #reduceActionForlabeled_statement1: 29046785 false) 
	#(225 1 #liftFirstValue: 10246145 false) 
	#(224 1 #reduceActionForinterpolated_regular_string1: 10159105 false) 
	#(401 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31369217 false) 
	#(666 2 #reduceActionForextern_alias_directives2: 61518850 false) 
	#(218 2 #reduceActionForextern_alias_directives2: 9806850 false) 
	#(234 1 #reduceActionFor_extern_alias_directives2: 10769410 false) 
	#(235 1 #reduceActionForinterpolated_regular_string1: 10817537 false) 
	#(237 1 #reduceActionFor_extern_alias_directives2: 10951682 false) 
	#(245 1 #reduceActionForinterpolated_regular_string1: 12401665 false) 
	#(248 0 #reduceActionForScanFormat1: 12774401 true) 
	#(246 1 #reduceActionForinterpolation1: 12584961 false) 
	#(251 1 #reduceActionForinterpolated_regular_string1: 13130753 false) 
	#(371 2 #reduceActionForref_kind2: 27902978 false) 
	#(370 3 #reduceActionForassignment1: 27819009 false) 
	#(509 1 #liftFirstValue: 42117121 false) 
	#(388 3 #reduceActionForLocalFunctionHeader1: 29665281 false) 
	#(408 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 31859713 false) 
	#(405 3 #reduceActionForref_local_variable_declaration1: 31689729 false) 
	#(396 3 #reduceActionForimplicitly_typed_local_variable_declaration2: 30734338 false) 
	#(338 3 #reduceActionForexplicit_anonymous_function_signature1: 24886273 false) 
	#(344 3 #reduceActionForimplicit_anonymous_function_signature1: 25619457 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21229572 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21229570 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21229571 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 21577730 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 21577731 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 21835778 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 21835779 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070274 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070276 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070277 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070280 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070278 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070279 false) 
	#(227 1 #liftFirstValue: 10328067 false) 
	#(227 1 #liftFirstValue: 10328066 false) 
	#(227 1 #liftFirstValue: 10328065 false) 
	#(230 1 #liftFirstValue: 10509313 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22070275 false) 
	#(324 3 #reduceActionFormultiplicative_expression4: 22755331 false) 
	#(324 3 #reduceActionFormultiplicative_expression4: 22755330 false) 
	#(325 3 #reduceActionFormultiplicative_expression4: 23003138 false) 
	#(326 3 #reduceActionFormultiplicative_expression4: 23136258 false) 
	#(327 3 #reduceActionFormultiplicative_expression4: 23277570 false) 
	#(328 3 #reduceActionFormultiplicative_expression4: 23437314 false) 
	#(330 3 #reduceActionFormultiplicative_expression4: 23775234 false) 
	#(329 3 #reduceActionFormultiplicative_expression4: 23604226 false) 
	#(348 1 #liftFirstValue: 26128385 false) 
	#(334 3 #reduceActionForlambda_expression1: 24436737 false) 
	#(348 1 #liftFirstValue: 26128387 false) 
	#(348 1 #liftFirstValue: 26128386 false) 
	#(348 1 #liftFirstValue: 26128388 false) 
	#(360 2 #reduceActionFororderby_clause1: 27243521 false) 
	#(361 1 #reduceActionFororderings1: 27285505 false) 
	#(363 0 #reduceActionFor_attribute_target_specifier1: 27398145 false) 
	#(357 2 #reduceActionForref_kind2: 26836993 false) 
	#(368 0 #reduceActionFor_query_continuation1: 27711489 false) 
	#(365 1 #reduceActionForselect_or_group_clause1: 27502593 false) 
	#(365 1 #reduceActionForselect_or_group_clause2: 27502594 false) 
	#(354 2 #reduceActionForquery_body_clauses2: 26564610 false) 
	#(574 2 #reduceActionForstatic_constructor_modifiers5: 49593349 false) 
	#(574 2 #reduceActionForstatic_constructor_modifiers2: 49593346 false) 
	#(489 2 #reduceActionForextern_alias_directives2: 40094722 false) 
	#(495 2 #reduceActionForextern_alias_directives2: 40631298 false) 
	#(502 2 #reduceActionForextern_alias_directives2: 41323522 false) 
	#(505 2 #reduceActionForextern_alias_directives2: 41759746 false) 
	#(525 2 #reduceActionForextern_alias_directives2: 43618306 false) 
	#(543 2 #reduceActionForextern_alias_directives2: 45751298 false) 
	#(550 2 #reduceActionForextern_alias_directives2: 46624770 false) 
	#(556 2 #reduceActionForextern_alias_directives2: 47408130 false) 
	#(558 1 #reduceActionForoperator_declarator1: 47593473 false) 
	#(558 1 #reduceActionForoperator_declarator2: 47593474 false) 
	#(558 1 #reduceActionForoperator_declarator3: 47593475 false) 
	#(567 2 #reduceActionForextern_alias_directives2: 48778242 false) 
	#(182 4 #reduceActionForextern_alias_directive1: 6801409 false) 
	#(187 3 #reduceActionForusing_namespace_directive1: 7225345 false) 
	#(635 1 #liftFirstValue: 57783297 false) 
	#(176 4 #reduceActionForcompilation_unit1: 6158337 false) 
	#(189 1 #reduceActionFor_extern_alias_directives2: 7382018 false) 
	#(190 1 #reduceActionForextern_alias_directives1: 7454721 false) 
	#(632 2 #reduceActionForextern_alias_directives2: 57306114 false) 
	#(639 4 #reduceActionForattribute_section1: 58006529 false) 
	#(648 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 59025409 false) 
	#(644 2 #reduceActionForattribute1: 58621953 false) 
	#(646 1 #reduceActionFor_extern_alias_directives2: 58733570 false) 
	#(178 3 #reduceActionForqualified_identifier2: 6389762 false) 
	#(656 1 #liftFirstValue: 60015618 false) 
	#(177 4 #reduceActionFornamespace_declaration1: 6282241 false) 
	#(615 0 #reduceActionFor_attribute_target_specifier1: 55488513 false) 
	#(258 3 #reduceActionFortuple_element2: 13654018 false) 
	#(318 4 #reduceActionForcast_expression1: 21083137 false) 
	#(203 2 #reduceActionForref_kind2: 8643585 false) 
	#(202 4 #reduceActionFortuple_type1: 8583169 false) 
	#(204 2 #reduceActionFor_____tuple_type_element__element___2: 8643586 false) 
	#(256 2 #reduceActionForref_kind2: 13596673 false) 
	#(255 4 #reduceActionFortuple_expression1: 13535233 false) 
	#(257 2 #reduceActionFor_____tuple_type_element__element___2: 13596674 false) 
	#(335 4 #reduceActionForanonymous_method_expression2: 24554498 false) 
	#(272 4 #reduceActionForbase_access1: 15447041 false) 
	#(272 4 #reduceActionForbase_access2: 15447042 false) 
	#(300 4 #reduceActionForchecked_expression1: 18669569 false) 
	#(302 4 #reduceActionFordefault_value_expression2: 18821122 false) 
	#(674 1 #reduceActionForinterpolated_regular_string1: 62516225 false) 
	#(435 0 #nil 34528257 false) 
	#(444 4 #reduceActionForgoto_statement2: 35241986 false) 
	#(304 4 #reduceActionFornameof_expression1: 19153921 false) 
	#(305 2 #reduceActionFornamed_entity1: 19221505 false) 
	#(219 3 #reduceActionForrank_specifier1: 9912321 false) 
	#(221 2 #reduceActionForextern_alias_directives2: 10005506 false) 
	#(290 3 #reduceActionForanonymous_object_initializer1: 17575937 false) 
	#(282 1 #reduceActionForinitializer_target1: 16556033 false) 
	#(279 1 #reduceActionFor_extern_alias_directives2: 16284674 false) 
	#(280 1 #reduceActionForinterpolated_regular_string1: 16345089 false) 
	#(285 1 #reduceActionForinterpolated_regular_string1: 16839681 false) 
	#(286 1 #reduceActionForelement_initializer1: 16973825 false) 
	#(499 1 #liftFirstValue: 41100289 false) 
	#(589 1 #reduceActionForinterpolated_regular_string1: 51617793 false) 
	#(499 1 #liftFirstValue: 41100290 false) 
	#(588 1 #reduceActionFor_extern_alias_directives2: 51554306 false) 
	#(672 4 #reduceActionForsizeof_expression1: 62281729 false) 
	#(454 0 #nil 36137985 false) 
	#(457 2 #reduceActionForfinally_clause1: 36335617 false) 
	#(447 4 #reduceActionFortry_statement3: 35546115 false) 
	#(449 2 #reduceActionForextern_alias_directives2: 35746818 false) 
	#(450 2 #reduceActionForextern_alias_directives2: 35785730 false) 
	#(448 2 #reduceActionForextern_alias_directives2: 35729410 false) 
	#(298 0 #reduceActionFor_extern_alias_directives1: 18595841 false) 
	#(295 2 #reduceActionForunbound_type_name1: 18251777 false) 
	#(296 1 #reduceActionFor_extern_alias_directives2: 18475010 false) 
	#(294 4 #reduceActionFortypeof_expression1: 18098177 false) 
	#(294 4 #reduceActionFortypeof_expression1: 18098178 false) 
	#(294 4 #reduceActionFortypeof_expression1: 18098179 false) 
	#(301 4 #reduceActionForunchecked_expression1: 18743297 false) 
	#(463 4 #reduceActionForyield_statement1: 36777985 false) 
	#(193 4 #reduceActionForqualified_alias_member1: 7827457 false) 
	#(223 3 #reduceActionFortype_argument_list1: 10084353 false) 
	#(196 4 #reduceActionFornamespace_or_type_name2: 8041474 false) 
	#(687 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 63892481 false) 
	#(413 1 #liftFirstValue: 32356353 false) 
	#(404 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31542274 false) 
	#(413 1 #liftFirstValue: 32356354 false) 
	#(413 1 #liftFirstValue: 32356355 false) 
	#(403 2 #reduceActionFor_____tuple_type_element__element___2: 31474690 false) 
	#(238 2 #reduceActionForref_kind2: 10990593 false) 
	#(268 4 #reduceActionForinvocation_expression1: 15124481 false) 
	#(236 2 #reduceActionForargument1: 10900481 false) 
	#(239 1 #reduceActionForargument_value1: 11041793 false) 
	#(669 4 #reduceActionForpointer_member_access1: 61920257 false) 
	#(264 4 #reduceActionFormember_access1: 14049281 false) 
	#(269 4 #reduceActionForelement_access1: 15214593 false) 
	#(243 4 #reduceActionForinterpolated_regular_string2: 12112898 false) 
	#(246 2 #reduceActionForinterpolation2: 12584962 false) 
	#(249 4 #reduceActionForinterpolated_regular_string2: 12810242 false) 
	#(264 4 #reduceActionFormember_access1: 14049283 false) 
	#(264 4 #reduceActionFormember_access1: 14049282 false) 
	#(314 4 #reduceActionForinvocation_expression1: 20502529 false) 
	#(314 4 #reduceActionForinvocation_expression1: 20502530 false) 
	#(386 4 #liftFirstValue: 29527041 false) 
	#(393 3 #reduceActionForlocal_function_body2: 30227458 false) 
	#(393 3 #reduceActionForlocal_function_body2: 30227459 false) 
	#(513 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 42543105 false) 
	#(406 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31780865 false) 
	#(399 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31104001 false) 
	#(340 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25092098 false) 
	#(341 3 #reduceActionForexplicit_anonymous_function_paramenter1: 25299969 false) 
	#(346 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25876482 false) 
	#(334 4 #reduceActionForlambda_expression2: 24436738 false) 
	#(233 1 #liftFirstValue: 10692609 false) 
	#(231 2 #reduceActionFordeclaration_expression1: 10553345 false) 
	#(232 1 #liftFirstValue: 10638337 false) 
	#(228 2 #reduceActionFordeclaration_expression1: 10398721 false) 
	#(229 1 #liftFirstValue: 10471425 false) 
	#(349 2 #reduceActionForRefExpression1: 26241025 false) 
	#(364 1 #reduceActionForref_kind1: 27448321 false) 
	#(364 1 #reduceActionForordering_direction2: 27448322 false) 
	#(362 2 #reduceActionForordering1: 27337729 false) 
	#(363 1 #reduceActionFor_extern_alias_directives2: 27398146 false) 
	#(366 2 #reduceActionForref_kind2: 27563009 false) 
	#(352 3 #reduceActionForquery_body1: 26432513 false) 
	#(368 1 #reduceActionFor_extern_alias_directives2: 27711490 false) 
	#(511 3 #reduceActionForlocal_function_body2: 42238978 false) 
	#(511 3 #reduceActionForlocal_function_body2: 42238979 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers6: 49593350 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers7: 49593351 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers3: 49593347 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers3: 49593348 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers3: 49593357 false) 
	#(498 1 #reduceActionForvariable_declarator1: 40993793 false) 
	#(497 1 #reduceActionForinterpolated_regular_string1: 40869889 false) 
	#(510 1 #reduceActionFormember_name1: 42144769 false) 
	#(214 1 #liftFirstValue: 9452545 false) 
	#(548 4 #reduceActionForindexer_declaration1: 46395393 false) 
	#(564 1 #reduceActionForref_method_body3: 48477187 false) 
	#(564 1 #reduceActionForref_local_function_body1: 48477185 false) 
	#(555 4 #reduceActionForoperator_declaration1: 47301633 false) 
	#(572 1 #reduceActionForref_method_body3: 49299459 false) 
	#(572 1 #reduceActionForref_local_function_body1: 49299457 false) 
	#(565 4 #reduceActionForconstructor_declaration1: 48602113 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers7: 49593353 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers6: 49593352 false) 
	#(574 3 #reduceActionForstatic_constructor_modifiers6: 49593361 false) 
	#(188 4 #reduceActionForusing_static_directive1: 7303169 false) 
	#(634 2 #reduceActionForref_kind2: 57696257 false) 
	#(190 2 #reduceActionForextern_alias_directives2: 7454722 false) 
	#(639 5 #reduceActionForattribute_section2: 58006530 false) 
	#(643 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 58514434 false) 
	#(648 1 #reduceActionFor_extern_alias_directives2: 59025410 false) 
	#(649 1 #reduceActionForinterpolated_regular_string1: 59086849 false) 
	#(651 1 #reduceActionForinterpolated_regular_string1: 59322369 false) 
	#(468 0 #nil 37369857 false) 
	#(594 0 #nil 52343809 false) 
	#(615 1 #reduceActionFor_extern_alias_directives2: 55488514 false) 
	#(625 5 #reduceActionFordelegate_declaration1: 56378369 false) 
	#(270 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 15321090 false) 
	#(416 3 #reduceActionForconst_declarator1: 32613377 false) 
	#(415 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 32500738 false) 
	#(436 1 #liftFirstValue: 34579457 false) 
	#(435 1 #liftFirstValue: 34528258 false) 
	#(439 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 34733058 false) 
	#(420 5 #reduceActionForif_statement1: 33126401 false) 
	#(460 5 #reduceActionForlock_statement1: 36499457 false) 
	#(307 2 #reduceActionFor______Identifier___type_argument_list__typeArguments___2: 19267586 false) 
	#(293 3 #reduceActionFormember_declarator5: 17884165 false) 
	#(290 4 #reduceActionForanonymous_object_initializer2: 17575938 false) 
	#(292 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 17760258 false) 
	#(276 0 #nil 15992833 false) 
	#(278 3 #reduceActionForobject_initializer1: 16156673 false) 
	#(284 3 #reduceActionForcollection_initializer1: 16706561 false) 
	#(587 3 #reduceActionForarray_initializer1: 51423233 false) 
	#(217 0 #reduceActionFor_extern_alias_directives1: 9762817 false) 
	#(288 5 #reduceActionFordelegate_creation_expression1: 17389569 false) 
	#(303 5 #reduceActionForstackalloc_expression1: 18891777 false) 
	#(423 0 #reduceActionFor_extern_alias_directives1: 33504257 false) 
	#(421 5 #reduceActionForswitch_statement1: 33366017 false) 
	#(660 0 #nil 60154881 false) 
	#(454 1 #liftFirstValue: 36137986 false) 
	#(451 3 #reduceActionForspecific_catch_clause2: 35852290 false) 
	#(456 2 #reduceActionForgeneral_catch_clause1: 36269057 false) 
	#(299 1 #reduceActionForextern_alias_directives1: 18621441 false) 
	#(298 1 #reduceActionFor_extern_alias_directives2: 18595842 false) 
	#(461 5 #reduceActionForusing_statement1: 36597761 false) 
	#(430 5 #reduceActionForwhile_statement1: 34021377 false) 
	#(224 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10159106 false) 
	#(402 2 #reduceActionForref_kind2: 31474689 false) 
	#(235 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10817538 false) 
	#(239 2 #reduceActionForargument_value2: 11041794 false) 
	#(239 2 #reduceActionForargument_value4: 11041796 false) 
	#(239 2 #reduceActionForargument_value3: 11041795 false) 
	#(311 0 #reduceActionFor_extern_alias_directives1: 20045825 false) 
	#(315 5 #reduceActionFornull_conditional_element_access1: 20741121 false) 
	#(245 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 12401666 false) 
	#(246 3 #reduceActionForinterpolation3: 12584963 false) 
	#(247 2 #reduceActionForref_kind2: 12704769 false) 
	#(251 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 13130754 false) 
	#(394 4 #reduceActionForref_local_function_body2: 30416898 false) 
	#(513 1 #reduceActionFor_extern_alias_directives2: 42543106 false) 
	#(514 1 #reduceActionFor_extern_alias_directives2: 42601473 false) 
	#(515 1 #reduceActionForinterpolated_regular_string1: 42741761 false) 
	#(514 1 #reduceActionForinterpolated_regular_string1: 42601475 false) 
	#(519 0 #nil 43078657 false) 
	#(408 2 #reduceActionFor_____tuple_type_element__element___2: 31859714 false) 
	#(351 5 #reduceActionForfrom_clause1: 26357761 false) 
	#(333 5 #reduceActionForconditional_expression3: 24127491 false) 
	#(333 5 #reduceActionForconditional_expression3: 24127490 false) 
	#(356 4 #reduceActionForlet_clause1: 26771457 false) 
	#(361 3 #reduceActionFororderings2: 27285506 false) 
	#(512 4 #reduceActionForref_method_body2: 42401794 false) 
	#(491 1 #reduceActionForinterpolated_regular_string1: 40283137 false) 
	#(493 5 #reduceActionForfield_declaration1: 40489985 false) 
	#(523 5 #reduceActionForproperty_declaration1: 43371521 false) 
	#(548 5 #reduceActionForindexer_declaration2: 46395394 false) 
	#(534 0 #nil 44695553 false) 
	#(532 0 #nil 44544001 false) 
	#(536 0 #reduceActionFor_extern_alias_directives1: 44847105 false) 
	#(560 1 #liftFirstValue: 47851523 false) 
	#(562 1 #liftFirstValue: 48123916 false) 
	#(562 1 #liftFirstValue: 48123909 false) 
	#(562 1 #liftFirstValue: 48123910 false) 
	#(562 1 #liftFirstValue: 48123907 false) 
	#(562 1 #liftFirstValue: 48123905 false) 
	#(560 1 #liftFirstValue: 47851521 false) 
	#(560 1 #liftFirstValue: 47851525 false) 
	#(562 1 #liftFirstValue: 48123906 false) 
	#(560 1 #liftFirstValue: 47851522 false) 
	#(560 1 #liftFirstValue: 47851526 false) 
	#(562 1 #liftFirstValue: 48123908 false) 
	#(562 1 #liftFirstValue: 48123918 false) 
	#(562 1 #liftFirstValue: 48123913 false) 
	#(562 1 #liftFirstValue: 48123920 false) 
	#(562 1 #liftFirstValue: 48123915 false) 
	#(562 1 #liftFirstValue: 48123919 false) 
	#(562 1 #liftFirstValue: 48123912 false) 
	#(560 1 #liftFirstValue: 47851528 false) 
	#(560 1 #liftFirstValue: 47851527 false) 
	#(562 1 #liftFirstValue: 48123911 false) 
	#(560 1 #liftFirstValue: 47851524 false) 
	#(562 1 #liftFirstValue: 48123917 false) 
	#(562 1 #liftFirstValue: 48123914 false) 
	#(186 5 #reduceActionForusing_alias_directive1: 7118849 false) 
	#(633 4 #reduceActionForattribute_section1: 57444353 false) 
	#(653 1 #liftFirstValue: 59549697 false) 
	#(650 2 #reduceActionForpositional_argument1: 59223041 false) 
	#(647 3 #reduceActionForanonymous_object_initializer1: 58785793 false) 
	#(647 3 #reduceActionForanonymous_object_initializer1: 58785795 false) 
	#(472 0 #reduceActionFor_class_base1: 37704705 false) 
	#(468 1 #liftFirstValue: 37369858 false) 
	#(580 0 #reduceActionFor_struct_interfaces1: 50676737 false) 
	#(599 0 #reduceActionFor_struct_interfaces1: 52818945 false) 
	#(594 1 #liftFirstValue: 52343810 false) 
	#(617 1 #liftFirstValue: 55605249 false) 
	#(616 2 #reduceActionForref_kind2: 55519233 false) 
	#(616 2 #reduceActionForref_kind2: 55519234 false) 
	#(622 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 56017921 false) 
	#(625 6 #reduceActionFordelegate_declaration2: 56378370 false) 
	#(676 1 #reduceActionForordering_direction2: 62741506 false) 
	#(675 3 #reduceActionForfixed_pointer_declarator1: 62660609 false) 
	#(673 6 #reduceActionForfixed_statement1: 62393345 false) 
	#(674 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 62516226 false) 
	#(437 0 #nil 34619393 false) 
	#(275 6 #reduceActionForobject_creation_expression1: 15788033 false) 
	#(276 1 #liftFirstValue: 15992834 false) 
	#(282 3 #reduceActionForinitializer_target2: 16556034 false) 
	#(286 3 #reduceActionForelement_initializer2: 16973826 false) 
	#(278 4 #reduceActionForobject_initializer2: 16156674 false) 
	#(280 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16345090 false) 
	#(283 1 #liftFirstValue: 16633858 false) 
	#(281 3 #reduceActionFormember_initializer1: 16475137 false) 
	#(283 1 #liftFirstValue: 16633857 false) 
	#(284 4 #reduceActionForcollection_initializer2: 16706562 false) 
	#(285 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16839682 false) 
	#(587 4 #reduceActionForarray_initializer2: 51423234 false) 
	#(589 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 51617794 false) 
	#(586 0 #nil 51376129 false) 
	#(217 1 #reduceActionFor_extern_alias_directives2: 9762818 false) 
	#(303 6 #reduceActionForstackalloc_expression2: 18891778 false) 
	#(423 1 #reduceActionFor_extern_alias_directives2: 33504258 false) 
	#(424 1 #reduceActionForextern_alias_directives1: 33547265 false) 
	#(426 1 #reduceActionForextern_alias_directives1: 33696769 false) 
	#(660 1 #liftFirstValue: 60154882 false) 
	#(451 4 #reduceActionForspecific_catch_clause1: 35852289 false) 
	#(295 4 #reduceActionForunbound_type_name2: 18251778 false) 
	#(297 3 #reduceActionForgeneric_dimension_specifier1: 18543617 false) 
	#(299 2 #reduceActionForextern_alias_directives2: 18621442 false) 
	#(295 4 #reduceActionForunbound_type_name3: 18251779 false) 
	#(684 3 #reduceActionForanonymous_object_initializer1: 63742977 false) 
	#(688 1 #liftFirstValue: 63966209 false) 
	#(687 2 #reduceActionFor_stackalloc_element_initializer______2: 63892482 false) 
	#(685 2 #reduceActionForstackalloc_initializer_element_list1: 63852545 false) 
	#(310 6 #reduceActionFornull_conditional_member_access1: 19919873 false) 
	#(246 4 #reduceActionForinterpolation4: 12584964 false) 
	#(390 4 #reduceActionForlocal_function_header1: 29794305 false) 
	#(521 1 #liftFirstValue: 43199491 false) 
	#(521 1 #liftFirstValue: 43199490 false) 
	#(521 1 #liftFirstValue: 43199489 false) 
	#(520 1 #liftFirstValue: 43139074 false) 
	#(519 1 #liftFirstValue: 43078658 false) 
	#(520 1 #liftFirstValue: 43139073 false) 
	#(469 3 #reduceActionFortype_parameter_list1: 37439489 false) 
	#(470 2 #reduceActionFortype_parameters1: 37522433 false) 
	#(397 4 #reduceActionForref_local_variable_declarator1: 30932993 false) 
	#(407 2 #reduceActionForref_kind2: 31859713 false) 
	#(367 4 #reduceActionForlet_clause1: 27617281 false) 
	#(369 3 #reduceActionForquery_continuation1: 27761665 false) 
	#(487 6 #reduceActionForconstant_declaration1: 39933953 false) 
	#(498 3 #reduceActionForvariable_declarator2: 40993794 false) 
	#(497 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40869890 false) 
	#(510 3 #reduceActionFormember_name2: 42144770 false) 
	#(523 6 #reduceActionForproperty_declaration2: 43371522 false) 
	#(541 6 #reduceActionForevent_declaration1: 45486081 false) 
	#(553 3 #reduceActionForindexer_body2: 47069186 false) 
	#(553 3 #reduceActionForindexer_body1: 47069185 false) 
	#(531 2 #reduceActionForref_kind2: 44350465 false) 
	#(534 1 #liftFirstValue: 44695554 false) 
	#(531 2 #reduceActionForaccessor_declarations2: 44350466 false) 
	#(532 1 #liftFirstValue: 44544002 false) 
	#(537 1 #reduceActionForextern_alias_directives1: 44896258 false) 
	#(537 1 #reduceActionForextern_alias_directives1: 44896259 false) 
	#(537 1 #reduceActionForextern_alias_directives1: 44896257 false) 
	#(536 1 #reduceActionFor_extern_alias_directives2: 44847106 false) 
	#(564 3 #reduceActionForlocal_function_body2: 48477186 false) 
	#(570 0 #nil 49111041 false) 
	#(572 3 #reduceActionForlocal_function_body2: 49299458 false) 
	#(575 1 #reduceActionForstatic_constructor_body3: 49935363 false) 
	#(575 1 #reduceActionForargument_value1: 49935361 false) 
	#(573 6 #reduceActionForstatic_constructor_declaration1: 49427457 false) 
	#(633 5 #reduceActionForattribute_section2: 57444354 false) 
	#(652 3 #reduceActionFornamed_argument1: 59438081 false) 
	#(649 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 59086850 false) 
	#(651 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 59322370 false) 
	#(179 5 #reduceActionFornamespace_body1: 6497281 false) 
	#(475 0 #reduceActionFor_extern_alias_directives1: 38008833 false) 
	#(472 1 #reduceActionFor_extern_alias_directives2: 37704706 false) 
	#(580 1 #reduceActionFor_extern_alias_directives2: 50676738 false) 
	#(597 0 #nil 52713473 false) 
	#(599 1 #reduceActionFor_extern_alias_directives2: 52818946 false) 
	#(622 1 #reduceActionFor_extern_alias_directives2: 56017922 false) 
	#(623 1 #reduceActionForinterpolated_regular_string1: 56079361 false) 
	#(614 7 #reduceActionForenum_declaration1: 55359489 false) 
	#(431 7 #reduceActionFordo_statement1: 34129921 false) 
	#(676 2 #reduceActionForref_kind2: 62741505 false) 
	#(437 1 #liftFirstValue: 34619394 false) 
	#(438 1 #reduceActionForfor_initializer2: 34668545 false) 
	#(420 7 #reduceActionForif_statement2: 33126402 false) 
	#(306 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 19267585 false) 
	#(313 5 #reduceActionFornull_conditional_projection_initializer1: 20331521 false) 
	#(287 7 #reduceActionForarray_creation_expression1: 17087489 false) 
	#(586 1 #liftFirstValue: 51376130 false) 
	#(427 2 #reduceActionForswitch_label3: 33777667 false) 
	#(422 3 #reduceActionForgeneric_dimension_specifier1: 33449985 false) 
	#(424 2 #reduceActionForextern_alias_directives2: 33547266 false) 
	#(425 2 #reduceActionForswitch_section1: 33640449 false) 
	#(426 2 #reduceActionForextern_alias_directives2: 33696770 false) 
	#(453 4 #reduceActionForlet_clause1: 36078593 false) 
	#(455 4 #reduceActionForexception_filter1: 36192257 false) 
	#(686 2 #reduceActionForref_kind2: 63892481 false) 
	#(311 2 #reduceActionForextern_alias_directives2: 20045826 false) 
	#(515 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42741762 false) 
	#(514 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42601474 false) 
	#(492 3 #reduceActionForconstant_declarator1: 40407041 false) 
	#(491 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40283138 false) 
	#(527 3 #reduceActionForproperty_body2: 43910146 false) 
	#(528 0 #reduceActionFor_property_initializer1: 44042241 false) 
	#(552 5 #reduceActionForindexer_declarator1: 46899201 false) 
	#(554 3 #reduceActionForref_indexer_body1: 47165441 false) 
	#(537 2 #reduceActionForaccessor_modifiers5: 44896261 false) 
	#(537 2 #reduceActionForaccessor_modifiers5: 44896263 false) 
	#(537 2 #reduceActionForaccessor_modifiers5: 44896260 false) 
	#(537 2 #reduceActionForaccessor_modifiers5: 44896262 false) 
	#(569 5 #reduceActionForconstructor_declarator1: 49009665 false) 
	#(570 1 #liftFirstValue: 49111042 false) 
	#(662 1 #reduceActionForref_method_body3: 60862467 false) 
	#(662 1 #reduceActionForref_local_function_body1: 60862465 false) 
	#(661 7 #reduceActionForfinalizer_declaration1: 60577793 false) 
	#(647 5 #reduceActionForattribute_arguments2: 58785794 false) 
	#(473 2 #reduceActionForclass_base1: 37738497 false) 
	#(475 1 #reduceActionFor_extern_alias_directives2: 38008834 false) 
	#(476 1 #reduceActionForextern_alias_directives1: 38091777 false) 
	#(474 1 #reduceActionForinterpolated_regular_string1: 37891073 false) 
	#(581 2 #reduceActionForstruct_interfaces1: 50723841 false) 
	#(595 3 #reduceActionForvariant_type_parameter_list1: 52428801 false) 
	#(598 1 #liftFirstValue: 52777985 false) 
	#(598 1 #liftFirstValue: 52777986 false) 
	#(597 1 #liftFirstValue: 52713474 false) 
	#(600 2 #reduceActionForstruct_interfaces1: 52860929 false) 
	#(618 3 #reduceActionForanonymous_object_initializer1: 55641089 false) 
	#(624 2 #reduceActionForenum_member_declaration1: 56229889 false) 
	#(440 8 #reduceActionForforeach_statement1: 34869249 false) 
	#(427 3 #reduceActionForswitch_label1: 33777665 false) 
	#(522 4 #reduceActionForparameter_array1: 43254785 false) 
	#(517 0 #reduceActionFor_attribute_target_specifier1: 42981377 false) 
	#(470 4 #reduceActionFortype_parameters2: 37522434 false) 
	#(390 6 #reduceActionForlocal_function_header2: 29794306 false) 
	#(527 4 #reduceActionForproperty_body1: 43910145 false) 
	#(528 1 #reduceActionFor_extern_alias_directives2: 44042242 false) 
	#(541 8 #reduceActionForevent_declaration2: 45486082 false) 
	#(545 2 #reduceActionForref_kind2: 46027777 false) 
	#(545 2 #reduceActionForaccessor_declarations2: 46027778 false) 
	#(554 4 #reduceActionForref_indexer_body2: 47165442 false) 
	#(538 1 #reduceActionForstatic_constructor_body3: 45190147 false) 
	#(538 1 #reduceActionForargument_value1: 45190145 false) 
	#(533 4 #reduceActionForget_accessor_declaration1: 44605441 false) 
	#(535 4 #reduceActionForset_accessor_declaration1: 44756993 false) 
	#(563 6 #reduceActionForconversion_operator_declarator2: 48280578 false) 
	#(563 6 #reduceActionForconversion_operator_declarator1: 48280577 false) 
	#(559 6 #reduceActionForunary_operator_declarator1: 47712257 false) 
	#(575 3 #reduceActionForstatic_constructor_body2: 49935362 false) 
	#(661 8 #reduceActionForfinalizer_declaration2: 60577794 false) 
	#(661 8 #reduceActionForfinalizer_declaration2: 60577795 false) 
	#(484 0 #reduceActionFor_extern_alias_directives1: 39427073 false) 
	#(476 2 #reduceActionForextern_alias_directives2: 38091778 false) 
	#(583 0 #reduceActionFor_extern_alias_directives1: 50837505 false) 
	#(596 3 #reduceActionForvariant_type_parameters1: 52528129 false) 
	#(602 0 #reduceActionFor_extern_alias_directives1: 53011457 false) 
	#(618 4 #reduceActionForanonymous_object_initializer2: 55641090 false) 
	#(623 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 56079362 false) 
	#(626 5 #reduceActionFordelegate_header1: 56625153 false) 
	#(432 9 #reduceActionForfor_statement1: 34244609 false) 
	#(440 9 #reduceActionForforeach_statement2: 34869250 false) 
	#(428 2 #reduceActionForref_kind2: 33869825 false) 
	#(427 4 #reduceActionForswitch_label2: 33777666 false) 
	#(312 3 #reduceActionFordependent_access3: 20081667 false) 
	#(312 3 #reduceActionFordependent_access1: 20081665 false) 
	#(312 3 #reduceActionFordependent_access2: 20081666 false) 
	#(516 5 #reduceActionForfixed_parameter1: 42855425 false) 
	#(517 1 #reduceActionFor_extern_alias_directives2: 42981378 false) 
	#(530 4 #reduceActionForref_property_body2: 44179458 false) 
	#(530 4 #reduceActionForref_property_body1: 44179457 false) 
	#(546 3 #reduceActionForadd_accessor_declaration1: 46249985 false) 
	#(547 3 #reduceActionForremove_accessor_declaration1: 46319617 false) 
	#(552 7 #reduceActionForindexer_declarator2: 46899202 false) 
	#(540 1 #reduceActionForref_accessor_body3: 45388803 false) 
	#(540 1 #reduceActionForref_accessor_body1: 45388801 false) 
	#(539 4 #reduceActionForref_get_accessor_declaration1: 45267969 false) 
	#(662 3 #reduceActionForlocal_function_body2: 60862466 false) 
	#(473 4 #reduceActionForclass_base2: 37738498 false) 
	#(484 1 #reduceActionFor_extern_alias_directives2: 39427074 false) 
	#(485 1 #reduceActionForextern_alias_directives1: 39491585 false) 
	#(464 10 #reduceActionForclass_declaration1: 36898817 false) 
	#(474 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 37891074 false) 
	#(585 1 #liftFirstValue: 51050506 false) 
	#(585 1 #liftFirstValue: 51050497 false) 
	#(585 1 #liftFirstValue: 51050498 false) 
	#(585 1 #liftFirstValue: 51050499 false) 
	#(585 1 #liftFirstValue: 51050500 false) 
	#(585 1 #liftFirstValue: 51050501 false) 
	#(585 1 #liftFirstValue: 51050502 false) 
	#(585 1 #liftFirstValue: 51050503 false) 
	#(585 1 #liftFirstValue: 51050504 false) 
	#(585 1 #liftFirstValue: 51050505 false) 
	#(583 1 #reduceActionFor_extern_alias_directives2: 50837506 false) 
	#(584 1 #reduceActionForextern_alias_directives1: 50904065 false) 
	#(678 0 #reduceActionFor_extern_alias_directives1: 63056897 false) 
	#(585 1 #liftFirstValue: 51050507 false) 
	#(576 10 #reduceActionForstruct_declaration1: 50211841 false) 
	#(604 1 #liftFirstValue: 53241858 false) 
	#(604 1 #liftFirstValue: 53241860 false) 
	#(602 1 #reduceActionFor_extern_alias_directives2: 53011458 false) 
	#(603 1 #reduceActionForextern_alias_directives1: 53083137 false) 
	#(604 1 #liftFirstValue: 53241857 false) 
	#(604 1 #liftFirstValue: 53241859 false) 
	#(657 0 #nil 60052481 false) 
	#(590 10 #reduceActionForinterface_declaration1: 51837953 false) 
	#(624 4 #reduceActionForenum_member_declaration2: 56229890 false) 
	#(518 2 #reduceActionForref_kind2: 43026433 false) 
	#(358 9 #reduceActionForjoin_clause1: 26897409 false) 
	#(501 10 #reduceActionForRefMethodHeader1: 41291777 false) 
	#(503 10 #reduceActionFormethod_header1: 41519105 false) 
	#(529 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 44095489 false) 
	#(538 3 #reduceActionForstatic_constructor_body2: 45190146 false) 
	#(561 8 #reduceActionForbinary_operator_declarator1: 47949825 false) 
	#(479 1 #reduceActionForprimary_constraint2: 38858754 false) 
	#(479 1 #reduceActionForprimary_constraint3: 38858755 false) 
	#(479 1 #reduceActionForprimary_constraint4: 38858756 false) 
	#(479 1 #reduceActionForprimary_constraint1: 38858753 false) 
	#(481 1 #reduceActionForprimary_constraint1: 39240705 false) 
	#(480 1 #reduceActionForinterpolated_regular_string1: 38976514 false) 
	#(477 4 #reduceActionFortype_parameter_constraints_clause1: 38281217 false) 
	#(478 1 #reduceActionForinterpolated_regular_string1: 38416385 false) 
	#(478 1 #reduceActionFor_extern_alias_directives2: 38416386 false) 
	#(480 1 #reduceActionForinterpolated_regular_string1: 38976513 false) 
	#(478 1 #reduceActionForinterpolated_regular_string1: 38416387 false) 
	#(483 3 #reduceActionForgeneric_dimension_specifier1: 39364609 false) 
	#(485 2 #reduceActionForextern_alias_directives2: 39491586 false) 
	#(576 11 #reduceActionForstruct_declaration2: 50211842 false) 
	#(582 3 #reduceActionForgeneric_dimension_specifier1: 50772993 false) 
	#(584 2 #reduceActionForextern_alias_directives2: 50904066 false) 
	#(680 1 #liftFirstValue: 63269892 false) 
	#(680 1 #liftFirstValue: 63269889 false) 
	#(680 1 #liftFirstValue: 63269893 false) 
	#(680 1 #liftFirstValue: 63269891 false) 
	#(680 1 #liftFirstValue: 63269890 false) 
	#(680 1 #liftFirstValue: 63269894 false) 
	#(678 1 #reduceActionFor_extern_alias_directives2: 63056898 false) 
	#(679 1 #reduceActionForextern_alias_directives1: 63125505 false) 
	#(596 5 #reduceActionForvariant_type_parameters2: 52528130 false) 
	#(601 3 #reduceActionForgeneric_dimension_specifier1: 52915201 false) 
	#(603 2 #reduceActionForextern_alias_directives2: 53083138 false) 
	#(657 1 #liftFirstValue: 60052482 false) 
	#(626 7 #reduceActionFordelegate_header2: 56625154 false) 
	#(571 5 #reduceActionForconstructor_initializer1: 49185793 false) 
	#(571 5 #reduceActionForconstructor_initializer2: 49185794 false) 
	#(679 2 #reduceActionForextern_alias_directives2: 63125506 false) 
	#(359 11 #reduceActionForjoin_into_clause1: 27057153 false) 
	#(540 4 #reduceActionForref_accessor_body2: 45388802 false) 
	#(482 3 #reduceActionForconstructor_constraint1: 39315457 false) 
	#(478 3 #reduceActionFortype_parameter_constraints4: 38416388 false) 
	#(478 3 #reduceActionFortype_parameter_constraints5: 38416389 false) 
	#(480 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38976516 false) 
	#(480 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38976515 false) 
	#(478 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38416390 false) 
	#(681 1 #liftFirstValue: 63393793 false) 
	#(605 4 #reduceActionForinterface_method_declaration1: 53432321 false) 
	#(682 1 #reduceActionForextern_alias_directives1: 63425537 false) 
	#(605 5 #reduceActionForinterface_method_declaration2: 53432322 false) 
	#(478 5 #reduceActionFortype_parameter_constraints7: 38416391 false) 
	#(677 6 #reduceActionForfixed_size_buffer_declaration1: 62902273 false) 
	#(682 2 #reduceActionForextern_alias_directives2: 63425538 false) 
	#(612 6 #reduceActionForinterface_event_declaration1: 54768641 false) 
	#(683 4 #reduceActionForfixed_size_buffer_declarator1: 63582209 false) 
	#(606 7 #reduceActionForinterface_method_header1: 53640193 false)
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> scannerClass [
	^CSharpScanner
]

{ #category : #generated }
CSharpParser class >> startingStateForblock [
	^ 5
]

{ #category : #generated }
CSharpParser class >> startingStateForclass_member_declaration [
	^ 6
]

{ #category : #generated }
CSharpParser class >> startingStateForcompilation_unit [
	^ 1
]

{ #category : #generated }
CSharpParser class >> startingStateForexpression [
	^ 4
]

{ #category : #generated }
CSharpParser class >> startingStateFornamespace_member_declaration [
	^ 2
]

{ #category : #generated }
CSharpParser class >> startingStateForstatement [
	^ 3
]

{ #category : #generated }
CSharpParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>="' '"?"' '"??"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"add"' '"alias"' '"as"' '"ascending"' '"async"' '"await"' '"base"' '"bool"' '"break"' '"by"' '"byte"' '"case"' '"catch"' '"char"' '"checked"' '"class"' '"const"' '"continue"' '"decimal"' '"default"' '"delegate"' '"descending"' '"do"' '"double"' '"dynamic"' '"else"' '"enum"' '"equals"' '"event"' '"explicit"' '"extern"' '"false"' '"field"' '"finally"' '"fixed"' '"float"' '"for"' '"foreach"' '"from"' '"get"' '"goto"' '"group"' '"if"' '"implicit"' '"in"' '"int"' '"interface"' '"internal"' '"into"' '"is"' '"join"' '"let"' '"lock"' '"long"' '"method"' '"nameof"' '"namespace"' '"new"' '"object"' '"on"' '"operator"' '"orderby"' '"out"' '"override"' '"param"' '"params"' '"partial"' '"private"' '"property"' '"protected"' '"public"' '"readonly"' '"ref"' '"remove"' '"return"' '"sbyte"' '"sealed"' '"select"' '"set"' '"short"' '"sizeof"' '"stackalloc"' '"static"' '"string"' '"struct"' '"switch"' '"this"' '"throw"' '"true"' '"try"' '"type"' '"typeof"' '"uint"' '"ulong"' '"unchecked"' '"unmanaged"' '"unsafe"' '"ushort"' '"using"' '"var"' '"virtual"' '"void"' '"volatile"' '"when"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"~"' '<gt>' '<gtgt>' '<rightBrace>' '<comment>' '<Identifier>' '<IntegerLiteral>' '<RealLiteral>' '<CharacterLiteral>' '<InterpolatedRegularStringWhole>' '<InterpolatedRegularStringStart>' '<InterpolatedRegularStringEnd>' '<InterpolatedRegularStringMid>' '<InterpolatedVerbatimStringLiteral>' '<InterpolatedVerbatimStringStart>' '<InterpolatedVerbatimStringEnd>' '<InterpolatedVerbatimStringMid>' '<StringLiteral>' '<NullLiteral>' '<whitespace>' '<preprocessorDirective>' '<patternToken>' 'B e g i n' 'compilation_unit' 'namespace_declaration' 'qualified_identifier' 'namespace_body' '_extern_alias_directives' 'extern_alias_directives' 'extern_alias_directive' '_using_directives' 'using_directives' 'using_directive' 'using_alias_directive' 'using_namespace_directive' 'using_static_directive' '_namespace_member_declarations' 'namespace_member_declarations' 'namespace_member_declaration' 'type_declaration' 'qualified_alias_member' 'namespace_name' 'type_name' 'namespace_or_type_name' '_type' 'type' 'value_type' 'nullable_value_type' 'struct_type' 'tuple_type' '("," tuple_type_element ''element'')' '("," tuple_type_element ''element'')+' 'tuple_type_element' 'simple_type' 'numeric_type' 'integral_type' 'floating_point_type' 'non_nullable_value_type' 'enum_type' 'reference_type' 'class_type' 'interface_type' 'array_type' 'non_array_type' '_rank_specifiers' 'rank_specifiers' 'rank_specifier' '_dim_separators' 'dim_separators' 'delegate_type' 'type_argument_list' 'type_arguments' 'type_argument' 'variable_reference' 'pattern' 'var_pattern' 'designation' 'constant_pattern' 'declaration_pattern' 'simple_designation' 'single_variable_designation' '_argument_list' 'argument_list' 'argument' '_argument_name' 'argument_name' 'argument_value' 'primary_expression' 'primary_no_array_creation_expression' 'interpolated_string_expression' 'interpolated_regular_string' 'StartInterpolatedString' 'interpolated_regular_string_body' 'interpolation' 'Regular_Interpolation_Format' 'ScanFormat' 'interpolated_verbatim_string' 'StartInterpolatedVerbatimString' 'interpolated_verbatim_string_body' 'simple_name' '_type_argument_list' 'parenthesized_expression' 'tuple_expression' '("," tuple_element ''element'')' '("," tuple_element ''element'')+' 'tuple_element' 'deconstruction_expression' 'deconstruction_tuple' '("," deconstruction_element ''element'')' '("," deconstruction_element ''element'')+' 'deconstruction_element' 'member_access' 'qualified_alias_member_expression' 'predefined_type_expression' 'predefined_type' 'invocation_expression' 'element_access' 'expression_list' 'this_access' 'base_access' 'post_increment_expression' 'post_decrement_expression' 'object_creation_expression' '_object_or_collection_initializer' 'object_or_collection_initializer' 'object_initializer' '_member_initializer_list' 'member_initializer_list' 'member_initializer' 'initializer_target' 'initializer_value' 'collection_initializer' 'element_initializer_list' 'element_initializer' 'array_creation_expression' 'delegate_creation_expression' 'anonymous_object_creation_expression' 'anonymous_object_initializer' '_member_declarator_list' 'member_declarator_list' 'member_declarator' 'typeof_expression' 'unbound_type_name' '_generic_dimension_specifier' 'generic_dimension_specifier' '_commas' 'commas' 'checked_expression' 'unchecked_expression' 'default_value_expression' 'stackalloc_expression' 'nameof_expression' 'named_entity' '("." <Identifier> _type_argument_list ''typeArguments'')' '("." <Identifier> _type_argument_list ''typeArguments'')*' 'named_entity_target' 'unary_expression' 'null_conditional_member_access' 'dependent_access ''access''*' 'dependent_access' 'null_conditional_projection_initializer' 'null_conditional_invocation_expression' 'null_conditional_element_access' 'pre_increment_expression' 'pre_decrement_expression' 'cast_expression' 'await_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'null_coalescing_expression' 'throw_expression' 'declaration_expression' 'conditional_expression' 'lambda_expression' 'anonymous_method_expression' 'anonymous_function_signature' '_explicit_anonymous_function_signature' 'explicit_anonymous_function_signature' '_explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter' '_anonymous_function_parameter_modifier' 'anonymous_function_parameter_modifier' 'implicit_anonymous_function_signature' '_implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter' 'anonymous_function_body' 'RefExpression' 'query_expression' 'from_clause' 'query_body' '_query_body_clauses' 'query_body_clauses' 'query_body_clause' 'let_clause' 'where_clause' 'join_clause' 'join_into_clause' 'orderby_clause' 'orderings' 'ordering' '_ordering_direction' 'ordering_direction' 'select_or_group_clause' 'select_clause' 'group_clause' '_query_continuation' 'query_continuation' 'assignment' 'assignment_operator' '_expression' 'expression' 'non_assignment_expression' 'constant_expression' 'boolean_expression' 'statement' 'embedded_statement' 'block' '_statement_list' 'statement_list' 'empty_statement' 'labeled_statement' 'declaration_statement' 'local_function_declaration' 'RefLocalFunctionHeader' 'ref_local_function_modifier ''modifier''*' 'LocalFunctionHeader' 'local_function_modifier ''modifier''*' 'local_function_header' 'local_function_modifier' 'ref_local_function_modifier' 'local_function_body' 'ref_local_function_body' 'local_variable_declaration' 'implicitly_typed_local_variable_declaration' 'ref_local_variable_declarator' 'ref_kind' 'implicitly_typed_local_variable_declarator' 'explicitly_typed_local_variable_declaration' 'explicitly_typed_local_variable_declarators' '("," explicitly_typed_local_variable_declarator ''declarator'')' '("," explicitly_typed_local_variable_declarator ''declarator'')*' 'explicitly_typed_local_variable_declarator' 'ref_local_variable_declaration' 'ref_local_variable_declarators' '("," ref_local_variable_declarator ''declarator'')' '("," ref_local_variable_declarator ''declarator'')*' 'local_variable_type' 'VarType' 'local_variable_declarator' '_local_variable_declarator_name' 'local_variable_initializer' 'local_constant_declaration' 'const_declarators' 'const_declarator' 'expression_statement' 'statement_expression' 'selection_statement' 'if_statement' 'switch_statement' 'switch_block' '_switch_sections' 'switch_sections' 'switch_section' 'switch_labels' 'switch_label' 'case_guard' 'iteration_statement' 'while_statement' 'do_statement' 'for_statement' '_for_initializer' 'for_initializer' '_for_condition' 'for_condition' '_for_iterator' 'for_iterator' 'statement_expression_list' 'foreach_statement' 'jump_statement' 'break_statement' 'continue_statement' 'goto_statement' 'return_statement' 'throw_statement' 'try_statement' 'catch_clauses' 'specific_catch_clause ''clause''+' 'specific_catch_clause ''clause''*' 'specific_catch_clause' '_exception_specifier' 'exception_specifier' '_exception_filter' 'exception_filter' 'general_catch_clause' 'finally_clause' 'checked_statement' 'unchecked_statement' 'lock_statement' 'using_statement' 'resource_acquisition' 'yield_statement' 'class_declaration' '_class_modifiers' 'class_modifiers' 'class_modifier' '_type_parameter_list' 'type_parameter_list' 'type_parameters' 'type_parameter' '_class_base' 'class_base' 'interface_type_list' '_type_parameter_constraints_clauses' 'type_parameter_constraints_clauses' 'type_parameter_constraints_clause' 'type_parameter_constraints' 'primary_constraint' 'secondary_constraints' 'interface_type_constraint' 'constructor_constraint' 'class_body' '_class_member_declarations' 'class_member_declarations' 'class_member_declaration' 'constant_declaration' '_constant_modifiers' 'constant_modifers' 'constant_modifer' 'constant_declarators' 'constant_declarator' 'field_declaration' '_field_modifiers' 'field_modifiers' 'field_modifier' 'variable_declarators' 'variable_declarator' 'variable_initializer' 'method_declaration' 'RefMethodHeader' 'ref_method_modifier ''modifier''*' 'method_header' '_method_modifiers' 'method_modifiers' 'method_modifier' 'ref_method_modifier' 'return_type' 'ref_return_type' 'member_name' 'method_body' 'ref_method_body' '_formal_parameters_list' 'formal_parameters_list' 'fixed_parameters' 'fixed_parameter' '_default_argument' 'default_argument' '_parameter_modifier' 'parameter_modifier' 'parameter_mode_modifier' 'parameter_array' 'property_declaration' '_property_modifiers' 'property_modifiers' 'property_modifier' 'property_body' '_property_initializer' 'property_initializer' 'ref_property_body' 'accessor_declarations' '_get_accessor_declaration' 'get_accessor_declaration' '_set_accessor_declaration' 'set_accessor_declaration' '_accessor_modifiers' 'accessor_modifiers' 'accessor_body' 'ref_get_accessor_declaration' 'ref_accessor_body' 'event_declaration' '_event_modifiers' 'event_modifiers' 'event_modifier' 'event_accessor_declarations' 'add_accessor_declaration' 'remove_accessor_declaration' 'indexer_declaration' '_indexer_modifiers' 'indexer_modifiers' 'indexer_modifier' 'indexer_declarator' 'indexer_body' 'ref_indexer_body' 'operator_declaration' 'operator_modifiers' 'operator_modifier' 'operator_declarator' 'unary_operator_declarator' 'overloadable_unary_operator' 'binary_operator_declarator' 'overloadable_binary_operator' 'conversion_operator_declarator' 'operator_body' 'constructor_declaration' '_constructor_modifiers' 'constructor_modifiers' 'constructor_modifier' 'constructor_declarator' '_constructor_initializer' 'constructor_initializer' 'constructor_body' 'static_constructor_declaration' 'static_constructor_modifiers' 'static_constructor_body' 'struct_declaration' '_struct_modifiers' 'struct_modifiers' 'struct_modifier' '_struct_interfaces' 'struct_interfaces' 'struct_body' '_struct_member_declarations' 'struct_member_declarations' 'struct_member_declaration' '_array_initializer' 'array_initializer' '_variable_initializer_list' 'variable_initializer_list' 'interface_declaration' '_interface_modifiers' 'interface_modifiers' 'interface_modifier' '_variant_type_parameter_list' 'variant_type_parameter_list' 'variant_type_parameters' '_variance_annotation' 'variance_annotation' '_interface_base' 'interface_base' 'interface_body' '_interface_member_declarations' 'interface_member_declarations' 'interface_member_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_property_declaration' 'interface_accessors' 'ref_interface_accessor' 'interface_get_accessor' 'interface_set_accessor' 'interface_event_declaration' 'interface_indexer_declaration' 'enum_declaration' '_enum_base' 'enum_base' 'integral_type_name' 'enum_body' '_enum_modifers' 'enum_modifers' 'enum_modifer' '_enum_member_declarations' 'enum_member_declarations' 'enum_member_declaration' 'delegate_declaration' 'delegate_header' '_delegate_modifiers' 'delegate_modifiers' 'delegate_modifier' '_global_attributes' 'global_attributes' 'global_attribute_sections' 'global_attribute_section' 'global_attribute_target_specifier' 'global_attribute_target' '_attributes' 'attributes' 'attribute_sections' 'attribute_section' '_attribute_target_specifier' 'attribute_target_specifier' 'attribute_target' 'attribute_list' 'attribute' 'attribute_name' '_attribute_arguments' 'attribute_arguments' '_positional_argument_list' 'positional_argument_list' 'positional_argument' 'named_argument_list' 'named_argument' 'attribute_argument_expression' 'literal' 'boolean_literal' '_semicolon' '_new' '_partial' '_extern' '_identifier' 'finalizer_declaration' 'finalizer_body' 'unsafe_modifier' 'unsafe_statement' 'pointer_type' '"*"+' 'unmanaged_type' 'pointer_indirection_expression' 'pointer_member_access' 'pointer_element_access' 'addressof_expression' 'sizeof_expression' 'fixed_statement' 'fixed_pointer_declarators' 'fixed_pointer_declarator' 'fixed_pointer_initializer' 'fixed_size_buffer_declaration' '_fixed_size_buffer_modifiers' 'fixed_size_buffer_modifiers' 'fixed_size_buffer_modifier' 'buffer_element_type' 'fixed_size_buffer_declarators' 'fixed_size_buffer_declarator' 'stackalloc_initializer' 'stackalloc_initializer_element_list' '(stackalloc_element_initializer ",")' '(stackalloc_element_initializer ",")*' 'stackalloc_element_initializer' 'void_type' 'E O F' 'error')
]

{ #category : #generated }
CSharpParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSCompilationUnitNode #CSCompilationUnitNode #CSNamespaceDeclarationNode #CSQualifiedIdentifierNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExternAliasDirectiveNode #OrderedCollection #OrderedCollection #CSUsingDirectiveNode #CSUsingAliasDirectiveNode #CSUsingNamespaceDirectiveNode #CSUsingStaticDirectiveNode #OrderedCollection #OrderedCollection #CSDeclarationNode #CSDeclarationNode #CSQualifiedAliasMemberNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSNullableTypeNode #CSTypeNode #CSTupleTypeNode #OrderedCollection #OrderedCollection #CSTupleTypeElementNode #CSSimpleTypeNode #SmaCCToken #SmaCCToken #SmaCCToken #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSArrayTypeNode #CSTypeNode #OrderedCollection #OrderedCollection #CSRankSpecifierNode #OrderedCollection #OrderedCollection #CSTypeNode #CSTypeArgumentListNode #OrderedCollection #CSTypeNode #CSExpressionNode #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSInterpolatedStringExpressionNode #OrderedCollection #ByteSymbol #OrderedCollection #CSInterpolationNode #OrderedCollection #Object #OrderedCollection #ByteSymbol #OrderedCollection #CSSimpleNameNode #CSTypeArgumentListNode #CSExpressionNode #CSTupleExpressionNode #OrderedCollection #OrderedCollection #CSTupleElementNode #CSDeconstructionExpressionNode #CSDeconstructionTupleNode #OrderedCollection #OrderedCollection #CSProgramNode #CSMemberAccessNode #CSTypeExpressionNode #CSTypeExpressionNode #CSSimpleTypeNode #CSInvocationExpressionNode #CSElementAccessNode #OrderedCollection #CSThisAccessNode #CSBaseAccessNode #CSPostExpressionNode #CSPostExpressionNode #CSObjectCreationExpressionNode #CSProgramNode #CSProgramNode #CSObjectInitializerNode #OrderedCollection #OrderedCollection #CSMemberInitializerNode #OrderedCollection #CSProgramNode #CSCollectionInitializerNode #OrderedCollection #CSElementInitializerNode #CSArrayCreationExpressionNode #CSDelegateCreationExpressionNode #CSAnonymousObjectCreationExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #CSMemberDeclaratorNode #CSTypeofExpressionNode #CSUnboundTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSCheckedExpressionNode #CSUncheckedExpressionNode #CSDefaultValueExpressionNode #CSStackallocExpressionNode #CSNameofExpressionNode #CSNamedEntityNode #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSNullConditionalMemberAccessNode #OrderedCollection #CSProgramNode #CSNullConditionalMemberAccessNode #CSInvocationExpressionNode #CSElementAccessNode #CSPrefixExpressionNode #CSPrefixExpressionNode #CSCastExpressionNode #CSAwaitExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSThrowExpressionNode #CSDeclarationExpressionNode #CSExpressionNode #CSLambdaExpressionNode #CSAnonymousMethodExpressionNode #CSProgramNode #CSExplicitAnonymousFunctionSignatureNode #CSExplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #CSAnonymousFunctionParameterNode #SmaCCToken #SmaCCToken #CSImplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #SmaCCToken #CSProgramNode #CSRefExpressionNode #CSQueryExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAssignmentNode #OrderedCollection #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSStatementNode #CSStatementNode #CSBlockStatementNode #OrderedCollection #OrderedCollection #CSEmptyStatementNode #CSLabeledStatementNode #CSStatementNode #CSLocalFunctionDeclarationStatementNode nil nil #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #SmaCCToken #SmaCCToken #CSMethodBodyNode #CSMethodBodyNode #CSProgramNode #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #CSLocalVariableDeclaratorNode #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeNode #CSVarTypeNode #CSLocalVariableDeclaratorNode #CSSimpleNameNode #Object #CSLocalConstantDeclarationNode #OrderedCollection #CSConstantDeclaratorNode #CSExpressionStatementNode #CSExpressionNode #CSStatementNode #CSIfStatementNode #CSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSwitchSectionNode #OrderedCollection #CSSwitchLabelNode #OrderedCollection #CSStatementNode #CSWhileStatementNode #CSDoStatementNode #CSForStatementNode #CSProgramNode #CSProgramNode #CSExpressionNode #CSExpressionNode #CSStatementListNode #CSStatementListNode #OrderedCollection #CSForeachStatementNode #CSStatementNode #CSBreakStatementNode #CSContinueStatementNode #CSGotoStatementNode #CSReturnStatementNode #CSThrowStatementNode #CSTryStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSCatchClauseNode #OrderedCollection #OrderedCollection #CSExceptionFilterNode #CSExceptionFilterNode #CSCatchClauseNode #CSFinallyClauseNode #CSCheckedStatementNode #CSUncheckedStatementNode #CSLockStatementNode #CSUsingStatementNode #CSProgramNode #CSYieldStatementNode #CSClassDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeParameterListNode #CSTypeParameterListNode #OrderedCollection #CSTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeParameterConstraintsClauseNode #OrderedCollection #CSProgramNode #OrderedCollection #CSTypeConstraintNode #CSConstructorConstraintNode #OrderedCollection #OrderedCollection #OrderedCollection #CSProgramNode #CSConstantDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstantDeclaratorNode #CSFieldDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSVariableDeclaratorNode #CSProgramNode #CSMethodDeclarationNode #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #CSTypeNode #CSTypeNode #OrderedCollection #CSMethodBodyNode #CSMethodBodyNode #OrderedCollection #OrderedCollection #OrderedCollection #CSFixedParameterNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #CSArrayParameterNode #CSPropertyDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #CSGetAccessorDeclarationNode #CSSetAccessorDeclarationNode #CSSetAccessorDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #OrderedCollection #CSEventDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAddAccessorDeclarationNode #CSRemoveAccessorDeclarationNode #CSIndexerDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSOperatorDeclarationNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #CSMethodBodyNode #CSConstructorDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstructorInitializerNode #CSConstructorInitializerNode #CSMethodBodyNode #CSStaticConstructorDeclarationNode #OrderedCollection #OrderedCollection #CSStructDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSArrayInitializerNode #CSArrayInitializerNode #OrderedCollection #OrderedCollection #CSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSVariantTypeParameterListNode #CSVariantTypeParameterListNode #OrderedCollection #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSInterfaceMethodDeclarationNode #OrderedCollection #OrderedCollection #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfaceEventDeclarationNode #OrderedCollection #CSEnumDeclarationNode #OrderedCollection #OrderedCollection #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CSEnumDeclarationNode #CSDelegateDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAttributeValueNode #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #CSNamedArgumentNode #CSExpressionNode #CSLiteralExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSFinalizerDeclarationNode #CSMethodBodyNode #SmaCCToken #CSUnsafeStatementNode #CSPointerTypeNode #OrderedCollection #CSTypeNode #CSPrefixExpressionNode #CSPointerMemberAccessNode #CSPointerElementAccessNode #CSPrefixExpressionNode #CSSizeofExpressionNode #CSFixedStatementNode #OrderedCollection #CSFixedPointerDeclaratorNode #OrderedCollection #CSFixedSizeBufferDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeNode #OrderedCollection #CSFixedSizeBufferDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSVoidTypeNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CSharpParser class >> transitionTable [
^#(
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 68 0 29 0 72 0 6 0 88 0 6 0 89 0 6 0 98 0 6 0 99 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 138 0 6 0 140 0 33 0 176 0 37 0 180 0 41 0 181 0 45 0 182 0 6 2 178] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 61 0 177 0 61 0 191 0 61 0 192 0 61 1 208 0 61 2 64 0 61 2 78 0 61 2 102 0 61 2 113 0 89 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 2 105 1 121 2 105 1 122 2 105 1 123 2 105 1 126 2 105 1 127 2 105 1 128 2 105 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 2 105 1 161 2 181 1 162 2 105 1 163 2 105 1 164 2 105 1 165 2 105 1 173 2 105 1 174 2 105 1 175 2 105 1 176 2 105 1 184 2 105 1 185 2 105 1 186 2 105 1 187 2 105 1 188 2 105 1 189 2 105 1 190 2 105 1 191 2 105 1 202 2 105 1 203 2 105 1 204 2 105 1 205 2 105 1 207 3 9 1 215 1 205 2 142 3 17 2 143 2 105 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 2 105 2 161 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 3 213 1 76 3 213 1 77 3 213 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 3 213 1 94 3 205 1 95 3 213 1 114 3 213 1 117 3 213 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 1 93 0 149 3 229 1 123] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 0 10 0 158 3 237 0 192 3 237 1 208 3 237 1 230 3 237 1 231 3 237 1 237 3 237 1 244 3 253 1 245 4 1 1 247 3 237 2 11 3 237 2 29 3 237 2 36 3 237 2 43 3 237 2 53 3 237 2 61 3 237 2 64 3 237 2 78 3 237 2 102 3 237 2 113 4 29 2 124 0 93 2 125 0 97 2 126 0 101 2 127 3 237 2 149] 
#[0 4 37 0 43] 
#[0 0 0 2 178] 
#[1 0 30 0 37 0 30 0 41 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 88 0 30 0 89 0 30 0 98 0 30 0 99 0 30 0 108 0 30 0 109 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 118 0 30 0 124 0 30 0 126 0 30 0 138 4 41 0 140 4 45 0 183 4 49 0 184 4 53 0 185 4 53 0 186 4 53 0 187 4 53 0 188 0 30 2 178] 
#[1 0 34 0 37 0 34 0 41 0 34 0 57 0 34 0 62 0 34 0 68 0 29 0 72 0 34 0 88 0 34 0 89 0 34 0 98 0 34 0 99 0 34 0 108 0 34 0 109 0 34 0 111 0 34 0 112 0 34 0 113 0 34 0 114 0 34 0 118 0 34 0 124 0 34 0 126 0 34 0 138 0 34 0 140 0 34 0 156 4 69 0 182 0 34 2 178] 
#[0 0 38 0 37 0 41 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[1 4 109 0 70 4 109 0 74 4 109 0 96 4 109 0 106 4 109 0 110 4 109 0 116 4 109 0 132 0 42 0 158 4 101 2 128 4 105 2 129 4 109 2 130] 
#[1 4 113 0 158 4 117 0 178] 
#[0 0 46 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[0 0 0 2 178] 
#[0 0 50 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[0 0 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 0 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 0 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 0 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 0 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 4 169 0 41 0 74 0 57 0 78 0 62 0 82 0 68 0 86 0 88 4 125 0 89 4 129 0 99 0 99 0 108 4 133 0 109 4 137 0 111 4 141 0 112 4 181 0 113 0 90 0 114 4 169 0 118 4 169 0 124 0 90 0 126 4 157 0 138 4 161 1 209 4 165 1 210 4 169 1 211 4 173 2 65 4 177 2 66 4 181 2 67 4 185 2 79 4 189 2 80 4 193 2 81 4 197 2 107 4 201 2 108 4 205 2 109 4 209 2 115 4 213 2 116 4 217 2 117 4 221 2 151] 
#[0 0 94 0 8 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 98 0 8 0 49 0 37 0 98 0 41 0 98 0 42 0 98 0 46 0 98 0 49 0 98 0 52 0 98 0 55 0 98 0 57 0 98 0 58 0 98 0 60 0 98 0 62 0 98 0 65 0 98 0 66 0 98 0 68 0 98 0 70 0 98 0 72 0 98 0 76 0 98 0 77 0 98 0 81 0 98 0 86 0 98 0 87 0 98 0 88 0 98 0 89 0 98 0 95 0 98 0 99 0 98 0 100 0 98 0 104 0 98 0 105 0 98 0 107 0 98 0 108 0 98 0 109 0 98 0 111 0 98 0 112 0 98 0 113 0 98 0 114 0 98 0 115 0 98 0 117 0 98 0 118 0 98 0 120 0 98 0 121 0 98 0 124 0 98 0 125 0 98 0 126 0 98 0 128 0 98 0 134 0 98 0 135 0 98 0 138 0 98 0 139 0 98 0 142 0 98 0 143 0 98 0 144 0 98 0 153 0 98 0 158 4 225 2 127] 
#[0 0 102 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 45 1 53 1 205 1 54 1 205 1 59 5 45 1 60 5 45 1 61 5 45 1 62 5 45 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 45 2 156 1 205 2 157 5 45 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 49 1 53 1 205 1 54 1 205 1 59 5 49 1 60 5 49 1 61 5 49 1 62 5 49 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 49 2 156 1 205 2 157 5 49 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 5 53 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 5 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 5 61 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 57 0 212 1 189 0 213 5 57 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 5 65 1 2 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 5 69 1 76 5 69 1 77 5 69 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 5 69 1 94 3 205 1 95 5 69 1 114 5 69 1 117 5 69 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 73 1 53 1 205 1 54 1 205 1 59 5 73 1 60 5 73 1 61 5 73 1 62 5 73 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 73 2 156 1 205 2 157 5 73 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 77 1 53 1 205 1 54 1 205 1 59 5 77 1 60 5 77 1 61 5 77 1 62 5 77 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 77 2 156 1 205 2 157 5 77 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 81 1 53 1 205 1 54 1 205 1 59 5 81 1 60 5 81 1 61 5 81 1 62 5 81 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 81 2 156 1 205 2 157 5 81 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 85 1 53 1 205 1 54 1 205 1 59 5 85 1 60 5 85 1 61 5 85 1 62 5 85 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 85 2 156 1 205 2 157 5 85 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 89 1 53 1 205 1 54 1 205 1 59 5 89 1 60 5 89 1 61 5 89 1 62 5 89 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 89 2 156 1 205 2 157 5 89 2 159 1 205 2 160] 
#[0 0 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 93 0 62] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 5 97 1 53 1 205 1 54 1 205 1 59 5 97 1 60 5 97 1 61 5 97 1 62 5 97 1 63 1 205 1 79 1 205 2 142 3 17 2 143 5 97 2 156 1 205 2 157 5 97 2 159 1 205 2 160] 
#[1 5 101 0 20 5 105 0 37] 
#[1 0 110 0 1 0 110 0 2 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 12 0 110 0 13 0 110 0 15 0 110 0 16 0 110 0 17 0 114 0 20 0 110 0 23 0 110 0 25 0 110 0 26 0 110 0 29 0 110 0 31 0 110 0 33 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 39 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 53 0 110 0 55 0 110 0 56 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 63 0 110 0 64 0 110 0 65 0 110 0 66 0 110 0 67 0 110 0 69 0 110 0 73 0 110 0 76 0 110 0 77 0 110 0 78 0 110 0 79 0 110 0 80 0 110 0 82 0 110 0 83 0 110 0 84 0 110 0 87 0 110 0 90 0 110 0 91 0 110 0 92 0 110 0 93 0 110 0 94 0 110 0 95 0 110 0 97 0 110 0 99 0 110 0 100 0 110 0 101 0 110 0 103 0 110 0 114 0 110 0 116 0 110 0 117 0 110 0 119 0 110 0 121 0 110 0 122 0 110 0 123 0 110 0 124 0 110 0 125 0 110 0 127 0 110 0 128 0 110 0 129 0 110 0 130 0 110 0 131 0 110 0 133 0 110 0 134 0 110 0 135 0 110 0 136 0 110 0 138 0 110 0 139 0 110 0 140 0 110 0 141 0 110 0 143 0 110 0 145 0 110 0 146 0 110 0 147 0 110 0 148 0 110 0 149 0 110 0 150 0 110 0 152 0 110 0 153 0 110 0 154 0 110 0 156 0 110 0 158 0 110 0 159 0 110 0 160 0 110 0 161 0 110 0 162 0 110 0 163 0 110 0 164 0 110 0 165 0 110 0 166 0 110 0 167 0 110 0 168 0 110 0 169 0 110 0 170 0 110 0 171 0 110 2 178] 
#[0 5 109 0 25] 
#[1 0 118 0 1 0 118 0 2 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 12 0 118 0 13 0 118 0 15 0 118 0 16 0 118 0 17 0 122 0 20 0 118 0 23 0 118 0 25 0 118 0 26 0 118 0 29 0 118 0 31 0 118 0 33 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 44 0 118 0 45 0 118 0 46 0 118 0 47 0 118 0 48 0 118 0 49 0 118 0 50 0 118 0 51 0 118 0 52 0 118 0 53 0 118 0 55 0 118 0 56 0 118 0 58 0 118 0 59 0 118 0 60 0 118 0 61 0 118 0 62 0 118 0 63 0 118 0 64 0 118 0 65 0 118 0 66 0 118 0 67 0 118 0 69 0 118 0 73 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 80 0 118 0 82 0 118 0 83 0 118 0 84 0 118 0 87 0 118 0 90 0 118 0 91 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 118 0 97 0 118 0 99 0 118 0 100 0 118 0 101 0 118 0 103 0 118 0 114 0 118 0 116 0 118 0 117 0 118 0 119 0 118 0 121 0 118 0 122 0 118 0 123 0 118 0 124 0 118 0 125 0 118 0 127 0 118 0 128 0 118 0 129 0 118 0 130 0 118 0 131 0 118 0 133 0 118 0 134 0 118 0 135 0 118 0 136 0 118 0 138 0 118 0 139 0 118 0 140 0 118 0 141 0 118 0 143 0 118 0 145 0 118 0 146 0 118 0 147 0 118 0 148 0 118 0 149 0 118 0 150 0 118 0 152 0 118 0 153 0 118 0 154 0 118 0 156 0 118 0 158 0 118 0 159 0 118 0 160 0 118 0 161 0 118 0 162 0 118 0 163 0 118 0 164 0 118 0 165 0 118 0 166 0 118 0 167 0 118 0 168 0 118 0 169 0 118 0 170 0 118 0 171 0 118 2 178] 
#[1 0 126 0 1 0 126 0 2 0 126 0 5 0 126 0 6 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 12 0 126 0 13 0 126 0 15 0 126 0 16 0 126 0 17 0 130 0 20 0 126 0 23 0 126 0 25 0 126 0 26 0 126 0 29 0 126 0 31 0 126 0 33 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 39 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 52 0 126 0 53 0 126 0 55 0 126 0 56 0 126 0 58 0 126 0 59 0 126 0 60 0 126 0 61 0 126 0 62 0 126 0 63 0 126 0 64 0 126 0 65 0 126 0 66 0 126 0 67 0 126 0 69 0 126 0 73 0 126 0 76 0 126 0 77 0 126 0 78 0 126 0 79 0 126 0 80 0 126 0 82 0 126 0 83 0 126 0 84 0 126 0 87 0 126 0 90 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 95 0 126 0 97 0 126 0 99 0 126 0 100 0 126 0 101 0 126 0 103 0 126 0 114 0 126 0 116 0 126 0 117 0 126 0 119 0 126 0 121 0 126 0 122 0 126 0 123 0 126 0 124 0 126 0 125 0 126 0 127 0 126 0 128 0 126 0 129 0 126 0 130 0 126 0 131 0 126 0 133 0 126 0 134 0 126 0 135 0 126 0 136 0 126 0 138 0 126 0 139 0 126 0 140 0 126 0 141 0 126 0 143 0 126 0 145 0 126 0 146 0 126 0 147 0 126 0 148 0 126 0 149 0 126 0 150 0 126 0 152 0 126 0 153 0 126 0 154 0 126 0 156 0 126 0 158 0 126 0 159 0 126 0 160 0 126 0 161 0 126 0 162 0 126 0 163 0 126 0 164 0 126 0 165 0 126 0 166 0 126 0 167 0 126 0 168 0 126 0 169 0 126 0 170 0 126 0 171 0 126 2 178] 
#[1 5 113 0 8 1 93 0 149 5 117 1 123] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 5 193 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 193 0 212 1 189 0 213 5 193 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 5 197 0 25] 
#[1 0 134 0 1 0 134 0 2 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 12 0 134 0 13 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 20 0 134 0 23 0 134 0 25 0 134 0 26 0 134 0 29 0 134 0 31 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 53 0 134 0 55 0 134 0 56 0 134 0 58 0 134 0 59 0 134 0 60 0 134 0 61 0 134 0 62 0 134 0 63 0 134 0 64 0 134 0 65 0 134 0 66 0 134 0 67 0 134 0 69 0 134 0 73 0 134 0 76 0 134 0 77 0 134 0 78 0 134 0 79 0 134 0 80 0 134 0 82 0 134 0 83 0 134 0 84 0 134 0 87 0 134 0 90 0 134 0 91 0 134 0 92 0 134 0 93 0 134 0 94 0 134 0 95 0 134 0 97 0 134 0 99 0 134 0 100 0 134 0 101 0 134 0 103 0 134 0 114 0 134 0 116 0 134 0 117 0 134 0 119 0 134 0 121 0 134 0 122 0 134 0 123 0 134 0 124 0 134 0 125 0 134 0 127 0 134 0 128 0 134 0 129 0 134 0 130 0 134 0 131 0 134 0 133 0 134 0 134 0 134 0 135 0 134 0 136 0 134 0 138 0 134 0 139 0 134 0 140 0 134 0 141 0 134 0 143 0 134 0 145 0 134 0 146 0 134 0 147 0 134 0 148 0 134 0 149 0 134 0 150 0 134 0 152 0 134 0 153 0 134 0 154 0 134 0 156 0 134 0 158 0 134 0 159 0 134 0 160 0 134 0 161 0 134 0 162 0 134 0 163 0 134 0 164 0 134 0 165 0 134 0 166 0 134 0 167 0 134 0 168 0 134 0 169 0 134 0 170 0 134 0 171 0 134 2 178] 
#[1 0 142 0 1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 103 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 142 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 39 0 142 0 40 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 52 0 142 0 53 0 142 0 55 0 142 0 56 0 142 0 58 0 142 0 59 0 142 0 60 0 142 0 61 0 142 0 62 0 142 0 63 0 142 0 64 0 142 0 65 0 142 0 66 0 142 0 67 0 142 0 69 0 142 0 73 0 142 0 76 0 142 0 77 0 142 0 78 0 142 0 79 0 142 0 80 0 142 0 82 0 142 0 83 0 142 0 84 0 142 0 87 0 142 0 90 0 142 0 91 0 142 0 92 0 142 0 93 0 142 0 94 0 142 0 95 0 142 0 97 0 142 0 99 0 142 0 100 0 142 0 101 0 142 0 103 0 142 0 114 0 142 0 116 0 142 0 117 0 142 0 119 0 142 0 121 0 142 0 122 0 142 0 123 0 142 0 124 0 142 0 125 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 138 0 142 0 139 0 142 0 140 0 142 0 141 0 142 0 143 0 142 0 145 0 142 0 146 0 142 0 147 0 142 0 148 0 142 0 149 0 142 0 150 0 142 0 151 0 142 0 152 0 142 0 153 0 142 0 154 0 142 0 155 0 142 0 156 0 142 0 158 0 142 0 159 0 142 0 160 0 142 0 161 0 142 0 162 0 142 0 163 0 142 0 164 0 142 0 165 0 142 0 166 0 142 0 167 0 142 0 168 0 142 0 169 0 142 0 170 0 142 0 171 0 142 2 178] 
#[1 5 205 0 8 0 146 0 149 5 209 1 81 5 209 1 82] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 5 217 1 122 5 217 1 123 5 217 1 126 5 217 1 161 2 181 1 162 5 217 1 163 5 217 1 164 5 217 1 165 5 217 1 173 5 217 1 174 5 217 1 175 5 217 1 176 5 217 1 184 5 217 1 185 5 217 1 186 5 217 1 187 5 217 1 188 5 217 1 189 5 217 1 190 5 217 1 191 5 217 1 202 5 217 1 203 5 217 1 204 5 217 1 205 5 217 1 207 1 205 2 142 3 17 2 143 5 217 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 5 217 2 161] 
#[1 0 150 0 1 0 150 0 2 0 150 0 5 0 150 0 6 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 12 0 150 0 13 0 150 0 15 0 150 0 16 0 150 0 17 0 154 0 20 0 150 0 23 0 150 0 25 0 150 0 26 0 150 0 29 0 150 0 31 0 150 0 33 0 150 0 35 0 150 0 36 0 150 0 37 0 150 0 38 0 150 0 39 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 47 0 150 0 48 0 150 0 49 0 150 0 50 0 150 0 51 0 150 0 52 0 150 0 53 0 150 0 55 0 150 0 56 0 150 0 58 0 150 0 59 0 150 0 60 0 150 0 61 0 150 0 62 0 150 0 63 0 150 0 64 0 150 0 65 0 150 0 66 0 150 0 67 0 150 0 69 0 150 0 73 0 150 0 76 0 150 0 77 0 150 0 78 0 150 0 79 0 150 0 80 0 150 0 82 0 150 0 83 0 150 0 84 0 150 0 87 0 150 0 90 0 150 0 91 0 150 0 92 0 150 0 93 0 150 0 94 0 150 0 95 0 150 0 97 0 150 0 99 0 150 0 100 0 150 0 101 0 150 0 103 0 150 0 114 0 150 0 116 0 150 0 117 0 150 0 119 0 150 0 121 0 150 0 122 0 150 0 123 0 150 0 124 0 150 0 125 0 150 0 127 0 150 0 128 0 150 0 129 0 150 0 130 0 150 0 131 0 150 0 133 0 150 0 134 0 150 0 135 0 150 0 136 0 150 0 138 0 150 0 139 0 150 0 140 0 150 0 141 0 150 0 143 0 150 0 145 0 150 0 146 0 150 0 147 0 150 0 148 0 150 0 149 0 150 0 150 0 150 0 152 0 150 0 153 0 150 0 154 0 150 0 156 0 150 0 158 0 150 0 159 0 150 0 160 0 150 0 161 0 150 0 162 0 150 0 163 0 150 0 164 0 150 0 165 0 150 0 166 0 150 0 167 0 150 0 168 0 150 0 169 0 150 0 170 0 150 0 171 0 150 2 178] 
#[1 0 158 0 1 0 158 0 2 0 158 0 5 0 158 0 6 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 12 0 158 0 13 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 23 0 158 0 25 0 158 0 26 0 158 0 29 0 158 0 31 0 158 0 33 0 158 0 35 0 158 0 36 0 162 0 37 0 158 0 38 0 158 0 39 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 53 0 158 0 55 0 158 0 56 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 63 0 158 0 64 0 158 0 65 0 158 0 66 0 158 0 67 0 158 0 69 0 158 0 73 0 158 0 76 0 158 0 77 0 158 0 78 0 158 0 79 0 158 0 80 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 87 0 158 0 90 0 158 0 91 0 158 0 92 0 158 0 93 0 158 0 94 0 158 0 95 0 158 0 97 0 158 0 99 0 158 0 100 0 158 0 101 0 158 0 102 0 158 0 103 0 158 0 114 0 158 0 116 0 158 0 117 0 158 0 119 0 158 0 121 0 158 0 122 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 127 0 158 0 128 0 158 0 129 0 158 0 130 0 158 0 131 0 158 0 133 0 158 0 134 0 158 0 135 0 158 0 136 0 158 0 138 0 158 0 139 0 158 0 140 0 158 0 141 0 158 0 143 0 158 0 145 0 158 0 146 0 158 0 147 0 158 0 148 0 158 0 149 0 158 0 150 0 158 0 152 0 158 0 153 0 158 0 154 0 158 0 156 0 158 0 158 0 158 0 159 0 158 0 160 0 158 0 161 0 158 0 162 0 158 0 163 0 158 0 164 0 158 0 165 0 158 0 166 0 158 0 167 0 158 0 168 0 158 0 169 0 158 0 170 0 158 0 171 0 158 2 178] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 5 221 0 8] 
#[1 0 170 0 1 0 170 0 2 0 170 0 5 0 170 0 6 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 12 0 170 0 13 0 170 0 15 0 170 0 16 0 170 0 17 0 174 0 20 0 170 0 23 0 170 0 25 0 170 0 26 0 170 0 29 0 170 0 31 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 49 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 53 0 170 0 55 0 170 0 56 0 170 0 58 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 62 0 170 0 63 0 170 0 64 0 170 0 65 0 170 0 66 0 170 0 67 0 170 0 69 0 170 0 73 0 170 0 76 0 170 0 77 0 170 0 78 0 170 0 79 0 170 0 80 0 170 0 82 0 170 0 83 0 170 0 84 0 170 0 87 0 170 0 90 0 170 0 91 0 170 0 92 0 170 0 93 0 170 0 94 0 170 0 95 0 170 0 97 0 170 0 99 0 170 0 100 0 170 0 101 0 170 0 103 0 170 0 114 0 170 0 116 0 170 0 117 0 170 0 119 0 170 0 121 0 170 0 122 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 127 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 138 0 170 0 139 0 170 0 140 0 170 0 141 0 170 0 143 0 170 0 145 0 170 0 146 0 170 0 147 0 170 0 148 0 170 0 149 0 170 0 150 0 170 0 152 0 170 0 153 0 170 0 154 0 170 0 156 0 170 0 158 0 170 0 159 0 170 0 160 0 170 0 161 0 170 0 162 0 170 0 163 0 170 0 164 0 170 0 165 0 170 0 166 0 170 0 167 0 170 0 168 0 170 0 169 0 170 0 170 0 170 0 171 0 170 2 178] 
#[0 5 225 0 8] 
#[0 5 229 0 8] 
#[1 5 233 0 53 5 237 0 61 5 241 0 158] 
#[0 5 245 0 8] 
#[1 0 178 0 1 0 178 0 2 0 178 0 5 0 178 0 6 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 15 0 178 0 16 0 178 0 17 0 182 0 20 0 178 0 23 0 178 0 25 0 178 0 26 0 178 0 29 0 178 0 31 0 178 0 33 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 51 0 178 0 52 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 63 0 178 0 64 0 178 0 65 0 178 0 66 0 178 0 67 0 178 0 69 0 178 0 73 0 178 0 76 0 178 0 77 0 178 0 78 0 178 0 79 0 178 0 80 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 87 0 178 0 90 0 178 0 91 0 178 0 92 0 178 0 93 0 178 0 94 0 178 0 95 0 178 0 97 0 178 0 99 0 178 0 100 0 178 0 101 0 178 0 103 0 178 0 114 0 178 0 116 0 178 0 117 0 178 0 119 0 178 0 121 0 178 0 122 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 127 0 178 0 128 0 178 0 129 0 178 0 130 0 178 0 131 0 178 0 133 0 178 0 134 0 178 0 135 0 178 0 136 0 178 0 138 0 178 0 139 0 178 0 140 0 178 0 141 0 178 0 143 0 178 0 145 0 178 0 146 0 178 0 147 0 178 0 148 0 178 0 149 0 178 0 150 0 178 0 152 0 178 0 153 0 178 0 154 0 178 0 156 0 178 0 158 0 178 0 159 0 178 0 160 0 178 0 161 0 178 0 162 0 178 0 163 0 178 0 164 0 178 0 165 0 178 0 166 0 178 0 167 0 178 0 168 0 178 0 169 0 178 0 170 0 178 0 171 0 178 2 178] 
#[0 5 249 0 8] 
#[1 0 186 0 1 0 186 0 2 0 186 0 5 0 186 0 6 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 12 0 186 0 13 0 186 0 15 0 186 0 16 0 186 0 17 0 190 0 20 0 186 0 23 0 186 0 25 0 186 0 26 0 186 0 29 0 186 0 31 0 186 0 33 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 52 0 186 0 53 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 59 0 186 0 60 0 186 0 61 0 186 0 62 0 186 0 63 0 186 0 64 0 186 0 65 0 186 0 66 0 186 0 67 0 186 0 69 0 186 0 73 0 186 0 76 0 186 0 77 0 186 0 78 0 186 0 79 0 186 0 80 0 186 0 82 0 186 0 83 0 186 0 84 0 186 0 87 0 186 0 90 0 186 0 91 0 186 0 92 0 186 0 93 0 186 0 94 0 186 0 95 0 186 0 97 0 186 0 99 0 186 0 100 0 186 0 101 0 186 0 103 0 186 0 114 0 186 0 116 0 186 0 117 0 186 0 119 0 186 0 121 0 186 0 122 0 186 0 123 0 186 0 124 0 186 0 125 0 186 0 127 0 186 0 128 0 186 0 129 0 186 0 130 0 186 0 131 0 186 0 133 0 186 0 134 0 186 0 135 0 186 0 136 0 186 0 138 0 186 0 139 0 186 0 140 0 186 0 141 0 186 0 143 0 186 0 145 0 186 0 146 0 186 0 147 0 186 0 148 0 186 0 149 0 186 0 150 0 186 0 152 0 186 0 153 0 186 0 154 0 186 0 156 0 186 0 158 0 186 0 159 0 186 0 160 0 186 0 161 0 186 0 162 0 186 0 163 0 186 0 164 0 186 0 165 0 186 0 166 0 186 0 167 0 186 0 168 0 186 0 169 0 186 0 170 0 186 0 171 0 186 2 178] 
#[0 5 253 0 8] 
#[1 5 121 0 8 6 1 0 37 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 6 5 0 149 5 185 0 158 1 141 0 193 6 9 0 195 1 141 0 196 6 13 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 6 13 0 212 1 189 0 213 6 17 0 215 6 21 0 216 6 25 0 219 6 29 0 222 6 33 1 34 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 0 194 0 1 0 194 0 2 0 194 0 5 0 194 0 6 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 12 0 194 0 13 0 194 0 15 0 194 0 16 0 194 0 17 0 198 0 20 0 194 0 23 0 194 0 25 0 194 0 26 0 194 0 29 0 194 0 31 0 194 0 33 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 52 0 194 0 53 0 194 0 55 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 60 0 194 0 61 0 194 0 62 0 194 0 63 0 194 0 64 0 194 0 65 0 194 0 66 0 194 0 67 0 194 0 69 0 194 0 73 0 194 0 76 0 194 0 77 0 194 0 78 0 194 0 79 0 194 0 80 0 194 0 82 0 194 0 83 0 194 0 84 0 194 0 87 0 194 0 90 0 194 0 91 0 194 0 92 0 194 0 93 0 194 0 94 0 194 0 95 0 194 0 97 0 194 0 99 0 194 0 100 0 194 0 101 0 194 0 103 0 194 0 114 0 194 0 116 0 194 0 117 0 194 0 119 0 194 0 121 0 194 0 122 0 194 0 123 0 194 0 124 0 194 0 125 0 194 0 127 0 194 0 128 0 194 0 129 0 194 0 130 0 194 0 131 0 194 0 133 0 194 0 134 0 194 0 135 0 194 0 136 0 194 0 138 0 194 0 139 0 194 0 140 0 194 0 141 0 194 0 143 0 194 0 145 0 194 0 146 0 194 0 147 0 194 0 148 0 194 0 149 0 194 0 150 0 194 0 152 0 194 0 153 0 194 0 154 0 194 0 156 0 194 0 158 0 194 0 159 0 194 0 160 0 194 0 161 0 194 0 162 0 194 0 163 0 194 0 164 0 194 0 165 0 194 0 166 0 194 0 167 0 194 0 168 0 194 0 169 0 194 0 170 0 194 0 171 0 194 2 178] 
#[1 0 202 0 8 0 202 0 49 0 202 0 52 0 202 0 55 0 202 0 60 0 202 0 65 0 202 0 66 0 202 0 77 0 202 0 87 0 202 0 95 0 202 0 100 6 37 0 113 0 202 0 117 0 202 0 121 0 202 0 125 0 202 0 134 0 202 0 135 0 202 0 139 0 202 0 141 0 202 0 143 0 202 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 206 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 6 41 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 6 45 1 76 6 45 1 77 6 45 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 6 45 1 94 3 205 1 95 6 45 1 114 6 45 1 116 6 45 1 117 6 45 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 210 0 1 0 210 0 2 0 210 0 5 0 210 0 6 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 12 0 210 0 13 0 210 0 15 0 210 0 16 0 210 0 17 0 214 0 20 0 210 0 23 0 210 0 25 0 210 0 26 0 210 0 29 0 210 0 31 0 210 0 33 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 51 0 210 0 52 0 210 0 53 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 62 0 210 0 63 0 210 0 64 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 73 0 210 0 76 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 80 0 210 0 82 0 210 0 83 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 93 0 210 0 94 0 210 0 95 0 210 0 97 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 103 0 210 0 114 0 210 0 116 0 210 0 117 0 210 0 119 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 124 0 210 0 125 0 210 0 127 0 210 0 128 0 210 0 129 0 210 0 130 0 210 0 131 0 210 0 133 0 210 0 134 0 210 0 135 0 210 0 136 0 210 0 138 0 210 0 139 0 210 0 140 0 210 0 141 0 210 0 143 0 210 0 145 0 210 0 146 0 210 0 147 0 210 0 148 0 210 0 149 0 210 0 150 0 210 0 152 0 210 0 153 0 210 0 154 0 210 0 156 0 210 0 158 0 210 0 159 0 210 0 160 0 210 0 161 0 210 0 162 0 210 0 163 0 210 0 164 0 210 0 165 0 210 0 166 0 210 0 167 0 210 0 168 0 210 0 169 0 210 0 170 0 210 0 171 0 210 2 178] 
#[1 0 218 0 1 0 218 0 2 0 218 0 5 0 218 0 6 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 16 0 218 0 17 0 222 0 20 0 218 0 23 0 218 0 25 0 218 0 26 0 218 0 29 0 218 0 31 0 218 0 33 0 218 0 35 0 218 0 36 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 49 0 218 0 50 0 218 0 51 0 218 0 52 0 218 0 53 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 60 0 218 0 61 0 218 0 62 0 218 0 63 0 218 0 64 0 218 0 65 0 218 0 66 0 218 0 67 0 218 0 69 0 218 0 73 0 218 0 76 0 218 0 77 0 218 0 78 0 218 0 79 0 218 0 80 0 218 0 82 0 218 0 83 0 218 0 84 0 218 0 87 0 218 0 90 0 218 0 91 0 218 0 92 0 218 0 93 0 218 0 94 0 218 0 95 0 218 0 97 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 103 0 218 0 114 0 218 0 116 0 218 0 117 0 218 0 119 0 218 0 121 0 218 0 122 0 218 0 123 0 218 0 124 0 218 0 125 0 218 0 127 0 218 0 128 0 218 0 129 0 218 0 130 0 218 0 131 0 218 0 133 0 218 0 134 0 218 0 135 0 218 0 136 0 218 0 138 0 218 0 139 0 218 0 140 0 218 0 141 0 218 0 143 0 218 0 145 0 218 0 146 0 218 0 147 0 218 0 148 0 218 0 149 0 218 0 150 0 218 0 152 0 218 0 153 0 218 0 154 0 218 0 156 0 218 0 158 0 218 0 159 0 218 0 160 0 218 0 161 0 218 0 162 0 218 0 163 0 218 0 164 0 218 0 165 0 218 0 166 0 218 0 167 0 218 0 168 0 218 0 169 0 218 0 170 0 218 0 171 0 218 2 178] 
#[0 6 53 0 8] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 6 57 0 158 1 141 0 193 1 181 0 195 1 141 0 196 6 65 0 199 6 65 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 6 73 2 153 6 73 2 155 3 49 2 177] 
#[1 0 226 0 1 0 226 0 2 0 226 0 5 0 226 0 6 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 12 0 226 0 13 0 226 0 15 0 226 0 16 0 226 0 17 0 230 0 20 0 226 0 23 0 226 0 25 0 226 0 26 0 226 0 29 0 226 0 31 0 226 0 33 0 226 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 49 0 226 0 50 0 226 0 51 0 226 0 52 0 226 0 53 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 62 0 226 0 63 0 226 0 64 0 226 0 65 0 226 0 66 0 226 0 67 0 226 0 69 0 226 0 73 0 226 0 76 0 226 0 77 0 226 0 78 0 226 0 79 0 226 0 80 0 226 0 82 0 226 0 83 0 226 0 84 0 226 0 87 0 226 0 90 0 226 0 91 0 226 0 92 0 226 0 93 0 226 0 94 0 226 0 95 0 226 0 97 0 226 0 99 0 226 0 100 0 226 0 101 0 226 0 103 0 226 0 114 0 226 0 116 0 226 0 117 0 226 0 119 0 226 0 121 0 226 0 122 0 226 0 123 0 226 0 124 0 226 0 125 0 226 0 127 0 226 0 128 0 226 0 129 0 226 0 130 0 226 0 131 0 226 0 133 0 226 0 134 0 226 0 135 0 226 0 136 0 226 0 138 0 226 0 139 0 226 0 140 0 226 0 141 0 226 0 143 0 226 0 145 0 226 0 146 0 226 0 147 0 226 0 148 0 226 0 149 0 226 0 150 0 226 0 152 0 226 0 153 0 226 0 154 0 226 0 156 0 226 0 158 0 226 0 159 0 226 0 160 0 226 0 161 0 226 0 162 0 226 0 163 0 226 0 164 0 226 0 165 0 226 0 166 0 226 0 167 0 226 0 168 0 226 0 169 0 226 0 170 0 226 0 171 0 226 2 178] 
#[0 6 77 0 8] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 206 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 6 81 1 76 6 81 1 77 6 81 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 6 81 1 94 3 205 1 95 6 81 1 114 6 81 1 116 6 81 1 117 6 81 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 93 0 149 6 85 1 123] 
#[0 6 89 0 8] 
#[1 0 242 0 1 0 242 0 2 0 242 0 5 0 242 0 6 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 12 0 242 0 13 0 242 0 15 0 242 0 16 0 242 0 17 0 246 0 20 0 242 0 23 0 242 0 25 0 242 0 26 0 242 0 29 0 242 0 31 0 242 0 33 0 242 0 35 0 242 0 36 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 44 0 242 0 45 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 49 0 242 0 50 0 242 0 51 0 242 0 52 0 242 0 53 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 59 0 242 0 60 0 242 0 61 0 242 0 62 0 242 0 63 0 242 0 64 0 242 0 65 0 242 0 66 0 242 0 67 0 242 0 69 0 242 0 73 0 242 0 76 0 242 0 77 0 242 0 78 0 242 0 79 0 242 0 80 0 242 0 82 0 242 0 83 0 242 0 84 0 242 0 87 0 242 0 90 0 242 0 91 0 242 0 92 0 242 0 93 0 242 0 94 0 242 0 95 0 242 0 97 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 103 0 242 0 114 0 242 0 116 0 242 0 117 0 242 0 119 0 242 0 121 0 242 0 122 0 242 0 123 0 242 0 124 0 242 0 125 0 242 0 127 0 242 0 128 0 242 0 129 0 242 0 130 0 242 0 131 0 242 0 133 0 242 0 134 0 242 0 135 0 242 0 136 0 242 0 138 0 242 0 139 0 242 0 140 0 242 0 141 0 242 0 143 0 242 0 145 0 242 0 146 0 242 0 147 0 242 0 148 0 242 0 149 0 242 0 150 0 242 0 152 0 242 0 153 0 242 0 154 0 242 0 156 0 242 0 158 0 242 0 159 0 242 0 160 0 242 0 161 0 242 0 162 0 242 0 163 0 242 0 164 0 242 0 165 0 242 0 166 0 242 0 167 0 242 0 168 0 242 0 169 0 242 0 170 0 242 0 171 0 242 2 178] 
#[1 0 250 0 1 0 250 0 2 0 250 0 5 0 250 0 6 0 250 0 8 0 250 0 9 0 250 0 10 0 250 0 12 0 250 0 13 0 250 0 15 0 250 0 16 0 250 0 17 0 254 0 20 0 250 0 23 0 250 0 25 0 250 0 26 0 250 0 29 0 250 0 31 0 250 0 33 0 250 0 35 0 250 0 36 0 250 0 37 0 250 0 38 0 250 0 39 0 250 0 44 0 250 0 45 0 250 0 46 0 250 0 47 0 250 0 48 0 250 0 49 0 250 0 50 0 250 0 51 0 250 0 52 0 250 0 53 0 250 0 55 0 250 0 56 0 250 0 58 0 250 0 59 0 250 0 60 0 250 0 61 0 250 0 62 0 250 0 63 0 250 0 64 0 250 0 65 0 250 0 66 0 250 0 67 0 250 0 69 0 250 0 73 0 250 0 76 0 250 0 77 0 250 0 78 0 250 0 79 0 250 0 80 0 250 0 82 0 250 0 83 0 250 0 84 0 250 0 87 0 250 0 90 0 250 0 91 0 250 0 92 0 250 0 93 0 250 0 94 0 250 0 95 0 250 0 97 0 250 0 99 0 250 0 100 0 250 0 101 0 250 0 103 0 250 0 114 0 250 0 116 0 250 0 117 0 250 0 119 0 250 0 121 0 250 0 122 0 250 0 123 0 250 0 124 0 250 0 125 0 250 0 127 0 250 0 128 0 250 0 129 0 250 0 130 0 250 0 131 0 250 0 133 0 250 0 134 0 250 0 135 0 250 0 136 0 250 0 138 0 250 0 139 0 250 0 140 0 250 0 141 0 250 0 143 0 250 0 145 0 250 0 146 0 250 0 147 0 250 0 148 0 250 0 149 0 250 0 150 0 250 0 152 0 250 0 153 0 250 0 154 0 250 0 156 0 250 0 158 0 250 0 159 0 250 0 160 0 250 0 161 0 250 0 162 0 250 0 163 0 250 0 164 0 250 0 165 0 250 0 166 0 250 0 167 0 250 0 168 0 250 0 169 0 250 0 170 0 250 0 171 0 250 2 178] 
#[1 6 93 0 8 1 93 0 149 6 97 1 123] 
#[1 1 93 0 149 6 101 1 123] 
#[1 1 2 0 1 1 2 0 2 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 12 1 2 0 13 1 2 0 15 1 2 0 16 1 2 0 17 1 6 0 20 1 2 0 23 1 2 0 25 1 2 0 26 1 2 0 29 1 2 0 31 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 44 1 2 0 45 1 2 0 46 1 2 0 47 1 2 0 48 1 2 0 49 1 2 0 50 1 2 0 51 1 2 0 52 1 2 0 53 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 59 1 2 0 60 1 2 0 61 1 2 0 62 1 2 0 63 1 2 0 64 1 2 0 65 1 2 0 66 1 2 0 67 1 2 0 69 1 2 0 73 1 2 0 76 1 2 0 77 1 2 0 78 1 2 0 79 1 2 0 80 1 2 0 82 1 2 0 83 1 2 0 84 1 2 0 87 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 93 1 2 0 94 1 2 0 95 1 2 0 97 1 2 0 99 1 2 0 100 1 2 0 101 1 2 0 103 1 2 0 114 1 2 0 116 1 2 0 117 1 2 0 119 1 2 0 121 1 2 0 122 1 2 0 123 1 2 0 124 1 2 0 125 1 2 0 127 1 2 0 128 1 2 0 129 1 2 0 130 1 2 0 131 1 2 0 133 1 2 0 134 1 2 0 135 1 2 0 136 1 2 0 138 1 2 0 139 1 2 0 140 1 2 0 141 1 2 0 143 1 2 0 145 1 2 0 146 1 2 0 147 1 2 0 148 1 2 0 149 1 2 0 150 1 2 0 152 1 2 0 153 1 2 0 154 1 2 0 156 1 2 0 158 1 2 0 159 1 2 0 160 1 2 0 161 1 2 0 162 1 2 0 163 1 2 0 164 1 2 0 165 1 2 0 166 1 2 0 167 1 2 0 168 1 2 0 169 1 2 0 170 1 2 0 171 1 2 2 178] 
#[0 6 105 0 8] 
#[0 1 10 0 158] 
#[0 1 14 0 9 0 10 0 158] 
#[0 6 109 0 8] 
#[1 6 113 0 50 6 117 0 116] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 1 18 0 156 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 6 121 1 121 6 121 1 122 6 121 1 123 6 125 1 124 6 129 1 125 6 121 1 126 6 121 1 127 6 121 1 128 6 121 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 6 121 1 161 2 181 1 162 6 121 1 163 6 121 1 164 6 121 1 165 6 121 1 173 6 121 1 174 6 121 1 175 6 121 1 176 6 121 1 184 6 121 1 185 6 121 1 186 6 121 1 187 6 121 1 188 6 121 1 189 6 121 1 190 6 121 1 191 6 121 1 202 6 121 1 203 6 121 1 204 6 121 1 205 6 121 1 207 3 9 1 215 1 205 2 142 3 17 2 143 6 121 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 6 121 2 161 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 6 133 1 53 1 205 1 54 1 205 1 59 6 133 1 60 6 133 1 61 6 133 1 62 6 133 1 63 1 205 1 79 1 205 2 142 3 17 2 143 6 133 2 156 1 205 2 157 6 133 2 159 1 205 2 160] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 137 0 23 6 141 0 24 6 145 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 0 107 0 37 1 22 0 40 1 22 0 151 0 107 0 158 6 153 0 223 6 153 0 253] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 58 0 1 1 58 0 2 1 58 0 5 1 58 0 6 1 58 0 8 1 58 0 9 1 58 0 10 1 58 0 12 1 58 0 13 1 58 0 15 1 58 0 16 1 58 0 17 0 111 0 20 1 58 0 23 1 58 0 25 1 58 0 26 1 58 0 29 1 58 0 31 1 58 0 33 1 58 0 35 1 58 0 36 1 58 0 37 1 58 0 38 1 58 0 39 1 58 0 44 1 58 0 45 1 58 0 46 1 58 0 47 1 58 0 48 1 58 0 49 1 58 0 50 1 58 0 51 1 58 0 52 1 58 0 53 1 58 0 55 1 58 0 56 1 58 0 58 1 58 0 59 1 58 0 60 1 58 0 61 1 58 0 62 1 58 0 63 1 58 0 64 1 58 0 65 1 58 0 66 1 58 0 67 1 58 0 69 1 58 0 73 1 58 0 76 1 58 0 77 1 58 0 78 1 58 0 79 1 58 0 80 1 58 0 82 1 58 0 83 1 58 0 84 1 58 0 87 1 58 0 90 1 58 0 91 1 58 0 92 1 58 0 93 1 58 0 94 1 58 0 95 1 58 0 97 1 58 0 99 1 58 0 100 1 58 0 101 1 58 0 103 1 58 0 114 1 58 0 116 1 58 0 117 1 58 0 119 1 58 0 121 1 58 0 122 1 58 0 123 1 58 0 124 1 58 0 125 1 58 0 127 1 58 0 128 1 58 0 129 1 58 0 130 1 58 0 131 1 58 0 133 1 58 0 134 1 58 0 135 1 58 0 136 1 58 0 138 1 58 0 139 1 58 0 140 1 58 0 141 1 58 0 143 1 58 0 145 1 58 0 146 1 58 0 147 1 58 0 148 1 58 0 149 1 58 0 150 1 58 0 152 1 58 0 153 1 58 0 154 1 58 0 156 1 58 0 158 1 58 0 159 1 58 0 160 1 58 0 161 1 58 0 162 1 58 0 163 1 58 0 164 1 58 0 165 1 58 0 166 1 58 0 167 1 58 0 168 1 58 0 169 1 58 0 170 1 58 0 171 1 58 2 178] 
#[0 0 115 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 74 0 1 1 74 0 2 1 74 0 5 1 74 0 6 1 74 0 8 1 74 0 9 1 74 0 10 1 74 0 12 1 74 0 13 1 74 0 15 1 74 0 16 1 74 0 17 0 119 0 20 1 74 0 23 1 74 0 25 1 74 0 26 1 74 0 29 1 74 0 31 1 74 0 32 1 74 0 33 1 74 0 35 1 74 0 36 1 74 0 37 1 74 0 38 1 74 0 39 1 74 0 44 1 74 0 45 1 74 0 46 1 74 0 47 1 74 0 48 1 74 0 49 1 74 0 50 1 74 0 51 1 74 0 52 1 74 0 53 1 74 0 55 1 74 0 56 1 74 0 58 1 74 0 59 1 74 0 60 1 74 0 61 1 74 0 62 1 74 0 63 1 74 0 64 1 74 0 65 1 74 0 66 1 74 0 67 1 74 0 69 1 74 0 73 1 74 0 76 1 74 0 77 1 74 0 78 1 74 0 79 1 74 0 80 1 74 0 82 1 74 0 83 1 74 0 84 1 74 0 87 1 74 0 90 1 74 0 91 1 74 0 92 1 74 0 93 1 74 0 94 1 74 0 95 1 74 0 97 1 74 0 99 1 74 0 100 1 74 0 101 1 74 0 102 1 74 0 103 1 74 0 114 1 74 0 116 1 74 0 117 1 74 0 119 1 74 0 121 1 74 0 122 1 74 0 123 1 74 0 124 1 74 0 125 1 74 0 127 1 74 0 128 1 74 0 129 1 74 0 130 1 74 0 131 1 74 0 133 1 74 0 134 1 74 0 135 1 74 0 136 1 74 0 138 1 74 0 139 1 74 0 140 1 74 0 141 1 74 0 143 1 74 0 145 1 74 0 146 1 74 0 147 1 74 0 148 1 74 0 149 1 74 0 150 1 74 0 152 1 74 0 153 1 74 0 154 1 74 0 156 1 74 0 158 1 74 0 159 1 74 0 160 1 74 0 161 1 74 0 162 1 74 0 163 1 74 0 164 1 74 0 165 1 74 0 166 1 74 0 167 1 74 0 168 1 74 0 169 1 74 0 170 1 74 0 171 1 74 2 178] 
#[1 6 161 0 158 6 165 1 145 6 169 1 148] 
#[1 1 78 0 1 1 78 0 2 1 78 0 5 1 78 0 6 1 78 0 8 1 78 0 9 0 123 0 10 1 78 0 12 1 78 0 13 1 78 0 15 1 78 0 16 1 78 0 17 1 78 0 23 1 78 0 25 1 78 0 26 1 78 0 29 1 78 0 31 1 78 0 33 1 78 0 35 1 78 0 36 1 82 0 37 1 78 0 38 1 78 0 39 1 78 0 44 1 78 0 45 1 78 0 46 1 78 0 47 1 78 0 48 1 78 0 49 1 78 0 50 1 78 0 51 1 78 0 52 1 78 0 53 1 78 0 55 1 78 0 56 1 78 0 58 1 78 0 59 1 78 0 60 1 78 0 61 1 78 0 62 1 78 0 63 1 78 0 64 1 78 0 65 1 78 0 66 1 78 0 67 1 78 0 69 1 78 0 73 1 78 0 76 1 78 0 77 1 78 0 78 1 78 0 79 1 78 0 80 1 78 0 82 1 78 0 83 1 78 0 84 1 78 0 87 1 78 0 90 1 78 0 91 1 78 0 92 1 78 0 93 1 78 0 94 1 78 0 95 1 78 0 97 1 78 0 99 1 78 0 100 1 78 0 101 1 78 0 102 1 78 0 103 1 78 0 114 1 78 0 116 1 78 0 117 1 78 0 119 1 78 0 121 1 78 0 122 1 78 0 123 1 78 0 124 1 78 0 125 1 78 0 127 1 78 0 128 1 78 0 129 1 78 0 130 1 78 0 131 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 138 1 78 0 139 1 78 0 140 1 78 0 141 1 78 0 143 1 78 0 145 1 78 0 146 1 78 0 147 1 78 0 148 1 78 0 149 1 78 0 150 1 78 0 152 1 78 0 153 1 78 0 154 1 78 0 156 1 78 0 158 1 78 0 159 1 78 0 160 1 78 0 161 1 78 0 162 1 78 0 163 1 78 0 164 1 78 0 165 1 78 0 166 1 78 0 167 1 78 0 168 1 78 0 169 1 78 0 170 1 78 0 171 6 177 2 154 1 78 2 178] 
#[0 1 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 98 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 114 0 1 1 114 0 2 1 114 0 5 1 114 0 6 1 114 0 8 1 114 0 9 1 114 0 10 1 114 0 12 1 114 0 13 1 114 0 15 1 114 0 16 1 114 0 17 1 114 0 23 1 114 0 25 1 114 0 26 1 114 0 29 1 114 0 31 1 114 0 33 0 127 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 49 1 114 0 50 1 114 0 51 1 114 0 52 1 114 0 53 1 114 0 55 1 114 0 56 1 114 0 58 1 114 0 59 1 114 0 60 1 114 0 61 1 114 0 62 1 114 0 63 1 114 0 64 1 114 0 65 1 114 0 66 1 114 0 67 1 114 0 69 1 114 0 73 1 114 0 76 1 114 0 77 1 114 0 78 1 114 0 79 1 114 0 80 1 114 0 82 1 114 0 83 1 114 0 84 1 114 0 87 1 114 0 90 1 114 0 91 1 114 0 92 1 114 0 93 1 114 0 94 1 114 0 95 1 114 0 97 1 114 0 99 1 114 0 100 1 114 0 101 1 114 0 102 1 114 0 103 1 114 0 114 1 114 0 116 1 114 0 117 1 114 0 119 1 114 0 121 1 114 0 122 1 114 0 123 1 114 0 124 1 114 0 125 1 114 0 127 1 114 0 128 1 114 0 129 1 114 0 130 1 114 0 131 1 114 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 138 1 114 0 139 1 114 0 140 1 114 0 141 1 114 0 143 1 114 0 145 1 114 0 146 1 114 0 147 1 114 0 148 1 114 0 149 1 114 0 150 1 114 0 152 1 114 0 153 1 114 0 154 1 114 0 156 1 114 0 158 1 114 0 159 1 114 0 160 1 114 0 161 1 114 0 162 1 114 0 163 1 114 0 164 1 114 0 165 1 114 0 166 1 114 0 167 1 114 0 168 1 114 0 169 1 114 0 170 1 114 0 171 1 114 2 178] 
#[0 1 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 122 0 1 1 122 0 2 1 122 0 5 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 12 1 122 0 13 1 122 0 15 1 122 0 16 1 122 0 17 1 122 0 23 1 122 0 25 1 122 0 26 1 122 0 29 1 122 0 31 1 122 0 33 1 122 0 35 1 122 0 36 1 126 0 37 1 122 0 38 1 122 0 39 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 50 1 122 0 51 1 122 0 52 1 122 0 53 1 122 0 55 1 122 0 56 1 122 0 58 1 122 0 59 1 122 0 60 1 122 0 61 1 122 0 62 1 122 0 63 1 122 0 64 1 122 0 65 1 122 0 66 1 122 0 67 1 122 0 69 1 122 0 73 1 122 0 76 1 122 0 77 1 122 0 78 1 122 0 79 1 122 0 80 1 122 0 82 1 122 0 83 1 122 0 84 1 122 0 87 1 122 0 90 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 95 1 122 0 97 1 122 0 99 1 122 0 100 1 122 0 101 1 122 0 102 1 122 0 103 1 122 0 114 1 122 0 116 1 122 0 117 1 122 0 119 1 122 0 121 1 122 0 122 1 122 0 123 1 122 0 124 1 122 0 125 1 122 0 127 1 122 0 128 1 122 0 129 1 122 0 130 1 122 0 131 1 122 0 133 1 122 0 134 1 122 0 135 1 122 0 136 1 122 0 138 1 122 0 139 1 122 0 140 1 122 0 141 1 122 0 143 1 122 0 145 1 122 0 146 1 122 0 147 1 122 0 148 1 122 0 149 1 122 0 150 1 122 0 152 1 122 0 153 1 122 0 154 1 122 0 156 1 122 0 158 1 122 0 159 1 122 0 160 1 122 0 161 1 122 0 162 1 122 0 163 1 122 0 164 1 122 0 165 1 122 0 166 1 122 0 167 1 122 0 168 1 122 0 169 1 122 0 170 1 122 0 171 1 122 2 178] 
#[0 1 130 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 6 1 0 37 6 185 0 218 6 189 0 219] 
#[1 1 134 0 1 1 134 0 2 1 134 0 3 1 134 0 4 1 134 0 5 1 134 0 6 1 134 0 7 0 131 0 8 1 134 0 9 1 134 0 10 1 134 0 11 1 134 0 12 0 135 0 13 1 134 0 14 1 134 0 15 1 134 0 16 0 139 0 17 1 134 0 18 6 205 0 19 6 209 0 20 1 134 0 21 1 134 0 22 1 134 0 23 1 134 0 25 1 134 0 26 1 134 0 27 1 134 0 28 1 134 0 29 1 134 0 30 1 134 0 31 1 134 0 33 1 134 0 34 0 143 0 35 1 134 0 36 1 134 0 38 1 134 0 39 1 134 0 40 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 47 1 134 0 48 1 134 0 49 1 134 0 50 1 134 0 51 1 134 0 52 1 134 0 53 1 134 0 55 1 134 0 56 1 134 0 58 1 134 0 59 1 134 0 60 1 134 0 61 1 134 0 62 1 134 0 63 1 134 0 64 1 134 0 65 1 134 0 66 1 134 0 67 1 134 0 69 1 134 0 73 1 134 0 76 1 134 0 77 1 134 0 78 1 134 0 79 1 134 0 80 1 134 0 82 1 134 0 83 1 134 0 84 1 134 0 87 1 134 0 90 1 134 0 91 1 134 0 92 1 134 0 93 1 134 0 94 1 134 0 95 1 134 0 97 1 134 0 99 1 134 0 100 1 134 0 101 1 134 0 103 1 134 0 114 1 134 0 116 1 134 0 117 1 134 0 119 1 134 0 121 1 134 0 122 1 134 0 123 1 134 0 124 1 134 0 125 1 134 0 127 1 134 0 128 1 134 0 129 1 134 0 130 1 134 0 131 1 134 0 133 1 134 0 134 1 134 0 135 1 134 0 136 1 134 0 138 1 134 0 139 1 134 0 140 1 134 0 141 1 134 0 143 1 134 0 145 1 134 0 146 1 134 0 147 1 134 0 148 1 134 0 149 1 134 0 150 1 134 0 151 1 134 0 152 1 134 0 153 1 134 0 154 1 134 0 155 1 134 0 156 1 134 0 158 1 134 0 159 1 134 0 160 1 134 0 161 1 134 0 162 1 134 0 163 1 134 0 164 1 134 0 165 1 134 0 166 1 134 0 167 1 134 0 168 1 134 0 169 1 134 0 170 1 134 0 171 1 134 2 178] 
#[1 1 138 0 1 1 138 0 2 1 138 0 3 1 138 0 4 1 138 0 5 1 138 0 6 1 138 0 7 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 11 1 138 0 12 1 138 0 13 1 138 0 14 1 138 0 15 1 138 0 16 1 138 0 17 1 138 0 18 1 138 0 19 1 138 0 20 1 138 0 21 1 138 0 22 1 138 0 23 1 138 0 25 1 138 0 26 1 138 0 27 1 138 0 28 1 138 0 29 1 138 0 30 1 138 0 31 1 138 0 33 1 138 0 34 0 147 0 35 1 138 0 36 6 221 0 37 1 138 0 38 1 138 0 39 1 138 0 40 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 47 1 138 0 48 1 138 0 49 1 138 0 50 1 138 0 51 1 138 0 52 1 138 0 53 1 138 0 55 1 138 0 56 1 138 0 58 1 138 0 59 1 138 0 60 1 138 0 61 1 138 0 62 1 138 0 63 1 138 0 64 1 138 0 65 1 138 0 66 1 138 0 67 1 138 0 69 1 138 0 73 1 138 0 76 1 138 0 77 1 138 0 78 1 138 0 79 1 138 0 80 1 138 0 82 1 138 0 83 1 138 0 84 1 138 0 87 1 138 0 90 1 138 0 91 1 138 0 92 1 138 0 93 1 138 0 94 1 138 0 95 1 138 0 97 1 138 0 99 1 138 0 100 1 138 0 101 1 138 0 103 1 138 0 114 1 138 0 116 1 138 0 117 1 138 0 119 1 138 0 121 1 138 0 122 1 138 0 123 1 138 0 124 1 138 0 125 1 138 0 127 1 138 0 128 1 138 0 129 1 138 0 130 1 138 0 131 1 138 0 133 1 138 0 134 1 138 0 135 1 138 0 136 1 138 0 138 1 138 0 139 1 138 0 140 1 138 0 141 1 138 0 143 1 138 0 145 1 138 0 146 1 138 0 147 1 138 0 148 1 138 0 149 1 138 0 150 1 138 0 151 1 138 0 152 1 138 0 153 1 138 0 154 1 138 0 155 1 138 0 156 1 138 0 158 1 138 0 159 1 138 0 160 1 138 0 161 1 138 0 162 1 138 0 163 1 138 0 164 1 138 0 165 1 138 0 166 1 138 0 167 1 138 0 168 1 138 0 169 1 138 0 170 1 138 0 171 1 138 2 178] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 6 225 0 163] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 6 229 0 167] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 6 233 0 20] 
#[0 6 237 0 20] 
#[0 1 170 0 9 0 20] 
#[1 1 174 0 4 1 174 0 7 1 174 0 8 1 178 0 9 1 174 0 11 1 174 0 13 1 174 0 14 1 178 0 15 1 174 0 17 1 174 0 18 1 174 0 19 1 174 0 20 1 174 0 22 1 178 0 25 1 174 0 28 1 174 0 30 1 174 0 34 1 174 0 35 1 174 0 37 1 174 0 40 1 174 0 151] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 194 0 4 1 194 0 7 1 194 0 8 1 198 0 9 1 194 0 11 1 194 0 13 1 194 0 14 1 198 0 15 1 194 0 17 1 194 0 18 1 194 0 19 1 194 0 20 1 194 0 22 1 198 0 25 1 194 0 28 1 194 0 30 1 194 0 34 1 194 0 35 1 194 0 37 1 194 0 40 1 194 0 151] 
#[1 1 202 0 4 1 202 0 7 1 202 0 8 1 206 0 9 1 202 0 11 1 202 0 13 1 202 0 14 1 206 0 15 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 22 1 206 0 25 1 202 0 28 1 202 0 30 1 202 0 34 1 202 0 35 1 202 0 37 1 202 0 40 1 202 0 151] 
#[1 1 210 0 4 1 210 0 7 1 210 0 8 1 214 0 9 1 210 0 11 1 210 0 13 1 210 0 14 1 214 0 15 1 210 0 17 1 210 0 18 1 210 0 19 1 210 0 20 1 210 0 22 1 214 0 25 1 210 0 28 1 210 0 30 1 210 0 34 1 210 0 35 1 210 0 37 1 210 0 40 1 210 0 151] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 6 241 0 4 6 245 0 7 6 249 0 11 6 253 0 14 7 1 0 18 7 5 0 22 7 9 0 28 7 13 0 30 7 17 0 34 7 21 0 40 7 25 0 151 7 29 1 115] 
#[1 1 254 0 1 1 254 0 2 1 254 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 0 151 0 8 1 254 0 9 1 254 0 10 1 254 0 11 1 254 0 12 1 254 0 13 1 254 0 14 1 254 0 15 1 254 0 16 1 254 0 17 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 22 1 254 0 23 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 29 1 254 0 30 1 254 0 31 1 254 0 33 1 254 0 34 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 40 1 254 0 44 1 254 0 45 1 254 0 46 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 50 1 254 0 51 1 254 0 52 1 254 0 53 1 254 0 55 1 254 0 56 1 254 0 58 1 254 0 59 1 254 0 60 1 254 0 61 1 254 0 62 1 254 0 63 1 254 0 64 1 254 0 65 1 254 0 66 1 254 0 67 1 254 0 69 1 254 0 73 1 254 0 76 1 254 0 77 1 254 0 78 1 254 0 79 1 254 0 80 1 254 0 82 1 254 0 83 1 254 0 84 1 254 0 87 1 254 0 90 1 254 0 91 1 254 0 92 1 254 0 93 1 254 0 94 1 254 0 95 1 254 0 97 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 103 1 254 0 114 1 254 0 116 1 254 0 117 1 254 0 119 1 254 0 121 1 254 0 122 1 254 0 123 1 254 0 124 1 254 0 125 1 254 0 127 1 254 0 128 1 254 0 129 1 254 0 130 1 254 0 131 1 254 0 133 1 254 0 134 1 254 0 135 1 254 0 136 1 254 0 138 1 254 0 139 1 254 0 140 1 254 0 141 1 254 0 143 1 254 0 145 1 254 0 146 1 254 0 147 1 254 0 148 1 254 0 149 1 254 0 150 1 254 0 151 1 254 0 152 1 254 0 153 1 254 0 154 1 254 0 155 1 254 0 156 1 254 0 158 1 254 0 159 1 254 0 160 1 254 0 161 1 254 0 162 1 254 0 163 1 254 0 164 1 254 0 165 1 254 0 166 1 254 0 167 1 254 0 168 1 254 0 169 1 254 0 170 1 254 0 171 1 254 2 178] 
#[0 2 2 0 9 0 15 0 25] 
#[1 2 6 0 1 2 6 0 2 2 6 0 3 2 6 0 4 2 6 0 5 2 6 0 6 2 6 0 7 0 155 0 8 2 6 0 9 2 6 0 10 2 6 0 11 2 6 0 12 2 6 0 13 2 6 0 14 2 6 0 15 2 6 0 16 2 6 0 17 2 6 0 18 2 6 0 19 2 6 0 20 2 6 0 21 2 6 0 22 2 6 0 23 2 6 0 25 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 34 2 6 0 35 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 40 2 6 0 44 2 6 0 45 2 6 0 46 2 6 0 47 2 6 0 48 2 6 0 49 2 6 0 50 2 6 0 51 2 6 0 52 2 6 0 53 2 6 0 55 2 6 0 56 2 6 0 58 2 6 0 59 2 6 0 60 2 6 0 61 2 6 0 62 2 6 0 63 2 6 0 64 2 6 0 65 2 6 0 66 2 6 0 67 2 6 0 69 2 6 0 73 2 6 0 76 2 6 0 77 2 6 0 78 2 6 0 79 2 6 0 80 2 6 0 82 2 6 0 83 2 6 0 84 2 6 0 87 2 6 0 90 2 6 0 91 2 6 0 92 2 6 0 93 2 6 0 94 2 6 0 95 2 6 0 97 2 6 0 99 2 6 0 100 2 6 0 101 2 6 0 103 2 6 0 114 2 6 0 116 2 6 0 117 2 6 0 119 2 6 0 121 2 6 0 122 2 6 0 123 2 6 0 124 2 6 0 125 2 6 0 127 2 6 0 128 2 6 0 129 2 6 0 130 2 6 0 131 2 6 0 133 2 6 0 134 2 6 0 135 2 6 0 136 2 6 0 138 2 6 0 139 2 6 0 140 2 6 0 141 2 6 0 143 2 6 0 145 2 6 0 146 2 6 0 147 2 6 0 148 2 6 0 149 2 6 0 150 2 6 0 151 2 6 0 152 2 6 0 153 2 6 0 154 2 6 0 155 2 6 0 156 2 6 0 158 2 6 0 159 2 6 0 160 2 6 0 161 2 6 0 162 2 6 0 163 2 6 0 164 2 6 0 165 2 6 0 166 2 6 0 167 2 6 0 168 2 6 0 169 2 6 0 170 2 6 0 171 2 6 2 178] 
#[1 2 10 0 4 2 10 0 7 2 14 0 9 2 10 0 11 2 10 0 14 2 14 0 15 2 10 0 18 2 10 0 22 2 14 0 25 2 10 0 28 2 10 0 30 2 10 0 34 2 10 0 40 2 10 0 151] 
#[1 2 18 0 4 2 18 0 7 2 22 0 9 2 18 0 11 2 18 0 14 2 22 0 15 2 18 0 18 2 18 0 22 2 22 0 25 2 18 0 28 2 18 0 30 2 18 0 34 2 18 0 40 2 18 0 151] 
#[0 2 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 2 30 0 4 2 30 0 7 2 34 0 9 2 30 0 11 2 30 0 14 2 34 0 15 2 30 0 18 2 30 0 22 2 34 0 25 2 30 0 28 2 30 0 30 2 30 0 34 2 30 0 40 2 30 0 151] 
#[0 2 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 42 0 9 0 15 0 25] 
#[0 0 0 2 178] 
#[0 2 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 66 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 7 41 0 32 1 93 0 149 7 45 1 123 7 49 1 138] 
#[1 1 1 0 114 7 61 0 124 7 61 0 138 7 61 1 136 7 65 1 142 7 61 2 151] 
#[1 7 73 0 32 1 93 0 149 7 77 1 123 7 81 1 137] 
#[1 5 121 0 8 7 93 0 46 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 7 93 0 124 5 169 0 125 1 169 0 134 1 169 0 135 7 93 0 138 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 101 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 101 0 212 1 189 0 213 7 101 0 215 1 197 0 216 7 93 1 135 7 93 1 136 3 9 1 215 7 101 1 252 7 93 2 151 3 25 2 153 7 105 2 177] 
#[0 7 109 0 25] 
#[0 2 70 0 9 0 25] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 113 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 113 0 212 1 189 0 213 7 113 0 215 1 197 0 216 7 117 1 154 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 2 74 0 9 0 25] 
#[0 2 78 0 9 0 25] 
#[1 7 121 0 158 7 125 1 143] 
#[0 7 129 0 25] 
#[0 2 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 7 133 0 25] 
#[0 2 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 2 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 2 166 0 1 2 166 0 2 2 166 0 5 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 12 2 166 0 13 2 166 0 15 2 166 0 16 2 166 0 17 2 166 0 23 2 166 0 25 2 166 0 26 2 166 0 29 2 166 0 31 2 166 0 33 2 166 0 35 2 166 0 36 2 170 0 37 2 166 0 38 2 166 0 39 2 166 0 44 2 166 0 45 2 166 0 46 2 166 0 47 2 166 0 48 2 166 0 49 2 166 0 50 2 166 0 51 2 166 0 52 2 166 0 53 2 166 0 55 2 166 0 56 2 166 0 58 2 166 0 59 2 166 0 60 2 166 0 61 2 166 0 62 2 166 0 63 2 166 0 64 2 166 0 65 2 166 0 66 2 166 0 67 2 166 0 69 2 166 0 73 2 166 0 76 2 166 0 77 2 166 0 78 2 166 0 79 2 166 0 80 2 166 0 82 2 166 0 83 2 166 0 84 2 166 0 87 2 166 0 90 2 166 0 91 2 166 0 92 2 166 0 93 2 166 0 94 2 166 0 95 2 166 0 97 2 166 0 99 2 166 0 100 2 166 0 101 2 166 0 102 2 166 0 103 2 166 0 114 2 166 0 116 2 166 0 117 2 166 0 119 2 166 0 121 2 166 0 122 2 166 0 123 2 166 0 124 2 166 0 125 2 166 0 127 2 166 0 128 2 166 0 129 2 166 0 130 2 166 0 131 2 166 0 133 2 166 0 134 2 166 0 135 2 166 0 136 2 166 0 138 2 166 0 139 2 166 0 140 2 166 0 141 2 166 0 143 2 166 0 145 2 166 0 146 2 166 0 147 2 166 0 148 2 166 0 149 2 166 0 150 2 166 0 152 2 166 0 153 2 166 0 154 2 166 0 156 2 166 0 158 2 166 0 159 2 166 0 160 2 166 0 161 2 166 0 162 2 166 0 163 2 166 0 164 2 166 0 165 2 166 0 166 2 166 0 167 2 166 0 168 2 166 0 169 2 166 0 170 2 166 0 171 2 166 2 178] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 2 186 0 1 2 186 0 2 2 186 0 5 2 186 0 6 2 186 0 8 2 186 0 9 2 186 0 10 2 186 0 12 2 186 0 13 2 186 0 15 2 186 0 16 2 186 0 17 2 186 0 23 2 186 0 25 2 186 0 26 2 186 0 29 2 186 0 31 2 186 0 33 2 186 0 35 2 186 0 36 2 190 0 37 2 186 0 38 2 186 0 39 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 2 186 0 48 2 186 0 49 2 186 0 50 2 186 0 51 2 186 0 52 2 186 0 53 2 186 0 55 2 186 0 56 2 186 0 58 2 186 0 59 2 186 0 60 2 186 0 61 2 186 0 62 2 186 0 63 2 186 0 64 2 186 0 65 2 186 0 66 2 186 0 67 2 186 0 69 2 186 0 73 2 186 0 76 2 186 0 77 2 186 0 78 2 186 0 79 2 186 0 80 2 186 0 82 2 186 0 83 2 186 0 84 2 186 0 87 2 186 0 90 2 186 0 91 2 186 0 92 2 186 0 93 2 186 0 94 2 186 0 95 2 186 0 97 2 186 0 99 2 186 0 100 2 186 0 101 2 186 0 102 2 186 0 103 2 186 0 114 2 186 0 116 2 186 0 117 2 186 0 119 2 186 0 121 2 186 0 122 2 186 0 123 2 186 0 124 2 186 0 125 2 186 0 127 2 186 0 128 2 186 0 129 2 186 0 130 2 186 0 131 2 186 0 133 2 186 0 134 2 186 0 135 2 186 0 136 2 186 0 138 2 186 0 139 2 186 0 140 2 186 0 141 2 186 0 143 2 186 0 145 2 186 0 146 2 186 0 147 2 186 0 148 2 186 0 149 2 186 0 150 2 186 0 152 2 186 0 153 2 186 0 154 2 186 0 156 2 186 0 158 2 186 0 159 2 186 0 160 2 186 0 161 2 186 0 162 2 186 0 163 2 186 0 164 2 186 0 165 2 186 0 166 2 186 0 167 2 186 0 168 2 186 0 169 2 186 0 170 2 186 0 171 2 186 2 178] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 210 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 6 173 0 10 7 137 2 154] 
#[1 0 105 0 1 0 109 0 5 0 159 0 8 0 163 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 167 0 49 0 171 0 52 0 175 0 55 3 61 0 56 0 179 0 60 0 185 0 61 0 189 0 62 0 183 0 65 0 187 0 66 3 17 0 73 0 191 0 77 3 65 0 80 7 165 0 86 0 195 0 87 0 199 0 95 0 245 0 97 0 249 0 99 0 203 0 100 7 165 0 104 7 165 0 114 0 207 0 117 0 211 0 121 1 17 0 122 1 21 0 123 0 215 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 0 219 0 134 0 223 0 135 3 73 0 136 0 227 0 139 1 77 0 141 0 231 0 143 1 97 0 153 0 235 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 5 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 5 61 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 57 0 212 1 189 0 213 5 57 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 5 65 1 2 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 5 69 1 76 5 69 1 77 5 69 1 78 1 205 1 79 3 185 1 80 3 185 1 82 7 153 1 83 7 157 1 84 7 161 1 85 7 165 1 86 7 165 1 87 3 185 1 88 7 173 1 89 7 177 1 90 7 181 1 91 5 69 1 94 3 205 1 95 5 69 1 114 5 69 1 117 5 69 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 7 185 0 8 5 93 0 62 3 197 0 158 7 193 1 80 7 193 1 82 7 193 1 88 3 197 1 91] 
#[0 5 113 0 8] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 0 239 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 197 0 197 7 197 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 197 0 212 1 189 0 213 7 197 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 7 209 1 74 7 209 1 75 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[0 6 93 0 8] 
#[1 0 107 0 1 0 107 0 2 1 22 0 3 1 22 0 4 0 107 0 5 0 107 0 6 1 22 0 7 0 107 0 8 0 107 0 9 0 107 0 10 1 22 0 11 0 107 0 12 0 107 0 13 1 22 0 14 0 107 0 15 0 107 0 16 0 107 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 0 107 0 23 6 141 0 24 0 107 0 25 0 243 0 26 1 22 0 27 1 22 0 28 0 107 0 29 1 22 0 30 0 107 0 31 2 230 0 32 0 107 0 33 1 22 0 34 0 107 0 35 0 107 0 36 0 107 0 37 0 107 0 38 0 107 0 39 1 22 0 40 0 107 0 44 0 107 0 45 0 107 0 46 0 107 0 47 0 107 0 48 0 107 0 49 0 107 0 50 0 107 0 51 0 107 0 52 0 107 0 53 0 107 0 55 0 107 0 56 0 107 0 58 0 107 0 59 0 107 0 60 0 107 0 61 0 107 0 62 0 107 0 63 0 107 0 64 0 107 0 65 0 107 0 66 0 107 0 67 0 107 0 69 0 107 0 73 0 107 0 76 0 107 0 77 0 107 0 78 0 107 0 79 0 107 0 80 0 107 0 82 0 107 0 83 0 107 0 84 0 107 0 87 0 107 0 90 0 107 0 91 0 107 0 92 0 107 0 93 0 107 0 94 0 107 0 95 0 107 0 97 0 107 0 99 0 107 0 100 0 107 0 101 0 107 0 103 0 107 0 114 0 107 0 116 0 107 0 117 0 107 0 119 0 107 0 121 0 107 0 122 0 107 0 123 0 107 0 124 0 107 0 125 0 107 0 127 0 107 0 128 0 107 0 129 0 107 0 130 0 107 0 131 0 107 0 133 0 107 0 134 0 107 0 135 0 107 0 136 0 107 0 138 0 107 0 139 0 107 0 140 0 107 0 141 0 107 0 143 0 107 0 145 0 107 0 146 0 107 0 147 0 107 0 148 0 107 0 149 0 107 0 150 1 22 0 151 0 107 0 152 0 107 0 153 0 107 0 154 1 22 0 155 0 107 0 156 0 107 0 158 0 107 0 159 0 107 0 160 0 107 0 161 0 107 0 162 0 107 0 163 0 107 0 164 0 107 0 165 0 107 0 166 0 107 0 167 0 107 0 168 0 107 0 169 0 107 0 170 0 107 0 171 6 153 0 223 6 153 0 253 0 107 2 178] 
#[0 2 234 0 158] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 2 238 0 1 2 238 0 2 2 238 0 3 6 241 0 4 2 238 0 5 2 238 0 6 6 245 0 7 2 238 0 8 2 238 0 9 2 238 0 10 6 249 0 11 2 238 0 12 2 238 0 13 6 253 0 14 2 238 0 15 2 238 0 16 2 238 0 17 7 1 0 18 2 238 0 21 7 5 0 22 2 238 0 23 2 238 0 25 2 238 0 26 2 238 0 27 7 9 0 28 2 238 0 29 7 13 0 30 2 238 0 31 2 238 0 33 7 17 0 34 2 238 0 35 2 238 0 36 2 238 0 38 2 238 0 39 7 21 0 40 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 51 2 238 0 52 2 238 0 53 2 238 0 55 2 238 0 56 2 238 0 58 2 238 0 59 2 238 0 60 2 238 0 61 2 238 0 62 2 238 0 63 2 238 0 64 2 238 0 65 2 238 0 66 2 238 0 67 2 238 0 69 2 238 0 73 2 238 0 76 2 238 0 77 2 238 0 78 2 238 0 79 2 238 0 80 2 238 0 82 2 238 0 83 2 238 0 84 2 238 0 87 2 238 0 90 2 238 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 95 2 238 0 97 2 238 0 99 2 238 0 100 2 238 0 101 2 238 0 103 2 238 0 114 2 238 0 116 2 238 0 117 2 238 0 119 2 238 0 121 2 238 0 122 2 238 0 123 2 238 0 124 2 238 0 125 2 238 0 127 2 238 0 128 2 238 0 129 2 238 0 130 2 238 0 131 2 238 0 133 2 238 0 134 2 238 0 135 2 238 0 136 2 238 0 138 2 238 0 139 2 238 0 140 2 238 0 141 2 238 0 143 2 238 0 145 2 238 0 146 2 238 0 147 2 238 0 148 2 238 0 149 2 238 0 150 7 25 0 151 2 238 0 152 2 238 0 153 2 238 0 154 2 238 0 155 2 238 0 156 2 238 0 158 2 238 0 159 2 238 0 160 2 238 0 161 2 238 0 162 2 238 0 163 2 238 0 164 2 238 0 165 2 238 0 166 2 238 0 167 2 238 0 168 2 238 0 169 2 238 0 170 2 238 0 171 7 29 1 115 2 238 2 178] 
#[0 1 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 2 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 2 242 0 1 2 242 0 2 7 213 0 3 2 242 0 5 2 242 0 6 2 242 0 8 2 242 0 9 0 247 0 10 2 242 0 12 2 242 0 13 2 242 0 15 2 242 0 16 2 242 0 17 7 221 0 21 2 242 0 23 2 242 0 25 2 242 0 26 2 242 0 27 2 242 0 29 2 242 0 31 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 38 2 242 0 39 2 242 0 44 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 2 242 0 52 2 242 0 53 2 242 0 55 2 242 0 56 2 242 0 58 2 242 0 59 2 242 0 60 2 242 0 61 2 242 0 62 2 242 0 63 2 242 0 64 2 242 0 65 2 242 0 66 2 242 0 67 2 242 0 69 2 242 0 73 2 242 0 76 2 242 0 77 2 242 0 78 2 242 0 79 2 242 0 80 2 242 0 82 2 242 0 83 2 242 0 84 2 242 0 87 2 242 0 90 2 242 0 91 2 242 0 92 2 242 0 93 2 242 0 94 2 242 0 95 2 242 0 97 2 242 0 99 2 242 0 100 2 242 0 101 2 242 0 103 2 242 0 114 2 242 0 116 2 242 0 117 2 242 0 119 2 242 0 121 2 242 0 122 2 242 0 123 2 242 0 124 2 242 0 125 2 242 0 127 2 242 0 128 2 242 0 129 2 242 0 130 2 242 0 131 2 242 0 133 2 242 0 134 2 242 0 135 2 242 0 136 2 242 0 138 2 242 0 139 2 242 0 140 2 242 0 141 2 242 0 143 2 242 0 145 2 242 0 146 2 242 0 147 2 242 0 148 2 242 0 149 2 242 0 150 2 242 0 152 2 242 0 153 2 242 0 154 2 242 0 155 2 242 0 156 2 242 0 158 2 242 0 159 2 242 0 160 2 242 0 161 2 242 0 162 2 242 0 163 2 242 0 164 2 242 0 165 2 242 0 166 2 242 0 167 2 242 0 168 2 242 0 169 2 242 0 170 2 242 0 171 2 242 2 178] 
#[1 2 246 0 1 2 246 0 2 2 246 0 5 2 246 0 6 2 246 0 8 2 246 0 9 2 246 0 10 0 251 0 12 2 246 0 13 2 246 0 15 0 255 0 16 2 246 0 17 2 246 0 23 2 246 0 25 2 246 0 26 2 246 0 27 2 246 0 29 2 246 0 31 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 39 2 246 0 44 2 246 0 45 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 49 2 246 0 50 2 246 0 51 2 246 0 52 2 246 0 53 2 246 0 55 2 246 0 56 2 246 0 58 2 246 0 59 2 246 0 60 2 246 0 61 2 246 0 62 2 246 0 63 2 246 0 64 2 246 0 65 2 246 0 66 2 246 0 67 2 246 0 69 2 246 0 73 2 246 0 76 2 246 0 77 2 246 0 78 2 246 0 79 2 246 0 80 2 246 0 82 2 246 0 83 2 246 0 84 2 246 0 87 2 246 0 90 2 246 0 91 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 95 2 246 0 97 2 246 0 99 2 246 0 100 2 246 0 101 2 246 0 103 2 246 0 114 2 246 0 116 2 246 0 117 2 246 0 119 2 246 0 121 2 246 0 122 2 246 0 123 2 246 0 124 2 246 0 125 2 246 0 127 2 246 0 128 2 246 0 129 2 246 0 130 2 246 0 131 2 246 0 133 2 246 0 134 2 246 0 135 2 246 0 136 2 246 0 138 2 246 0 139 2 246 0 140 2 246 0 141 2 246 0 143 2 246 0 145 2 246 0 146 2 246 0 147 2 246 0 148 2 246 0 149 2 246 0 150 2 246 0 152 2 246 0 153 2 246 0 154 2 246 0 155 2 246 0 156 2 246 0 158 2 246 0 159 2 246 0 160 2 246 0 161 2 246 0 162 2 246 0 163 2 246 0 164 2 246 0 165 2 246 0 166 2 246 0 167 2 246 0 168 2 246 0 169 2 246 0 170 2 246 0 171 2 246 2 178] 
#[1 2 250 0 1 2 250 0 2 2 250 0 5 2 250 0 6 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 12 2 250 0 13 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 23 2 250 0 25 2 250 0 26 7 233 0 27 2 250 0 29 2 250 0 31 2 250 0 33 2 250 0 35 2 250 0 36 2 250 0 38 2 250 0 39 2 250 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 52 2 250 0 53 2 250 0 55 2 250 0 56 2 250 0 58 2 250 0 59 2 250 0 60 2 250 0 61 2 250 0 62 2 250 0 63 2 250 0 64 2 250 0 65 2 250 0 66 2 250 0 67 2 250 0 69 2 250 0 73 2 250 0 76 2 250 0 77 2 250 0 78 2 250 0 79 2 250 0 80 2 250 0 82 2 250 0 83 2 250 0 84 2 250 0 87 2 250 0 90 2 250 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 95 2 250 0 97 2 250 0 99 2 250 0 100 2 250 0 101 2 250 0 103 2 250 0 114 2 250 0 116 2 250 0 117 2 250 0 119 2 250 0 121 2 250 0 122 2 250 0 123 2 250 0 124 2 250 0 125 2 250 0 127 2 250 0 128 2 250 0 129 2 250 0 130 2 250 0 131 2 250 0 133 2 250 0 134 2 250 0 135 2 250 0 136 2 250 0 138 2 250 0 139 2 250 0 140 2 250 0 141 2 250 0 143 2 250 0 145 2 250 0 146 2 250 0 147 2 250 0 148 2 250 0 149 2 250 0 150 2 250 0 152 2 250 0 153 2 250 0 154 7 237 0 155 2 250 0 156 2 250 0 158 2 250 0 159 2 250 0 160 2 250 0 161 2 250 0 162 2 250 0 163 2 250 0 164 2 250 0 165 2 250 0 166 2 250 0 167 2 250 0 168 2 250 0 169 2 250 0 170 2 250 0 171 2 250 2 178] 
#[1 2 254 0 1 2 254 0 2 2 254 0 5 2 254 0 6 2 254 0 8 2 254 0 9 2 254 0 10 2 254 0 12 2 254 0 13 2 254 0 15 2 254 0 16 2 254 0 17 2 254 0 23 2 254 0 25 1 3 0 26 1 7 0 29 2 254 0 31 1 11 0 33 2 254 0 35 2 254 0 36 2 254 0 38 2 254 0 39 1 15 0 44 2 254 0 45 2 254 0 46 2 254 0 47 2 254 0 48 2 254 0 49 2 254 0 50 2 254 0 51 2 254 0 52 2 254 0 53 2 254 0 55 2 254 0 56 2 254 0 58 2 254 0 59 2 254 0 60 2 254 0 61 2 254 0 62 2 254 0 63 2 254 0 64 2 254 0 65 2 254 0 66 2 254 0 67 2 254 0 69 2 254 0 73 2 254 0 76 2 254 0 77 2 254 0 78 2 254 0 79 2 254 0 80 2 254 0 82 2 254 0 83 2 254 0 84 2 254 0 87 2 254 0 90 1 19 0 91 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 95 2 254 0 97 2 254 0 99 2 254 0 100 2 254 0 101 2 254 0 103 2 254 0 114 2 254 0 116 2 254 0 117 2 254 0 119 2 254 0 121 2 254 0 122 2 254 0 123 2 254 0 124 2 254 0 125 2 254 0 127 2 254 0 128 2 254 0 129 2 254 0 130 2 254 0 131 2 254 0 133 2 254 0 134 2 254 0 135 2 254 0 136 2 254 0 138 2 254 0 139 2 254 0 140 2 254 0 141 2 254 0 143 2 254 0 145 2 254 0 146 2 254 0 147 2 254 0 148 2 254 0 149 2 254 0 150 2 254 0 152 2 254 0 153 1 23 0 154 2 254 0 156 2 254 0 158 2 254 0 159 2 254 0 160 2 254 0 161 2 254 0 162 2 254 0 163 2 254 0 164 2 254 0 165 2 254 0 166 2 254 0 167 2 254 0 168 2 254 0 169 2 254 0 170 2 254 0 171 2 254 2 178] 
#[1 3 2 0 1 1 27 0 2 3 2 0 5 3 2 0 6 3 2 0 8 3 2 0 9 3 2 0 10 3 2 0 12 3 2 0 13 3 2 0 15 3 2 0 16 3 2 0 17 3 2 0 23 3 2 0 25 3 2 0 26 3 2 0 29 1 31 0 31 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 38 3 2 0 39 3 2 0 44 3 2 0 45 3 2 0 46 3 2 0 47 3 2 0 48 3 2 0 49 3 2 0 50 3 2 0 51 3 2 0 52 3 2 0 53 3 2 0 55 3 2 0 56 3 2 0 58 3 2 0 59 3 2 0 60 3 2 0 61 3 2 0 62 3 2 0 63 3 2 0 64 3 2 0 65 3 2 0 66 3 2 0 67 3 2 0 69 3 2 0 73 3 2 0 76 3 2 0 77 3 2 0 78 3 2 0 79 3 2 0 80 3 2 0 82 3 2 0 83 3 2 0 84 3 2 0 87 3 2 0 90 3 2 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 95 3 2 0 97 3 2 0 99 3 2 0 100 3 2 0 101 3 2 0 103 3 2 0 114 3 2 0 116 3 2 0 117 3 2 0 119 3 2 0 121 3 2 0 122 3 2 0 123 3 2 0 124 3 2 0 125 3 2 0 127 3 2 0 128 3 2 0 129 3 2 0 130 3 2 0 131 3 2 0 133 3 2 0 134 3 2 0 135 3 2 0 136 3 2 0 138 3 2 0 139 3 2 0 140 3 2 0 141 3 2 0 143 3 2 0 145 3 2 0 146 3 2 0 147 3 2 0 148 3 2 0 149 3 2 0 150 3 2 0 152 3 2 0 153 3 2 0 154 3 2 0 156 3 2 0 158 3 2 0 159 3 2 0 160 3 2 0 161 3 2 0 162 3 2 0 163 3 2 0 164 3 2 0 165 3 2 0 166 3 2 0 167 3 2 0 168 3 2 0 169 3 2 0 170 3 2 0 171 3 2 2 178] 
#[1 3 6 0 1 3 6 0 2 1 35 0 5 3 6 0 6 3 6 0 8 3 6 0 9 3 6 0 10 3 6 0 12 3 6 0 13 3 6 0 15 3 6 0 16 3 6 0 17 3 6 0 23 3 6 0 25 3 6 0 26 3 6 0 29 3 6 0 31 3 6 0 33 3 6 0 35 3 6 0 36 3 6 0 38 3 6 0 39 3 6 0 44 3 6 0 45 3 6 0 46 3 6 0 47 3 6 0 48 3 6 0 49 3 6 0 50 3 6 0 51 3 6 0 52 3 6 0 53 3 6 0 55 3 6 0 56 3 6 0 58 3 6 0 59 3 6 0 60 3 6 0 61 3 6 0 62 3 6 0 63 3 6 0 64 3 6 0 65 3 6 0 66 3 6 0 67 3 6 0 69 3 6 0 73 3 6 0 76 3 6 0 77 3 6 0 78 3 6 0 79 3 6 0 80 3 6 0 82 3 6 0 83 3 6 0 84 3 6 0 87 3 6 0 90 3 6 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 95 3 6 0 97 3 6 0 99 3 6 0 100 3 6 0 101 3 6 0 103 3 6 0 114 3 6 0 116 3 6 0 117 3 6 0 119 3 6 0 121 3 6 0 122 3 6 0 123 3 6 0 124 3 6 0 125 3 6 0 127 3 6 0 128 3 6 0 129 3 6 0 130 3 6 0 131 3 6 0 133 3 6 0 134 3 6 0 135 3 6 0 136 3 6 0 138 3 6 0 139 3 6 0 140 3 6 0 141 3 6 0 143 3 6 0 145 3 6 0 146 3 6 0 147 3 6 0 148 3 6 0 149 3 6 0 150 3 6 0 152 3 6 0 153 3 6 0 154 3 6 0 156 3 6 0 158 3 6 0 159 3 6 0 160 3 6 0 161 3 6 0 162 3 6 0 163 3 6 0 164 3 6 0 165 3 6 0 166 3 6 0 167 3 6 0 168 3 6 0 169 3 6 0 170 3 6 0 171 3 6 2 178] 
#[1 3 10 0 1 3 10 0 2 3 10 0 5 3 10 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 12 3 10 0 13 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 23 3 10 0 25 3 10 0 26 3 10 0 29 3 10 0 31 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 38 1 39 0 39 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 10 0 48 3 10 0 49 3 10 0 50 3 10 0 51 3 10 0 52 3 10 0 53 3 10 0 55 3 10 0 56 3 10 0 58 3 10 0 59 3 10 0 60 3 10 0 61 3 10 0 62 3 10 0 63 3 10 0 64 3 10 0 65 3 10 0 66 3 10 0 67 3 10 0 69 3 10 0 73 3 10 0 76 3 10 0 77 3 10 0 78 3 10 0 79 3 10 0 80 3 10 0 82 3 10 0 83 3 10 0 84 3 10 0 87 3 10 0 90 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 97 3 10 0 99 3 10 0 100 3 10 0 101 3 10 0 103 3 10 0 114 3 10 0 116 3 10 0 117 3 10 0 119 3 10 0 121 3 10 0 122 3 10 0 123 3 10 0 124 3 10 0 125 3 10 0 127 3 10 0 128 3 10 0 129 3 10 0 130 3 10 0 131 3 10 0 133 3 10 0 134 3 10 0 135 3 10 0 136 3 10 0 138 3 10 0 139 3 10 0 140 3 10 0 141 3 10 0 143 3 10 0 145 3 10 0 146 3 10 0 147 3 10 0 148 3 10 0 149 3 10 0 150 3 10 0 152 3 10 0 153 3 10 0 154 3 10 0 156 3 10 0 158 3 10 0 159 3 10 0 160 3 10 0 161 3 10 0 162 3 10 0 163 3 10 0 164 3 10 0 165 3 10 0 166 3 10 0 167 3 10 0 168 3 10 0 169 3 10 0 170 3 10 0 171 3 10 2 178] 
#[1 3 14 0 1 3 14 0 2 3 14 0 5 3 14 0 6 3 14 0 8 3 14 0 9 3 14 0 10 3 14 0 12 3 14 0 13 3 14 0 15 3 14 0 16 3 14 0 17 3 14 0 23 3 14 0 25 3 14 0 26 3 14 0 29 3 14 0 31 3 14 0 33 3 14 0 35 3 14 0 36 3 14 0 38 3 14 0 39 3 14 0 44 3 14 0 45 3 14 0 46 3 14 0 47 3 14 0 48 3 14 0 49 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 55 3 14 0 56 3 14 0 58 3 14 0 59 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 69 3 14 0 73 3 14 0 76 3 14 0 77 3 14 0 78 3 14 0 79 3 14 0 80 3 14 0 82 3 14 0 83 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 91 3 14 0 92 3 14 0 93 3 14 0 94 3 14 0 95 3 14 0 97 3 14 0 99 3 14 0 100 3 14 0 101 3 14 0 103 3 14 0 114 3 14 0 116 3 14 0 117 3 14 0 119 3 14 0 121 3 14 0 122 3 14 0 123 3 14 0 124 3 14 0 125 3 14 0 127 3 14 0 128 3 14 0 129 3 14 0 130 3 14 0 131 3 14 0 133 3 14 0 134 3 14 0 135 3 14 0 136 3 14 0 138 3 14 0 139 3 14 0 140 3 14 0 141 3 14 0 143 3 14 0 145 3 14 0 146 3 14 0 147 3 14 0 148 3 14 0 149 1 43 0 150 3 14 0 152 3 14 0 153 3 14 0 154 3 14 0 156 3 14 0 158 3 14 0 159 3 14 0 160 3 14 0 161 3 14 0 162 3 14 0 163 3 14 0 164 3 14 0 165 3 14 0 166 3 14 0 167 3 14 0 168 3 14 0 169 3 14 0 170 3 14 0 171 3 14 2 178] 
#[1 3 18 0 1 3 18 0 2 3 18 0 5 1 47 0 6 3 18 0 8 3 18 0 9 3 18 0 10 3 18 0 12 3 18 0 13 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 23 3 18 0 25 3 18 0 26 3 18 0 29 3 18 0 31 3 18 0 33 3 18 0 35 3 18 0 36 3 18 0 38 3 18 0 39 3 18 0 44 3 18 0 45 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 49 3 18 0 50 3 18 0 51 3 18 0 52 3 18 0 53 3 18 0 55 3 18 0 56 3 18 0 58 3 18 0 59 3 18 0 60 3 18 0 61 3 18 0 62 3 18 0 63 3 18 0 64 3 18 0 65 3 18 0 66 3 18 0 67 3 18 0 69 3 18 0 73 3 18 0 76 3 18 0 77 3 18 0 78 3 18 0 79 3 18 0 80 3 18 0 82 3 18 0 83 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 91 3 18 0 92 3 18 0 93 3 18 0 94 3 18 0 95 3 18 0 97 3 18 0 99 3 18 0 100 3 18 0 101 3 18 0 103 3 18 0 114 3 18 0 116 3 18 0 117 3 18 0 119 3 18 0 121 3 18 0 122 3 18 0 123 3 18 0 124 3 18 0 125 3 18 0 127 3 18 0 128 3 18 0 129 3 18 0 130 3 18 0 131 3 18 0 133 3 18 0 134 3 18 0 135 3 18 0 136 3 18 0 138 3 18 0 139 3 18 0 140 3 18 0 141 3 18 0 143 3 18 0 145 3 18 0 146 3 18 0 147 3 18 0 148 3 18 0 149 3 18 0 150 3 18 0 152 3 18 0 153 3 18 0 154 3 18 0 156 3 18 0 158 3 18 0 159 3 18 0 160 3 18 0 161 3 18 0 162 3 18 0 163 3 18 0 164 3 18 0 165 3 18 0 166 3 18 0 167 3 18 0 168 3 18 0 169 3 18 0 170 3 18 0 171 3 18 2 178] 
#[1 3 22 0 1 3 22 0 2 3 22 0 5 3 22 0 6 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 12 3 22 0 13 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 23 3 22 0 25 3 22 0 26 3 22 0 29 3 22 0 31 3 22 0 33 3 22 0 35 1 51 0 36 3 22 0 38 3 22 0 39 3 22 0 44 3 22 0 45 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 49 3 22 0 50 3 22 0 51 3 22 0 52 3 22 0 53 3 22 0 55 3 22 0 56 3 22 0 58 3 22 0 59 3 22 0 60 3 22 0 61 3 22 0 62 3 22 0 63 3 22 0 64 3 22 0 65 3 22 0 66 3 22 0 67 3 22 0 69 3 22 0 73 3 22 0 76 3 22 0 77 3 22 0 78 3 22 0 79 3 22 0 80 3 22 0 82 3 22 0 83 3 22 0 84 3 22 0 87 3 22 0 90 3 22 0 91 3 22 0 92 3 22 0 93 3 22 0 94 3 22 0 95 3 22 0 97 3 22 0 99 3 22 0 100 3 22 0 101 3 22 0 103 3 22 0 114 3 22 0 116 3 22 0 117 3 22 0 119 3 22 0 121 3 22 0 122 3 22 0 123 3 22 0 124 3 22 0 125 3 22 0 127 3 22 0 128 3 22 0 129 3 22 0 130 3 22 0 131 3 22 0 133 3 22 0 134 3 22 0 135 3 22 0 136 3 22 0 138 3 22 0 139 3 22 0 140 3 22 0 141 3 22 0 143 3 22 0 145 3 22 0 146 3 22 0 147 3 22 0 148 3 22 0 149 3 22 0 150 1 55 0 152 3 22 0 153 3 22 0 154 3 22 0 156 3 22 0 158 3 22 0 159 3 22 0 160 3 22 0 161 3 22 0 162 3 22 0 163 3 22 0 164 3 22 0 165 3 22 0 166 3 22 0 167 3 22 0 168 3 22 0 169 3 22 0 170 3 22 0 171 3 22 2 178] 
#[1 3 26 0 1 3 26 0 2 3 26 0 5 3 26 0 6 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 12 3 26 0 13 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 23 3 26 0 25 3 26 0 26 3 26 0 29 3 26 0 31 3 26 0 33 1 59 0 35 3 26 0 36 3 26 0 38 3 26 0 39 3 26 0 44 3 26 0 45 3 26 0 46 3 26 0 47 3 26 0 48 3 26 0 49 3 26 0 50 3 26 0 51 3 26 0 52 3 26 0 53 3 26 0 55 3 26 0 56 3 26 0 58 3 26 0 59 3 26 0 60 3 26 0 61 3 26 0 62 3 26 0 63 3 26 0 64 3 26 0 65 3 26 0 66 3 26 0 67 3 26 0 69 3 26 0 73 3 26 0 76 3 26 0 77 3 26 0 78 3 26 0 79 3 26 0 80 3 26 0 82 3 26 0 83 3 26 0 84 3 26 0 87 3 26 0 90 3 26 0 91 3 26 0 92 3 26 0 93 3 26 0 94 3 26 0 95 3 26 0 97 3 26 0 99 3 26 0 100 3 26 0 101 3 26 0 103 3 26 0 114 3 26 0 116 3 26 0 117 3 26 0 119 3 26 0 121 3 26 0 122 3 26 0 123 3 26 0 124 3 26 0 125 3 26 0 127 3 26 0 128 3 26 0 129 3 26 0 130 3 26 0 131 3 26 0 133 3 26 0 134 3 26 0 135 3 26 0 136 3 26 0 138 3 26 0 139 3 26 0 140 3 26 0 141 3 26 0 143 3 26 0 145 3 26 0 146 3 26 0 147 3 26 0 148 3 26 0 149 3 26 0 150 3 26 0 152 3 26 0 153 3 26 0 154 3 26 0 156 3 26 0 158 3 26 0 159 3 26 0 160 3 26 0 161 3 26 0 162 3 26 0 163 3 26 0 164 3 26 0 165 3 26 0 166 3 26 0 167 3 26 0 168 3 26 0 169 3 26 0 170 3 26 0 171 3 26 2 178] 
#[0 3 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 3 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 3 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 3 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 45 0 32] 
#[0 3 46 0 32] 
#[0 3 50 0 32] 
#[0 3 54 0 32] 
#[0 3 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 3 65 0 80 3 62 0 83 8 49 0 92 8 53 0 93 8 57 0 103 3 62 0 119 8 61 0 146 8 65 1 95 8 69 1 96 8 73 1 97 8 77 1 98 8 81 1 99 8 85 1 100 8 89 1 101 8 93 1 102 8 97 1 103 8 101 1 104] 
#[0 3 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 0 2 178] 
#[0 3 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 105 0 158] 
#[0 3 74 0 158] 
#[0 0 0 2 178] 
#[0 3 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 0 0 2 178] 
#[0 3 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 8 109 0 25 8 113 0 32 1 93 0 149 8 117 1 123 8 121 2 0] 
#[1 8 125 0 25 8 129 0 32 1 93 0 149 8 133 1 123 8 137 1 255] 
#[0 3 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 3 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 1 63 0 8 1 67 0 41 8 237 0 46 1 63 0 49 1 63 0 52 1 63 0 55 0 74 0 57 3 138 0 58 1 63 0 60 0 78 0 62 1 63 0 65 1 63 0 66 0 82 0 68 3 142 0 70 1 71 0 72 1 63 0 77 1 63 0 87 0 86 0 88 1 75 0 89 1 63 0 95 1 79 0 99 1 63 0 100 1 83 0 105 1 87 0 108 1 91 0 109 1 95 0 111 1 99 0 112 8 177 0 113 1 103 0 114 1 63 0 117 1 107 0 118 1 63 0 121 1 111 0 124 1 63 0 125 0 90 0 126 1 63 0 134 1 63 0 135 1 115 0 138 1 63 0 139 1 119 0 142 1 63 0 143 8 221 0 144 3 146 0 153 1 123 0 158 4 161 1 209 4 165 1 210 4 169 1 211 8 201 1 232 8 205 1 233 8 209 1 234 8 213 1 238 8 217 1 239 8 221 1 240 8 225 1 246 8 229 1 248 8 233 1 249 8 237 1 250 8 237 1 251 8 245 2 12 8 249 2 13 8 253 2 14 9 1 2 30 9 5 2 31 9 9 2 32 9 13 2 37 9 17 2 38 9 21 2 39 9 25 2 44 9 29 2 45 9 33 2 54 9 37 2 55 9 41 2 56 9 45 2 62 4 173 2 65 4 177 2 66 4 181 2 67 4 185 2 79 4 189 2 80 4 193 2 81 4 197 2 107 4 201 2 108 4 205 2 109 4 209 2 115 4 213 2 116 4 217 2 117 9 49 2 147 9 53 2 151] 
#[0 3 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 9 57 0 158] 
#[1 9 61 0 124 9 65 0 158 9 73 0 193 9 69 0 194 9 73 0 196] 
#[1 1 127 0 37 3 158 0 41 3 158 0 57 3 158 0 62 3 158 0 68 3 158 0 88 3 158 0 89 3 158 0 98 3 158 0 99 3 158 0 108 3 158 0 109 3 158 0 111 3 158 0 112 3 158 0 113 3 158 0 114 3 158 0 118 3 158 0 124 3 158 0 126 3 158 0 138 9 81 2 118 9 85 2 119 9 89 2 120 9 93 2 121 3 158 2 178] 
#[1 3 162 0 37 3 162 0 41 3 162 0 57 3 162 0 62 3 162 0 68 3 162 0 88 3 162 0 89 3 162 0 98 3 162 0 99 3 162 0 108 3 162 0 109 3 162 0 111 3 162 0 112 3 162 0 113 3 162 0 114 3 162 0 118 3 162 0 124 3 162 0 126 3 162 0 138 4 41 0 140 3 162 0 156 9 97 0 185 9 97 0 186 9 97 0 187 9 97 0 188 3 162 2 178] 
#[0 3 166 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 3 170 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 3 174 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 3 178 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 3 182 0 37 0 41 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 3 186 0 23] 
#[0 3 190 0 23] 
#[0 3 194 0 23] 
#[0 3 198 0 23] 
#[0 3 202 0 23] 
#[0 3 206 0 23] 
#[0 3 210 0 23] 
#[1 6 57 0 158 1 141 0 193 9 113 0 195 1 141 0 196 9 105 2 131 9 109 2 132 9 113 2 133] 
#[0 3 214 0 158] 
#[0 9 117 0 23] 
#[0 3 218 0 20 0 149] 
#[1 9 121 0 20 9 125 0 149 9 129 0 179] 
#[0 3 222 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[1 3 226 0 41 3 226 0 57 3 230 0 62 3 234 0 68 3 238 0 88 1 131 0 89 1 131 0 99 1 135 0 108 1 131 0 109 1 131 0 111 1 131 0 112 3 242 0 113 3 242 0 114 3 226 0 118 3 226 0 124 3 242 0 126 1 139 0 138] 
#[1 3 246 0 41 3 246 0 57 3 250 0 62 3 254 0 68 4 2 0 88 1 143 0 89 1 143 0 99 1 147 0 108 1 143 0 109 1 143 0 111 1 143 0 112 4 6 0 113 4 6 0 114 3 246 0 118 3 246 0 124 4 6 0 126 1 151 0 138] 
#[1 4 10 0 41 4 10 0 57 4 14 0 62 4 18 0 68 4 22 0 88 1 155 0 89 1 155 0 99 1 159 0 108 1 155 0 109 1 155 0 111 1 155 0 112 4 26 0 113 4 26 0 114 4 10 0 118 4 10 0 124 4 26 0 126 1 163 0 138] 
#[1 4 30 0 41 4 30 0 57 4 34 0 62 4 38 0 68 4 42 0 88 1 167 0 89 1 167 0 99 1 171 0 108 1 167 0 109 1 167 0 111 1 167 0 112 4 46 0 113 4 46 0 114 4 30 0 118 4 30 0 124 4 46 0 126 1 175 0 138] 
#[1 4 50 0 41 4 50 0 57 4 54 0 62 4 58 0 68 4 62 0 88 1 179 0 89 1 179 0 99 1 183 0 108 1 179 0 109 1 179 0 111 1 179 0 112 4 66 0 113 4 66 0 114 4 50 0 118 4 50 0 124 4 66 0 126 1 187 0 138] 
#[0 4 70 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 74 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 4 78 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[1 1 191 0 41 1 191 0 57 1 195 0 62 1 199 0 88 1 203 0 89 1 203 0 99 1 207 0 108 1 203 0 109 1 203 0 111 1 203 0 112 1 211 0 113 1 211 0 114 1 191 0 118 1 191 0 124 1 211 0 126 1 203 0 138] 
#[1 4 102 0 57 9 137 0 108 9 137 2 146] 
#[1 9 165 0 41 4 106 0 57 9 165 0 89 9 165 0 99 4 106 0 108 9 165 0 109 9 165 0 111 9 165 0 112 9 165 0 118 9 165 0 124 9 161 0 138 9 165 1 211 9 165 2 151] 
#[0 4 110 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[1 9 177 0 108 9 173 0 114 4 102 0 126 9 177 2 146] 
#[1 9 205 0 89 9 205 0 99 4 114 0 108 9 205 0 109 9 205 0 111 9 205 0 112 9 205 0 113 4 114 0 114 4 114 0 126 9 201 0 138 9 205 2 67 9 205 2 151] 
#[0 4 118 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[1 4 102 0 88 9 213 0 108 9 213 2 146] 
#[1 4 122 0 88 9 241 0 89 9 241 0 99 4 122 0 108 9 241 0 109 9 241 0 111 9 241 0 112 9 237 0 138 9 241 2 81 9 241 2 151] 
#[0 4 126 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 9 249 0 68] 
#[1 4 130 0 68 10 17 0 89 10 17 0 99 10 17 0 109 10 17 0 111 10 17 0 112 10 17 2 109] 
#[0 4 134 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 10 21 0 62] 
#[1 4 138 0 62 10 49 0 89 10 49 0 99 10 49 0 109 10 49 0 111 10 49 0 112 10 45 0 138 10 49 2 117 10 49 2 151] 
#[0 4 142 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[1 4 146 0 41 4 146 0 57 4 150 0 62 4 154 0 88 1 215 0 89 1 215 0 99 1 219 0 108 1 215 0 109 1 215 0 111 1 215 0 112 4 158 0 113 4 158 0 114 4 146 0 118 4 146 0 124 4 158 0 126 1 215 0 138] 
#[0 4 162 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 5 53 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 10 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 57 0 212 1 189 0 213 10 57 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 5 65 1 2 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 5 69 1 76 5 69 1 77 5 69 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 5 69 1 94 3 205 1 95 5 69 1 114 5 69 1 117 5 69 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 0 114 0 9 0 20] 
#[0 0 122 0 9 0 20] 
#[0 0 130 0 9 0 20] 
#[0 0 138 0 9 0 20] 
#[0 0 154 0 9 0 20] 
#[0 0 174 0 9 0 20] 
#[0 0 182 0 9 0 20] 
#[0 0 190 0 9 0 20] 
#[0 0 198 0 9 0 20] 
#[0 0 214 0 9 0 20] 
#[0 0 222 0 9 0 20] 
#[0 0 230 0 9 0 20] 
#[0 0 246 0 9 0 20] 
#[0 0 254 0 9 0 20] 
#[0 1 6 0 9 0 20] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 6 141 0 24 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 10 61 0 223 10 61 0 253 1 22 2 178] 
#[0 1 62 0 9 0 20] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 227 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 227 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 10 65 0 23 6 141 0 24 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 2 230 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 0 107 0 37 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 91 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 154 1 22 0 155 0 107 0 158 6 153 0 223 6 153 0 253] 
#[1 10 69 0 9 4 174 0 15 1 231 0 158] 
#[1 10 77 0 15 10 81 0 203 10 85 0 204] 
#[1 10 89 0 15 10 93 1 0 10 97 1 1] 
#[1 10 101 0 9 4 178 0 15] 
#[0 4 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 205 0 8 0 146 0 149 10 105 1 81 10 105 1 82] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 109 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 10 113 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 117 1 76 10 117 1 77 10 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 117 1 94 3 205 1 95 10 117 1 114 10 117 1 117 10 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 4 206 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 121 1 76 10 121 1 77 10 121 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 121 1 94 3 205 1 95 10 121 1 114 10 121 1 117 10 121 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 4 210 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 125 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 5 61 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 125 0 212 1 189 0 213 10 125 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 0 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 126 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 150 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 170 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 178 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 186 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 210 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 242 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 0 250 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 1 2 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 107 0 1 0 107 0 2 0 107 0 5 0 107 0 6 0 107 0 8 0 107 0 9 0 107 0 10 0 107 0 12 0 107 0 13 0 107 0 15 0 107 0 16 0 107 0 17 1 22 0 20 0 107 0 23 6 141 0 24 0 107 0 25 0 243 0 26 0 107 0 29 0 107 0 31 0 107 0 32 0 107 0 33 0 107 0 35 0 107 0 36 0 107 0 37 0 107 0 38 0 107 0 39 0 107 0 44 0 107 0 45 0 107 0 46 0 107 0 47 0 107 0 48 0 107 0 49 0 107 0 50 0 107 0 51 0 107 0 52 0 107 0 53 0 107 0 55 0 107 0 56 0 107 0 58 0 107 0 59 0 107 0 60 0 107 0 61 0 107 0 62 0 107 0 63 0 107 0 64 0 107 0 65 0 107 0 66 0 107 0 67 0 107 0 69 0 107 0 73 0 107 0 76 0 107 0 77 0 107 0 78 0 107 0 79 0 107 0 80 0 107 0 82 0 107 0 83 0 107 0 84 0 107 0 87 0 107 0 90 0 107 0 91 0 107 0 92 0 107 0 93 0 107 0 94 0 107 0 95 0 107 0 97 0 107 0 99 0 107 0 100 0 107 0 101 0 107 0 102 0 107 0 103 0 107 0 114 0 107 0 116 0 107 0 117 0 107 0 119 0 107 0 121 0 107 0 122 0 107 0 123 0 107 0 124 0 107 0 125 0 107 0 127 0 107 0 128 0 107 0 129 0 107 0 130 0 107 0 131 0 107 0 133 0 107 0 134 0 107 0 135 0 107 0 136 0 107 0 138 0 107 0 139 0 107 0 140 0 107 0 141 0 107 0 143 0 107 0 145 0 107 0 146 0 107 0 147 0 107 0 148 0 107 0 149 0 107 0 150 0 107 0 152 0 107 0 153 0 107 0 154 0 107 0 156 0 107 0 158 0 107 0 159 0 107 0 160 0 107 0 161 0 107 0 162 0 107 0 163 0 107 0 164 0 107 0 165 0 107 0 166 0 107 0 167 0 107 0 168 0 107 0 169 0 107 0 170 0 107 0 171 10 129 0 223 10 129 0 253 0 107 2 178] 
#[0 1 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 10 133 0 158 10 137 1 159 10 141 1 160] 
#[0 4 214 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 145 0 212 1 189 0 213 10 145 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 2 214 0 8 2 222 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 165 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 165 0 104 7 165 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 2 214 0 158 7 153 1 83 7 157 1 84 7 161 1 85 7 165 1 86 7 165 1 87] 
#[1 1 93 0 149 10 149 1 123] 
#[0 4 218 0 149] 
#[0 10 153 0 147] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 6 57 0 158 1 141 0 193 1 181 0 195 1 141 0 196 10 157 0 199 10 157 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 161 2 153 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 222 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 10 165 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 10 173 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 10 173 1 114 10 177 1 139 2 153 1 140 2 157 1 142 10 177 1 144 2 165 1 149 2 169 1 154 10 173 1 162 10 177 1 177 10 177 1 178 10 185 1 183 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 3 49 2 177] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 193 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 193 0 212 1 189 0 213 10 193 0 215 1 197 0 216 10 189 1 142 10 193 1 153 10 193 1 154 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 201 1 76 10 201 1 77 10 201 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 201 1 94 3 205 1 95 10 201 1 114 10 201 1 117 10 201 1 118 10 201 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 10 205 0 25] 
#[0 10 209 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 217 1 76 10 217 1 77 10 217 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 217 1 94 3 205 1 95 10 217 1 114 10 217 1 117 10 217 1 118 10 217 1 120 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 221 1 76 10 221 1 77 10 221 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 221 1 94 3 205 1 95 10 221 1 114 10 221 1 117 10 221 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 10 225 0 48 4 233 0 49 4 237 0 52 4 241 0 55 4 245 0 60 4 249 0 65 4 253 0 77 5 1 0 87 5 5 0 95 5 9 0 100 5 13 0 117 5 17 0 121 5 21 0 125 10 229 0 128 5 25 0 134 5 29 0 135 5 33 0 139 5 37 0 158 5 41 0 193 10 249 0 252 10 249 1 9 10 249 1 10 1 253 1 11 10 245 1 49 10 249 1 52] 
#[1 10 253 0 15 4 226 0 38 11 1 0 220 11 5 0 221] 
#[1 11 9 0 8 0 141 0 46 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 4 230 0 156 11 13 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 11 17 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 11 21 0 252 1 205 0 254 1 205 0 255 11 25 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 11 29 1 16 1 205 1 17 1 205 1 18 1 205 1 19 11 17 1 31 1 205 1 32 1 205 1 33 11 33 1 35 11 37 1 36 11 41 1 37 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 1 205 1 54 11 45 1 57 1 205 1 59 1 205 1 79 1 205 2 142 3 17 2 143 1 205 2 157 1 205 2 160] 
#[1 1 235 0 8 1 66 0 10 1 66 0 35 0 115 0 37 0 115 0 149] 
#[1 11 49 0 8 11 53 0 149 11 57 1 21 11 57 1 22 11 57 1 28] 
#[1 1 130 0 8 1 239 0 149 11 73 2 75] 
#[1 11 77 0 37 6 185 0 218 6 189 0 219] 
#[1 11 69 0 149 11 81 2 75] 
#[0 11 85 0 8] 
#[0 4 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 4 242 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 141 0 143 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 11 89 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 89 1 76 11 89 1 77 11 89 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 89 1 94 3 205 1 95 11 89 1 114 11 89 1 117 11 89 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 97 0 25] 
#[0 4 246 0 25] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 6 57 0 158 1 141 0 193 1 181 0 195 1 141 0 196 6 65 0 199 6 65 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 101 2 153 11 101 2 155 3 49 2 177] 
#[1 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 15 1 22 0 20 6 141 0 24 1 22 0 25 6 145 0 26 1 22 0 35 1 22 0 37 1 22 0 38 1 22 0 146 1 22 0 149 10 129 0 223 10 129 0 253] 
#[0 1 66 0 9 0 10 0 35 0 37] 
#[1 4 250 0 9 6 173 0 10 4 250 0 37 6 177 2 154] 
#[0 4 254 0 9 0 37] 
#[0 11 105 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 109 1 76 11 109 1 77 11 109 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 109 1 94 3 205 1 95 11 109 1 114 11 109 1 117 11 109 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 113 0 25] 
#[1 1 243 0 54 11 121 0 75 11 125 1 192 11 129 1 193 11 133 1 194 11 137 1 195 11 141 1 201] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 11 145 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 149 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 149 0 212 1 189 0 213 11 149 0 215 1 197 0 216 11 153 1 39 3 9 1 215 3 25 2 153 11 157 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 161 1 76 11 161 1 77 11 161 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 161 1 94 3 205 1 95 11 161 1 114 11 161 1 117 11 161 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 5 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 10 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 11 165 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 165 0 212 1 189 0 213 11 165 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 181 1 76 11 181 1 77 11 181 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 181 1 94 3 205 1 95 11 181 1 114 11 181 1 117 11 181 1 118 11 181 1 139 2 153 1 140 2 157 1 142 11 181 1 144 2 165 1 149 3 221 1 153 11 177 1 154 11 181 1 206 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 185 1 76 11 185 1 77 11 185 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 185 1 94 3 205 1 95 11 185 1 114 11 185 1 117 11 185 1 118 11 185 1 120 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 189 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 11 193 1 76 11 193 1 77 11 193 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 11 193 1 94 3 205 1 95 11 193 1 114 11 193 1 117 11 193 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 5 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 11 197 0 156] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 18 0 156 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 11 201 1 121 11 201 1 122 11 201 1 123 11 201 1 126 11 201 1 127 11 201 1 128 11 201 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 11 201 1 161 2 181 1 162 11 201 1 163 11 201 1 164 11 201 1 165 11 201 1 173 11 201 1 174 11 201 1 175 11 201 1 176 11 201 1 184 11 201 1 185 11 201 1 186 11 201 1 187 11 201 1 188 11 201 1 189 11 201 1 190 11 201 1 191 11 201 1 202 11 201 1 203 11 201 1 204 11 201 1 205 11 201 1 207 3 9 1 215 1 205 2 142 3 17 2 143 11 201 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 11 201 2 161 3 49 2 177] 
#[0 5 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 11 205 1 121 11 205 1 122 11 205 1 123 11 205 1 126 11 205 1 127 11 205 1 128 11 205 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 11 205 1 161 2 181 1 162 11 205 1 163 11 205 1 164 11 205 1 165 11 205 1 173 11 205 1 174 11 205 1 175 11 205 1 176 11 205 1 184 11 205 1 185 11 205 1 186 11 205 1 187 11 205 1 188 11 205 1 189 11 205 1 190 11 205 1 191 11 205 1 202 11 205 1 203 11 205 1 204 11 205 1 205 11 205 1 207 3 9 1 215 1 205 2 142 3 17 2 143 11 205 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 11 205 2 161 3 49 2 177] 
#[0 11 209 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 221 0 212 1 189 0 213 11 221 0 215 1 197 0 216 11 217 0 224 11 221 0 225 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 247 0 1 1 247 0 2 5 30 0 3 5 30 0 4 1 247 0 5 1 247 0 6 5 30 0 7 1 247 0 8 1 247 0 9 1 247 0 10 5 30 0 11 1 247 0 12 1 247 0 13 5 30 0 14 1 247 0 15 1 247 0 16 1 247 0 17 5 30 0 18 5 30 0 19 1 247 0 20 5 30 0 21 5 30 0 22 1 247 0 23 1 247 0 25 1 247 0 26 5 30 0 27 5 30 0 28 1 247 0 29 5 30 0 30 1 247 0 31 1 247 0 33 5 30 0 34 1 247 0 35 1 247 0 36 1 247 0 37 1 247 0 38 1 247 0 39 5 30 0 40 1 247 0 44 1 247 0 45 1 247 0 46 1 247 0 47 1 247 0 48 1 247 0 49 1 247 0 50 1 247 0 51 1 247 0 52 1 247 0 53 1 247 0 55 1 247 0 56 1 247 0 58 1 247 0 59 1 247 0 60 1 247 0 61 1 247 0 62 1 247 0 63 1 247 0 64 1 247 0 65 1 247 0 66 1 247 0 67 1 247 0 69 1 247 0 73 1 247 0 76 1 247 0 77 1 247 0 78 1 247 0 79 1 247 0 80 1 247 0 82 1 247 0 83 1 247 0 84 1 247 0 87 1 247 0 90 1 247 0 91 1 247 0 92 1 247 0 93 1 247 0 94 1 247 0 95 1 247 0 97 1 247 0 99 1 247 0 100 1 247 0 101 1 247 0 103 1 247 0 114 1 247 0 116 1 247 0 117 1 247 0 119 1 247 0 121 1 247 0 122 1 247 0 123 1 247 0 124 1 247 0 125 1 247 0 127 1 247 0 128 1 247 0 129 1 247 0 130 1 247 0 131 1 247 0 133 1 247 0 134 1 247 0 135 1 247 0 136 1 247 0 138 1 247 0 139 1 247 0 140 1 247 0 141 1 247 0 143 1 247 0 145 1 247 0 146 1 247 0 147 1 247 0 148 1 247 0 149 1 247 0 150 5 30 0 151 1 247 0 152 1 247 0 153 1 247 0 154 5 30 0 155 1 247 0 156 1 247 0 158 1 247 0 159 1 247 0 160 1 247 0 161 1 247 0 162 1 247 0 163 1 247 0 164 1 247 0 165 1 247 0 166 1 247 0 167 1 247 0 168 1 247 0 169 1 247 0 170 1 247 0 171 1 247 2 178] 
#[0 11 225 0 158] 
#[1 5 38 0 9 5 38 0 15 5 38 0 25 11 229 0 30] 
#[0 5 42 0 9 0 25] 
#[1 5 46 0 9 5 46 0 15 5 46 0 25 11 233 1 147] 
#[0 5 50 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 54 0 1 5 54 0 2 5 54 0 5 5 54 0 6 5 54 0 8 5 54 0 9 1 251 0 10 5 54 0 12 5 54 0 13 5 54 0 15 5 54 0 16 5 54 0 17 5 54 0 23 5 54 0 25 5 54 0 26 5 54 0 29 5 54 0 31 5 54 0 33 5 54 0 35 5 54 0 36 5 54 0 37 5 54 0 38 5 54 0 39 5 54 0 44 5 54 0 45 5 54 0 46 5 54 0 47 5 54 0 48 5 54 0 49 5 54 0 50 5 54 0 51 5 54 0 52 5 54 0 53 5 54 0 55 5 54 0 56 5 54 0 58 5 54 0 59 5 54 0 60 5 54 0 61 5 54 0 62 5 54 0 63 5 54 0 64 5 54 0 65 5 54 0 66 5 54 0 67 5 54 0 69 5 54 0 73 5 54 0 76 5 54 0 77 5 54 0 78 5 54 0 79 5 54 0 80 5 54 0 82 5 54 0 83 5 54 0 84 5 54 0 87 5 54 0 90 5 54 0 91 5 54 0 92 5 54 0 93 5 54 0 94 5 54 0 95 5 54 0 97 5 54 0 99 5 54 0 100 5 54 0 101 5 54 0 102 5 54 0 103 5 54 0 114 5 54 0 116 5 54 0 117 5 54 0 119 5 54 0 121 5 54 0 122 5 54 0 123 5 54 0 124 5 54 0 125 5 54 0 127 5 54 0 128 5 54 0 129 5 54 0 130 5 54 0 131 5 54 0 133 5 54 0 134 5 54 0 135 5 54 0 136 5 54 0 138 5 54 0 139 5 54 0 140 5 54 0 141 5 54 0 143 5 54 0 145 5 54 0 146 5 54 0 147 5 54 0 148 5 54 0 149 5 54 0 150 5 54 0 152 5 54 0 153 5 54 0 154 5 54 0 156 5 54 0 158 5 54 0 159 5 54 0 160 5 54 0 161 5 54 0 162 5 54 0 163 5 54 0 164 5 54 0 165 5 54 0 166 5 54 0 167 5 54 0 168 5 54 0 169 5 54 0 170 5 54 0 171 5 54 2 178] 
#[0 5 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 62 0 1 5 62 0 2 5 62 0 5 5 62 0 6 5 62 0 8 5 62 0 9 5 62 0 10 5 62 0 12 5 62 0 13 5 62 0 15 5 62 0 16 5 62 0 17 5 62 0 23 5 62 0 25 5 62 0 26 5 62 0 29 5 62 0 31 5 62 0 33 5 62 0 35 5 62 0 36 6 1 0 37 5 62 0 38 5 62 0 39 5 62 0 44 5 62 0 45 5 62 0 46 5 62 0 47 5 62 0 48 5 62 0 49 5 62 0 50 5 62 0 51 5 62 0 52 5 62 0 53 5 62 0 55 5 62 0 56 5 62 0 58 5 62 0 59 5 62 0 60 5 62 0 61 5 62 0 62 5 62 0 63 5 62 0 64 5 62 0 65 5 62 0 66 5 62 0 67 5 62 0 69 5 62 0 73 5 62 0 76 5 62 0 77 5 62 0 78 5 62 0 79 5 62 0 80 5 62 0 82 5 62 0 83 5 62 0 84 5 62 0 87 5 62 0 90 5 62 0 91 5 62 0 92 5 62 0 93 5 62 0 94 5 62 0 95 5 62 0 97 5 62 0 99 5 62 0 100 5 62 0 101 5 62 0 102 5 62 0 103 5 62 0 114 5 62 0 116 5 62 0 117 5 62 0 119 5 62 0 121 5 62 0 122 5 62 0 123 5 62 0 124 5 62 0 125 5 62 0 127 5 62 0 128 5 62 0 129 5 62 0 130 5 62 0 131 5 62 0 133 5 62 0 134 5 62 0 135 5 62 0 136 5 62 0 138 5 62 0 139 5 62 0 140 5 62 0 141 5 62 0 143 5 62 0 145 5 62 0 146 5 62 0 147 5 62 0 148 5 62 0 149 5 62 0 150 5 62 0 152 5 62 0 153 5 62 0 154 5 62 0 156 5 62 0 158 5 62 0 159 5 62 0 160 5 62 0 161 5 62 0 162 5 62 0 163 5 62 0 164 5 62 0 165 5 62 0 166 5 62 0 167 5 62 0 168 5 62 0 169 5 62 0 170 5 62 0 171 11 241 0 219 5 62 2 178] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 11 249 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 12 13 0 158] 
#[0 12 17 0 158] 
#[0 12 21 0 20] 
#[0 12 25 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 12 29 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 117 1 76 10 117 1 77 10 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 117 1 94 3 205 1 95 10 117 1 114 10 117 1 117 10 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 12 33 0 245 12 37 0 246 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 41 1 76 12 41 1 77 12 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 41 1 94 3 205 1 95 12 41 1 114 12 41 1 117 12 41 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 12 45 0 246 1 221 0 249 1 225 0 250 12 49 0 251 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 41 1 76 12 41 1 77 12 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 41 1 94 3 205 1 95 12 41 1 114 12 41 1 117 12 41 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 12 53 0 158] 
#[0 12 57 0 158] 
#[0 5 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 5 114 0 1 5 114 0 5 5 114 0 8 5 114 0 10 5 114 0 12 5 114 0 13 5 114 0 16 5 114 0 17 5 114 0 46 5 114 0 47 5 114 0 48 5 114 0 49 5 114 0 52 5 114 0 55 5 114 0 56 5 114 0 60 5 114 0 61 5 114 0 62 5 114 0 65 5 114 0 66 5 114 0 73 5 114 0 77 5 114 0 80 5 114 0 87 5 114 0 95 5 114 0 97 5 114 0 99 5 114 0 100 12 61 0 114 5 114 0 117 5 114 0 121 5 114 0 122 5 114 0 123 5 114 0 125 5 114 0 128 5 114 0 129 5 114 0 130 5 114 0 133 5 114 0 134 5 114 0 135 5 114 0 136 5 114 0 139 5 114 0 141 5 114 0 143 5 114 0 153 5 114 0 158 5 114 0 159 5 114 0 160 5 114 0 161 5 114 0 162 5 114 0 163 5 114 0 166 5 114 0 167 5 114 0 170 5 114 0 171] 
#[0 5 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 5 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 65 1 76 12 65 1 77 12 65 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 65 1 94 3 205 1 95 12 65 1 114 12 65 1 117 12 65 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 12 69 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 12 73 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[0 12 77 0 114] 
#[0 5 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 138 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 4 82 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 153 0 158] 
#[0 5 142 0 114 0 124 0 138] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 85 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 85 0 212 1 189 0 213 12 85 0 215 1 197 0 216 3 9 1 215 12 85 1 253 3 25 2 153 3 49 2 177] 
#[0 5 146 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 2 69 1 54 12 89 1 58 2 77 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 93 1 76 12 93 1 77 12 93 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 93 1 94 3 205 1 95 12 93 1 114 12 93 1 117 12 93 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 5 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 158 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 5 162 0 158] 
#[0 5 166 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 5 170 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 12 97 0 158 12 101 1 134] 
#[1 6 173 0 10 5 174 0 158 7 137 2 154] 
#[0 5 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 12 105 0 158 12 109 1 141 12 113 1 150] 
#[1 12 105 0 158 12 117 1 141] 
#[0 12 121 0 30] 
#[0 5 182 0 9 0 25] 
#[0 5 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 5 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 5 194 0 1 5 194 0 2 5 194 0 5 5 194 0 6 5 194 0 8 5 194 0 9 2 3 0 10 5 194 0 12 5 194 0 13 5 194 0 15 5 194 0 16 5 194 0 17 5 194 0 23 5 194 0 25 5 194 0 26 5 194 0 29 5 194 0 31 5 194 0 33 5 194 0 35 5 194 0 36 5 194 0 37 5 194 0 38 5 194 0 39 5 194 0 44 5 194 0 45 5 194 0 46 5 194 0 47 5 194 0 48 5 194 0 49 5 194 0 50 5 194 0 51 5 194 0 52 5 194 0 53 5 194 0 55 5 194 0 56 5 194 0 58 5 194 0 59 5 194 0 60 5 194 0 61 5 194 0 62 5 194 0 63 5 194 0 64 5 194 0 65 5 194 0 66 5 194 0 67 5 194 0 69 5 194 0 73 5 194 0 76 5 194 0 77 5 194 0 78 5 194 0 79 5 194 0 80 5 194 0 82 5 194 0 83 5 194 0 84 5 194 0 87 5 194 0 90 5 194 0 91 5 194 0 92 5 194 0 93 5 194 0 94 5 194 0 95 5 194 0 97 5 194 0 99 5 194 0 100 5 194 0 101 5 194 0 102 5 194 0 103 5 194 0 114 5 194 0 116 5 194 0 117 5 194 0 119 5 194 0 121 5 194 0 122 5 194 0 123 5 194 0 124 5 194 0 125 5 194 0 127 5 194 0 128 5 194 0 129 5 194 0 130 5 194 0 131 5 194 0 133 5 194 0 134 5 194 0 135 5 194 0 136 5 194 0 138 5 194 0 139 5 194 0 140 5 194 0 141 5 194 0 143 5 194 0 145 5 194 0 146 5 194 0 147 5 194 0 148 5 194 0 149 5 194 0 150 5 194 0 152 5 194 0 153 5 194 0 154 5 194 0 156 5 194 0 158 5 194 0 159 5 194 0 160 5 194 0 161 5 194 0 162 5 194 0 163 5 194 0 164 5 194 0 165 5 194 0 166 5 194 0 167 5 194 0 168 5 194 0 169 5 194 0 170 5 194 0 171 5 194 2 178] 
#[0 5 198 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 5 202 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 5 206 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 12 125 0 9] 
#[1 5 210 0 9 12 129 0 15] 
#[0 5 214 0 9 0 15] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 133 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 133 0 212 1 189 0 213 12 133 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 5 218 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 12 137 0 9] 
#[1 5 222 0 9 12 141 0 15] 
#[1 5 226 0 9 5 226 0 15 3 54 0 32] 
#[1 2 214 0 8 0 163 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 165 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 165 0 104 7 165 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 2 7 0 158 7 153 1 83 7 157 1 84 7 161 1 85 7 165 1 86 7 165 1 87 7 173 1 89 7 177 1 90 12 145 1 91] 
#[0 2 230 0 9 0 15 0 32] 
#[0 12 149 0 32] 
#[0 12 153 0 158] 
#[0 5 230 0 158] 
#[0 2 238 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 5 234 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 12 157 1 53 1 205 1 54 1 205 1 59 12 157 1 60 12 157 1 61 12 157 1 62 12 157 1 63 1 205 1 79 1 205 2 142 3 17 2 143 12 157 2 156 1 205 2 157 12 157 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 12 161 1 53 1 205 1 54 1 205 1 59 12 161 1 60 12 161 1 61 12 161 1 62 12 161 1 63 1 205 1 79 1 205 2 142 3 17 2 143 12 161 2 156 1 205 2 157 12 161 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 12 165 1 53 1 205 1 54 1 205 1 59 12 165 1 60 12 165 1 61 12 165 1 62 12 165 1 63 1 205 1 79 1 205 2 142 3 17 2 143 12 165 2 156 1 205 2 157 12 165 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 12 169 1 53 1 205 1 54 1 205 1 59 12 169 1 60 12 169 1 61 12 169 1 62 12 169 1 63 12 169 1 64 1 205 1 79 1 205 2 142 3 17 2 143 12 169 2 156 1 205 2 157 12 169 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 12 173 1 53 1 205 1 54 1 205 1 59 12 173 1 60 12 173 1 61 12 173 1 62 12 173 1 63 12 173 1 64 1 205 1 79 1 205 2 142 3 17 2 143 12 173 2 156 1 205 2 157 12 173 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 12 177 1 65 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 12 181 1 65 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 12 185 1 66 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 12 189 1 66 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 12 193 1 66 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 197 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 197 0 212 1 189 0 213 12 197 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 12 201 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 201 0 212 1 189 0 213 12 201 0 215 1 197 0 216 12 205 0 227 12 205 0 228 12 205 0 230 12 205 0 231 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 205 1 76 12 205 1 77 12 205 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 205 1 94 3 205 1 95 12 205 1 114 12 205 1 117 12 205 1 118 12 205 1 119 3 221 1 153 12 225 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 12 229 1 66 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 12 233 1 67 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 12 237 1 67 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 12 241 1 68 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 12 245 1 69 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 12 249 1 70 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 12 253 1 71 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 13 1 1 74 13 1 1 75 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 13 5 1 72 1 205 1 79 1 205 2 142 3 17 2 143 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 13 9 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 17 1 76 13 17 1 77 13 17 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 13 1 93 13 17 1 94 3 205 1 95 13 17 1 114 13 17 1 117 13 17 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 13 9 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 93 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 2 69 1 54 13 25 1 58 2 77 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 25 1 76 13 25 1 77 13 25 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 25 1 92 13 25 1 93 13 25 1 94 3 205 1 95 13 25 1 114 13 25 1 117 13 25 1 118 13 25 1 123 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 0 239 0 158 1 141 0 193 1 137 0 195 1 141 0 196 13 41 0 197 13 41 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 13 41 0 212 1 189 0 213 13 41 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 13 45 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 57 1 76 13 57 1 77 13 57 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 57 1 94 3 205 1 95 13 49 1 105 13 53 1 106 13 57 1 114 13 57 1 117 13 57 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 61 1 76 13 61 1 77 13 61 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 61 1 94 3 205 1 95 13 61 1 114 13 61 1 117 13 61 1 118 13 61 1 120 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 5 238 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 242 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 13 65 0 83 13 69 0 119 13 73 1 109 13 77 1 110 13 81 1 111] 
#[1 3 65 0 80 5 246 0 83 8 49 0 92 8 53 0 93 8 57 0 103 5 246 0 119 8 61 0 146 8 65 1 95 13 85 1 99 8 85 1 100 8 89 1 101 8 93 1 102 8 97 1 103 8 101 1 104] 
#[0 5 250 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 254 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 6 2 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 6 6 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 6 10 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 6 14 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 6 18 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 6 22 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 13 89 0 114] 
#[0 6 26 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 6 30 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 6 34 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 2 69 1 54 13 93 1 58 2 77 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 97 1 76 13 97 1 77 13 97 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 97 1 94 3 205 1 95 13 97 1 114 13 97 1 117 13 97 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 6 38 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 6 42 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 2 11 0 8 2 15 0 41 6 46 0 46 2 11 0 49 2 11 0 52 2 11 0 55 3 222 0 57 2 11 0 60 2 11 0 65 2 11 0 66 6 58 0 70 2 19 0 72 2 11 0 77 2 11 0 87 2 15 0 89 2 11 0 95 2 15 0 99 2 11 0 100 2 19 0 105 2 23 0 108 2 15 0 109 2 15 0 111 2 15 0 112 2 27 0 114 2 11 0 117 2 15 0 118 2 11 0 121 2 31 0 124 2 11 0 125 2 11 0 134 2 11 0 135 2 15 0 138 2 11 0 139 2 19 0 142 2 11 0 143 2 11 0 158] 
#[0 6 62 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 2 35 0 8 2 39 0 41 6 70 0 46 2 35 0 49 2 35 0 52 2 35 0 55 2 35 0 60 2 35 0 65 2 35 0 66 6 82 0 70 6 74 0 71 2 43 0 72 2 35 0 77 6 74 0 85 2 35 0 87 2 47 0 89 2 35 0 95 2 39 0 99 2 35 0 100 2 39 0 105 6 70 0 108 2 47 0 109 2 47 0 111 2 43 0 112 2 51 0 114 2 35 0 117 2 39 0 118 2 35 0 121 2 55 0 124 2 35 0 125 2 35 0 134 2 35 0 135 2 59 0 138 2 35 0 139 2 39 0 142 2 35 0 143 6 90 0 153 2 63 0 158 13 105 2 151] 
#[1 2 67 0 8 2 71 0 41 6 106 0 46 2 67 0 49 2 67 0 52 2 67 0 55 3 226 0 57 6 114 0 58 2 67 0 60 3 230 0 62 2 67 0 65 2 67 0 66 3 234 0 68 6 110 0 70 2 75 0 72 2 67 0 77 2 67 0 87 3 238 0 88 2 79 0 89 2 67 0 95 2 83 0 99 2 67 0 100 2 87 0 105 2 91 0 108 2 79 0 109 2 79 0 111 2 79 0 112 2 95 0 113 2 99 0 114 2 67 0 117 2 71 0 118 2 67 0 121 2 103 0 124 2 67 0 125 3 242 0 126 2 67 0 134 2 67 0 135 2 107 0 138 2 67 0 139 2 87 0 142 2 67 0 143 6 98 0 144 2 111 0 158] 
#[1 2 115 0 8 2 119 0 41 6 122 0 46 2 115 0 49 2 115 0 52 2 115 0 55 3 246 0 57 6 142 0 58 2 115 0 60 3 250 0 62 2 115 0 65 2 115 0 66 3 254 0 68 6 138 0 70 2 123 0 72 2 115 0 77 2 115 0 87 4 2 0 88 2 127 0 89 2 115 0 95 2 127 0 99 2 115 0 100 2 123 0 105 2 131 0 108 2 127 0 109 2 127 0 111 2 127 0 112 2 135 0 113 2 139 0 114 2 115 0 117 2 119 0 118 2 115 0 121 2 143 0 124 2 115 0 125 4 6 0 126 2 115 0 134 2 115 0 135 2 147 0 138 2 115 0 139 2 123 0 142 2 115 0 143 6 134 0 144 2 115 0 158] 
#[1 2 151 0 8 2 155 0 41 6 146 0 46 2 151 0 49 2 151 0 52 2 151 0 55 2 151 0 60 2 151 0 65 2 151 0 66 6 158 0 70 2 155 0 72 2 151 0 77 2 151 0 87 2 155 0 89 2 151 0 95 2 155 0 99 2 151 0 100 2 155 0 105 6 146 0 108 2 155 0 109 2 155 0 111 2 155 0 112 2 159 0 114 2 151 0 117 2 155 0 118 2 151 0 121 2 163 0 124 2 151 0 125 2 151 0 134 2 151 0 135 2 155 0 138 2 151 0 139 2 155 0 142 2 151 0 143 2 151 0 158] 
#[1 2 167 0 8 2 171 0 41 6 174 0 46 2 167 0 49 2 167 0 52 2 167 0 55 4 10 0 57 6 182 0 58 2 167 0 60 4 14 0 62 2 167 0 65 2 167 0 66 4 18 0 68 6 178 0 70 2 175 0 72 2 167 0 77 2 167 0 87 4 22 0 88 2 179 0 89 2 167 0 95 2 183 0 99 2 167 0 100 2 187 0 105 2 191 0 108 2 179 0 109 2 179 0 111 2 179 0 112 2 195 0 113 2 199 0 114 2 167 0 117 2 171 0 118 2 167 0 121 2 203 0 124 2 167 0 125 4 26 0 126 2 167 0 134 2 167 0 135 2 207 0 138 2 167 0 139 2 187 0 142 2 167 0 143 6 166 0 144 2 211 0 158] 
#[1 2 215 0 8 2 219 0 41 6 190 0 46 2 215 0 49 2 215 0 52 2 215 0 55 4 30 0 57 6 210 0 58 2 215 0 60 4 34 0 62 2 215 0 65 2 215 0 66 4 38 0 68 6 206 0 70 2 223 0 72 2 215 0 77 2 215 0 87 4 42 0 88 2 227 0 89 2 215 0 95 2 231 0 99 2 215 0 100 2 235 0 105 2 239 0 108 2 227 0 109 2 227 0 111 2 227 0 112 2 243 0 113 2 247 0 114 2 215 0 117 2 219 0 118 2 215 0 121 2 251 0 124 2 215 0 125 4 46 0 126 2 215 0 134 2 215 0 135 2 255 0 138 2 215 0 139 2 235 0 142 2 215 0 143 6 198 0 144 3 3 0 158] 
#[1 3 7 0 8 3 11 0 41 6 234 0 46 3 7 0 49 3 7 0 52 3 7 0 55 4 50 0 57 6 242 0 58 3 7 0 60 4 54 0 62 3 7 0 65 3 7 0 66 4 58 0 68 6 238 0 70 6 226 0 71 3 15 0 72 3 7 0 77 6 226 0 85 3 7 0 87 4 62 0 88 3 19 0 89 3 7 0 95 3 23 0 99 3 7 0 100 3 27 0 105 3 31 0 108 3 19 0 109 3 19 0 111 3 35 0 112 3 39 0 113 3 43 0 114 3 7 0 117 3 11 0 118 3 7 0 121 3 47 0 124 3 7 0 125 4 66 0 126 3 7 0 134 3 7 0 135 3 51 0 138 3 7 0 139 3 27 0 142 3 7 0 143 6 218 0 144 3 55 0 158] 
#[1 6 250 0 8 6 250 0 49 6 250 0 52 6 250 0 55 6 250 0 60 6 250 0 65 6 250 0 66 6 250 0 77 6 250 0 87 3 59 0 89 6 250 0 95 3 59 0 99 6 250 0 100 4 70 0 108 3 59 0 109 3 59 0 111 3 59 0 112 3 59 0 113 4 70 0 114 6 250 0 117 6 250 0 121 6 250 0 124 6 250 0 125 4 70 0 126 6 250 0 134 6 250 0 135 3 59 0 138 6 250 0 139 6 250 0 143 6 250 0 144 6 250 0 158] 
#[1 3 63 0 8 3 67 0 41 7 2 0 46 3 63 0 49 3 63 0 52 3 63 0 55 4 74 0 57 3 63 0 60 3 63 0 65 3 63 0 66 7 10 0 70 3 71 0 72 3 63 0 77 3 63 0 87 3 67 0 89 3 63 0 95 3 67 0 99 3 63 0 100 3 71 0 105 3 75 0 108 3 67 0 109 3 67 0 111 3 67 0 112 3 79 0 114 3 63 0 117 3 67 0 118 3 63 0 121 3 83 0 124 3 63 0 125 3 63 0 134 3 63 0 135 3 67 0 138 3 63 0 139 3 71 0 142 3 63 0 143 3 63 0 158] 
#[1 3 87 0 8 3 91 0 41 7 14 0 46 3 87 0 49 3 87 0 52 3 87 0 55 4 78 0 57 3 87 0 60 3 87 0 65 3 87 0 66 7 30 0 70 7 18 0 71 3 95 0 72 3 87 0 77 7 18 0 85 3 87 0 87 3 99 0 89 3 87 0 95 3 99 0 99 3 87 0 100 3 103 0 105 3 107 0 108 3 99 0 109 3 99 0 111 3 111 0 112 7 26 0 113 7 22 0 114 3 87 0 117 3 91 0 118 3 87 0 121 3 111 0 124 3 87 0 125 3 87 0 134 3 87 0 135 3 115 0 138 3 87 0 139 3 103 0 142 3 87 0 143 7 26 0 144 3 119 0 158 13 113 2 151] 
#[1 3 123 0 8 3 127 0 41 7 54 0 46 3 123 0 49 3 123 0 52 3 123 0 55 1 191 0 57 3 123 0 60 1 195 0 62 3 123 0 65 3 123 0 66 3 131 0 70 3 135 0 71 3 139 0 72 3 123 0 77 3 135 0 85 3 123 0 87 1 199 0 88 3 143 0 89 3 123 0 95 3 147 0 99 3 123 0 100 3 151 0 105 3 155 0 108 3 143 0 109 3 143 0 111 3 159 0 112 3 163 0 113 3 167 0 114 3 123 0 117 3 127 0 118 3 123 0 121 3 171 0 124 3 123 0 125 1 211 0 126 3 123 0 134 3 123 0 135 3 159 0 138 3 123 0 139 3 151 0 142 3 123 0 143 3 175 0 144 4 82 0 153 3 179 0 158] 
#[1 3 183 0 8 3 187 0 41 7 74 0 46 3 183 0 49 3 183 0 52 3 183 0 55 3 183 0 60 3 183 0 65 3 183 0 66 7 78 0 70 3 187 0 72 3 183 0 77 3 183 0 87 3 187 0 89 3 183 0 95 3 187 0 99 3 183 0 100 3 187 0 105 7 74 0 108 3 187 0 109 3 187 0 111 3 187 0 112 3 191 0 114 3 183 0 117 3 187 0 118 3 183 0 121 3 195 0 124 3 183 0 125 3 183 0 134 3 183 0 135 3 187 0 138 3 183 0 139 3 187 0 142 3 183 0 143 3 183 0 158] 
#[0 7 82 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 13 117 0 58] 
#[1 7 86 0 58 13 141 0 89 13 141 0 99 13 141 0 109 13 141 0 111 13 141 0 112 13 141 1 234] 
#[0 7 90 0 58 0 89 0 99 0 109 0 111 0 112] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 13 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 13 145 0 212 1 189 0 213 13 145 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 7 94 0 8 7 94 0 49 7 94 0 52 7 94 0 55 7 94 0 60 7 94 0 65 7 94 0 66 7 94 0 77 7 94 0 87 13 181 0 89 7 94 0 95 13 181 0 99 7 94 0 100 13 181 0 109 13 181 0 111 13 181 0 112 13 181 0 113 7 94 0 117 7 94 0 121 13 181 0 124 7 94 0 125 7 94 0 134 7 94 0 135 13 177 0 138 7 94 0 139 7 94 0 143 13 181 0 144 7 94 0 158 13 181 1 240 13 181 2 151] 
#[0 7 98 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[1 13 237 0 41 13 237 0 72 13 237 0 89 13 237 0 99 13 237 0 105 13 237 0 109 13 237 0 111 13 237 0 112 1 1 0 114 13 237 0 118 13 237 0 124 13 237 0 142 13 233 1 142 13 237 1 251] 
#[1 4 102 0 8 4 102 0 49 4 102 0 52 4 102 0 55 4 102 0 60 4 102 0 65 4 102 0 66 4 102 0 77 4 102 0 87 4 102 0 95 4 102 0 100 13 241 0 108 4 102 0 117 4 102 0 121 4 102 0 125 4 102 0 134 4 102 0 135 4 102 0 139 4 102 0 143 4 102 0 158 13 241 2 146] 
#[1 7 102 0 8 13 249 0 41 13 249 0 46 7 102 0 49 7 102 0 52 7 102 0 55 7 102 0 60 7 102 0 65 7 102 0 66 13 249 0 72 7 102 0 77 7 102 0 87 13 249 0 89 7 102 0 95 13 249 0 99 7 102 0 100 13 249 0 105 7 102 0 108 13 249 0 109 13 249 0 111 13 249 0 112 7 102 0 117 13 249 0 118 7 102 0 121 13 249 0 124 7 102 0 125 7 102 0 134 7 102 0 135 13 249 0 138 7 102 0 139 13 249 0 142 7 102 0 143 7 102 0 158 13 249 1 250 13 249 1 251] 
#[0 7 106 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 110 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 13 253 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 13 253 0 212 1 189 0 213 13 253 0 215 1 197 0 216 14 1 1 142 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 7 114 0 8 14 53 0 41 7 114 0 49 7 114 0 52 7 114 0 55 7 114 0 60 7 114 0 65 7 114 0 66 14 53 0 72 7 114 0 77 7 114 0 87 14 53 0 89 7 114 0 95 14 53 0 99 7 114 0 100 14 53 0 105 14 53 0 109 14 53 0 111 14 53 0 112 7 114 0 114 7 114 0 117 14 53 0 118 7 114 0 121 14 53 0 124 7 114 0 125 7 114 0 134 7 114 0 135 14 45 0 138 7 114 0 139 14 53 0 142 7 114 0 143 7 114 0 158 14 53 2 14 14 53 2 151] 
#[0 7 118 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 14 61 0 70] 
#[1 14 113 0 41 7 122 0 70 14 113 0 72 14 113 0 89 14 113 0 99 14 113 0 105 14 113 0 109 14 113 0 111 14 113 0 112 14 113 0 118 14 113 0 124 14 105 0 138 14 113 0 142 14 113 2 32 14 113 2 151] 
#[0 7 126 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 14 121 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 14 121 0 212 1 189 0 213 14 121 0 215 1 197 0 216 14 125 1 142 3 9 1 215 14 129 2 40 3 25 2 153 3 49 2 177] 
#[1 7 130 0 8 14 177 0 41 7 130 0 49 7 130 0 52 7 130 0 55 7 130 0 60 7 130 0 65 7 130 0 66 14 177 0 72 7 130 0 77 7 130 0 87 14 177 0 89 7 130 0 95 14 177 0 99 7 130 0 100 14 177 0 105 14 177 0 109 14 177 0 111 14 177 0 112 7 130 0 114 7 130 0 117 14 177 0 118 7 130 0 121 7 130 0 125 7 130 0 134 7 130 0 135 14 169 0 138 7 130 0 139 14 177 0 142 7 130 0 143 7 130 0 158 14 177 2 39 14 177 2 151] 
#[0 7 134 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 14 185 0 71 14 213 0 72 1 169 0 77 14 193 0 85 1 169 0 87 1 169 0 95 5 157 0 100 14 213 0 112 1 169 0 117 1 169 0 121 14 213 0 124 5 169 0 125 1 169 0 134 1 169 0 135 14 205 0 138 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 14 209 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 14 209 0 212 1 189 0 213 14 209 0 215 1 197 0 216 3 9 1 215 14 213 2 45 14 217 2 46 14 221 2 47 14 225 2 49 14 229 2 51 14 213 2 151 3 25 2 153 3 49 2 177] 
#[0 7 138 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 14 237 0 158 14 241 2 57] 
#[1 15 13 0 72 15 13 0 89 15 13 0 109 15 13 0 111 15 13 0 112 15 9 0 138 7 142 0 158 15 13 2 56 15 13 2 151] 
#[0 7 146 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 15 21 0 158] 
#[1 15 29 0 138 15 25 0 153 15 29 2 151] 
#[1 3 199 0 8 3 203 0 41 3 199 0 49 3 199 0 52 3 199 0 55 4 146 0 57 3 199 0 60 4 150 0 62 3 199 0 65 3 199 0 66 7 166 0 70 7 154 0 71 3 207 0 72 3 199 0 77 7 154 0 85 3 199 0 87 4 154 0 88 3 211 0 89 3 199 0 95 3 215 0 99 3 199 0 100 3 219 0 105 1 219 0 108 3 211 0 109 3 211 0 111 3 223 0 112 3 227 0 113 3 231 0 114 3 199 0 117 3 203 0 118 3 199 0 121 3 235 0 124 3 199 0 125 4 158 0 126 3 199 0 134 3 199 0 135 3 223 0 138 3 199 0 139 3 219 0 142 3 199 0 143 7 150 0 144 3 146 0 153 3 239 0 158 15 41 2 147] 
#[0 15 45 0 25] 
#[1 6 57 0 158 1 141 0 193 15 49 0 195 1 141 0 196] 
#[1 1 22 0 20 6 141 0 24 1 22 0 25 6 145 0 26 15 53 0 30 10 129 0 223 10 129 0 253] 
#[0 15 57 0 25] 
#[1 6 157 0 20 7 174 0 25] 
#[1 15 69 0 158 15 65 2 122 15 69 2 123] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 15 81 0 177 15 73 0 189 15 77 0 190 15 81 0 191 15 81 0 192 15 81 1 208 15 81 2 64 15 81 2 78 15 81 2 102 15 81 2 113 0 89 2 124 0 93 2 125 0 97 2 126 0 101 2 127 7 178 2 178] 
#[0 7 182 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 2 178] 
#[1 3 243 0 37 7 186 0 41 7 186 0 57 7 186 0 62 7 186 0 68 7 186 0 88 7 186 0 89 7 186 0 98 7 186 0 99 7 186 0 108 7 186 0 109 7 186 0 111 7 186 0 112 7 186 0 113 7 186 0 114 7 186 0 118 7 186 0 124 7 186 0 126 7 186 0 138 15 85 2 121 7 186 2 178] 
#[0 7 190 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 2 178] 
#[0 7 194 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 7 198 0 8 0 15 0 38] 
#[1 15 89 0 15 15 93 0 38] 
#[0 7 202 0 15 0 38] 
#[1 15 97 0 8 7 206 0 15 7 206 0 38 15 101 2 134 15 105 2 135] 
#[0 7 210 0 158] 
#[0 15 109 0 158] 
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 68 0 29 0 72 0 6 0 88 0 6 0 89 0 6 0 98 0 6 0 99 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 138 0 6 0 140 0 6 0 156 15 113 0 180 0 41 0 181 0 45 0 182] 
#[1 15 121 0 25 7 214 0 37 7 214 0 41 7 214 0 57 7 214 0 62 7 214 0 68 7 214 0 88 7 214 0 89 7 214 0 98 7 214 0 99 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 118 7 214 0 124 7 214 0 126 7 214 0 138 7 214 0 156 15 121 2 144 7 214 2 178] 
#[0 7 218 0 8 0 49 0 52 0 55 0 57 0 60 0 65 0 66 0 77 0 87 0 88 0 95 0 100 0 117 0 121 0 125 0 126 0 134 0 135 0 139 0 143 0 158] 
#[0 15 125 0 57] 
#[0 3 226 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 3 246 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 4 10 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 4 30 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 4 50 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 1 191 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 7 222 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[0 4 146 0 41 0 57 0 89 0 99 0 108 0 109 0 111 0 112 0 118 0 124 0 138] 
#[1 15 129 0 108 4 102 0 126 15 129 2 146] 
#[0 15 133 0 126] 
#[0 3 242 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 6 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 26 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 46 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 66 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 1 211 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 7 226 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 4 158 0 89 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 126 0 138] 
#[0 15 137 0 88] 
#[0 3 238 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 4 2 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 4 22 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 4 42 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 4 62 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 1 199 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 7 230 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 4 154 0 88 0 89 0 99 0 108 0 109 0 111 0 112 0 138] 
#[0 15 141 0 158] 
#[0 3 234 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 3 254 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 4 18 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 4 38 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 4 58 0 68 0 89 0 99 0 109 0 111 0 112] 
#[0 7 234 0 68 0 89 0 99 0 109 0 111 0 112] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 149 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 149 0 212 1 189 0 213 15 149 0 215 1 197 0 216 15 145 1 142 3 9 1 215 15 149 1 252 3 25 2 153 7 105 2 177] 
#[0 3 230 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 3 250 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 4 14 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 4 34 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 4 54 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 1 195 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 7 238 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 4 150 0 62 0 89 0 99 0 109 0 111 0 112 0 138] 
#[1 10 69 0 9 2 234 0 158] 
#[0 5 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 15 153 1 76 15 153 1 77 15 153 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 15 153 1 94 3 205 1 95 15 153 1 114 15 153 1 117 15 153 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 15 157 1 53 1 205 1 54 1 205 1 59 15 157 1 60 15 157 1 61 15 157 1 62 15 157 1 63 1 205 1 79 1 205 2 142 3 17 2 143 15 157 2 156 1 205 2 157 15 157 2 159 1 205 2 160] 
#[0 7 242 0 9 0 15] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 125 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 15 161 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 125 0 212 1 189 0 213 10 125 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 7 246 0 9 0 15] 
#[1 15 165 0 9 10 77 0 15 15 169 0 203] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 5 53 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 15 173 1 2 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 15 177 1 76 15 177 1 77 15 177 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 15 177 1 94 3 205 1 95 15 177 1 114 15 177 1 117 15 177 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 7 250 0 9 0 15] 
#[1 15 181 0 9 10 89 0 15 15 185 1 0] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 93 0 149 15 189 1 123] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 15 193 0 223 15 193 0 253 1 22 2 178] 
#[1 15 197 0 15 15 201 0 38] 
#[0 8 2 0 15 0 38 0 156] 
#[0 15 205 0 9] 
#[1 4 174 0 9 4 174 0 15 10 73 0 158] 
#[0 5 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 15 209 0 30] 
#[1 15 213 0 15 8 6 0 25] 
#[0 8 10 0 15 0 25] 
#[0 15 217 0 9] 
#[0 8 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 15 221 0 8] 
#[1 6 173 0 10 6 177 2 154] 
#[1 15 225 0 158 15 229 2 162 15 233 2 163] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 141 0 24 6 145 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 0 107 0 37 1 22 0 40 1 22 0 151 0 107 0 158 6 153 0 223 6 153 0 253] 
#[0 8 18 0 25] 
#[0 8 22 0 9 0 15 0 25] 
#[0 15 237 0 25] 
#[0 8 26 0 25] 
#[1 15 241 0 15 8 30 0 25] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 245 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 245 0 212 1 189 0 213 15 245 0 215 1 197 0 216 15 245 1 153 15 245 1 154 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 15 249 0 158] 
#[0 8 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 15 253 0 25] 
#[0 8 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 8 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 8 46 0 9 0 25 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 16 1 0 9] 
#[0 16 5 0 9] 
#[0 8 50 0 9 0 20] 
#[0 8 54 0 9 0 20] 
#[0 8 58 0 9 0 20] 
#[0 8 62 0 9 0 20] 
#[0 8 66 0 9 0 20] 
#[0 16 9 0 9] 
#[1 8 70 0 9 8 70 0 20 16 13 1 51] 
#[0 8 74 0 15 0 38] 
#[0 16 17 0 38] 
#[1 16 21 0 15 8 78 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 5 53 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 5 65 1 2 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 5 69 1 76 5 69 1 77 5 69 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 5 69 1 94 3 205 1 95 5 69 1 114 5 69 1 117 5 69 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 141 0 24 6 145 0 26 16 25 0 30 1 22 0 35 1 22 0 37 1 22 0 156 10 61 0 223 10 61 0 253] 
#[1 6 193 0 8 6 197 0 13 6 201 0 17 6 205 0 19 6 209 0 20 16 29 0 35] 
#[1 1 154 0 8 1 154 0 13 8 82 0 15 1 154 0 17 1 154 0 19 1 154 0 20 1 154 0 35 1 154 0 37 8 82 0 156] 
#[1 1 166 0 8 1 166 0 13 8 86 0 15 1 166 0 17 1 166 0 19 1 166 0 20 1 166 0 35 1 166 0 37 8 86 0 156] 
#[1 1 190 0 8 1 190 0 13 8 90 0 15 1 190 0 17 1 190 0 19 1 190 0 20 1 190 0 35 1 190 0 37 8 90 0 156] 
#[0 16 33 0 156] 
#[1 16 37 0 15 8 94 0 156] 
#[0 8 98 0 15 0 156] 
#[0 8 102 0 15 0 156] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 16 41 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 16 45 0 37 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 16 49 0 149 1 97 0 153 8 106 0 156 16 53 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 16 57 1 23 16 61 1 24 16 65 1 25 16 69 1 26 16 73 1 29 16 77 1 30 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 81 1 76 16 81 1 77 16 81 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 81 1 94 3 205 1 95 16 81 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160 3 49 2 177] 
#[0 8 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 11 69 0 149 1 97 0 153 8 122 0 156 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 89 1 76 16 89 1 77 16 89 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 89 1 94 3 205 1 95 16 89 1 114 16 89 1 117 16 89 1 118 3 221 1 153 3 221 1 154 3 9 1 215 16 89 1 243 16 89 2 75 16 97 2 76 16 101 2 77 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 8 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 10 253 0 15 0 129 0 16 0 133 0 17 4 226 0 38 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 11 1 0 220 11 5 0 221 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 16 105 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 117 1 76 10 117 1 77 10 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 117 1 94 3 205 1 95 10 117 1 114 10 117 1 117 10 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 8 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 109 1 76 16 109 1 77 16 109 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 109 1 94 3 205 1 95 16 109 1 114 16 109 1 117 16 109 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 8 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 8 138 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 16 113 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 117 1 76 16 117 1 77 16 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 117 1 94 3 205 1 95 16 117 1 114 16 117 1 117 16 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 16 121 0 9] 
#[0 8 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 16 125 0 8 16 129 0 145 16 133 1 197 16 137 1 199] 
#[1 1 93 0 149 16 141 1 123] 
#[1 8 150 0 1 8 150 0 5 8 150 0 8 8 150 0 10 8 150 0 12 8 150 0 13 8 150 0 16 8 150 0 17 8 150 0 25 8 150 0 46 8 150 0 47 8 150 0 48 8 150 0 49 8 150 0 50 8 150 0 52 8 150 0 53 8 150 0 55 8 150 0 56 8 150 0 58 8 150 0 59 8 150 0 60 8 150 0 61 8 150 0 62 8 150 0 64 8 150 0 65 8 150 0 66 8 150 0 67 8 150 0 73 11 121 0 75 8 150 0 76 8 150 0 77 8 150 0 78 8 150 0 79 8 150 0 82 8 150 0 84 8 150 0 87 8 150 0 94 8 150 0 95 8 150 0 97 8 150 0 99 8 150 0 100 8 150 0 114 8 150 0 116 8 150 0 117 8 150 0 121 8 150 0 122 8 150 0 123 8 150 0 124 8 150 0 125 8 150 0 127 8 150 0 128 8 150 0 129 8 150 0 130 8 150 0 131 8 150 0 133 8 150 0 134 8 150 0 135 8 150 0 136 8 150 0 138 8 150 0 139 8 150 0 140 8 150 0 141 8 150 0 143 8 150 0 147 8 150 0 148 8 150 0 149 8 150 0 153 8 150 0 156 8 150 0 158 8 150 0 159 8 150 0 160 8 150 0 161 8 150 0 162 8 150 0 163 8 150 0 166 8 150 0 167 8 150 0 170 8 150 0 171 16 145 1 201 8 150 2 178] 
#[1 8 154 0 1 8 154 0 5 8 154 0 8 8 154 0 10 8 154 0 12 8 154 0 13 8 154 0 16 8 154 0 17 8 154 0 25 8 154 0 46 8 154 0 47 8 154 0 48 8 154 0 49 8 154 0 50 8 154 0 52 8 154 0 53 11 117 0 54 8 154 0 55 8 154 0 56 8 154 0 58 8 154 0 59 8 154 0 60 8 154 0 61 8 154 0 62 8 154 0 64 8 154 0 65 8 154 0 66 8 154 0 67 8 154 0 73 8 154 0 75 8 154 0 76 8 154 0 77 8 154 0 78 8 154 0 79 8 154 0 82 8 154 0 84 8 154 0 87 8 154 0 94 8 154 0 95 8 154 0 97 8 154 0 99 8 154 0 100 8 154 0 114 8 154 0 116 8 154 0 117 8 154 0 121 8 154 0 122 8 154 0 123 8 154 0 124 8 154 0 125 8 154 0 127 8 154 0 128 8 154 0 129 8 154 0 130 8 154 0 131 8 154 0 133 8 154 0 134 8 154 0 135 8 154 0 136 8 154 0 138 8 154 0 139 8 154 0 140 8 154 0 141 8 154 0 143 8 154 0 147 8 154 0 148 8 154 0 149 8 154 0 153 8 154 0 156 8 154 0 158 8 154 0 159 8 154 0 160 8 154 0 161 8 154 0 162 8 154 0 163 8 154 0 166 8 154 0 167 8 154 0 170 8 154 0 171 16 149 1 195 8 154 2 178] 
#[1 16 153 0 54 16 157 1 195 16 161 1 200] 
#[0 8 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 8 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 3 247 0 9 1 22 0 10 3 251 0 20 16 165 0 24 16 169 0 26 1 22 0 35 0 107 0 37 10 129 0 223 10 129 0 253 16 173 1 40 16 177 1 41] 
#[0 16 181 0 9] 
#[1 16 185 0 9 16 189 0 20] 
#[1 16 193 0 9 6 173 0 10 7 137 2 154] 
#[0 16 197 0 9] 
#[1 3 255 0 158 6 165 1 145 6 169 1 148] 
#[0 8 170 0 9] 
#[0 8 174 0 9] 
#[1 4 3 0 158 7 125 1 143] 
#[0 16 201 0 9] 
#[0 16 205 0 9] 
#[0 8 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 16 209 0 25] 
#[0 8 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 8 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 102 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 16 213 0 223 16 213 0 253 1 22 2 178] 
#[0 8 194 0 15 0 154] 
#[1 16 217 0 15 16 221 0 154] 
#[0 8 198 0 15 0 154] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 102 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 16 225 0 223 16 225 0 253 1 22 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 16 229 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 237 1 76 16 237 1 77 16 237 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 237 1 94 3 205 1 95 16 237 1 114 16 237 1 117 16 237 1 118 3 221 1 153 3 221 1 154 16 237 1 157 3 9 1 215 16 237 2 75 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 16 237 2 172 3 49 2 177] 
#[1 8 202 0 9 16 249 0 15 8 202 0 25 16 253 1 146] 
#[0 8 206 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 8 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 17 1 0 23] 
#[0 17 5 0 9] 
#[1 8 214 0 9 17 9 0 15] 
#[0 8 218 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 17 13 0 86 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 17 17 0 104 17 21 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 17 25 0 239 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 29 1 76 17 29 1 77 17 29 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 29 1 94 3 205 1 95 17 29 1 114 17 29 1 117 17 29 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 8 222 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 17 33 0 223 17 33 0 253 1 22 2 178] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 17 37 0 223 17 37 0 253 1 22 2 178] 
#[0 17 41 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 17 45 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 117 1 76 10 117 1 77 10 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 117 1 94 3 205 1 95 10 117 1 114 10 117 1 117 10 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 15 197 0 15 17 49 0 38] 
#[1 17 53 0 164 17 57 0 165] 
#[0 8 226 0 164 0 165] 
#[1 17 61 0 15 8 230 0 23 8 234 0 164 8 234 0 165 8 234 0 168 8 234 0 169 17 65 0 247 17 69 0 248] 
#[0 8 238 0 168 0 169] 
#[1 17 73 0 168 17 77 0 169] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 17 81 0 223 17 81 0 253 1 22 2 178] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 17 85 0 223 17 85 0 253 1 22 2 178] 
#[0 8 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 8 246 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 17 89 0 9] 
#[0 17 93 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 17 97 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 97 1 76 17 97 1 77 17 97 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 97 1 94 3 205 1 95 17 97 1 114 17 97 1 117 17 97 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 8 250 0 158] 
#[1 12 97 0 158 17 101 1 134] 
#[0 17 105 0 25] 
#[0 17 109 0 25] 
#[1 17 113 0 8 17 117 0 26 17 121 1 213] 
#[0 8 254 0 32 0 149] 
#[0 17 125 0 30] 
#[1 9 2 0 9 9 2 0 15 9 2 0 25 17 129 1 152] 
#[0 9 6 0 9 0 25] 
#[0 9 10 0 9 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 133 1 76 17 133 1 77 17 133 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 133 1 94 3 205 1 95 17 133 1 114 17 133 1 117 17 133 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 9 14 0 32 0 149] 
#[1 2 214 0 8 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 165 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 165 0 104 7 165 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 2 214 0 158 17 137 1 85 7 165 1 86 7 165 1 87] 
#[0 17 141 0 158] 
#[0 9 18 0 32] 
#[0 17 145 0 158 1 91] 
#[0 5 226 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 13 9 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 93 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 2 69 1 54 17 149 1 58 2 77 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 149 1 76 17 149 1 77 17 149 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 149 1 92 17 149 1 93 17 149 1 94 3 205 1 95 17 149 1 114 17 149 1 117 17 149 1 118 17 149 1 123 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 17 153 0 86] 
#[0 9 22 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 26 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 30 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 9 34 0 1 9 34 0 2 7 213 0 3 9 34 0 5 9 34 0 6 9 34 0 8 9 34 0 9 4 7 0 10 9 34 0 12 9 34 0 13 9 34 0 15 9 34 0 16 9 34 0 17 7 221 0 21 9 34 0 23 9 34 0 25 9 34 0 26 9 34 0 27 9 34 0 29 9 34 0 31 9 34 0 33 9 34 0 35 9 34 0 36 9 34 0 38 9 34 0 39 9 34 0 44 9 34 0 45 9 34 0 46 9 34 0 47 9 34 0 48 9 34 0 49 9 34 0 50 9 34 0 51 9 34 0 52 9 34 0 53 9 34 0 55 9 34 0 56 9 34 0 58 9 34 0 59 9 34 0 60 9 34 0 61 9 34 0 62 9 34 0 63 9 34 0 64 9 34 0 65 9 34 0 66 9 34 0 67 9 34 0 69 9 34 0 73 9 34 0 76 9 34 0 77 9 34 0 78 9 34 0 79 9 34 0 80 9 34 0 82 9 34 0 83 9 34 0 84 9 34 0 87 9 34 0 90 9 34 0 91 9 34 0 92 9 34 0 93 9 34 0 94 9 34 0 95 9 34 0 97 9 34 0 99 9 34 0 100 9 34 0 101 9 34 0 103 9 34 0 114 9 34 0 116 9 34 0 117 9 34 0 119 9 34 0 121 9 34 0 122 9 34 0 123 9 34 0 124 9 34 0 125 9 34 0 127 9 34 0 128 9 34 0 129 9 34 0 130 9 34 0 131 9 34 0 133 9 34 0 134 9 34 0 135 9 34 0 136 9 34 0 138 9 34 0 139 9 34 0 140 9 34 0 141 9 34 0 143 9 34 0 145 9 34 0 146 9 34 0 147 9 34 0 148 9 34 0 149 9 34 0 150 9 34 0 152 9 34 0 153 9 34 0 154 9 34 0 155 9 34 0 156 9 34 0 158 9 34 0 159 9 34 0 160 9 34 0 161 9 34 0 162 9 34 0 163 9 34 0 164 9 34 0 165 9 34 0 166 9 34 0 167 9 34 0 168 9 34 0 169 9 34 0 170 9 34 0 171 9 34 2 178] 
#[1 9 38 0 1 9 38 0 2 7 213 0 3 9 38 0 5 9 38 0 6 9 38 0 8 9 38 0 9 4 11 0 10 9 38 0 12 9 38 0 13 9 38 0 15 9 38 0 16 9 38 0 17 7 221 0 21 9 38 0 23 9 38 0 25 9 38 0 26 9 38 0 27 9 38 0 29 9 38 0 31 9 38 0 33 9 38 0 35 9 38 0 36 9 38 0 38 9 38 0 39 9 38 0 44 9 38 0 45 9 38 0 46 9 38 0 47 9 38 0 48 9 38 0 49 9 38 0 50 9 38 0 51 9 38 0 52 9 38 0 53 9 38 0 55 9 38 0 56 9 38 0 58 9 38 0 59 9 38 0 60 9 38 0 61 9 38 0 62 9 38 0 63 9 38 0 64 9 38 0 65 9 38 0 66 9 38 0 67 9 38 0 69 9 38 0 73 9 38 0 76 9 38 0 77 9 38 0 78 9 38 0 79 9 38 0 80 9 38 0 82 9 38 0 83 9 38 0 84 9 38 0 87 9 38 0 90 9 38 0 91 9 38 0 92 9 38 0 93 9 38 0 94 9 38 0 95 9 38 0 97 9 38 0 99 9 38 0 100 9 38 0 101 9 38 0 103 9 38 0 114 9 38 0 116 9 38 0 117 9 38 0 119 9 38 0 121 9 38 0 122 9 38 0 123 9 38 0 124 9 38 0 125 9 38 0 127 9 38 0 128 9 38 0 129 9 38 0 130 9 38 0 131 9 38 0 133 9 38 0 134 9 38 0 135 9 38 0 136 9 38 0 138 9 38 0 139 9 38 0 140 9 38 0 141 9 38 0 143 9 38 0 145 9 38 0 146 9 38 0 147 9 38 0 148 9 38 0 149 9 38 0 150 9 38 0 152 9 38 0 153 9 38 0 154 9 38 0 155 9 38 0 156 9 38 0 158 9 38 0 159 9 38 0 160 9 38 0 161 9 38 0 162 9 38 0 163 9 38 0 164 9 38 0 165 9 38 0 166 9 38 0 167 9 38 0 168 9 38 0 169 9 38 0 170 9 38 0 171 9 38 2 178] 
#[1 9 42 0 1 9 42 0 2 9 42 0 5 9 42 0 6 9 42 0 8 9 42 0 9 9 42 0 10 4 15 0 12 9 42 0 13 9 42 0 15 4 19 0 16 9 42 0 17 9 42 0 23 9 42 0 25 9 42 0 26 9 42 0 27 9 42 0 29 9 42 0 31 9 42 0 33 9 42 0 35 9 42 0 36 9 42 0 38 9 42 0 39 9 42 0 44 9 42 0 45 9 42 0 46 9 42 0 47 9 42 0 48 9 42 0 49 9 42 0 50 9 42 0 51 9 42 0 52 9 42 0 53 9 42 0 55 9 42 0 56 9 42 0 58 9 42 0 59 9 42 0 60 9 42 0 61 9 42 0 62 9 42 0 63 9 42 0 64 9 42 0 65 9 42 0 66 9 42 0 67 9 42 0 69 9 42 0 73 9 42 0 76 9 42 0 77 9 42 0 78 9 42 0 79 9 42 0 80 9 42 0 82 9 42 0 83 9 42 0 84 9 42 0 87 9 42 0 90 9 42 0 91 9 42 0 92 9 42 0 93 9 42 0 94 9 42 0 95 9 42 0 97 9 42 0 99 9 42 0 100 9 42 0 101 9 42 0 103 9 42 0 114 9 42 0 116 9 42 0 117 9 42 0 119 9 42 0 121 9 42 0 122 9 42 0 123 9 42 0 124 9 42 0 125 9 42 0 127 9 42 0 128 9 42 0 129 9 42 0 130 9 42 0 131 9 42 0 133 9 42 0 134 9 42 0 135 9 42 0 136 9 42 0 138 9 42 0 139 9 42 0 140 9 42 0 141 9 42 0 143 9 42 0 145 9 42 0 146 9 42 0 147 9 42 0 148 9 42 0 149 9 42 0 150 9 42 0 152 9 42 0 153 9 42 0 154 9 42 0 155 9 42 0 156 9 42 0 158 9 42 0 159 9 42 0 160 9 42 0 161 9 42 0 162 9 42 0 163 9 42 0 164 9 42 0 165 9 42 0 166 9 42 0 167 9 42 0 168 9 42 0 169 9 42 0 170 9 42 0 171 9 42 2 178] 
#[1 9 46 0 1 9 46 0 2 9 46 0 5 9 46 0 6 9 46 0 8 9 46 0 9 9 46 0 10 4 23 0 12 9 46 0 13 9 46 0 15 4 27 0 16 9 46 0 17 9 46 0 23 9 46 0 25 9 46 0 26 9 46 0 27 9 46 0 29 9 46 0 31 9 46 0 33 9 46 0 35 9 46 0 36 9 46 0 38 9 46 0 39 9 46 0 44 9 46 0 45 9 46 0 46 9 46 0 47 9 46 0 48 9 46 0 49 9 46 0 50 9 46 0 51 9 46 0 52 9 46 0 53 9 46 0 55 9 46 0 56 9 46 0 58 9 46 0 59 9 46 0 60 9 46 0 61 9 46 0 62 9 46 0 63 9 46 0 64 9 46 0 65 9 46 0 66 9 46 0 67 9 46 0 69 9 46 0 73 9 46 0 76 9 46 0 77 9 46 0 78 9 46 0 79 9 46 0 80 9 46 0 82 9 46 0 83 9 46 0 84 9 46 0 87 9 46 0 90 9 46 0 91 9 46 0 92 9 46 0 93 9 46 0 94 9 46 0 95 9 46 0 97 9 46 0 99 9 46 0 100 9 46 0 101 9 46 0 103 9 46 0 114 9 46 0 116 9 46 0 117 9 46 0 119 9 46 0 121 9 46 0 122 9 46 0 123 9 46 0 124 9 46 0 125 9 46 0 127 9 46 0 128 9 46 0 129 9 46 0 130 9 46 0 131 9 46 0 133 9 46 0 134 9 46 0 135 9 46 0 136 9 46 0 138 9 46 0 139 9 46 0 140 9 46 0 141 9 46 0 143 9 46 0 145 9 46 0 146 9 46 0 147 9 46 0 148 9 46 0 149 9 46 0 150 9 46 0 152 9 46 0 153 9 46 0 154 9 46 0 155 9 46 0 156 9 46 0 158 9 46 0 159 9 46 0 160 9 46 0 161 9 46 0 162 9 46 0 163 9 46 0 164 9 46 0 165 9 46 0 166 9 46 0 167 9 46 0 168 9 46 0 169 9 46 0 170 9 46 0 171 9 46 2 178] 
#[1 9 50 0 1 9 50 0 2 9 50 0 5 9 50 0 6 9 50 0 8 9 50 0 9 9 50 0 10 9 50 0 12 9 50 0 13 9 50 0 15 9 50 0 16 9 50 0 17 9 50 0 23 9 50 0 25 9 50 0 26 7 233 0 27 9 50 0 29 9 50 0 31 9 50 0 33 9 50 0 35 9 50 0 36 9 50 0 38 9 50 0 39 9 50 0 44 9 50 0 45 9 50 0 46 9 50 0 47 9 50 0 48 9 50 0 49 9 50 0 50 9 50 0 51 9 50 0 52 9 50 0 53 9 50 0 55 9 50 0 56 9 50 0 58 9 50 0 59 9 50 0 60 9 50 0 61 9 50 0 62 9 50 0 63 9 50 0 64 9 50 0 65 9 50 0 66 9 50 0 67 9 50 0 69 9 50 0 73 9 50 0 76 9 50 0 77 9 50 0 78 9 50 0 79 9 50 0 80 9 50 0 82 9 50 0 83 9 50 0 84 9 50 0 87 9 50 0 90 9 50 0 91 9 50 0 92 9 50 0 93 9 50 0 94 9 50 0 95 9 50 0 97 9 50 0 99 9 50 0 100 9 50 0 101 9 50 0 103 9 50 0 114 9 50 0 116 9 50 0 117 9 50 0 119 9 50 0 121 9 50 0 122 9 50 0 123 9 50 0 124 9 50 0 125 9 50 0 127 9 50 0 128 9 50 0 129 9 50 0 130 9 50 0 131 9 50 0 133 9 50 0 134 9 50 0 135 9 50 0 136 9 50 0 138 9 50 0 139 9 50 0 140 9 50 0 141 9 50 0 143 9 50 0 145 9 50 0 146 9 50 0 147 9 50 0 148 9 50 0 149 9 50 0 150 9 50 0 152 9 50 0 153 9 50 0 154 7 237 0 155 9 50 0 156 9 50 0 158 9 50 0 159 9 50 0 160 9 50 0 161 9 50 0 162 9 50 0 163 9 50 0 164 9 50 0 165 9 50 0 166 9 50 0 167 9 50 0 168 9 50 0 169 9 50 0 170 9 50 0 171 9 50 2 178] 
#[1 9 54 0 1 9 54 0 2 9 54 0 5 9 54 0 6 9 54 0 8 9 54 0 9 9 54 0 10 9 54 0 12 9 54 0 13 9 54 0 15 9 54 0 16 9 54 0 17 9 54 0 23 9 54 0 25 9 54 0 26 7 233 0 27 9 54 0 29 9 54 0 31 9 54 0 33 9 54 0 35 9 54 0 36 9 54 0 38 9 54 0 39 9 54 0 44 9 54 0 45 9 54 0 46 9 54 0 47 9 54 0 48 9 54 0 49 9 54 0 50 9 54 0 51 9 54 0 52 9 54 0 53 9 54 0 55 9 54 0 56 9 54 0 58 9 54 0 59 9 54 0 60 9 54 0 61 9 54 0 62 9 54 0 63 9 54 0 64 9 54 0 65 9 54 0 66 9 54 0 67 9 54 0 69 9 54 0 73 9 54 0 76 9 54 0 77 9 54 0 78 9 54 0 79 9 54 0 80 9 54 0 82 9 54 0 83 9 54 0 84 9 54 0 87 9 54 0 90 9 54 0 91 9 54 0 92 9 54 0 93 9 54 0 94 9 54 0 95 9 54 0 97 9 54 0 99 9 54 0 100 9 54 0 101 9 54 0 103 9 54 0 114 9 54 0 116 9 54 0 117 9 54 0 119 9 54 0 121 9 54 0 122 9 54 0 123 9 54 0 124 9 54 0 125 9 54 0 127 9 54 0 128 9 54 0 129 9 54 0 130 9 54 0 131 9 54 0 133 9 54 0 134 9 54 0 135 9 54 0 136 9 54 0 138 9 54 0 139 9 54 0 140 9 54 0 141 9 54 0 143 9 54 0 145 9 54 0 146 9 54 0 147 9 54 0 148 9 54 0 149 9 54 0 150 9 54 0 152 9 54 0 153 9 54 0 154 7 237 0 155 9 54 0 156 9 54 0 158 9 54 0 159 9 54 0 160 9 54 0 161 9 54 0 162 9 54 0 163 9 54 0 164 9 54 0 165 9 54 0 166 9 54 0 167 9 54 0 168 9 54 0 169 9 54 0 170 9 54 0 171 9 54 2 178] 
#[1 9 58 0 1 9 58 0 2 9 58 0 5 9 58 0 6 9 58 0 8 9 58 0 9 9 58 0 10 9 58 0 12 9 58 0 13 9 58 0 15 9 58 0 16 9 58 0 17 9 58 0 23 9 58 0 25 9 58 0 26 7 233 0 27 9 58 0 29 9 58 0 31 9 58 0 33 9 58 0 35 9 58 0 36 9 58 0 38 9 58 0 39 9 58 0 44 9 58 0 45 9 58 0 46 9 58 0 47 9 58 0 48 9 58 0 49 9 58 0 50 9 58 0 51 9 58 0 52 9 58 0 53 9 58 0 55 9 58 0 56 9 58 0 58 9 58 0 59 9 58 0 60 9 58 0 61 9 58 0 62 9 58 0 63 9 58 0 64 9 58 0 65 9 58 0 66 9 58 0 67 9 58 0 69 9 58 0 73 9 58 0 76 9 58 0 77 9 58 0 78 9 58 0 79 9 58 0 80 9 58 0 82 9 58 0 83 9 58 0 84 9 58 0 87 9 58 0 90 9 58 0 91 9 58 0 92 9 58 0 93 9 58 0 94 9 58 0 95 9 58 0 97 9 58 0 99 9 58 0 100 9 58 0 101 9 58 0 103 9 58 0 114 9 58 0 116 9 58 0 117 9 58 0 119 9 58 0 121 9 58 0 122 9 58 0 123 9 58 0 124 9 58 0 125 9 58 0 127 9 58 0 128 9 58 0 129 9 58 0 130 9 58 0 131 9 58 0 133 9 58 0 134 9 58 0 135 9 58 0 136 9 58 0 138 9 58 0 139 9 58 0 140 9 58 0 141 9 58 0 143 9 58 0 145 9 58 0 146 9 58 0 147 9 58 0 148 9 58 0 149 9 58 0 150 9 58 0 152 9 58 0 153 9 58 0 154 7 237 0 155 9 58 0 156 9 58 0 158 9 58 0 159 9 58 0 160 9 58 0 161 9 58 0 162 9 58 0 163 9 58 0 164 9 58 0 165 9 58 0 166 9 58 0 167 9 58 0 168 9 58 0 169 9 58 0 170 9 58 0 171 9 58 2 178] 
#[0 9 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 9 66 0 1 9 66 0 2 9 66 0 5 9 66 0 6 9 66 0 8 9 66 0 9 9 66 0 10 9 66 0 12 9 66 0 13 9 66 0 15 9 66 0 16 9 66 0 17 9 66 0 23 9 66 0 25 9 66 0 26 9 66 0 29 9 66 0 31 9 66 0 33 9 66 0 35 9 66 0 36 9 66 0 38 9 66 0 39 9 66 0 44 9 66 0 45 9 66 0 46 9 66 0 47 9 66 0 48 9 66 0 49 9 66 0 50 9 66 0 51 9 66 0 52 9 66 0 53 9 66 0 55 9 66 0 56 9 66 0 58 9 66 0 59 9 66 0 60 9 66 0 61 9 66 0 62 9 66 0 63 9 66 0 64 9 66 0 65 9 66 0 66 9 66 0 67 9 66 0 69 9 66 0 73 9 66 0 76 9 66 0 77 9 66 0 78 9 66 0 79 9 66 0 80 9 66 0 82 9 66 0 83 9 66 0 84 9 66 0 87 9 66 0 90 9 66 0 91 9 66 0 92 9 66 0 93 9 66 0 94 9 66 0 95 9 66 0 97 9 66 0 99 9 66 0 100 9 66 0 101 9 66 0 103 9 66 0 114 9 66 0 116 9 66 0 117 9 66 0 119 9 66 0 121 9 66 0 122 9 66 0 123 9 66 0 124 9 66 0 125 9 66 0 127 9 66 0 128 9 66 0 129 9 66 0 130 9 66 0 131 9 66 0 133 9 66 0 134 9 66 0 135 9 66 0 136 9 66 0 138 9 66 0 139 9 66 0 140 9 66 0 141 9 66 0 143 9 66 0 145 9 66 0 146 9 66 0 147 9 66 0 148 9 66 0 149 9 66 0 150 9 66 0 152 9 66 0 153 9 66 0 154 9 66 0 156 4 31 0 158 9 66 0 159 9 66 0 160 9 66 0 161 9 66 0 162 9 66 0 163 9 66 0 164 9 66 0 165 9 66 0 166 9 66 0 167 9 66 0 168 9 66 0 169 9 66 0 170 9 66 0 171 17 161 0 232 17 161 0 233 9 66 2 178] 
#[0 9 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 4 35 0 158 17 169 0 229 17 169 0 232 17 169 0 233] 
#[1 9 90 0 1 9 90 0 2 9 90 0 5 9 90 0 6 9 90 0 8 9 90 0 9 9 90 0 10 9 90 0 12 9 90 0 13 9 90 0 15 9 90 0 16 9 90 0 17 9 90 0 23 9 90 0 25 9 90 0 26 7 233 0 27 9 90 0 29 9 90 0 31 9 90 0 33 9 90 0 35 9 90 0 36 9 90 0 38 9 90 0 39 9 90 0 44 9 90 0 45 9 90 0 46 9 90 0 47 9 90 0 48 9 90 0 49 9 90 0 50 9 90 0 51 9 90 0 52 9 90 0 53 9 90 0 55 9 90 0 56 9 90 0 58 9 90 0 59 9 90 0 60 9 90 0 61 9 90 0 62 9 90 0 63 9 90 0 64 9 90 0 65 9 90 0 66 9 90 0 67 9 90 0 69 9 90 0 73 9 90 0 76 9 90 0 77 9 90 0 78 9 90 0 79 9 90 0 80 9 90 0 82 9 90 0 83 9 90 0 84 9 90 0 87 9 90 0 90 9 90 0 91 9 90 0 92 9 90 0 93 9 90 0 94 9 90 0 95 9 90 0 97 9 90 0 99 9 90 0 100 9 90 0 101 9 90 0 103 9 90 0 114 9 90 0 116 9 90 0 117 9 90 0 119 9 90 0 121 9 90 0 122 9 90 0 123 9 90 0 124 9 90 0 125 9 90 0 127 9 90 0 128 9 90 0 129 9 90 0 130 9 90 0 131 9 90 0 133 9 90 0 134 9 90 0 135 9 90 0 136 9 90 0 138 9 90 0 139 9 90 0 140 9 90 0 141 9 90 0 143 9 90 0 145 9 90 0 146 9 90 0 147 9 90 0 148 9 90 0 149 9 90 0 150 9 90 0 152 9 90 0 153 9 90 0 154 7 237 0 155 9 90 0 156 9 90 0 158 9 90 0 159 9 90 0 160 9 90 0 161 9 90 0 162 9 90 0 163 9 90 0 164 9 90 0 165 9 90 0 166 9 90 0 167 9 90 0 168 9 90 0 169 9 90 0 170 9 90 0 171 9 90 2 178] 
#[1 9 94 0 1 9 94 0 2 9 94 0 5 9 94 0 6 9 94 0 8 9 94 0 9 9 94 0 10 9 94 0 12 9 94 0 13 9 94 0 15 9 94 0 16 9 94 0 17 9 94 0 23 9 94 0 25 4 39 0 26 4 43 0 29 9 94 0 31 4 47 0 33 9 94 0 35 9 94 0 36 9 94 0 38 9 94 0 39 4 51 0 44 9 94 0 45 9 94 0 46 9 94 0 47 9 94 0 48 9 94 0 49 9 94 0 50 9 94 0 51 9 94 0 52 9 94 0 53 9 94 0 55 9 94 0 56 9 94 0 58 9 94 0 59 9 94 0 60 9 94 0 61 9 94 0 62 9 94 0 63 9 94 0 64 9 94 0 65 9 94 0 66 9 94 0 67 9 94 0 69 9 94 0 73 9 94 0 76 9 94 0 77 9 94 0 78 9 94 0 79 9 94 0 80 9 94 0 82 9 94 0 83 9 94 0 84 9 94 0 87 9 94 0 90 4 55 0 91 9 94 0 92 9 94 0 93 9 94 0 94 9 94 0 95 9 94 0 97 9 94 0 99 9 94 0 100 9 94 0 101 9 94 0 103 9 94 0 114 9 94 0 116 9 94 0 117 9 94 0 119 9 94 0 121 9 94 0 122 9 94 0 123 9 94 0 124 9 94 0 125 9 94 0 127 9 94 0 128 9 94 0 129 9 94 0 130 9 94 0 131 9 94 0 133 9 94 0 134 9 94 0 135 9 94 0 136 9 94 0 138 9 94 0 139 9 94 0 140 9 94 0 141 9 94 0 143 9 94 0 145 9 94 0 146 9 94 0 147 9 94 0 148 9 94 0 149 9 94 0 150 9 94 0 152 9 94 0 153 4 59 0 154 9 94 0 156 9 94 0 158 9 94 0 159 9 94 0 160 9 94 0 161 9 94 0 162 9 94 0 163 9 94 0 164 9 94 0 165 9 94 0 166 9 94 0 167 9 94 0 168 9 94 0 169 9 94 0 170 9 94 0 171 9 94 2 178] 
#[1 9 98 0 1 9 98 0 2 9 98 0 5 9 98 0 6 9 98 0 8 9 98 0 9 9 98 0 10 9 98 0 12 9 98 0 13 9 98 0 15 9 98 0 16 9 98 0 17 9 98 0 23 9 98 0 25 4 63 0 26 4 67 0 29 9 98 0 31 4 71 0 33 9 98 0 35 9 98 0 36 9 98 0 38 9 98 0 39 4 75 0 44 9 98 0 45 9 98 0 46 9 98 0 47 9 98 0 48 9 98 0 49 9 98 0 50 9 98 0 51 9 98 0 52 9 98 0 53 9 98 0 55 9 98 0 56 9 98 0 58 9 98 0 59 9 98 0 60 9 98 0 61 9 98 0 62 9 98 0 63 9 98 0 64 9 98 0 65 9 98 0 66 9 98 0 67 9 98 0 69 9 98 0 73 9 98 0 76 9 98 0 77 9 98 0 78 9 98 0 79 9 98 0 80 9 98 0 82 9 98 0 83 9 98 0 84 9 98 0 87 9 98 0 90 4 79 0 91 9 98 0 92 9 98 0 93 9 98 0 94 9 98 0 95 9 98 0 97 9 98 0 99 9 98 0 100 9 98 0 101 9 98 0 103 9 98 0 114 9 98 0 116 9 98 0 117 9 98 0 119 9 98 0 121 9 98 0 122 9 98 0 123 9 98 0 124 9 98 0 125 9 98 0 127 9 98 0 128 9 98 0 129 9 98 0 130 9 98 0 131 9 98 0 133 9 98 0 134 9 98 0 135 9 98 0 136 9 98 0 138 9 98 0 139 9 98 0 140 9 98 0 141 9 98 0 143 9 98 0 145 9 98 0 146 9 98 0 147 9 98 0 148 9 98 0 149 9 98 0 150 9 98 0 152 9 98 0 153 4 83 0 154 9 98 0 156 9 98 0 158 9 98 0 159 9 98 0 160 9 98 0 161 9 98 0 162 9 98 0 163 9 98 0 164 9 98 0 165 9 98 0 166 9 98 0 167 9 98 0 168 9 98 0 169 9 98 0 170 9 98 0 171 9 98 2 178] 
#[1 9 102 0 1 4 87 0 2 9 102 0 5 9 102 0 6 9 102 0 8 9 102 0 9 9 102 0 10 9 102 0 12 9 102 0 13 9 102 0 15 9 102 0 16 9 102 0 17 9 102 0 23 9 102 0 25 9 102 0 26 9 102 0 29 4 91 0 31 9 102 0 33 9 102 0 35 9 102 0 36 9 102 0 38 9 102 0 39 9 102 0 44 9 102 0 45 9 102 0 46 9 102 0 47 9 102 0 48 9 102 0 49 9 102 0 50 9 102 0 51 9 102 0 52 9 102 0 53 9 102 0 55 9 102 0 56 9 102 0 58 9 102 0 59 9 102 0 60 9 102 0 61 9 102 0 62 9 102 0 63 9 102 0 64 9 102 0 65 9 102 0 66 9 102 0 67 9 102 0 69 9 102 0 73 9 102 0 76 9 102 0 77 9 102 0 78 9 102 0 79 9 102 0 80 9 102 0 82 9 102 0 83 9 102 0 84 9 102 0 87 9 102 0 90 9 102 0 91 9 102 0 92 9 102 0 93 9 102 0 94 9 102 0 95 9 102 0 97 9 102 0 99 9 102 0 100 9 102 0 101 9 102 0 103 9 102 0 114 9 102 0 116 9 102 0 117 9 102 0 119 9 102 0 121 9 102 0 122 9 102 0 123 9 102 0 124 9 102 0 125 9 102 0 127 9 102 0 128 9 102 0 129 9 102 0 130 9 102 0 131 9 102 0 133 9 102 0 134 9 102 0 135 9 102 0 136 9 102 0 138 9 102 0 139 9 102 0 140 9 102 0 141 9 102 0 143 9 102 0 145 9 102 0 146 9 102 0 147 9 102 0 148 9 102 0 149 9 102 0 150 9 102 0 152 9 102 0 153 9 102 0 154 9 102 0 156 9 102 0 158 9 102 0 159 9 102 0 160 9 102 0 161 9 102 0 162 9 102 0 163 9 102 0 164 9 102 0 165 9 102 0 166 9 102 0 167 9 102 0 168 9 102 0 169 9 102 0 170 9 102 0 171 9 102 2 178] 
#[1 9 106 0 1 9 106 0 2 4 95 0 5 9 106 0 6 9 106 0 8 9 106 0 9 9 106 0 10 9 106 0 12 9 106 0 13 9 106 0 15 9 106 0 16 9 106 0 17 9 106 0 23 9 106 0 25 9 106 0 26 9 106 0 29 9 106 0 31 9 106 0 33 9 106 0 35 9 106 0 36 9 106 0 38 9 106 0 39 9 106 0 44 9 106 0 45 9 106 0 46 9 106 0 47 9 106 0 48 9 106 0 49 9 106 0 50 9 106 0 51 9 106 0 52 9 106 0 53 9 106 0 55 9 106 0 56 9 106 0 58 9 106 0 59 9 106 0 60 9 106 0 61 9 106 0 62 9 106 0 63 9 106 0 64 9 106 0 65 9 106 0 66 9 106 0 67 9 106 0 69 9 106 0 73 9 106 0 76 9 106 0 77 9 106 0 78 9 106 0 79 9 106 0 80 9 106 0 82 9 106 0 83 9 106 0 84 9 106 0 87 9 106 0 90 9 106 0 91 9 106 0 92 9 106 0 93 9 106 0 94 9 106 0 95 9 106 0 97 9 106 0 99 9 106 0 100 9 106 0 101 9 106 0 103 9 106 0 114 9 106 0 116 9 106 0 117 9 106 0 119 9 106 0 121 9 106 0 122 9 106 0 123 9 106 0 124 9 106 0 125 9 106 0 127 9 106 0 128 9 106 0 129 9 106 0 130 9 106 0 131 9 106 0 133 9 106 0 134 9 106 0 135 9 106 0 136 9 106 0 138 9 106 0 139 9 106 0 140 9 106 0 141 9 106 0 143 9 106 0 145 9 106 0 146 9 106 0 147 9 106 0 148 9 106 0 149 9 106 0 150 9 106 0 152 9 106 0 153 9 106 0 154 9 106 0 156 9 106 0 158 9 106 0 159 9 106 0 160 9 106 0 161 9 106 0 162 9 106 0 163 9 106 0 164 9 106 0 165 9 106 0 166 9 106 0 167 9 106 0 168 9 106 0 169 9 106 0 170 9 106 0 171 9 106 2 178] 
#[1 9 110 0 1 9 110 0 2 9 110 0 5 9 110 0 6 9 110 0 8 9 110 0 9 9 110 0 10 9 110 0 12 9 110 0 13 9 110 0 15 9 110 0 16 9 110 0 17 9 110 0 23 9 110 0 25 9 110 0 26 9 110 0 29 9 110 0 31 9 110 0 33 9 110 0 35 9 110 0 36 9 110 0 38 4 99 0 39 9 110 0 44 9 110 0 45 9 110 0 46 9 110 0 47 9 110 0 48 9 110 0 49 9 110 0 50 9 110 0 51 9 110 0 52 9 110 0 53 9 110 0 55 9 110 0 56 9 110 0 58 9 110 0 59 9 110 0 60 9 110 0 61 9 110 0 62 9 110 0 63 9 110 0 64 9 110 0 65 9 110 0 66 9 110 0 67 9 110 0 69 9 110 0 73 9 110 0 76 9 110 0 77 9 110 0 78 9 110 0 79 9 110 0 80 9 110 0 82 9 110 0 83 9 110 0 84 9 110 0 87 9 110 0 90 9 110 0 91 9 110 0 92 9 110 0 93 9 110 0 94 9 110 0 95 9 110 0 97 9 110 0 99 9 110 0 100 9 110 0 101 9 110 0 103 9 110 0 114 9 110 0 116 9 110 0 117 9 110 0 119 9 110 0 121 9 110 0 122 9 110 0 123 9 110 0 124 9 110 0 125 9 110 0 127 9 110 0 128 9 110 0 129 9 110 0 130 9 110 0 131 9 110 0 133 9 110 0 134 9 110 0 135 9 110 0 136 9 110 0 138 9 110 0 139 9 110 0 140 9 110 0 141 9 110 0 143 9 110 0 145 9 110 0 146 9 110 0 147 9 110 0 148 9 110 0 149 9 110 0 150 9 110 0 152 9 110 0 153 9 110 0 154 9 110 0 156 9 110 0 158 9 110 0 159 9 110 0 160 9 110 0 161 9 110 0 162 9 110 0 163 9 110 0 164 9 110 0 165 9 110 0 166 9 110 0 167 9 110 0 168 9 110 0 169 9 110 0 170 9 110 0 171 9 110 2 178] 
#[1 9 114 0 1 9 114 0 2 9 114 0 5 9 114 0 6 9 114 0 8 9 114 0 9 9 114 0 10 9 114 0 12 9 114 0 13 9 114 0 15 9 114 0 16 9 114 0 17 9 114 0 23 9 114 0 25 9 114 0 26 9 114 0 29 9 114 0 31 9 114 0 33 9 114 0 35 9 114 0 36 9 114 0 38 9 114 0 39 9 114 0 44 9 114 0 45 9 114 0 46 9 114 0 47 9 114 0 48 9 114 0 49 9 114 0 50 9 114 0 51 9 114 0 52 9 114 0 53 9 114 0 55 9 114 0 56 9 114 0 58 9 114 0 59 9 114 0 60 9 114 0 61 9 114 0 62 9 114 0 63 9 114 0 64 9 114 0 65 9 114 0 66 9 114 0 67 9 114 0 69 9 114 0 73 9 114 0 76 9 114 0 77 9 114 0 78 9 114 0 79 9 114 0 80 9 114 0 82 9 114 0 83 9 114 0 84 9 114 0 87 9 114 0 90 9 114 0 91 9 114 0 92 9 114 0 93 9 114 0 94 9 114 0 95 9 114 0 97 9 114 0 99 9 114 0 100 9 114 0 101 9 114 0 103 9 114 0 114 9 114 0 116 9 114 0 117 9 114 0 119 9 114 0 121 9 114 0 122 9 114 0 123 9 114 0 124 9 114 0 125 9 114 0 127 9 114 0 128 9 114 0 129 9 114 0 130 9 114 0 131 9 114 0 133 9 114 0 134 9 114 0 135 9 114 0 136 9 114 0 138 9 114 0 139 9 114 0 140 9 114 0 141 9 114 0 143 9 114 0 145 9 114 0 146 9 114 0 147 9 114 0 148 9 114 0 149 4 103 0 150 9 114 0 152 9 114 0 153 9 114 0 154 9 114 0 156 9 114 0 158 9 114 0 159 9 114 0 160 9 114 0 161 9 114 0 162 9 114 0 163 9 114 0 164 9 114 0 165 9 114 0 166 9 114 0 167 9 114 0 168 9 114 0 169 9 114 0 170 9 114 0 171 9 114 2 178] 
#[0 9 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 9 122 0 1 9 122 0 2 9 122 0 5 4 107 0 6 9 122 0 8 9 122 0 9 9 122 0 10 9 122 0 12 9 122 0 13 9 122 0 15 9 122 0 16 9 122 0 17 9 122 0 23 9 122 0 25 9 122 0 26 9 122 0 29 9 122 0 31 9 122 0 33 9 122 0 35 9 122 0 36 9 122 0 38 9 122 0 39 9 122 0 44 9 122 0 45 9 122 0 46 9 122 0 47 9 122 0 48 9 122 0 49 9 122 0 50 9 122 0 51 9 122 0 52 9 122 0 53 9 122 0 55 9 122 0 56 9 122 0 58 9 122 0 59 9 122 0 60 9 122 0 61 9 122 0 62 9 122 0 63 9 122 0 64 9 122 0 65 9 122 0 66 9 122 0 67 9 122 0 69 9 122 0 73 9 122 0 76 9 122 0 77 9 122 0 78 9 122 0 79 9 122 0 80 9 122 0 82 9 122 0 83 9 122 0 84 9 122 0 87 9 122 0 90 9 122 0 91 9 122 0 92 9 122 0 93 9 122 0 94 9 122 0 95 9 122 0 97 9 122 0 99 9 122 0 100 9 122 0 101 9 122 0 103 9 122 0 114 9 122 0 116 9 122 0 117 9 122 0 119 9 122 0 121 9 122 0 122 9 122 0 123 9 122 0 124 9 122 0 125 9 122 0 127 9 122 0 128 9 122 0 129 9 122 0 130 9 122 0 131 9 122 0 133 9 122 0 134 9 122 0 135 9 122 0 136 9 122 0 138 9 122 0 139 9 122 0 140 9 122 0 141 9 122 0 143 9 122 0 145 9 122 0 146 9 122 0 147 9 122 0 148 9 122 0 149 9 122 0 150 9 122 0 152 9 122 0 153 9 122 0 154 9 122 0 156 9 122 0 158 9 122 0 159 9 122 0 160 9 122 0 161 9 122 0 162 9 122 0 163 9 122 0 164 9 122 0 165 9 122 0 166 9 122 0 167 9 122 0 168 9 122 0 169 9 122 0 170 9 122 0 171 9 122 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 17 177 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 177 1 76 17 177 1 77 17 177 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 177 1 94 3 205 1 95 17 177 1 114 17 177 1 117 17 177 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 17 181 0 23] 
#[0 17 185 0 23] 
#[0 9 126 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 130 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 138 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 17 189 0 158] 
#[0 17 193 0 30] 
#[1 17 197 0 15 9 146 0 80 9 146 0 83 9 146 0 92 9 146 0 93 9 146 0 103 9 146 0 119 9 146 0 146] 
#[0 9 150 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 9 154 0 15 17 201 0 45 17 205 0 63 9 154 0 80 9 154 0 83 9 154 0 92 9 154 0 93 9 154 0 103 9 154 0 119 9 154 0 146 17 209 1 107 17 213 1 108] 
#[0 9 158 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 217 1 76 17 217 1 77 17 217 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 217 1 94 3 205 1 95 17 217 1 114 17 217 1 117 17 217 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 221 1 76 17 221 1 77 17 221 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 221 1 94 3 205 1 95 17 221 1 114 17 221 1 117 17 221 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 9 162 0 1 9 162 0 2 9 162 0 5 9 162 0 6 9 162 0 8 9 162 0 9 9 162 0 10 9 162 0 12 9 162 0 13 9 162 0 15 9 162 0 16 9 162 0 17 9 162 0 23 9 162 0 25 9 162 0 26 9 162 0 29 9 162 0 31 9 162 0 33 9 162 0 35 9 162 0 36 9 162 0 38 9 162 0 39 9 162 0 44 9 162 0 45 9 162 0 46 9 162 0 47 9 162 0 48 9 162 0 49 9 162 0 50 9 162 0 51 9 162 0 52 9 162 0 53 9 162 0 55 9 162 0 56 9 162 0 58 9 162 0 59 9 162 0 60 9 162 0 61 9 162 0 62 9 162 0 63 9 162 0 64 9 162 0 65 9 162 0 66 9 162 0 67 9 162 0 69 9 162 0 73 9 162 0 76 9 162 0 77 9 162 0 78 9 162 0 79 9 162 0 80 9 162 0 82 9 162 0 83 9 162 0 84 9 162 0 87 4 111 0 90 9 162 0 91 9 162 0 92 9 162 0 93 9 162 0 94 9 162 0 95 9 162 0 97 9 162 0 99 9 162 0 100 9 162 0 101 9 162 0 103 9 162 0 114 9 162 0 116 9 162 0 117 9 162 0 119 9 162 0 121 9 162 0 122 9 162 0 123 9 162 0 124 9 162 0 125 9 162 0 127 9 162 0 128 9 162 0 129 9 162 0 130 9 162 0 131 9 162 0 133 9 162 0 134 9 162 0 135 9 162 0 136 9 162 0 138 9 162 0 139 9 162 0 140 9 162 0 141 9 162 0 143 9 162 0 145 9 162 0 146 9 162 0 147 9 162 0 148 9 162 0 149 9 162 0 150 9 162 0 152 9 162 0 153 9 162 0 154 9 162 0 156 9 162 0 158 9 162 0 159 9 162 0 160 9 162 0 161 9 162 0 162 9 162 0 163 9 162 0 164 9 162 0 165 9 162 0 166 9 162 0 167 9 162 0 168 9 162 0 169 9 162 0 170 9 162 0 171 17 229 1 112 17 233 1 113 9 162 2 178] 
#[0 9 166 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 170 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 9 174 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 17 237 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 17 237 1 76 17 237 1 77 17 237 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 17 237 1 94 3 205 1 95 17 237 1 114 17 237 1 117 17 237 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 17 241 0 25] 
#[0 17 245 0 25] 
#[1 17 249 0 138 9 178 0 158 17 249 2 151] 
#[0 17 253 0 124] 
#[1 18 1 0 138 9 182 0 158 18 1 2 151] 
#[1 18 5 0 72 3 146 0 158 18 9 2 147] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 13 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 13 0 212 1 189 0 213 18 13 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 6 114 0 58 0 89 0 99 0 109 0 111 0 112] 
#[0 6 142 0 58 0 89 0 99 0 109 0 111 0 112] 
#[0 6 182 0 58 0 89 0 99 0 109 0 111 0 112] 
#[0 6 210 0 58 0 89 0 99 0 109 0 111 0 112] 
#[0 6 242 0 58 0 89 0 99 0 109 0 111 0 112] 
#[0 9 186 0 58 0 89 0 99 0 109 0 111 0 112] 
#[1 18 17 0 158 18 21 1 241 18 25 1 242] 
#[0 6 98 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 134 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 166 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 198 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 218 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 250 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 7 26 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 3 175 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 9 190 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 7 150 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 89 0 95 0 99 0 100 0 109 0 111 0 112 0 113 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 144 0 158] 
#[0 6 46 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 70 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 106 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 122 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 146 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 174 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 190 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 234 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 2 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 14 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 74 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 29 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 29 0 212 1 189 0 213 18 29 0 215 1 197 0 216 3 9 1 215 18 29 1 253 3 25 2 153 3 49 2 177] 
#[0 9 194 0 41 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 114 0 118 0 124 0 142] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 33 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 33 0 212 1 189 0 213 18 33 0 215 1 197 0 216 3 9 1 215 18 33 1 252 3 25 2 153 7 105 2 177] 
#[0 7 54 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 9 198 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 18 37 0 158 1 141 0 193 18 45 0 195 1 141 0 196 18 45 0 214 18 49 1 254] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 53 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 53 0 212 1 189 0 213 18 53 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 6 54 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 78 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 102 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 130 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 150 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 162 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 194 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 222 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 6 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 22 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 4 115 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 70 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 9 202 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 162 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 57 0 212 1 189 0 213 18 57 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 6 58 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 82 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 110 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 138 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 158 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 178 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 206 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 6 238 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 7 10 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 7 30 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 3 131 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 7 78 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 9 206 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[0 7 166 0 41 0 70 0 72 0 89 0 99 0 105 0 109 0 111 0 112 0 118 0 124 0 138 0 142] 
#[1 18 61 0 128 6 57 0 158 1 141 0 193 18 65 0 195 1 141 0 196 18 65 0 214] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 14 121 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 14 121 0 212 1 189 0 213 14 121 0 215 1 197 0 216 3 9 1 215 18 69 2 40 3 25 2 153 3 49 2 177] 
#[1 18 73 0 32 18 77 0 149 18 81 2 41] 
#[0 6 50 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 66 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 94 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 126 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 154 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 170 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 202 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 230 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 6 254 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 4 119 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 66 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 9 210 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 7 158 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 158] 
#[0 18 85 0 102] 
#[0 6 74 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 18 89 0 102] 
#[0 6 226 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 7 18 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 3 135 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 18 93 0 102] 
#[0 9 214 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 18 97 0 25 18 101 0 32 1 93 0 149 18 105 1 123 18 109 2 52] 
#[0 9 218 0 25 0 32 0 149] 
#[0 9 222 0 25 0 32 0 149] 
#[0 9 226 0 25 0 32 0 149] 
#[0 7 154 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 95 0 100 0 112 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 18 113 0 8] 
#[1 18 117 0 25 18 121 0 32 1 93 0 149 18 125 1 123 18 129 2 60] 
#[0 6 86 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 6 118 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 6 186 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 6 214 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 6 246 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 4 123 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 9 230 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 7 170 0 72 0 89 0 109 0 111 0 112 0 138 0 158] 
#[0 18 133 0 8] 
#[0 18 137 0 158] 
#[0 18 141 0 153] 
#[1 18 145 0 124 6 90 0 153] 
#[1 18 149 0 72 3 146 0 158 18 153 2 147] 
#[0 18 157 0 153] 
#[0 9 234 0 37 0 41 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 18 161 0 25] 
#[1 6 57 0 158 18 165 0 193 18 165 0 196] 
#[0 9 238 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[0 9 242 0 23] 
#[1 6 57 0 158 1 141 0 193 9 113 0 195 1 141 0 196 18 169 2 131 9 109 2 132 9 113 2 133] 
#[0 18 173 0 23] 
#[0 9 246 2 178] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 9 250 0 156 18 177 0 177 18 177 0 191 18 177 0 192 18 177 1 208 18 177 2 64 18 177 2 78 18 177 2 102 18 177 2 113 0 89 2 124 0 93 2 125 0 97 2 126 0 101 2 127 9 250 2 178] 
#[0 9 254 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[0 10 2 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 2 178] 
#[1 18 181 0 38 6 57 0 158 1 141 0 193 9 113 0 195 1 141 0 196 18 185 2 132 9 113 2 133] 
#[0 10 6 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 10 10 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 4 127 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 18 193 0 237 12 9 0 238 18 197 2 136 18 201 2 137 18 205 2 138 18 209 2 139 18 213 2 140] 
#[0 10 14 0 15 0 38] 
#[0 10 18 0 15 0 38] 
#[0 10 22 0 20 0 149] 
#[1 0 30 0 37 0 30 0 41 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 88 0 30 0 89 0 30 0 98 0 30 0 99 0 30 0 108 0 30 0 109 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 118 0 30 0 124 0 30 0 126 0 30 0 138 4 41 0 140 0 30 0 156 18 217 0 183 4 49 0 184 4 53 0 185 4 53 0 186 4 53 0 187 4 53 0 188] 
#[0 10 26 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 10 30 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[0 18 221 0 158] 
#[0 18 225 0 126] 
#[0 18 229 0 158] 
#[0 18 233 0 158] 
#[1 18 237 0 23 10 34 0 149 18 241 2 103 18 245 2 104] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 249 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 249 0 212 1 189 0 213 18 249 0 215 1 197 0 216 3 9 1 215 18 249 1 253 3 25 2 153 3 49 2 177] 
#[1 18 253 0 158 19 1 2 114] 
#[0 10 38 0 9 0 15] 
#[0 10 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 46 0 9 0 15] 
#[0 10 50 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 54 0 9 0 15] 
#[0 10 58 0 9 0 15] 
#[0 4 178 0 9 0 15] 
#[0 10 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 66 0 9 0 15] 
#[0 10 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 5 1 76 19 5 1 77 19 5 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 5 1 94 3 205 1 95 19 5 1 114 19 5 1 117 19 5 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 10 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 9 1 76 19 9 1 77 19 9 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 9 1 94 3 205 1 95 19 9 1 114 19 9 1 117 19 9 1 118 19 9 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 10 133 0 158 19 13 1 160] 
#[0 10 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 17 1 76 19 17 1 77 19 17 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 17 1 94 3 205 1 95 19 17 1 114 19 17 1 117 19 17 1 118 19 17 1 120 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 19 21 0 30] 
#[1 19 25 0 9 19 29 0 15] 
#[0 10 90 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 10 94 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 37 1 76 19 37 1 77 19 37 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 37 1 94 3 205 1 95 19 37 1 114 19 37 1 117 19 37 1 118 19 37 1 120 3 221 1 153 3 221 1 154 19 37 1 179 19 37 1 180 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 19 45 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 19 45 1 114 19 45 1 162 1 205 2 142 3 17 2 143 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160] 
#[0 19 49 0 158] 
#[0 19 53 0 86] 
#[0 10 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 19 57 1 122 19 57 1 123 19 57 1 126 19 57 1 161 2 181 1 162 19 57 1 163 19 57 1 164 19 57 1 165 19 57 1 173 19 57 1 174 19 57 1 175 19 57 1 176 19 57 1 184 19 57 1 185 19 57 1 186 19 57 1 187 19 57 1 188 19 57 1 189 19 57 1 190 19 57 1 191 19 57 1 202 19 57 1 203 19 57 1 204 19 57 1 205 19 57 1 207 1 205 2 142 3 17 2 143 19 57 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 19 57 2 161] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 19 61 1 122 19 61 1 123 19 61 1 126 19 61 1 161 2 181 1 162 19 61 1 163 19 61 1 164 19 61 1 165 19 61 1 173 19 61 1 174 19 61 1 175 19 61 1 176 19 61 1 184 19 61 1 185 19 61 1 186 19 61 1 187 19 61 1 188 19 61 1 189 19 61 1 190 19 61 1 191 19 61 1 202 19 61 1 203 19 61 1 204 19 61 1 205 19 61 1 207 1 205 2 142 3 17 2 143 19 61 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 19 61 2 161] 
#[0 10 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 10 106 0 9 19 65 0 20 19 69 1 50] 
#[0 10 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 114 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 73 1 76 19 73 1 77 19 73 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 73 1 94 3 205 1 95 19 73 1 114 19 73 1 117 19 73 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 19 77 0 20] 
#[0 10 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 11 9 0 8 0 141 0 46 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 19 81 0 156 11 13 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 11 17 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 11 21 0 252 1 205 0 254 1 205 0 255 11 25 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 11 29 1 16 1 205 1 17 1 205 1 18 1 205 1 19 11 17 1 31 1 205 1 32 1 205 1 33 19 85 1 37 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 1 205 1 54 11 45 1 57 1 205 1 59 1 205 1 79 1 205 2 142 3 17 2 143 1 205 2 157 1 205 2 160] 
#[0 19 89 0 9] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 19 93 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 19 97 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 10 117 1 76 10 117 1 77 10 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 10 117 1 94 3 205 1 95 10 117 1 114 10 117 1 117 10 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 19 1 22 0 20 1 22 0 21 6 141 0 24 1 223 0 26 1 22 0 27 1 22 0 29 10 122 0 30 1 22 0 31 2 230 0 32 1 22 0 33 1 22 0 35 1 22 0 36 0 107 0 37 1 22 0 39 1 22 0 44 1 22 0 91 1 22 0 150 1 22 0 152 1 22 0 154 1 22 0 155 1 22 0 156 0 107 0 158 6 153 0 223 6 153 0 253] 
#[0 19 101 0 156] 
#[1 19 105 0 15 10 126 0 156] 
#[0 10 130 0 15 0 156] 
#[0 19 109 0 30] 
#[1 19 113 0 15 19 117 0 156] 
#[0 10 134 0 15 0 156] 
#[0 10 138 0 15 0 156] 
#[0 10 142 0 15 0 25 0 156] 
#[0 10 146 0 15 0 156] 
#[0 10 150 0 15 0 25 0 156] 
#[0 19 121 0 156] 
#[1 19 125 0 15 10 154 0 156] 
#[1 15 197 0 15 19 129 0 38] 
#[0 19 133 0 9] 
#[0 10 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 19 137 0 38] 
#[1 19 141 0 149 19 145 1 166] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 19 149 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 19 149 0 212 1 189 0 213 19 149 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 19 153 0 8] 
#[1 16 129 0 145 10 162 0 149 19 157 1 198 19 157 1 199] 
#[1 1 93 0 149 19 165 1 123] 
#[0 10 166 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 10 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 10 174 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 16 125 0 8 16 129 0 145 1 93 0 149 19 169 1 123 16 133 1 197 16 137 1 199] 
#[0 10 178 0 54] 
#[0 10 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 19 173 0 158] 
#[1 5 121 0 8 19 177 0 15 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 10 186 0 154 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 221 0 212 1 189 0 213 11 221 0 215 1 197 0 216 11 217 0 224 11 221 0 225 19 181 1 42 19 185 1 43 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 10 190 0 9 0 20] 
#[0 10 194 0 9 0 20] 
#[0 10 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 19 189 0 158] 
#[0 10 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 19 193 1 122 19 193 1 123 19 193 1 126 19 193 1 161 2 181 1 162 19 193 1 163 19 193 1 164 19 193 1 165 19 193 1 173 19 193 1 174 19 193 1 175 19 193 1 176 19 193 1 184 19 193 1 185 19 193 1 186 19 193 1 187 19 193 1 188 19 193 1 189 19 193 1 190 19 193 1 191 19 193 1 202 19 193 1 203 19 193 1 204 19 193 1 205 19 193 1 207 1 205 2 142 3 17 2 143 19 193 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 19 193 2 161] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 19 197 1 122 19 197 1 123 19 197 1 126 19 197 1 161 2 181 1 162 19 197 1 163 19 197 1 164 19 197 1 165 19 197 1 173 19 197 1 174 19 197 1 175 19 197 1 176 19 197 1 184 19 197 1 185 19 197 1 186 19 197 1 187 19 197 1 188 19 197 1 189 19 197 1 190 19 197 1 191 19 197 1 202 19 197 1 203 19 197 1 204 19 197 1 205 19 197 1 207 1 205 2 142 3 17 2 143 19 197 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 19 197 2 161] 
#[0 10 214 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 10 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 19 201 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 19 201 0 212 1 189 0 213 19 201 0 215 1 197 0 216 19 201 0 225 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 10 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 4 131 0 1 4 135 0 5 4 139 0 8 4 143 0 10 4 147 0 12 4 151 0 13 4 155 0 16 4 159 0 17 4 163 0 46 4 167 0 47 4 171 0 48 4 175 0 49 4 179 0 52 4 183 0 55 4 187 0 56 4 191 0 60 4 195 0 61 4 199 0 62 4 203 0 65 4 207 0 66 4 211 0 73 4 215 0 77 4 219 0 80 4 223 0 87 4 227 0 95 4 231 0 97 4 235 0 99 4 239 0 100 4 243 0 117 4 247 0 121 4 251 0 122 4 255 0 123 5 3 0 125 5 7 0 128 5 11 0 129 5 15 0 130 5 19 0 133 5 23 0 134 5 27 0 135 5 31 0 136 5 35 0 139 5 39 0 141 5 43 0 143 11 69 0 149 5 47 0 153 8 122 0 156 5 51 0 158 5 55 0 159 5 59 0 160 5 63 0 161 5 67 0 162 5 71 0 163 5 75 0 166 5 79 0 167 5 83 0 170 5 87 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 89 1 76 16 89 1 77 16 89 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 89 1 94 3 205 1 95 16 89 1 114 16 89 1 117 16 89 1 118 3 221 1 153 3 221 1 154 3 9 1 215 16 89 1 243 16 89 2 75 16 97 2 76 16 101 2 77 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 19 205 2 173 19 209 2 175 3 49 2 177] 
#[0 10 234 0 9 0 15 0 25] 
#[0 10 238 0 9 0 15 0 25] 
#[0 10 242 0 9 0 15 0 25] 
#[0 10 246 0 9 0 15 0 25] 
#[1 6 161 0 158 19 213 1 148] 
#[0 10 250 0 9 0 15 0 25] 
#[0 10 254 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 11 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 19 217 0 236 12 5 0 237 12 9 0 238] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 19 221 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 221 1 76 19 221 1 77 19 221 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 221 1 94 3 205 1 95 19 221 1 114 19 221 1 117 19 221 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 19 225 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 225 1 76 19 225 1 77 19 225 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 225 1 94 3 205 1 95 19 225 1 114 19 225 1 117 19 225 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 19 229 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 229 1 76 19 229 1 77 19 229 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 229 1 94 3 205 1 95 19 229 1 114 19 229 1 117 19 229 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 6 0 9 0 15 0 38] 
#[0 11 10 0 9 0 15 0 38] 
#[0 11 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 19 233 0 223 19 233 0 253 1 22 2 178] 
#[1 15 197 0 15 19 237 0 38] 
#[0 11 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 19 241 0 246 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 41 1 76 12 41 1 77 12 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 41 1 94 3 205 1 95 12 41 1 114 12 41 1 117 12 41 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 19 245 1 76 19 245 1 77 19 245 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 19 245 1 94 3 205 1 95 19 245 1 114 19 245 1 117 19 245 1 118 19 245 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 30 0 164 0 165 0 168 0 169] 
#[0 19 249 0 23] 
#[0 11 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 19 253 0 246 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 12 41 1 76 12 41 1 77 12 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 12 41 1 94 3 205 1 95 12 41 1 114 12 41 1 117 12 41 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 46 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 50 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 20 1 0 25] 
#[0 11 54 0 32 0 149] 
#[0 11 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 11 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 20 5 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 49 0 37 0 10 0 158 20 29 1 214 20 33 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 20 37 0 8] 
#[0 20 41 0 114] 
#[1 11 70 0 9 20 45 0 15 11 70 0 25 20 49 1 151] 
#[0 11 74 0 9 0 25] 
#[0 11 78 0 9 0 15] 
#[0 11 82 0 9 0 15] 
#[0 11 86 0 9 0 15] 
#[0 11 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 20 53 1 76 20 53 1 77 20 53 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 20 53 1 94 3 205 1 95 20 53 1 114 20 53 1 117 20 53 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 98 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 13 9 0 114 20 57 1 93] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 20 61 1 76 20 61 1 77 20 61 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 20 61 1 94 3 205 1 95 20 61 1 114 20 61 1 117 20 61 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 20 65 0 86] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 20 69 1 76 20 69 1 77 20 69 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 20 69 1 94 3 205 1 95 20 69 1 114 20 69 1 117 20 69 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 13 57 1 76 13 57 1 77 13 57 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 13 57 1 94 3 205 1 95 20 73 1 106 13 57 1 114 13 57 1 117 13 57 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 118 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 11 122 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 11 126 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 11 130 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 20 77 0 51] 
#[0 11 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 20 81 0 158] 
#[0 11 138 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 11 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 20 85 0 25] 
#[0 11 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 11 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 11 154 0 158] 
#[0 11 158 0 158] 
#[0 11 162 0 158] 
#[0 5 91 0 158] 
#[0 11 170 0 158] 
#[1 20 89 0 158 20 93 1 235 20 97 1 236] 
#[1 11 174 0 15 11 174 0 25 20 101 0 30] 
#[1 20 105 0 15 20 109 0 25] 
#[0 11 178 0 15 0 25] 
#[1 18 37 0 158 1 141 0 193 18 45 0 195 1 141 0 196 18 45 0 214 20 113 1 254] 
#[1 18 37 0 158 1 141 0 193 18 45 0 195 1 141 0 196 18 45 0 214 20 117 1 254] 
#[1 11 182 0 8 1 22 0 20 6 141 0 24 5 95 0 26 11 182 0 32 11 182 0 149 10 129 0 223 10 129 0 253] 
#[0 11 186 0 15 0 20 0 25 0 32 0 146 0 149] 
#[0 20 121 0 20] 
#[1 20 125 0 32 20 129 0 149 20 133 2 15] 
#[1 18 37 0 158 1 141 0 193 18 45 0 195 1 141 0 196 18 45 0 214 20 137 1 254] 
#[1 20 141 0 158 1 141 0 193 18 45 0 195 1 141 0 196 18 45 0 214 20 145 1 241 18 25 1 242 20 149 1 254] 
#[0 20 153 0 37] 
#[0 20 157 0 20] 
#[1 20 161 0 32 20 165 0 149 20 169 2 42] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 20 173 1 76 20 173 1 77 20 173 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 20 173 1 94 3 205 1 95 20 173 1 114 20 173 1 117 20 173 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 20 177 2 19 20 181 2 21 20 185 2 23 20 189 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 11 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 20 193 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 20 193 0 212 1 189 0 213 20 193 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 20 197 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 20 197 0 212 1 189 0 213 20 197 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 21 33 0 1 21 37 0 2 21 37 0 3 21 37 0 5 21 37 0 10 20 221 0 12 21 33 0 13 20 229 0 16 21 33 0 17 21 37 0 21 21 37 0 26 21 37 0 27 21 37 0 29 21 37 0 31 21 37 0 33 21 37 0 39 21 33 0 73 21 33 0 130 21 37 0 150 21 33 0 153 21 37 0 154 21 37 0 155 21 33 2 48 21 37 2 50] 
#[0 11 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 41 1 76 21 41 1 77 21 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 41 1 94 3 205 1 95 21 41 1 114 21 41 1 117 21 41 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 198 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 11 202 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 21 45 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 11 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 49 1 76 21 49 1 77 21 49 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 49 1 94 3 205 1 95 21 49 1 114 21 49 1 117 21 49 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 11 210 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 11 214 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 21 53 0 9] 
#[0 21 57 0 8] 
#[0 21 61 0 158] 
#[0 11 218 0 158] 
#[0 5 99 0 158] 
#[0 11 226 0 158] 
#[0 21 65 0 158] 
#[0 11 230 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[1 6 157 0 20 21 69 0 25] 
#[1 21 73 0 15 21 77 0 38] 
#[0 11 234 0 158] 
#[0 11 238 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[0 11 242 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[0 11 246 0 15 0 38] 
#[1 17 1 0 23 21 81 0 30] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 89 1 76 21 89 1 77 21 89 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 89 1 94 3 205 1 95 21 89 1 114 21 89 1 117 21 89 1 118 3 221 1 153 3 221 1 154 3 9 1 215 21 89 2 141 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 21 93 0 9] 
#[1 11 250 0 9 21 97 0 15] 
#[0 11 254 0 9 0 15] 
#[1 21 101 0 9 21 105 0 15] 
#[0 12 2 0 9 0 15] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 7 178 0 156 15 81 0 177 21 109 0 189 15 77 0 190 15 81 0 191 15 81 0 192 15 81 1 208 15 81 2 64 15 81 2 78 15 81 2 102 15 81 2 113 0 89 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 12 6 0 23 17 117 0 26 12 6 0 146 12 6 0 149 21 113 1 212 21 113 1 213] 
#[0 21 121 0 158] 
#[1 12 6 0 23 17 117 0 26 12 6 0 146 12 6 0 149 21 125 1 212 21 125 1 213] 
#[1 12 10 0 23 21 129 0 26 12 10 0 146 12 10 0 149 21 133 2 82 21 133 2 83] 
#[1 21 145 0 52 21 145 0 55 21 145 0 87 21 145 0 95 21 145 0 117 21 145 0 121 21 145 0 134 21 145 0 135 21 145 0 139 6 57 0 158 1 141 0 193 21 149 0 195 1 141 0 196 21 145 0 208 21 149 2 105] 
#[1 21 153 0 149 21 157 2 106] 
#[0 12 14 0 149] 
#[1 18 253 0 158 21 161 2 114] 
#[1 21 165 0 8 21 129 0 26 21 169 2 83] 
#[0 12 18 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 12 22 0 15 0 38 0 156] 
#[0 12 26 0 15 0 25] 
#[0 12 30 0 15 0 25] 
#[0 21 173 0 9] 
#[1 0 105 0 1 21 177 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 181 1 76 21 181 1 77 21 181 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 181 1 94 3 205 1 95 21 181 1 114 21 181 1 117 21 181 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 21 185 2 164 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 21 189 1 122 21 189 1 123 21 189 1 126 21 189 1 161 2 181 1 162 21 189 1 163 21 189 1 164 21 189 1 165 21 189 1 173 21 189 1 174 21 189 1 175 21 189 1 176 21 189 1 184 21 189 1 185 21 189 1 186 21 189 1 187 21 189 1 188 21 189 1 189 21 189 1 190 21 189 1 191 21 189 1 202 21 189 1 203 21 189 1 204 21 189 1 205 21 189 1 207 1 205 2 142 3 17 2 143 21 189 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 21 189 2 161] 
#[1 15 225 0 158 21 193 2 163] 
#[0 12 34 0 25] 
#[0 21 197 0 25] 
#[0 12 38 0 25] 
#[0 12 42 0 9 0 15 0 25] 
#[0 21 201 0 86] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 205 1 76 21 205 1 77 21 205 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 205 1 94 3 205 1 95 21 205 1 114 21 205 1 117 21 205 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 12 46 0 1 12 46 0 5 12 46 0 8 12 46 0 10 12 46 0 12 12 46 0 13 12 46 0 16 12 46 0 17 12 46 0 25 12 46 0 46 12 46 0 47 12 46 0 48 12 46 0 49 12 46 0 50 12 46 0 52 12 46 0 53 12 46 0 55 12 46 0 56 12 46 0 58 12 46 0 59 12 46 0 60 12 46 0 61 12 46 0 62 12 46 0 64 12 46 0 65 12 46 0 66 5 103 0 67 12 46 0 73 12 46 0 76 12 46 0 77 12 46 0 78 12 46 0 79 12 46 0 82 12 46 0 84 12 46 0 87 12 46 0 94 12 46 0 95 12 46 0 97 12 46 0 99 12 46 0 100 12 46 0 114 12 46 0 116 12 46 0 117 12 46 0 121 12 46 0 122 12 46 0 123 12 46 0 124 12 46 0 125 12 46 0 127 12 46 0 128 12 46 0 129 12 46 0 130 12 46 0 131 12 46 0 133 12 46 0 134 12 46 0 135 12 46 0 136 12 46 0 138 12 46 0 139 12 46 0 140 12 46 0 141 12 46 0 143 12 46 0 147 12 46 0 148 12 46 0 149 12 46 0 153 12 46 0 156 12 46 0 158 12 46 0 159 12 46 0 160 12 46 0 161 12 46 0 162 12 46 0 163 12 46 0 166 12 46 0 167 12 46 0 170 12 46 0 171 12 46 2 178] 
#[0 12 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 21 213 0 158] 
#[0 12 54 0 9 0 20] 
#[0 12 58 0 15 0 156] 
#[0 21 217 0 158] 
#[0 12 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 12 66 0 15 0 156] 
#[1 12 70 0 1 12 70 0 2 12 70 0 3 12 70 0 4 12 70 0 5 12 70 0 6 12 70 0 7 12 70 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 18 12 70 0 19 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 33 12 70 0 34 12 70 0 35 12 70 0 36 12 70 0 37 12 70 0 38 12 70 0 39 12 70 0 40 12 70 0 44 12 70 0 45 12 70 0 46 12 70 0 47 12 70 0 48 12 70 0 49 12 70 0 50 12 70 0 51 12 70 0 52 12 70 0 53 12 70 0 55 12 70 0 56 12 70 0 58 12 70 0 59 12 70 0 60 12 70 0 61 12 70 0 62 12 70 0 63 12 70 0 64 12 70 0 65 12 70 0 66 12 70 0 67 12 70 0 69 12 70 0 73 12 70 0 76 12 70 0 77 12 70 0 78 12 70 0 79 12 70 0 80 12 70 0 82 12 70 0 83 12 70 0 84 12 70 0 87 12 70 0 90 12 70 0 91 12 70 0 92 12 70 0 93 12 70 0 94 12 70 0 95 12 70 0 97 12 70 0 99 12 70 0 100 12 70 0 101 12 70 0 103 12 70 0 114 12 70 0 116 12 70 0 117 12 70 0 119 12 70 0 121 12 70 0 122 12 70 0 123 12 70 0 124 12 70 0 125 12 70 0 127 12 70 0 128 12 70 0 129 12 70 0 130 12 70 0 131 12 70 0 133 12 70 0 134 12 70 0 135 12 70 0 136 12 70 0 138 12 70 0 139 12 70 0 140 12 70 0 141 12 70 0 143 12 70 0 145 12 70 0 146 12 70 0 147 12 70 0 148 5 107 0 149 12 70 0 150 12 70 0 151 12 70 0 152 12 70 0 153 12 70 0 154 12 70 0 155 12 70 0 156 12 70 0 158 12 70 0 159 12 70 0 160 12 70 0 161 12 70 0 162 12 70 0 163 12 70 0 164 12 70 0 165 12 70 0 166 12 70 0 167 12 70 0 168 12 70 0 169 12 70 0 170 12 70 0 171 21 221 1 20 21 221 1 21 21 221 1 22 21 221 1 28 12 70 2 178] 
#[1 17 9 0 15 21 229 0 38] 
#[1 15 197 0 15 21 233 0 156] 
#[0 12 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 16 45 0 37 21 237 0 156 21 241 0 158 21 245 1 25 16 69 1 26] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 11 53 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 21 253 1 21 21 253 1 22 21 253 1 27 21 253 1 28 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 21 253 1 76 21 253 1 77 21 253 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 21 253 1 94 3 205 1 95 21 253 1 114 21 253 1 117 21 253 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 16 49 0 149 1 97 0 153 22 5 0 156 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 22 9 1 30 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 125 1 53 1 205 1 54 1 205 1 59 3 125 1 60 3 125 1 61 3 125 1 62 3 125 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 16 81 1 76 16 81 1 77 16 81 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 16 81 1 94 3 205 1 95 16 81 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 125 2 156 1 205 2 157 3 125 2 159 1 205 2 160 3 49 2 177] 
#[0 12 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 12 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 11 69 0 149 1 97 0 153 22 13 0 156 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 17 1 76 22 17 1 77 22 17 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 17 1 94 3 205 1 95 22 17 1 114 22 17 1 117 22 17 1 118 3 221 1 153 3 221 1 154 3 9 1 215 22 17 1 243 22 17 2 75 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 12 86 0 1 12 86 0 2 12 86 0 3 12 86 0 4 12 86 0 5 12 86 0 6 12 86 0 7 12 86 0 8 12 86 0 9 12 86 0 10 12 86 0 11 12 86 0 12 12 86 0 13 12 86 0 14 12 86 0 15 12 86 0 16 12 86 0 17 12 86 0 18 12 86 0 19 12 86 0 20 12 86 0 21 12 86 0 22 12 86 0 23 12 86 0 25 12 86 0 26 12 86 0 27 12 86 0 28 12 86 0 29 12 86 0 30 12 86 0 31 12 86 0 33 12 86 0 34 12 86 0 35 12 86 0 36 6 1 0 37 12 86 0 38 12 86 0 39 12 86 0 40 12 86 0 44 12 86 0 45 12 86 0 46 12 86 0 47 12 86 0 48 12 86 0 49 12 86 0 50 12 86 0 51 12 86 0 52 12 86 0 53 12 86 0 55 12 86 0 56 12 86 0 58 12 86 0 59 12 86 0 60 12 86 0 61 12 86 0 62 12 86 0 63 12 86 0 64 12 86 0 65 12 86 0 66 12 86 0 67 12 86 0 69 12 86 0 73 12 86 0 76 12 86 0 77 12 86 0 78 12 86 0 79 12 86 0 80 12 86 0 82 12 86 0 83 12 86 0 84 12 86 0 87 12 86 0 90 12 86 0 91 12 86 0 92 12 86 0 93 12 86 0 94 12 86 0 95 12 86 0 97 12 86 0 99 12 86 0 100 12 86 0 101 12 86 0 103 12 86 0 114 12 86 0 116 12 86 0 117 12 86 0 119 12 86 0 121 12 86 0 122 12 86 0 123 12 86 0 124 12 86 0 125 12 86 0 127 12 86 0 128 12 86 0 129 12 86 0 130 12 86 0 131 12 86 0 133 12 86 0 134 12 86 0 135 12 86 0 136 12 86 0 138 12 86 0 139 12 86 0 140 12 86 0 141 12 86 0 143 12 86 0 145 12 86 0 146 12 86 0 147 12 86 0 148 12 86 0 149 12 86 0 150 12 86 0 151 12 86 0 152 12 86 0 153 12 86 0 154 12 86 0 155 12 86 0 156 12 86 0 158 12 86 0 159 12 86 0 160 12 86 0 161 12 86 0 162 12 86 0 163 12 86 0 164 12 86 0 165 12 86 0 166 12 86 0 167 12 86 0 168 12 86 0 169 12 86 0 170 12 86 0 171 22 21 0 217 22 25 0 218 6 189 0 219 12 86 2 178] 
#[0 12 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 12 94 0 1 12 94 0 2 12 94 0 3 12 94 0 4 12 94 0 5 12 94 0 6 12 94 0 7 12 94 0 8 12 94 0 9 12 94 0 10 12 94 0 11 12 94 0 12 12 94 0 13 12 94 0 14 12 94 0 15 12 94 0 16 12 94 0 17 12 94 0 18 12 94 0 19 12 94 0 20 12 94 0 21 12 94 0 22 12 94 0 23 12 94 0 25 12 94 0 26 12 94 0 27 12 94 0 28 12 94 0 29 12 94 0 30 12 94 0 31 12 94 0 33 12 94 0 34 12 94 0 35 12 94 0 36 12 94 0 37 12 94 0 38 12 94 0 39 12 94 0 40 12 94 0 44 12 94 0 45 12 94 0 46 12 94 0 47 12 94 0 48 12 94 0 49 12 94 0 50 12 94 0 51 12 94 0 52 12 94 0 53 12 94 0 55 12 94 0 56 12 94 0 58 12 94 0 59 12 94 0 60 12 94 0 61 12 94 0 62 12 94 0 63 12 94 0 64 12 94 0 65 12 94 0 66 12 94 0 67 12 94 0 69 12 94 0 73 12 94 0 76 12 94 0 77 12 94 0 78 12 94 0 79 12 94 0 80 12 94 0 82 12 94 0 83 12 94 0 84 12 94 0 87 12 94 0 90 12 94 0 91 12 94 0 92 12 94 0 93 12 94 0 94 12 94 0 95 12 94 0 97 12 94 0 99 12 94 0 100 12 94 0 101 12 94 0 103 12 94 0 114 12 94 0 116 12 94 0 117 12 94 0 119 12 94 0 121 12 94 0 122 12 94 0 123 12 94 0 124 12 94 0 125 12 94 0 127 12 94 0 128 12 94 0 129 12 94 0 130 12 94 0 131 12 94 0 133 12 94 0 134 12 94 0 135 12 94 0 136 12 94 0 138 12 94 0 139 12 94 0 140 12 94 0 141 12 94 0 143 12 94 0 145 12 94 0 146 12 94 0 147 12 94 0 148 5 111 0 149 12 94 0 150 12 94 0 151 12 94 0 152 12 94 0 153 12 94 0 154 12 94 0 155 12 94 0 156 12 94 0 158 12 94 0 159 12 94 0 160 12 94 0 161 12 94 0 162 12 94 0 163 12 94 0 164 12 94 0 165 12 94 0 166 12 94 0 167 12 94 0 168 12 94 0 169 12 94 0 170 12 94 0 171 22 33 2 172 12 94 2 178] 
#[1 22 37 0 53 22 41 0 61 12 98 0 156 22 45 1 167 22 49 1 168 22 53 1 169 22 57 1 170 22 61 1 171] 
#[0 12 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 12 106 0 9 22 69 0 158 22 69 2 148] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 73 1 76 22 73 1 77 22 73 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 73 1 94 3 205 1 95 22 73 1 114 22 73 1 117 22 73 1 118 22 73 1 120 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 1 93 0 149 22 77 1 123] 
#[0 12 110 0 149] 
#[0 12 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 12 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[1 3 251 0 9 1 22 0 10 3 251 0 20 16 169 0 26 1 22 0 35 1 22 0 37 16 213 0 223 16 213 0 253 22 81 1 40 16 177 1 41] 
#[0 12 122 0 15 0 154] 
#[0 22 85 0 154] 
#[1 22 89 0 15 12 126 0 154] 
#[1 8 166 0 9 8 166 0 20 22 93 0 26 22 97 1 40 16 177 1 41] 
#[0 12 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 12 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 12 138 0 15 0 154] 
#[0 22 101 0 156] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 113 1 76 22 113 1 77 22 113 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 113 1 94 3 205 1 95 22 113 1 114 22 113 1 117 22 113 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 22 109 2 174 22 113 2 176 3 49 2 177] 
#[0 12 142 0 9 0 15 0 25] 
#[0 12 146 0 9 0 15 0 38] 
#[0 12 150 0 9 0 15 0 38] 
#[0 12 154 0 9 0 15 0 38] 
#[0 12 158 0 9 0 15 0 38] 
#[1 12 162 0 1 12 162 0 2 12 162 0 3 12 162 0 4 12 162 0 5 12 162 0 6 12 162 0 7 12 162 0 8 12 162 0 9 12 162 0 10 12 162 0 11 12 162 0 12 12 162 0 13 12 162 0 14 12 162 0 15 12 162 0 16 12 162 0 17 12 162 0 18 12 162 0 19 12 162 0 20 12 162 0 21 12 162 0 22 12 162 0 23 12 162 0 25 12 162 0 26 12 162 0 27 12 162 0 28 12 162 0 29 12 162 0 30 12 162 0 31 12 162 0 33 12 162 0 34 12 162 0 35 12 162 0 36 12 162 0 37 12 162 0 38 12 162 0 39 12 162 0 40 12 162 0 44 12 162 0 45 12 162 0 46 12 162 0 47 12 162 0 48 12 162 0 49 12 162 0 50 12 162 0 51 12 162 0 52 12 162 0 53 12 162 0 55 12 162 0 56 12 162 0 58 12 162 0 59 12 162 0 60 12 162 0 61 12 162 0 62 12 162 0 63 12 162 0 64 12 162 0 65 12 162 0 66 12 162 0 67 12 162 0 69 12 162 0 73 12 162 0 76 12 162 0 77 12 162 0 78 12 162 0 79 12 162 0 80 12 162 0 82 12 162 0 83 12 162 0 84 12 162 0 87 12 162 0 90 12 162 0 91 12 162 0 92 12 162 0 93 12 162 0 94 12 162 0 95 12 162 0 97 12 162 0 99 12 162 0 100 12 162 0 101 12 162 0 103 12 162 0 114 12 162 0 116 12 162 0 117 12 162 0 119 12 162 0 121 12 162 0 122 12 162 0 123 12 162 0 124 12 162 0 125 12 162 0 127 12 162 0 128 12 162 0 129 12 162 0 130 12 162 0 131 12 162 0 133 12 162 0 134 12 162 0 135 12 162 0 136 12 162 0 138 12 162 0 139 12 162 0 140 12 162 0 141 12 162 0 143 12 162 0 145 12 162 0 146 12 162 0 147 12 162 0 148 12 162 0 149 12 162 0 150 12 162 0 151 12 162 0 152 12 162 0 153 12 162 0 154 12 162 0 155 12 162 0 156 12 162 0 158 12 162 0 159 12 162 0 160 12 162 0 161 12 162 0 162 12 162 0 163 12 162 0 164 12 162 0 165 12 162 0 166 12 162 0 167 12 162 0 168 12 162 0 169 12 162 0 170 12 162 0 171 22 117 1 55 12 162 2 178] 
#[0 12 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 12 170 0 164 0 165] 
#[1 8 230 0 23 12 174 0 164 12 174 0 165 12 174 0 168 12 174 0 169 22 121 0 247 17 69 0 248] 
#[0 12 178 0 164 0 165 0 168 0 169] 
#[0 12 182 0 168 0 169] 
#[0 12 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 22 125 0 9] 
#[0 12 190 0 9] 
#[1 12 194 0 9 22 129 0 15 12 194 0 38] 
#[0 12 198 0 9 0 15 0 38] 
#[0 12 202 0 9 0 38] 
#[1 12 206 0 8 12 206 0 49 12 206 0 52 12 206 0 55 12 206 0 60 12 206 0 65 12 206 0 66 12 206 0 77 22 153 0 86 12 206 0 87 12 206 0 95 12 206 0 100 22 153 0 104 22 141 0 107 22 153 0 114 12 206 0 117 12 206 0 121 12 206 0 125 22 153 0 128 12 206 0 134 12 206 0 135 12 206 0 139 12 206 0 143 12 206 0 158 22 153 2 7 22 153 2 8 22 153 2 9] 
#[1 22 165 0 15 22 169 0 154] 
#[1 22 173 0 158 22 177 1 215] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 181 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 22 185 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 185 1 76 22 185 1 77 22 185 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 185 1 94 3 205 1 95 22 185 1 114 22 185 1 117 22 185 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 12 105 0 158 22 189 1 141] 
#[0 12 210 0 9 0 15 0 25] 
#[0 12 214 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 12 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 12 222 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 193 1 76 22 193 1 77 22 193 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 193 1 94 3 205 1 95 22 193 1 114 22 193 1 117 22 193 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 12 226 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 12 230 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 197 1 76 22 197 1 77 22 197 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 197 1 94 3 205 1 95 22 197 1 114 22 197 1 117 22 197 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 3 65 0 80 3 62 0 83 8 49 0 92 8 53 0 93 8 57 0 103 3 62 0 119 8 61 0 146 8 65 1 95 22 201 1 96 8 73 1 97 8 77 1 98 8 81 1 99 8 85 1 100 8 89 1 101 8 93 1 102 8 97 1 103 8 101 1 104] 
#[0 12 234 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 22 205 0 30] 
#[1 22 209 0 15 22 213 0 25] 
#[0 12 238 0 15 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 11 69 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 217 1 76 22 217 1 77 22 217 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 217 1 94 3 205 1 95 22 217 1 114 22 217 1 117 22 217 1 118 3 221 1 153 3 221 1 154 3 9 1 215 22 217 1 243 22 217 2 75 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 18 17 0 158 22 221 1 242] 
#[0 12 242 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 12 6 0 8 17 117 0 26 22 225 1 212 22 225 1 213] 
#[1 12 6 0 8 17 117 0 26 22 229 1 212 22 229 1 213] 
#[0 22 233 0 158] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 22 237 1 76 22 237 1 77 22 237 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 22 237 1 94 3 205 1 95 22 237 1 114 22 237 1 117 22 237 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 22 241 2 19 20 181 2 21 20 185 2 23 20 189 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 12 246 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 22 245 0 32 22 249 0 149 22 253 2 18] 
#[1 11 174 0 15 1 22 0 20 6 141 0 24 11 174 0 25 6 145 0 26 20 101 0 30 11 182 0 149 10 129 0 223 10 129 0 253] 
#[1 20 105 0 15 23 1 0 25] 
#[0 23 5 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 23 13 0 128] 
#[0 23 17 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 23 21 2 27 23 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 12 250 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 23 29 0 25] 
#[0 23 33 0 156] 
#[1 0 49 0 37 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 12 254 0 156 23 37 2 22 23 37 2 23 23 45 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 13 2 0 156 23 49 2 20 23 49 2 21 23 57 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 13 6 0 81 23 61 0 89 23 65 0 109 23 69 0 111 13 6 0 120 23 73 2 24 23 77 2 25] 
#[0 23 81 0 8] 
#[0 23 85 0 8] 
#[0 13 10 0 8] 
#[0 13 14 0 8] 
#[0 13 18 0 8] 
#[0 13 22 0 8] 
#[0 13 26 0 8] 
#[0 5 115 0 8] 
#[0 13 38 0 8] 
#[0 5 119 0 8] 
#[0 13 50 0 8] 
#[0 13 54 0 8] 
#[0 13 58 0 8] 
#[0 13 62 0 8] 
#[0 13 66 0 8] 
#[0 13 70 0 8] 
#[0 13 74 0 8] 
#[0 13 78 0 8] 
#[0 13 82 0 8] 
#[0 13 86 0 8] 
#[0 13 90 0 8] 
#[0 13 94 0 8] 
#[0 13 98 0 8] 
#[0 13 102 0 8] 
#[0 23 89 0 8] 
#[0 23 93 0 8] 
#[0 23 97 0 25] 
#[0 23 101 0 9] 
#[0 23 105 0 25] 
#[1 23 109 0 25 23 113 0 32 1 93 0 149 23 117 1 123 23 121 2 63] 
#[0 23 125 0 9] 
#[0 23 129 0 8] 
#[0 23 133 0 8] 
#[0 13 106 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 156 2 178] 
#[1 23 137 0 38 6 57 0 158 1 141 0 193 9 113 0 195 1 141 0 196 18 185 2 132 9 113 2 133] 
#[0 13 110 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 23 141 1 76 23 141 1 77 23 141 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 23 141 1 94 3 205 1 95 23 141 1 114 23 141 1 117 23 141 1 118 3 221 1 153 3 221 1 154 3 9 1 215 23 141 2 141 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 13 114 0 9 0 15] 
#[0 13 118 0 9 0 15] 
#[0 13 122 0 15 0 38] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 4 127 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 18 193 0 237 12 9 0 238 23 145 2 138 23 149 2 139 18 213 2 140] 
#[0 13 126 0 15 0 38] 
#[1 23 153 0 158 23 157 2 140] 
#[0 23 161 0 156] 
#[1 23 165 0 23 13 130 0 146 13 130 0 149 23 169 1 216 23 173 1 217] 
#[0 13 134 0 8 0 23 0 146 0 149] 
#[1 12 6 0 23 17 117 0 26 12 6 0 146 12 6 0 149 23 177 1 212 23 177 1 213] 
#[1 23 181 0 23 13 138 0 146 13 138 0 149 23 185 2 68 23 189 2 69] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 23 193 2 84 23 197 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 23 201 0 23 13 142 0 146 13 142 0 149 23 205 2 87 23 209 2 88] 
#[0 13 146 0 23 0 146 0 149] 
#[0 13 150 0 149] 
#[0 13 154 0 149] 
#[0 13 158 0 149] 
#[1 0 49 0 37 13 162 0 156 0 10 0 158 23 213 2 110 23 217 2 111 23 221 2 112 23 225 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 7 214 0 8 23 229 0 25 7 214 0 37 7 214 0 41 7 214 0 46 7 214 0 49 7 214 0 52 7 214 0 55 7 214 0 57 7 214 0 58 7 214 0 60 7 214 0 62 7 214 0 65 7 214 0 66 7 214 0 68 7 214 0 70 7 214 0 72 7 214 0 76 7 214 0 77 7 214 0 87 7 214 0 88 7 214 0 89 7 214 0 95 7 214 0 98 7 214 0 99 7 214 0 100 7 214 0 105 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 117 7 214 0 118 7 214 0 121 7 214 0 124 7 214 0 125 7 214 0 126 7 214 0 134 7 214 0 135 7 214 0 138 7 214 0 139 7 214 0 142 7 214 0 143 7 214 0 144 7 214 0 153 7 214 0 156 7 214 0 158 23 229 2 144 7 214 2 178] 
#[0 13 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 233 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 23 237 0 8] 
#[0 23 241 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 23 245 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 23 249 1 53 1 205 1 54 1 205 1 59 23 249 1 60 23 249 1 61 23 249 1 62 23 249 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 23 245 1 76 23 245 1 77 23 245 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 23 245 1 94 3 205 1 95 23 245 1 114 23 245 1 117 23 245 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 23 249 2 156 1 205 2 157 23 249 2 159 1 205 2 160 3 49 2 177] 
#[0 13 170 0 9 0 15] 
#[0 13 174 0 9 0 15] 
#[0 13 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 13 182 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 13 186 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 4 237 0 52 4 241 0 55 3 61 0 56 4 245 0 60 0 185 0 61 0 189 0 62 4 249 0 65 3 17 0 73 4 253 0 77 5 1 0 87 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 33 0 128 3 17 0 130 1 49 0 133 5 25 0 134 5 29 0 135 3 73 0 136 5 33 0 139 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 10 173 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 10 173 1 114 10 173 1 162 23 253 1 181 23 253 1 182 24 5 1 183 1 205 2 142 3 17 2 143 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 24 9 1 76 24 9 1 77 24 9 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 24 9 1 94 3 205 1 95 24 9 1 114 24 9 1 117 24 9 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 24 13 0 9] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 24 17 1 122 24 17 1 123 24 17 1 126 24 17 1 161 2 181 1 162 24 17 1 163 24 17 1 164 24 17 1 165 24 17 1 173 24 17 1 174 24 17 1 175 24 17 1 176 24 17 1 184 24 17 1 185 24 17 1 186 24 17 1 187 24 17 1 188 24 17 1 189 24 17 1 190 24 17 1 191 24 17 1 202 24 17 1 203 24 17 1 204 24 17 1 205 24 17 1 207 1 205 2 142 3 17 2 143 24 17 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 24 17 2 161] 
#[1 1 22 0 9 1 22 0 20 6 145 0 26 24 21 0 223 24 21 0 253] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 145 0 26 1 22 0 35 1 22 0 37 1 22 0 156 24 25 0 223 24 25 0 253] 
#[0 13 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 13 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 13 198 0 30] 
#[0 13 202 0 15 0 156] 
#[0 13 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 10 122 0 30] 
#[0 13 210 0 15 0 156] 
#[0 13 214 0 15 0 156] 
#[0 13 218 0 15 0 156] 
#[0 13 222 0 15 0 156] 
#[0 13 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 13 230 0 15 0 156] 
#[0 13 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 13 238 0 15 0 156] 
#[1 13 242 0 1 13 242 0 2 13 242 0 3 13 242 0 4 13 242 0 5 13 242 0 6 13 242 0 7 13 242 0 8 13 242 0 9 13 242 0 10 13 242 0 11 13 242 0 12 13 242 0 13 13 242 0 14 13 242 0 15 13 242 0 16 13 242 0 17 13 242 0 18 13 242 0 19 13 242 0 20 13 242 0 21 13 242 0 22 13 242 0 23 13 242 0 25 13 242 0 26 13 242 0 27 13 242 0 28 13 242 0 29 13 242 0 30 13 242 0 31 13 242 0 33 13 242 0 34 13 242 0 35 13 242 0 36 13 242 0 38 13 242 0 39 13 242 0 40 13 242 0 44 13 242 0 45 13 242 0 46 13 242 0 47 13 242 0 48 13 242 0 49 13 242 0 50 13 242 0 51 13 242 0 52 13 242 0 53 13 242 0 55 13 242 0 56 13 242 0 58 13 242 0 59 13 242 0 60 13 242 0 61 13 242 0 62 13 242 0 63 13 242 0 64 13 242 0 65 13 242 0 66 13 242 0 67 13 242 0 69 13 242 0 73 13 242 0 76 13 242 0 77 13 242 0 78 13 242 0 79 13 242 0 80 13 242 0 82 13 242 0 83 13 242 0 84 13 242 0 87 13 242 0 90 13 242 0 91 13 242 0 92 13 242 0 93 13 242 0 94 13 242 0 95 13 242 0 97 13 242 0 99 13 242 0 100 13 242 0 101 13 242 0 103 13 242 0 114 13 242 0 116 13 242 0 117 13 242 0 119 13 242 0 121 13 242 0 122 13 242 0 123 13 242 0 124 13 242 0 125 13 242 0 127 13 242 0 128 13 242 0 129 13 242 0 130 13 242 0 131 13 242 0 133 13 242 0 134 13 242 0 135 13 242 0 136 13 242 0 138 13 242 0 139 13 242 0 140 13 242 0 141 13 242 0 143 13 242 0 145 13 242 0 146 13 242 0 147 13 242 0 148 5 123 0 149 13 242 0 150 13 242 0 151 13 242 0 152 13 242 0 153 13 242 0 154 13 242 0 155 13 242 0 156 13 242 0 158 13 242 0 159 13 242 0 160 13 242 0 161 13 242 0 162 13 242 0 163 13 242 0 164 13 242 0 165 13 242 0 166 13 242 0 167 13 242 0 168 13 242 0 169 13 242 0 170 13 242 0 171 24 29 2 74 24 29 2 75 13 242 2 178] 
#[1 13 246 0 1 13 246 0 2 13 246 0 3 13 246 0 4 13 246 0 5 13 246 0 6 13 246 0 7 13 246 0 8 13 246 0 9 13 246 0 10 13 246 0 11 13 246 0 12 13 246 0 13 13 246 0 14 13 246 0 15 13 246 0 16 13 246 0 17 13 246 0 18 13 246 0 19 13 246 0 20 13 246 0 21 13 246 0 22 13 246 0 23 13 246 0 25 13 246 0 26 13 246 0 27 13 246 0 28 13 246 0 29 13 246 0 30 13 246 0 31 13 246 0 33 13 246 0 34 13 246 0 35 13 246 0 36 6 1 0 37 13 246 0 38 13 246 0 39 13 246 0 40 13 246 0 44 13 246 0 45 13 246 0 46 13 246 0 47 13 246 0 48 13 246 0 49 13 246 0 50 13 246 0 51 13 246 0 52 13 246 0 53 13 246 0 55 13 246 0 56 13 246 0 58 13 246 0 59 13 246 0 60 13 246 0 61 13 246 0 62 13 246 0 63 13 246 0 64 13 246 0 65 13 246 0 66 13 246 0 67 13 246 0 69 13 246 0 73 13 246 0 76 13 246 0 77 13 246 0 78 13 246 0 79 13 246 0 80 13 246 0 82 13 246 0 83 13 246 0 84 13 246 0 87 13 246 0 90 13 246 0 91 13 246 0 92 13 246 0 93 13 246 0 94 13 246 0 95 13 246 0 97 13 246 0 99 13 246 0 100 13 246 0 101 13 246 0 103 13 246 0 114 13 246 0 116 13 246 0 117 13 246 0 119 13 246 0 121 13 246 0 122 13 246 0 123 13 246 0 124 13 246 0 125 13 246 0 127 13 246 0 128 13 246 0 129 13 246 0 130 13 246 0 131 13 246 0 133 13 246 0 134 13 246 0 135 13 246 0 136 13 246 0 138 13 246 0 139 13 246 0 140 13 246 0 141 13 246 0 143 13 246 0 145 13 246 0 146 13 246 0 147 13 246 0 148 13 246 0 149 13 246 0 150 13 246 0 151 13 246 0 152 13 246 0 153 13 246 0 154 13 246 0 155 13 246 0 156 13 246 0 158 13 246 0 159 13 246 0 160 13 246 0 161 13 246 0 162 13 246 0 163 13 246 0 164 13 246 0 165 13 246 0 166 13 246 0 167 13 246 0 168 13 246 0 169 13 246 0 170 13 246 0 171 11 241 0 219 13 246 2 178] 
#[1 10 230 0 1 10 230 0 5 10 230 0 8 10 230 0 10 10 230 0 12 10 230 0 13 10 230 0 16 10 230 0 17 10 230 0 46 10 230 0 47 10 230 0 48 10 230 0 49 10 230 0 52 10 230 0 55 10 230 0 56 10 230 0 60 10 230 0 61 10 230 0 62 10 230 0 65 10 230 0 66 10 230 0 73 10 230 0 77 10 230 0 80 10 230 0 87 10 230 0 95 10 230 0 97 10 230 0 99 10 230 0 100 10 230 0 117 10 230 0 121 10 230 0 122 10 230 0 123 10 230 0 125 10 230 0 128 10 230 0 129 10 230 0 130 10 230 0 133 10 230 0 134 10 230 0 135 10 230 0 136 10 230 0 139 10 230 0 141 10 230 0 143 10 230 0 153 10 230 0 158 10 230 0 159 10 230 0 160 10 230 0 161 10 230 0 162 10 230 0 163 10 230 0 166 10 230 0 167 10 230 0 170 10 230 0 171 19 205 2 173 19 209 2 175] 
#[0 13 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 24 37 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 24 37 0 212 1 189 0 213 24 37 0 215 1 197 0 216 24 41 0 227 24 41 0 228 24 41 0 230 24 41 0 231 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 24 41 1 76 24 41 1 77 24 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 24 41 1 94 3 205 1 95 24 41 1 114 24 41 1 117 24 41 1 118 24 41 1 119 3 221 1 153 12 225 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 24 45 0 23] 
#[0 24 49 0 156] 
#[1 22 37 0 53 22 41 0 61 13 254 0 156 24 53 1 169 22 57 1 170 22 61 1 171] 
#[0 14 2 0 53 0 61 0 156] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 22 37 0 53 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 24 57 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 6 121 1 121 6 121 1 122 6 121 1 123 24 61 1 125 6 121 1 126 6 121 1 127 6 121 1 128 6 121 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 6 121 1 161 2 181 1 162 6 121 1 163 6 121 1 164 6 121 1 165 24 65 1 171 6 121 1 173 6 121 1 174 6 121 1 175 6 121 1 176 6 121 1 184 6 121 1 185 6 121 1 186 6 121 1 187 6 121 1 188 6 121 1 189 6 121 1 190 6 121 1 191 6 121 1 202 6 121 1 203 6 121 1 204 6 121 1 205 6 121 1 207 3 9 1 215 1 205 2 142 3 17 2 143 6 121 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 6 121 2 161 3 49 2 177] 
#[0 14 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 14 10 0 9] 
#[0 24 69 0 9] 
#[0 24 73 0 9] 
#[0 14 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 14 18 0 9 0 20] 
#[0 14 22 0 9 0 20] 
#[0 14 26 0 15 0 154] 
#[1 19 177 0 15 10 186 0 154 19 181 1 42 19 185 1 43] 
#[0 14 30 0 9 0 20] 
#[0 14 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 14 38 0 15 0 156] 
#[0 14 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 24 77 0 15 14 46 0 156] 
#[1 14 50 0 1 14 50 0 2 14 50 0 3 14 50 0 4 14 50 0 5 14 50 0 6 14 50 0 7 5 127 0 8 14 50 0 9 14 50 0 10 14 50 0 11 14 50 0 12 14 50 0 13 14 50 0 14 14 50 0 15 14 50 0 16 14 50 0 17 14 50 0 18 14 50 0 19 5 131 0 20 14 50 0 21 14 50 0 22 14 50 0 23 14 50 0 25 14 50 0 26 14 50 0 27 14 50 0 28 14 50 0 29 14 50 0 30 14 50 0 31 14 50 0 33 14 50 0 34 14 50 0 35 14 50 0 36 5 135 0 37 14 50 0 38 14 50 0 39 14 50 0 40 14 50 0 44 14 50 0 45 14 50 0 46 14 50 0 47 14 50 0 48 14 50 0 49 14 50 0 50 14 50 0 51 14 50 0 52 14 50 0 53 14 50 0 55 14 50 0 56 14 50 0 58 14 50 0 59 14 50 0 60 14 50 0 61 14 50 0 62 14 50 0 63 14 50 0 64 14 50 0 65 14 50 0 66 14 50 0 67 14 50 0 69 14 50 0 73 14 50 0 76 14 50 0 77 14 50 0 78 14 50 0 79 14 50 0 80 14 50 0 82 14 50 0 83 14 50 0 84 14 50 0 87 14 50 0 90 14 50 0 91 14 50 0 92 14 50 0 93 14 50 0 94 14 50 0 95 14 50 0 97 14 50 0 99 14 50 0 100 14 50 0 101 14 50 0 103 14 50 0 114 14 50 0 116 14 50 0 117 14 50 0 119 14 50 0 121 14 50 0 122 14 50 0 123 14 50 0 124 14 50 0 125 14 50 0 127 14 50 0 128 14 50 0 129 14 50 0 130 14 50 0 131 14 50 0 133 14 50 0 134 14 50 0 135 14 50 0 136 14 50 0 138 14 50 0 139 14 50 0 140 14 50 0 141 14 50 0 143 14 50 0 145 14 50 0 146 14 50 0 147 14 50 0 148 14 50 0 149 14 50 0 150 14 50 0 151 14 50 0 152 14 50 0 153 14 50 0 154 14 50 0 155 14 50 0 156 14 50 0 158 14 50 0 159 14 50 0 160 14 50 0 161 14 50 0 162 14 50 0 163 14 50 0 164 14 50 0 165 14 50 0 166 14 50 0 167 14 50 0 168 14 50 0 169 14 50 0 170 14 50 0 171 24 93 1 56 14 50 2 178] 
#[0 14 54 0 164 0 165 0 168 0 169] 
#[0 14 58 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 24 97 2 4 24 101 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 14 62 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 14 66 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 24 105 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 24 109 0 199 24 109 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 197 0 213 24 117 0 215 1 197 0 216 1 197 1 215 1 197 2 153 3 49 2 177] 
#[0 14 70 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 14 74 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 24 129 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 24 129 0 212 1 189 0 213 24 129 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[0 14 78 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 14 82 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 0 49 0 37 0 10 0 158 24 133 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 14 86 0 8 0 23 0 146 0 149] 
#[0 1 26 0 15 0 23 0 154] 
#[0 14 90 0 15 0 154] 
#[0 24 137 0 9] 
#[0 14 94 0 9 0 15 0 25] 
#[0 14 98 0 9 0 15 0 25] 
#[0 24 141 0 101] 
#[0 14 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 14 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 24 145 1 76 24 145 1 77 24 145 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 24 145 1 94 3 205 1 95 24 145 1 114 24 145 1 117 24 145 1 118 24 145 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 20 89 0 158 24 149 1 236] 
#[0 14 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 114 0 15 0 25] 
#[0 14 118 0 15 0 25] 
#[0 24 153 0 8] 
#[0 24 157 0 8] 
#[0 14 122 0 8 0 26 0 32 0 149] 
#[0 24 161 0 25] 
#[0 24 165 0 156] 
#[0 24 169 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 24 173 2 27 23 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 14 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 49 0 37 0 10 0 42 0 10 0 115 24 177 2 33 24 181 2 34 24 185 2 35 24 189 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 24 193 0 38] 
#[0 24 197 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 24 201 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 24 201 1 76 24 201 1 77 24 201 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 24 201 1 94 3 205 1 95 24 201 1 114 24 201 1 117 24 201 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 24 205 0 156] 
#[1 13 6 0 81 23 61 0 89 23 65 0 109 23 69 0 111 24 209 2 24 23 77 2 25] 
#[0 14 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 142 0 156] 
#[0 14 146 0 156] 
#[1 23 61 0 89 23 65 0 109 23 69 0 111 13 6 0 120 24 213 2 24 23 77 2 25] 
#[0 14 150 0 156] 
#[0 14 154 0 156] 
#[1 13 6 0 81 23 61 0 89 23 65 0 109 23 69 0 111 24 217 2 24 23 77 2 25] 
#[1 14 158 0 81 24 221 0 111 14 158 0 120] 
#[1 14 162 0 81 24 225 0 111 14 162 0 120] 
#[1 14 166 0 81 24 229 0 89 24 233 0 109 14 166 0 120] 
#[1 24 237 0 81 24 241 0 120] 
#[0 14 170 0 81 0 120] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 24 245 2 4 24 249 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 24 253 2 4 24 249 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 25 1 2 4 24 249 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 25 5 2 4 24 249 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 14 174 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 25 9 0 23 14 178 0 25 14 178 0 32 14 178 0 149 25 13 2 58 25 13 2 59] 
#[0 14 182 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 25 21 1 76 25 21 1 77 25 21 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 25 21 1 94 3 205 1 95 25 21 1 114 25 21 1 117 25 21 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 14 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 14 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 25 25 0 25 25 29 0 32 1 93 0 149 25 33 1 123 25 37 2 150] 
#[0 25 41 0 9] 
#[0 25 45 0 9] 
#[0 14 198 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 2 178] 
#[0 14 202 0 9 0 15] 
#[0 14 206 0 9 0 15] 
#[1 25 49 0 9 21 105 0 15] 
#[0 21 81 0 30] 
#[0 14 210 0 9 0 15] 
#[0 14 214 0 25 0 37 0 41 0 57 0 62 0 68 0 88 0 89 0 98 0 99 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 156 2 178] 
#[1 5 157 0 100 5 169 0 125 6 57 0 158 1 141 0 193 25 57 0 195 1 141 0 196 25 57 0 213] 
#[1 25 61 0 146 14 218 0 149 25 65 1 219 25 69 1 220 25 73 1 221] 
#[0 14 222 0 146 0 149] 
#[1 23 181 0 23 13 138 0 146 13 138 0 149 25 77 2 68 23 189 2 69] 
#[1 6 57 0 158 1 141 0 193 25 81 0 195 1 141 0 196 25 81 0 214 25 85 1 218] 
#[1 25 61 0 146 14 218 0 149 25 89 1 219 25 69 1 220 25 73 1 221] 
#[0 14 226 0 146 0 149] 
#[1 25 93 0 15 25 97 0 154] 
#[1 25 109 0 86 25 109 0 104 14 230 0 158 25 109 2 85 25 109 2 86] 
#[1 6 57 0 158 1 141 0 193 25 81 0 195 1 141 0 196 25 81 0 214 25 117 1 218] 
#[1 25 61 0 146 14 218 0 149 25 121 1 219 25 69 1 220 25 73 1 221] 
#[0 14 234 0 146 0 149] 
#[0 25 125 0 156] 
#[1 25 129 0 15 14 238 0 156] 
#[0 14 242 0 15 0 156] 
#[0 25 133 0 158] 
#[0 14 246 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 25 137 0 9] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 25 141 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 14 250 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 14 254 0 9 0 15] 
#[1 5 139 0 2 5 139 0 3 5 143 0 4 5 139 0 5 5 139 0 6 5 147 0 7 5 139 0 9 5 139 0 10 5 151 0 11 5 139 0 12 5 155 0 14 5 139 0 15 5 139 0 16 5 159 0 18 5 139 0 21 5 163 0 22 5 139 0 26 5 139 0 27 5 167 0 28 5 139 0 29 5 171 0 30 5 139 0 31 5 139 0 33 5 175 0 34 5 139 0 35 5 139 0 36 5 139 0 39 5 179 0 40 5 139 0 44 5 139 0 91 5 139 0 150 5 183 0 151 5 139 0 152 5 139 0 154 5 139 0 155 7 29 1 115] 
#[0 25 145 0 9] 
#[0 15 2 0 9] 
#[1 15 6 0 9 15 241 0 15] 
#[0 25 149 0 9] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 25 153 1 122 25 153 1 123 25 153 1 126 25 153 1 161 2 181 1 162 25 153 1 163 25 153 1 164 25 153 1 165 25 153 1 173 25 153 1 174 25 153 1 175 25 153 1 176 25 153 1 184 25 153 1 185 25 153 1 186 25 153 1 187 25 153 1 188 25 153 1 189 25 153 1 190 25 153 1 191 25 153 1 202 25 153 1 203 25 153 1 204 25 153 1 205 25 153 1 207 1 205 2 142 3 17 2 143 25 153 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 25 153 2 161] 
#[0 15 10 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 15 14 0 9 0 20] 
#[1 12 162 0 8 12 162 0 13 15 18 0 15 12 162 0 17 12 162 0 19 12 162 0 20 12 162 0 35 12 162 0 37 15 18 0 156 22 117 1 55] 
#[0 15 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 15 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 5 187 0 158 17 161 0 232 17 161 0 233] 
#[1 25 157 0 23 25 161 0 145 25 165 1 172] 
#[0 15 30 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 15 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 15 38 0 53 0 61 0 156] 
#[1 0 142 0 4 0 142 0 7 0 103 0 8 0 142 0 11 0 142 0 13 0 142 0 14 0 142 0 17 0 142 0 18 0 142 0 19 0 142 0 20 0 142 0 22 24 45 0 23 0 142 0 28 0 142 0 30 0 142 0 34 0 142 0 35 0 142 0 37 0 142 0 40 0 142 0 151] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 15 42 0 53 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 5 191 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 76 0 39 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 43 0 87 0 237 0 94 0 47 0 95 0 245 0 97 0 249 0 99 0 51 0 100 0 55 0 114 1 5 0 116 0 59 0 117 0 63 0 121 1 17 0 122 1 21 0 123 0 67 0 124 0 71 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 0 75 0 134 0 79 0 135 1 61 0 136 0 83 0 138 0 87 0 139 1 73 0 140 1 77 0 141 0 91 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 15 42 0 156 0 95 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 212 1 189 0 213 1 145 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 11 201 1 121 11 201 1 122 11 201 1 123 11 201 1 126 11 201 1 127 11 201 1 128 11 201 1 129 2 133 1 130 2 137 1 131 2 141 1 132 2 145 1 133 2 149 1 139 2 153 1 140 2 157 1 142 2 149 1 144 2 165 1 149 2 169 1 154 2 173 1 158 11 201 1 161 2 181 1 162 11 201 1 163 11 201 1 164 11 201 1 165 11 201 1 173 11 201 1 174 11 201 1 175 11 201 1 176 11 201 1 184 11 201 1 185 11 201 1 186 11 201 1 187 11 201 1 188 11 201 1 189 11 201 1 190 11 201 1 191 11 201 1 202 11 201 1 203 11 201 1 204 11 201 1 205 11 201 1 207 3 9 1 215 1 205 2 142 3 17 2 143 11 201 2 152 3 25 2 153 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 11 201 2 161 3 49 2 177] 
#[0 15 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 15 50 0 145 0 149] 
#[0 15 54 0 149] 
#[0 15 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 25 169 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[0 25 173 0 158] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 25 177 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[0 15 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 15 66 0 9 0 15 0 38] 
#[0 15 70 0 9 0 38] 
#[0 0 162 0 37] 
#[1 6 173 0 10 1 82 0 37 6 177 2 154] 
#[0 1 126 0 37] 
#[0 25 181 0 158] 
#[0 2 170 0 37] 
#[0 2 190 0 37] 
#[0 25 185 0 158] 
#[1 22 173 0 158 25 189 1 215] 
#[1 14 218 0 32 25 61 0 146 14 218 0 149 25 193 1 219 25 69 1 220 25 73 1 221] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 25 197 1 76 25 197 1 77 25 197 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 25 197 1 94 3 205 1 95 25 197 1 114 25 197 1 117 25 197 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 15 74 0 15 0 25] 
#[0 15 78 0 15 0 25] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 25 201 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 25 205 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 15 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 15 86 0 8 25 209 0 30 15 86 0 37 15 86 0 41 15 86 0 46 15 86 0 49 15 86 0 52 15 86 0 55 15 86 0 57 15 86 0 58 15 86 0 60 15 86 0 62 15 86 0 65 15 86 0 66 15 86 0 68 15 86 0 70 15 86 0 72 15 86 0 76 15 86 0 77 15 86 0 87 15 86 0 88 15 86 0 89 15 86 0 95 15 86 0 99 15 86 0 100 15 86 0 105 15 86 0 108 15 86 0 109 15 86 0 111 15 86 0 112 15 86 0 113 15 86 0 114 15 86 0 117 15 86 0 118 15 86 0 121 15 86 0 124 15 86 0 125 15 86 0 126 15 86 0 134 15 86 0 135 15 86 0 138 15 86 0 139 15 86 0 142 15 86 0 143 15 86 0 144 15 86 0 153 15 86 0 156 15 86 0 158 25 213 2 16 25 217 2 17 15 86 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 25 221 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 25 221 1 76 25 221 1 77 25 221 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 25 221 1 94 3 205 1 95 25 221 1 114 25 221 1 117 25 221 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 25 225 0 156] 
#[0 25 229 0 156] 
#[1 0 49 0 37 0 10 0 115 25 233 2 35 25 237 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 0 49 0 37 0 10 0 42 25 241 2 34 25 245 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 25 249 0 42 25 253 0 115] 
#[0 15 90 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 26 1 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 26 5 0 25] 
#[0 15 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 26 9 0 81] 
#[0 24 241 0 120] 
#[0 24 237 0 81] 
#[0 15 98 0 81 0 120] 
#[0 15 102 0 81 0 120] 
#[0 15 106 0 81 0 120] 
#[0 15 110 0 81 0 120] 
#[1 26 13 0 25 26 17 0 32 1 93 0 149 26 21 1 123 26 25 2 26] 
#[1 26 13 0 25 26 17 0 32 1 93 0 149 26 21 1 123 26 29 2 26] 
#[0 26 33 0 9] 
#[1 12 206 0 8 12 206 0 49 12 206 0 52 12 206 0 55 12 206 0 60 12 206 0 65 12 206 0 66 12 206 0 77 22 153 0 86 12 206 0 87 12 206 0 95 12 206 0 100 22 153 0 104 22 153 0 114 12 206 0 117 12 206 0 121 12 206 0 125 22 153 0 128 12 206 0 134 12 206 0 135 12 206 0 139 12 206 0 143 12 206 0 158 22 153 2 7 22 153 2 8 22 153 2 9] 
#[0 26 37 0 9] 
#[0 26 41 0 9] 
#[0 26 45 0 15] 
#[1 26 49 0 48 26 53 0 128] 
#[0 15 114 0 25 0 32 0 149] 
#[0 15 118 0 25 0 32 0 149] 
#[0 26 57 0 25] 
#[0 15 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 26 61 1 76 26 61 1 77 26 61 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 26 61 1 94 3 205 1 95 26 61 1 114 26 61 1 117 26 61 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 15 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 15 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 25 25 0 25 25 29 0 32 1 93 0 149 25 33 1 123 26 65 2 150] 
#[1 25 25 0 25 25 29 0 32 1 93 0 149 25 33 1 123 26 69 2 150] 
#[0 15 134 0 15 0 38] 
#[0 1 70 0 15 0 146 0 149] 
#[1 26 73 0 15 15 138 0 146 15 138 0 149] 
#[1 22 173 0 158 26 77 1 215] 
#[1 26 81 0 149 26 85 1 227] 
#[1 15 142 0 25 15 142 0 32 25 61 0 146 15 142 0 149 26 89 1 221] 
#[0 15 146 0 25 0 32 0 146 0 149] 
#[1 25 61 0 146 14 218 0 149 26 93 1 219 25 69 1 220 25 73 1 221] 
#[0 15 150 0 15 0 146 0 149] 
#[1 26 97 0 15 15 154 0 146 15 154 0 149] 
#[1 26 101 0 149 26 105 2 70] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 26 109 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 15 158 0 8 0 23 0 146 0 149] 
#[0 15 162 0 158] 
#[0 15 166 0 158] 
#[1 22 173 0 158 26 113 1 215] 
#[0 15 170 0 158] 
#[1 26 97 0 15 15 174 0 146 15 174 0 149] 
#[1 26 117 0 149 26 121 2 89] 
#[0 15 178 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 49 0 37 26 125 0 156 0 10 0 158 26 129 2 112 23 225 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 15 182 0 15 26 133 0 30 15 182 0 156] 
#[0 26 137 0 25] 
#[0 26 141 0 9] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 26 145 1 122 26 145 1 123 26 145 1 126 26 145 1 161 2 181 1 162 26 145 1 163 26 145 1 164 26 145 1 165 26 145 1 173 26 145 1 174 26 145 1 175 26 145 1 176 26 145 1 184 26 145 1 185 26 145 1 186 26 145 1 187 26 145 1 188 26 145 1 189 26 145 1 190 26 145 1 191 26 145 1 202 26 145 1 203 26 145 1 204 26 145 1 205 26 145 1 207 1 205 2 142 3 17 2 143 26 145 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 26 145 2 161] 
#[1 0 105 0 1 0 109 0 5 4 229 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 233 0 49 0 157 0 50 4 237 0 52 4 241 0 55 0 169 0 56 0 177 0 59 4 245 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 249 0 65 3 17 0 73 0 209 0 76 4 253 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 5 1 0 87 0 237 0 94 5 5 0 95 0 245 0 97 0 249 0 99 5 9 0 100 1 5 0 116 5 13 0 117 5 17 0 121 1 17 0 122 1 21 0 123 5 21 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 17 0 130 1 45 0 131 1 49 0 133 5 25 0 134 5 29 0 135 1 61 0 136 1 65 0 138 5 33 0 139 1 73 0 140 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 5 37 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 5 41 0 193 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 2 1 1 12 1 205 1 13 1 205 1 15 1 205 1 16 2 17 1 17 2 21 1 18 2 25 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 2 65 1 53 2 69 1 54 2 181 1 58 2 77 1 59 2 81 1 60 2 85 1 61 2 65 1 62 2 93 1 63 1 205 1 79 2 181 1 114 26 149 1 122 26 149 1 123 26 149 1 126 26 149 1 161 2 181 1 162 26 149 1 163 26 149 1 164 26 149 1 165 26 149 1 173 26 149 1 174 26 149 1 175 26 149 1 176 26 149 1 184 26 149 1 185 26 149 1 186 26 149 1 187 26 149 1 188 26 149 1 189 26 149 1 190 26 149 1 191 26 149 1 202 26 149 1 203 26 149 1 204 26 149 1 205 26 149 1 207 1 205 2 142 3 17 2 143 26 149 2 152 2 65 2 156 1 205 2 157 2 65 2 159 1 205 2 160 26 149 2 161] 
#[0 15 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 15 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 26 153 1 76 26 153 1 77 26 153 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 26 153 1 94 3 205 1 95 26 153 1 114 26 153 1 117 26 153 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 26 157 0 23] 
#[0 26 161 0 9] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 223 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 26 165 0 223 26 165 0 253 1 22 2 178] 
#[1 17 9 0 15 26 169 0 38] 
#[0 15 194 0 9 0 38] 
#[1 15 198 0 9 15 198 0 15 26 173 0 30 15 198 0 38 26 177 2 5 26 181 2 6] 
#[0 15 202 0 15 0 154] 
#[0 15 206 0 32 0 149] 
#[0 26 185 0 69] 
#[0 26 189 0 9] 
#[0 26 193 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 11 69 0 149 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 26 197 1 76 26 197 1 77 26 197 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 26 197 1 94 3 205 1 95 26 197 1 114 26 197 1 117 26 197 1 118 3 221 1 153 3 221 1 154 3 9 1 215 26 197 1 243 26 197 2 75 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 15 210 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 15 214 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 26 201 0 25] 
#[1 15 86 0 8 25 209 0 30 15 86 0 37 15 86 0 41 15 86 0 46 15 86 0 49 15 86 0 52 15 86 0 55 15 86 0 57 15 86 0 58 15 86 0 60 15 86 0 62 15 86 0 65 15 86 0 66 15 86 0 68 15 86 0 70 15 86 0 72 15 86 0 76 15 86 0 77 15 86 0 87 15 86 0 88 15 86 0 89 15 86 0 95 15 86 0 99 15 86 0 100 15 86 0 105 15 86 0 108 15 86 0 109 15 86 0 111 15 86 0 112 15 86 0 113 15 86 0 114 15 86 0 117 15 86 0 118 15 86 0 121 15 86 0 124 15 86 0 125 15 86 0 126 15 86 0 134 15 86 0 135 15 86 0 138 15 86 0 139 15 86 0 142 15 86 0 143 15 86 0 144 15 86 0 153 15 86 0 156 15 86 0 158 26 205 2 16 25 217 2 17 15 86 2 178] 
#[0 15 218 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 15 222 0 156] 
#[0 25 253 0 115] 
#[0 15 226 0 156] 
#[0 25 249 0 42] 
#[1 1 93 0 149 26 209 1 123] 
#[1 1 93 0 149 26 213 1 123] 
#[0 26 217 0 38] 
#[0 15 230 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 26 221 0 25 26 225 0 32 1 93 0 149 26 229 1 123 26 233 2 28] 
#[0 15 234 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 26 237 1 76 26 237 1 77 26 237 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 26 237 1 94 3 205 1 95 26 237 1 114 26 237 1 117 26 237 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 15 238 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 15 242 0 37 0 89 0 109 0 111 0 120 0 156] 
#[0 15 246 0 37 0 81 0 89 0 109 0 111 0 156] 
#[0 15 250 0 25 0 32 0 149] 
#[0 15 254 0 25 0 32 0 149] 
#[0 16 2 0 25 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 26 241 2 4 24 249 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 26 245 0 8] 
#[0 26 249 0 8] 
#[0 16 6 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 26 253 0 25] 
#[0 16 10 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 16 14 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 6 57 0 158 1 141 0 193 25 81 0 195 1 141 0 196 25 81 0 214 27 1 1 218] 
#[0 27 5 0 23] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 16 18 0 156 0 10 0 158 27 17 0 192 27 17 1 208 27 9 1 228 27 13 1 229 27 17 1 230 27 17 1 231 27 17 1 237 27 17 1 244 3 253 1 245 4 1 1 247 27 17 2 11 27 17 2 29 27 17 2 36 27 17 2 43 27 17 2 53 27 17 2 61 27 17 2 64 27 17 2 78 27 17 2 102 27 17 2 113 4 29 2 124 0 93 2 125 0 97 2 126 0 101 2 127 27 17 2 149] 
#[1 7 214 0 8 27 21 0 25 7 214 0 37 7 214 0 41 7 214 0 46 7 214 0 49 7 214 0 52 7 214 0 55 7 214 0 57 7 214 0 58 7 214 0 60 7 214 0 62 7 214 0 65 7 214 0 66 7 214 0 68 7 214 0 70 7 214 0 72 7 214 0 76 7 214 0 77 7 214 0 87 7 214 0 88 7 214 0 89 7 214 0 95 7 214 0 98 7 214 0 99 7 214 0 100 7 214 0 105 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 117 7 214 0 118 7 214 0 121 7 214 0 124 7 214 0 125 7 214 0 126 7 214 0 134 7 214 0 135 7 214 0 138 7 214 0 139 7 214 0 142 7 214 0 143 7 214 0 144 7 214 0 153 7 214 0 156 7 214 0 158 27 21 2 144 7 214 2 178] 
#[0 16 22 0 25 0 32 0 146 0 149] 
#[1 26 101 0 149 27 25 2 70] 
#[1 6 57 0 158 1 141 0 193 27 29 0 195 1 141 0 196 27 29 0 214] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 16 26 0 156 0 10 0 158 27 81 0 192 27 81 1 208 27 81 1 231 27 81 1 237 27 81 1 244 3 253 1 245 4 1 1 247 27 81 2 11 27 81 2 29 27 81 2 36 27 81 2 43 27 81 2 53 27 81 2 61 27 81 2 64 27 73 2 71 27 77 2 72 27 81 2 73 27 81 2 78 27 81 2 102 27 81 2 113 27 85 2 124 0 93 2 125 0 97 2 126 0 101 2 127 27 81 2 165] 
#[1 7 214 0 8 27 93 0 25 7 214 0 37 7 214 0 41 7 214 0 46 7 214 0 49 7 214 0 52 7 214 0 55 7 214 0 57 7 214 0 58 7 214 0 60 7 214 0 62 7 214 0 65 7 214 0 66 7 214 0 68 7 214 0 70 7 214 0 72 7 214 0 76 7 214 0 77 7 214 0 87 7 214 0 88 7 214 0 89 7 214 0 95 7 214 0 98 7 214 0 99 7 214 0 100 7 214 0 105 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 117 7 214 0 118 7 214 0 121 7 214 0 124 7 214 0 125 7 214 0 126 7 214 0 134 7 214 0 135 7 214 0 138 7 214 0 139 7 214 0 142 7 214 0 143 7 214 0 144 7 214 0 153 7 214 0 156 7 214 0 158 27 93 2 144 7 214 2 178] 
#[1 27 97 0 86 27 97 0 104 14 230 0 158 27 97 2 85 27 97 2 86] 
#[0 16 30 0 15 0 154] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 16 34 0 156 0 10 0 158 27 117 2 11 27 117 2 36 27 109 2 90 27 113 2 91 27 117 2 92 27 117 2 93 27 117 2 100 27 129 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[1 7 214 0 8 27 133 0 25 7 214 0 37 7 214 0 41 7 214 0 46 7 214 0 49 7 214 0 52 7 214 0 55 7 214 0 57 7 214 0 58 7 214 0 60 7 214 0 62 7 214 0 65 7 214 0 66 7 214 0 68 7 214 0 70 7 214 0 72 7 214 0 76 7 214 0 77 7 214 0 87 7 214 0 88 7 214 0 89 7 214 0 95 7 214 0 98 7 214 0 99 7 214 0 100 7 214 0 105 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 117 7 214 0 118 7 214 0 121 7 214 0 124 7 214 0 125 7 214 0 126 7 214 0 134 7 214 0 135 7 214 0 138 7 214 0 139 7 214 0 142 7 214 0 143 7 214 0 144 7 214 0 153 7 214 0 156 7 214 0 158 27 133 2 144 7 214 2 178] 
#[0 16 38 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 16 42 0 15 0 156] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 27 137 1 76 27 137 1 77 27 137 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 27 137 1 94 3 205 1 95 27 137 1 114 27 137 1 117 27 137 1 118 27 137 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 16 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 14 218 0 25 25 61 0 146 27 141 1 219 25 69 1 220 25 73 1 221] 
#[0 16 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 16 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 178] 
#[0 16 58 0 23] 
#[0 16 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 16 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 16 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[0 16 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 27 145 1 76 27 145 1 77 27 145 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 27 145 1 94 3 205 1 95 27 145 1 114 27 145 1 117 27 145 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 16 78 0 9 0 15 0 38] 
#[0 16 82 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 27 149 1 76 27 149 1 77 27 149 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 27 149 1 94 3 205 1 95 27 149 1 114 27 149 1 117 27 149 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[1 14 218 0 25 14 218 0 32 25 61 0 146 14 218 0 149 27 153 1 219 25 69 1 220 25 73 1 221] 
#[1 14 218 0 25 14 218 0 32 25 61 0 146 14 218 0 149 27 157 1 219 25 69 1 220 25 73 1 221] 
#[0 27 161 0 25] 
#[0 16 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 16 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 16 94 0 37 0 115 0 156] 
#[0 16 98 0 37 0 42 0 156] 
#[0 16 102 0 32 0 149] 
#[0 16 106 0 156] 
#[0 27 165 0 114] 
#[0 16 110 0 156] 
#[0 16 114 0 156] 
#[0 27 169 0 25] 
#[0 27 173 0 9] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 27 177 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[1 5 70 0 1 5 70 0 5 5 70 0 8 5 74 0 9 5 70 0 10 5 70 0 12 5 70 0 13 5 70 0 16 5 70 0 17 5 70 0 46 5 70 0 47 5 70 0 48 5 70 0 49 5 70 0 52 5 70 0 55 5 70 0 56 5 70 0 60 5 70 0 61 5 70 0 62 5 70 0 65 5 70 0 66 5 70 0 73 5 70 0 77 5 70 0 80 5 70 0 86 5 70 0 87 5 70 0 95 5 70 0 97 5 70 0 99 5 70 0 100 5 70 0 104 5 70 0 114 5 70 0 117 5 70 0 121 5 70 0 122 5 70 0 123 5 70 0 125 5 70 0 128 5 70 0 129 5 70 0 130 5 70 0 133 5 70 0 134 5 70 0 135 5 70 0 136 5 70 0 139 5 70 0 141 5 70 0 143 5 70 0 153 1 255 0 158 5 70 0 159 5 70 0 160 5 70 0 161 5 70 0 162 5 70 0 163 5 70 0 166 5 70 0 167 5 70 0 170 5 70 0 171 27 181 0 234 11 253 0 235 12 1 0 236 12 5 0 237 12 9 0 238] 
#[0 16 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 26 97 0 15 16 122 0 146 16 122 0 149] 
#[1 27 185 0 57 27 189 0 99 5 157 0 100 5 169 0 125 27 193 0 126 27 197 0 137 5 185 0 158 1 141 0 193 27 201 0 195 1 141 0 196 27 205 0 213 27 209 0 214 27 213 1 215 27 217 1 222 27 221 1 223 27 225 1 224 27 229 1 225 27 233 1 226] 
#[0 27 237 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 16 126 0 156 0 10 0 158 27 241 0 192 27 241 1 208 27 241 1 230 27 241 1 231 27 241 1 237 27 241 1 244 3 253 1 245 4 1 1 247 27 241 2 11 27 241 2 29 27 241 2 36 27 241 2 43 27 241 2 53 27 241 2 61 27 241 2 64 27 241 2 78 27 241 2 102 27 241 2 113 4 29 2 124 0 93 2 125 0 97 2 126 0 101 2 127 27 241 2 149] 
#[0 16 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 16 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 7 214 0 8 27 245 0 25 7 214 0 37 7 214 0 41 7 214 0 46 7 214 0 49 7 214 0 52 7 214 0 55 7 214 0 57 7 214 0 58 7 214 0 60 7 214 0 62 7 214 0 65 7 214 0 66 7 214 0 68 7 214 0 70 7 214 0 72 7 214 0 76 7 214 0 77 7 214 0 87 7 214 0 88 7 214 0 89 7 214 0 95 7 214 0 98 7 214 0 99 7 214 0 100 7 214 0 105 7 214 0 108 7 214 0 109 7 214 0 111 7 214 0 112 7 214 0 113 7 214 0 114 7 214 0 117 7 214 0 118 7 214 0 121 7 214 0 124 7 214 0 125 7 214 0 126 7 214 0 134 7 214 0 135 7 214 0 138 7 214 0 139 7 214 0 142 7 214 0 143 7 214 0 144 7 214 0 153 7 214 0 156 7 214 0 158 27 245 2 144 7 214 2 178] 
#[0 16 138 0 15 0 146 0 149] 
#[0 16 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 158 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 174 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 178 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 27 249 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 16 182 0 156 0 10 0 158 27 253 0 192 27 253 1 208 27 253 1 231 27 253 1 237 27 253 1 244 3 253 1 245 4 1 1 247 27 253 2 11 27 253 2 29 27 253 2 36 27 253 2 43 27 253 2 53 27 253 2 61 27 253 2 64 27 253 2 73 27 253 2 78 27 253 2 102 27 253 2 113 27 85 2 124 0 93 2 125 0 97 2 126 0 101 2 127 27 253 2 165] 
#[0 16 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 1 63 0 8 1 67 0 41 8 237 0 46 1 63 0 49 1 63 0 52 1 63 0 55 0 74 0 57 3 138 0 58 1 63 0 60 0 78 0 62 1 63 0 65 1 63 0 66 0 82 0 68 3 142 0 70 5 195 0 72 16 190 0 76 1 63 0 77 1 63 0 87 0 86 0 88 5 199 0 89 1 63 0 95 5 203 0 99 1 63 0 100 1 83 0 105 1 87 0 108 5 207 0 109 5 211 0 111 5 215 0 112 8 177 0 113 1 103 0 114 1 63 0 117 1 107 0 118 1 63 0 121 1 111 0 124 1 63 0 125 0 90 0 126 1 63 0 134 1 63 0 135 28 25 0 138 1 63 0 139 1 119 0 142 1 63 0 143 8 221 0 144 1 123 0 158 4 161 1 209 4 165 1 210 4 169 1 211 8 201 1 232 8 205 1 233 8 209 1 234 8 213 1 238 8 217 1 239 8 221 1 240 8 225 1 246 8 229 1 248 8 233 1 249 8 237 1 250 8 237 1 251 8 245 2 12 8 249 2 13 8 253 2 14 9 1 2 30 9 5 2 31 9 9 2 32 9 13 2 37 9 17 2 38 9 21 2 39 9 25 2 44 9 29 2 45 9 33 2 54 9 37 2 55 9 41 2 56 9 45 2 62 4 173 2 65 4 177 2 66 4 181 2 67 4 185 2 79 4 189 2 80 4 193 2 81 4 197 2 107 4 201 2 108 4 205 2 109 4 209 2 115 4 213 2 116 4 217 2 117 28 29 2 151 28 33 2 166 28 37 2 167 28 41 2 168] 
#[0 16 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 16 198 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 22 173 0 158 28 45 1 215] 
#[0 16 202 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[0 16 206 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[0 28 49 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 16 210 0 156 0 10 0 158 28 53 2 11 28 53 2 36 28 53 2 92 28 53 2 93 28 53 2 100 27 129 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 16 214 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[0 16 218 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[0 16 222 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[1 5 219 0 8 28 57 0 41 5 219 0 49 5 219 0 52 5 219 0 55 5 219 0 60 5 219 0 65 5 219 0 66 16 226 0 70 28 61 0 72 5 219 0 77 5 219 0 87 28 65 0 89 5 219 0 95 28 69 0 99 5 219 0 100 28 73 0 105 28 77 0 109 28 81 0 111 28 85 0 112 5 219 0 114 5 219 0 117 28 89 0 118 5 219 0 121 8 253 0 124 5 219 0 125 5 219 0 134 5 219 0 135 28 93 0 138 5 219 0 139 28 97 0 142 5 219 0 143 5 219 0 158 8 245 2 12 8 249 2 13 8 253 2 14 9 13 2 37 9 17 2 38 9 21 2 39 28 101 2 145 28 105 2 151] 
#[0 16 230 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 16 234 0 15 0 156] 
#[0 28 109 0 25] 
#[0 16 238 0 9 0 15 0 38] 
#[1 16 242 0 80 16 242 0 83 28 113 0 90 16 242 0 92 16 242 0 93 16 242 0 103 16 242 0 119 16 242 0 146] 
#[0 16 246 0 25 0 32 0 149] 
#[0 16 250 0 25 0 32 0 149] 
#[0 16 254 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 28 117 0 226 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 28 117 1 76 28 117 1 77 28 117 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 28 117 1 94 3 205 1 95 28 117 1 114 28 117 1 117 28 117 1 118 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 17 2 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 17 6 0 25 0 32 0 149] 
#[0 28 121 0 9] 
#[0 28 125 0 9] 
#[0 17 10 0 15 0 25 0 32 0 146 0 149] 
#[0 28 129 0 8] 
#[0 17 14 0 15 0 25 0 32 0 146 0 149] 
#[0 17 18 0 15 0 25 0 32 0 146 0 149] 
#[0 5 223 0 15 0 25 0 32 0 146 0 149] 
#[0 17 22 0 15 0 25 0 32 0 146 0 149] 
#[0 17 26 0 15 0 25 0 32 0 146 0 149] 
#[0 17 30 0 15 0 25 0 32 0 146 0 149] 
#[0 17 34 0 25 0 32 0 146 0 149] 
#[1 28 133 0 15 17 38 0 25 17 38 0 32 17 38 0 146 17 38 0 149] 
#[1 28 137 0 15 17 42 0 25 17 42 0 32 17 42 0 146 17 42 0 149] 
#[0 17 46 0 15 0 25 0 32 0 146 0 149] 
#[0 17 50 0 25 0 32 0 146 0 149] 
#[0 17 54 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 17 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 17 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 17 66 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 17 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 2 35 0 8 2 39 0 41 6 70 0 46 2 35 0 49 2 35 0 52 2 35 0 55 2 35 0 60 2 35 0 65 2 35 0 66 6 82 0 70 6 74 0 71 2 43 0 72 2 35 0 77 6 74 0 85 2 35 0 87 2 47 0 89 2 35 0 95 2 39 0 99 2 35 0 100 2 39 0 105 6 70 0 108 2 47 0 109 2 47 0 111 2 43 0 112 2 51 0 114 2 35 0 117 2 39 0 118 2 35 0 121 2 55 0 124 2 35 0 125 2 35 0 134 2 35 0 135 5 227 0 138 2 35 0 139 2 39 0 142 2 35 0 143 2 63 0 158 13 105 2 151] 
#[1 2 67 0 8 2 71 0 41 6 106 0 46 2 67 0 49 2 67 0 52 2 67 0 55 3 226 0 57 6 114 0 58 2 67 0 60 3 230 0 62 2 67 0 65 2 67 0 66 3 234 0 68 6 110 0 70 2 75 0 72 17 74 0 76 2 67 0 77 2 67 0 87 3 238 0 88 5 231 0 89 2 67 0 95 5 235 0 99 2 67 0 100 2 87 0 105 2 91 0 108 5 231 0 109 5 231 0 111 5 231 0 112 2 95 0 113 2 99 0 114 2 67 0 117 2 71 0 118 2 67 0 121 2 103 0 124 2 67 0 125 3 242 0 126 2 67 0 134 2 67 0 135 5 239 0 138 2 67 0 139 2 87 0 142 2 67 0 143 6 98 0 144 2 111 0 158] 
#[1 2 115 0 8 2 119 0 41 6 122 0 46 2 115 0 49 2 115 0 52 2 115 0 55 3 246 0 57 6 142 0 58 2 115 0 60 3 250 0 62 2 115 0 65 2 115 0 66 3 254 0 68 6 138 0 70 2 123 0 72 17 78 0 76 2 115 0 77 2 115 0 87 4 2 0 88 5 243 0 89 2 115 0 95 5 243 0 99 2 115 0 100 2 123 0 105 2 131 0 108 5 243 0 109 5 243 0 111 5 243 0 112 2 135 0 113 2 139 0 114 2 115 0 117 2 119 0 118 2 115 0 121 2 143 0 124 2 115 0 125 4 6 0 126 2 115 0 134 2 115 0 135 5 247 0 138 2 115 0 139 2 123 0 142 2 115 0 143 6 134 0 144 2 115 0 158] 
#[1 2 167 0 8 2 171 0 41 6 174 0 46 2 167 0 49 2 167 0 52 2 167 0 55 4 10 0 57 6 182 0 58 2 167 0 60 4 14 0 62 2 167 0 65 2 167 0 66 4 18 0 68 6 178 0 70 2 175 0 72 17 82 0 76 2 167 0 77 2 167 0 87 4 22 0 88 5 251 0 89 2 167 0 95 5 255 0 99 2 167 0 100 2 187 0 105 2 191 0 108 5 251 0 109 5 251 0 111 5 251 0 112 2 195 0 113 2 199 0 114 2 167 0 117 2 171 0 118 2 167 0 121 2 203 0 124 2 167 0 125 4 26 0 126 2 167 0 134 2 167 0 135 6 3 0 138 2 167 0 139 2 187 0 142 2 167 0 143 6 166 0 144 2 211 0 158] 
#[1 2 215 0 8 2 219 0 41 6 190 0 46 2 215 0 49 2 215 0 52 2 215 0 55 4 30 0 57 6 210 0 58 2 215 0 60 4 34 0 62 2 215 0 65 2 215 0 66 4 38 0 68 6 206 0 70 2 223 0 72 17 86 0 76 2 215 0 77 2 215 0 87 4 42 0 88 6 7 0 89 2 215 0 95 6 11 0 99 2 215 0 100 2 235 0 105 2 239 0 108 6 7 0 109 6 7 0 111 6 7 0 112 2 243 0 113 2 247 0 114 2 215 0 117 2 219 0 118 2 215 0 121 2 251 0 124 2 215 0 125 4 46 0 126 2 215 0 134 2 215 0 135 6 15 0 138 2 215 0 139 2 235 0 142 2 215 0 143 6 198 0 144 3 3 0 158] 
#[1 3 7 0 8 3 11 0 41 6 234 0 46 3 7 0 49 3 7 0 52 3 7 0 55 4 50 0 57 6 242 0 58 3 7 0 60 4 54 0 62 3 7 0 65 3 7 0 66 4 58 0 68 6 238 0 70 6 226 0 71 3 15 0 72 17 90 0 76 3 7 0 77 6 226 0 85 3 7 0 87 4 62 0 88 6 19 0 89 3 7 0 95 6 23 0 99 3 7 0 100 3 27 0 105 3 31 0 108 6 19 0 109 6 19 0 111 6 27 0 112 3 39 0 113 3 43 0 114 3 7 0 117 3 11 0 118 3 7 0 121 3 47 0 124 3 7 0 125 4 66 0 126 3 7 0 134 3 7 0 135 6 31 0 138 3 7 0 139 3 27 0 142 3 7 0 143 6 218 0 144 3 55 0 158] 
#[1 3 123 0 8 3 127 0 41 7 54 0 46 3 123 0 49 3 123 0 52 3 123 0 55 1 191 0 57 3 123 0 60 1 195 0 62 3 123 0 65 3 123 0 66 3 131 0 70 3 135 0 71 3 139 0 72 17 94 0 76 3 123 0 77 3 135 0 85 3 123 0 87 1 199 0 88 6 35 0 89 3 123 0 95 6 39 0 99 3 123 0 100 3 151 0 105 3 155 0 108 6 35 0 109 6 35 0 111 6 43 0 112 3 163 0 113 3 167 0 114 3 123 0 117 3 127 0 118 3 123 0 121 3 171 0 124 3 123 0 125 1 211 0 126 3 123 0 134 3 123 0 135 6 43 0 138 3 123 0 139 3 151 0 142 3 123 0 143 3 175 0 144 3 179 0 158] 
#[1 3 199 0 8 3 203 0 41 3 199 0 49 3 199 0 52 3 199 0 55 4 146 0 57 3 199 0 60 4 150 0 62 3 199 0 65 3 199 0 66 7 166 0 70 7 154 0 71 6 47 0 72 3 199 0 77 7 154 0 85 3 199 0 87 4 154 0 88 3 211 0 89 3 199 0 95 3 215 0 99 3 199 0 100 3 219 0 105 1 219 0 108 3 211 0 109 3 211 0 111 3 223 0 112 3 227 0 113 3 231 0 114 3 199 0 117 3 203 0 118 3 199 0 121 3 235 0 124 3 199 0 125 4 158 0 126 3 199 0 134 3 199 0 135 3 223 0 138 3 199 0 139 3 219 0 142 3 199 0 143 7 150 0 144 3 239 0 158] 
#[0 28 145 0 76] 
#[1 17 98 0 76 28 173 0 89 28 173 0 99 28 173 0 109 28 173 0 111 28 173 0 112 28 173 0 138 28 173 2 168] 
#[0 17 102 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 106 0 15 0 154] 
#[0 17 110 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 17 114 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[1 2 27 0 8 2 27 0 41 2 27 0 49 2 27 0 52 2 27 0 55 2 27 0 60 2 27 0 65 2 27 0 66 2 27 0 72 2 27 0 77 2 27 0 87 2 27 0 89 2 27 0 95 2 27 0 99 2 27 0 100 2 27 0 105 2 27 0 109 2 27 0 111 2 27 0 112 2 27 0 114 2 27 0 117 2 27 0 118 2 27 0 121 6 54 0 124 2 27 0 125 2 27 0 134 2 27 0 135 2 27 0 138 2 27 0 139 2 27 0 142 2 27 0 143 2 27 0 158] 
#[1 2 51 0 8 2 51 0 41 2 51 0 49 2 51 0 52 2 51 0 55 2 51 0 60 2 51 0 65 2 51 0 66 2 51 0 72 2 51 0 77 2 51 0 87 2 51 0 89 2 51 0 95 2 51 0 99 2 51 0 100 2 51 0 105 2 51 0 109 2 51 0 111 2 51 0 112 2 51 0 114 2 51 0 117 2 51 0 118 2 51 0 121 6 78 0 124 2 51 0 125 2 51 0 134 2 51 0 135 2 51 0 138 2 51 0 139 2 51 0 142 2 51 0 143 2 51 0 158] 
#[1 6 51 0 8 6 51 0 41 6 51 0 49 6 51 0 52 6 51 0 55 6 51 0 60 6 51 0 65 6 51 0 66 6 51 0 72 6 51 0 77 6 51 0 87 6 51 0 89 6 51 0 95 6 51 0 99 6 51 0 100 6 51 0 105 6 51 0 109 6 51 0 111 6 51 0 112 6 51 0 114 6 51 0 117 6 51 0 118 6 51 0 121 6 102 0 124 6 51 0 125 6 51 0 134 6 51 0 135 6 51 0 138 6 51 0 139 6 51 0 142 6 51 0 143 6 51 0 158] 
#[1 6 55 0 8 6 59 0 41 6 55 0 49 6 55 0 52 6 55 0 55 6 55 0 60 6 55 0 65 6 55 0 66 17 118 0 70 6 59 0 72 6 55 0 77 6 55 0 87 6 59 0 89 6 55 0 95 6 59 0 99 6 55 0 100 6 59 0 105 6 59 0 109 6 59 0 111 6 59 0 112 6 55 0 114 6 55 0 117 6 59 0 118 6 55 0 121 6 130 0 124 6 55 0 125 6 55 0 134 6 55 0 135 6 59 0 138 6 55 0 139 6 59 0 142 6 55 0 143 6 55 0 158] 
#[1 2 159 0 8 2 159 0 41 2 159 0 49 2 159 0 52 2 159 0 55 2 159 0 60 2 159 0 65 2 159 0 66 2 159 0 72 2 159 0 77 2 159 0 87 2 159 0 89 2 159 0 95 2 159 0 99 2 159 0 100 2 159 0 105 2 159 0 109 2 159 0 111 2 159 0 112 2 159 0 114 2 159 0 117 2 159 0 118 2 159 0 121 6 150 0 124 2 159 0 125 2 159 0 134 2 159 0 135 2 159 0 138 2 159 0 139 2 159 0 142 2 159 0 143 2 159 0 158] 
#[1 6 63 0 8 6 63 0 41 6 63 0 49 6 63 0 52 6 63 0 55 6 63 0 60 6 63 0 65 6 63 0 66 6 63 0 72 6 63 0 77 6 63 0 87 6 63 0 89 6 63 0 95 6 63 0 99 6 63 0 100 6 63 0 105 6 63 0 109 6 63 0 111 6 63 0 112 6 63 0 114 6 63 0 117 6 63 0 118 6 63 0 121 6 162 0 124 6 63 0 125 6 63 0 134 6 63 0 135 6 63 0 138 6 63 0 139 6 63 0 142 6 63 0 143 6 63 0 158] 
#[1 6 67 0 8 6 67 0 41 6 67 0 49 6 67 0 52 6 67 0 55 6 67 0 60 6 67 0 65 6 67 0 66 6 67 0 72 6 67 0 77 6 67 0 87 6 67 0 89 6 67 0 95 6 67 0 99 6 67 0 100 6 67 0 105 6 67 0 109 6 67 0 111 6 67 0 112 6 67 0 114 6 67 0 117 6 67 0 118 6 67 0 121 6 194 0 124 6 67 0 125 6 67 0 134 6 67 0 135 6 67 0 138 6 67 0 139 6 67 0 142 6 67 0 143 6 67 0 158] 
#[1 6 71 0 8 6 71 0 41 6 71 0 49 6 71 0 52 6 71 0 55 6 71 0 60 6 71 0 65 6 71 0 66 6 71 0 72 6 71 0 77 6 71 0 87 6 71 0 89 6 71 0 95 6 71 0 99 6 71 0 100 6 71 0 105 6 71 0 109 6 71 0 111 6 71 0 112 6 71 0 114 6 71 0 117 6 71 0 118 6 71 0 121 6 222 0 124 6 71 0 125 6 71 0 134 6 71 0 135 6 71 0 138 6 71 0 139 6 71 0 142 6 71 0 143 6 71 0 158] 
#[1 3 79 0 8 3 79 0 41 3 79 0 49 3 79 0 52 3 79 0 55 3 79 0 60 3 79 0 65 3 79 0 66 3 79 0 72 3 79 0 77 3 79 0 87 3 79 0 89 3 79 0 95 3 79 0 99 3 79 0 100 3 79 0 105 3 79 0 109 3 79 0 111 3 79 0 112 3 79 0 114 3 79 0 117 3 79 0 118 3 79 0 121 7 6 0 124 3 79 0 125 3 79 0 134 3 79 0 135 3 79 0 138 3 79 0 139 3 79 0 142 3 79 0 143 3 79 0 158] 
#[1 6 75 0 8 6 75 0 41 6 75 0 49 6 75 0 52 6 75 0 55 6 75 0 60 6 75 0 65 6 75 0 66 6 75 0 72 6 75 0 77 6 75 0 87 6 75 0 89 6 75 0 95 6 75 0 99 6 75 0 100 6 75 0 105 6 75 0 109 6 75 0 111 6 75 0 112 6 75 0 114 6 75 0 117 6 75 0 118 6 75 0 121 4 115 0 124 6 75 0 125 6 75 0 134 6 75 0 135 6 75 0 138 6 75 0 139 6 75 0 142 6 75 0 143 6 75 0 158] 
#[1 3 191 0 8 3 191 0 41 3 191 0 49 3 191 0 52 3 191 0 55 3 191 0 60 3 191 0 65 3 191 0 66 3 191 0 72 3 191 0 77 3 191 0 87 3 191 0 89 3 191 0 95 3 191 0 99 3 191 0 100 3 191 0 105 3 191 0 109 3 191 0 111 3 191 0 112 3 191 0 114 3 191 0 117 3 191 0 118 3 191 0 121 7 70 0 124 3 191 0 125 3 191 0 134 3 191 0 135 3 191 0 138 3 191 0 139 3 191 0 142 3 191 0 143 3 191 0 158] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 28 177 0 70 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 28 185 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 28 185 0 212 1 189 0 213 28 185 0 215 1 197 0 216 28 181 1 142 3 9 1 215 28 185 1 252 3 25 2 153 7 105 2 177] 
#[1 6 79 0 8 6 79 0 41 6 79 0 49 6 79 0 52 6 79 0 55 6 79 0 60 6 79 0 65 6 79 0 66 6 79 0 72 6 79 0 77 6 79 0 87 6 79 0 89 6 79 0 95 6 79 0 99 6 79 0 100 6 79 0 105 6 79 0 109 6 79 0 111 6 79 0 112 6 79 0 114 6 79 0 117 6 79 0 118 6 79 0 121 7 162 0 124 6 79 0 125 6 79 0 134 6 79 0 135 6 79 0 138 6 79 0 139 6 79 0 142 6 79 0 143 6 79 0 158] 
#[0 17 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 178] 
#[0 28 189 0 158] 
#[0 28 193 0 25] 
#[0 17 126 0 25 0 32 0 149] 
#[0 17 130 0 25 0 32 0 149] 
#[0 28 197 0 9] 
#[1 27 189 0 99 5 185 0 158 1 141 0 193 27 209 0 195 1 141 0 196 27 209 0 214 27 213 1 215 28 201 1 224 27 229 1 225 28 205 1 226] 
#[1 27 189 0 99 5 185 0 158 1 141 0 193 27 209 0 195 1 141 0 196 27 209 0 214 28 209 1 215 28 213 1 225 28 217 1 226] 
#[0 18 145 0 124] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 28 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 28 225 0 212 1 189 0 213 28 225 0 215 1 197 0 216 3 9 1 215 3 25 2 153 28 225 2 169 3 49 2 177] 
#[0 17 74 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 78 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 82 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 86 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 90 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 94 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[0 17 134 0 76 0 89 0 99 0 109 0 111 0 112 0 138] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 28 229 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 28 229 0 212 1 189 0 213 28 229 0 215 1 197 0 216 3 9 1 215 3 25 2 153 3 49 2 177] 
#[1 5 121 0 8 5 125 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 157 0 100 1 169 0 117 1 169 0 121 5 169 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 185 0 158 1 141 0 193 1 137 0 195 1 141 0 196 28 233 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 28 233 0 212 1 189 0 213 28 233 0 215 1 197 0 216 3 9 1 215 28 233 1 253 3 25 2 153 3 49 2 177] 
#[1 28 237 0 158 28 241 2 94] 
#[0 17 138 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 17 142 0 156] 
#[0 17 146 0 25 0 32 0 146 0 149] 
#[1 28 245 0 15 17 150 0 25 17 150 0 32 17 150 0 146 17 150 0 149] 
#[0 17 154 0 25 0 32 0 146 0 149] 
#[0 17 158 0 15 0 25 0 32 0 146 0 149] 
#[0 17 162 0 15 0 25 0 32 0 146 0 149] 
#[0 17 166 0 25 0 32 0 146 0 149] 
#[0 17 170 0 158] 
#[1 28 249 0 158 28 253 2 170 29 1 2 171] 
#[0 29 5 0 158] 
#[1 28 237 0 158 29 9 2 94] 
#[1 12 6 0 8 17 117 0 26 29 13 1 212 29 13 1 213] 
#[0 17 174 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[1 27 189 0 99 5 185 0 158 1 141 0 193 27 209 0 195 1 141 0 196 27 209 0 214 28 209 1 215 28 213 1 225 29 17 1 226] 
#[0 29 21 0 37] 
#[1 29 25 0 25 28 249 0 158 29 29 2 171] 
#[0 17 178 0 25 0 158] 
#[0 29 33 0 25] 
#[0 17 182 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[0 29 37 0 8] 
#[0 17 186 0 25 0 32 0 146 0 149] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 77 3 65 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 69 0 129 3 17 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 73 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 77 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 221 0 212 1 189 0 213 3 221 0 215 1 197 0 216 1 201 0 240 1 205 0 241 1 205 0 242 1 213 0 243 1 217 0 244 1 221 0 249 1 225 0 250 1 205 0 252 1 205 0 254 1 205 0 255 1 205 1 8 1 245 1 9 1 249 1 10 1 253 1 11 1 205 1 12 1 205 1 13 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 205 1 19 1 201 1 31 1 205 1 32 1 205 1 33 1 205 1 38 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 48 3 101 1 53 1 205 1 54 1 205 1 59 3 101 1 60 3 101 1 61 3 101 1 62 3 101 1 63 3 125 1 64 3 129 1 65 3 133 1 66 3 137 1 67 3 141 1 68 3 145 1 69 3 149 1 70 3 153 1 71 3 157 1 72 3 161 1 73 3 165 1 74 3 165 1 75 29 41 1 76 29 41 1 77 29 41 1 78 1 205 1 79 3 185 1 80 3 185 1 82 3 185 1 88 3 197 1 91 29 41 1 94 3 205 1 95 29 41 1 114 29 41 1 117 29 41 1 118 29 41 1 119 3 221 1 153 3 221 1 154 3 9 1 215 1 205 2 142 3 17 2 143 3 25 2 153 3 101 2 156 1 205 2 157 3 101 2 159 1 205 2 160 3 49 2 177] 
#[0 17 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 17 194 0 25 0 158] 
#[0 17 198 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158] 
#[1 0 10 0 8 11 66 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 29 45 2 1 20 9 2 2 20 13 2 3 20 17 2 4 20 21 2 10 20 25 2 124 0 93 2 125 0 97 2 126 0 101 2 127] 
#[0 29 49 0 38] 
#[0 29 53 0 9] 
#[0 17 202 0 25 0 158] 
#[1 14 218 0 25 14 218 0 32 25 61 0 146 14 218 0 149 29 57 1 219 25 69 1 220 25 73 1 221] 
#[1 8 125 0 25 8 129 0 32 1 93 0 149 8 133 1 123 29 61 1 255] 
#[0 17 206 0 8 0 37 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 156 0 158]
	).
]

{ #category : #private }
CSharpParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	actions isEmpty
		ifTrue: [ (currentToken ids includes: scanner rightBraceId)
				ifTrue: [ | i scannerState stackItem |
					i := nodeStack size.
					scannerState := nil.
					[ i > 0 and: [ scannerState isNil ] ]
						whileTrue: [ stackItem := nodeStack at: i.
							(stackItem = #interpolatedString or: [ stackItem = #interpolatedVerbatimString ])
								ifTrue: [ scannerState := stackItem ].
							i := i - 1 ].
					scannerState notNil
						ifTrue: [ self scope: scannerState.
							self position: currentToken startPosition - 1.
							currentToken := nil.
							self getNextToken.
							self scope: #default.
							(currentToken ids includes: scanner rightBraceId)
								ifTrue: [ ^ actions ].
							^ self actionsForCurrentToken ] ].
			(currentToken ids includes: scanner gtgtId)
				ifTrue: [ currentToken := currentToken class value: '>' start: currentToken startPosition ids: (Array with: scanner gtId).
					self position: currentToken startPosition.
					actions := super actionsForCurrentToken ] ].
	^ actions
]

{ #category : #accessing }
CSharpParser >> parse [
	| node |
	node := super parse.
	(node isKindOf: SmaCCParseNode)
		ifTrue: [ node
				attributeNamed: #preprocessorDirectives
				put: scanner preprocessorDirectives ].
	^ node
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForLocalFunctionHeader1: nodes [
	| result |
	result := nodes at: 3.
	result addFirstTokens: (nodes at: 1) to: result modifiers.
	result returnType: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForRefExpression1: nodes [
	| result |
	result := CSRefExpressionNode new.
	result refToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForRefMethodHeader1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result returnType: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result typeParameters: (nodes at: 6).
	result leftParenToken: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result parameters.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParenToken: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForScanFormat1: nodes [
	^ self scanFormat
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedString1: nodes [
	^ #interpolatedString
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedVerbatimString1: nodes [
	^ #interpolatedVerbatimString
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForVarType1: nodes [
	| result |
	result := CSVarTypeNode new.
	result varToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments__1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments___1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_____tuple_type_element__element___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_____tuple_type_element__element___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_arguments1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_target_specifier1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_class_base1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_extern_alias_directives1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_extern_alias_directives2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_generic_dimension_specifier1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_implicit_anonymous_function_parameter_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_property_initializer1: nodes [
	| result |
	result := Array new: 3.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_query_body_clauses1: nodes [
	| result |
	result := Array new: 19.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_query_continuation1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_stackalloc_element_initializer______2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 2).
	self add: ((nodes at: 2) at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_struct_interfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForaccessor_declarations2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForaccessor_modifiers5: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForadd_accessor_declaration1: nodes [
	| result |
	result := CSAddAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_method_expression1: nodes [
	| result |
	result := CSAnonymousMethodExpressionNode new.
	result delegateToken: (nodes at: 1).
	result signature: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_method_expression2: nodes [
	| result |
	result := CSAnonymousMethodExpressionNode new.
	result asyncToken: (nodes at: 1).
	result delegateToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_object_creation_expression1: nodes [
	| result |
	result := CSAnonymousObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result leftBraceToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result declarators.
	result addTokens: ((nodes at: 2) at: 3) to: result commaTokens.
	result rightBraceToken: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_object_initializer1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_object_initializer2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument1: nodes [
	| result |
	result := CSArgumentNode new.
	result identifier: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result expression: ((nodes at: 2) at: 1).
	result inToken: ((nodes at: 2) at: 2).
	result refToken: ((nodes at: 2) at: 3).
	result outToken: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value4: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression1: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result rankSpecifiers.
	result arrayInitializer: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression2: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result arrayInitializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression3: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result rankSpecifiers.
	result arrayInitializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_initializer1: nodes [
	| result |
	result := CSArrayInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_initializer2: nodes [
	| result |
	result := CSArrayInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_type1: nodes [
	| result |
	result := CSArrayTypeNode new.
	result type: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result rankSpecifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForassignment1: nodes [
	| result |
	result := CSAssignmentNode new.
	result lhs: (nodes at: 1).
	result operator: ((nodes at: 2) at: 1).
	result refToken: ((nodes at: 2) at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute1: nodes [
	| result |
	result := CSAttributeValueNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result rightParen: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_arguments2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_section1: nodes [
	| result |
	result := CSAttributeNode new.
	result leftBracket: (nodes at: 1).
	result target: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result attributeValues.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_section2: nodes [
	| result |
	result := CSAttributeNode new.
	result leftBracket: (nodes at: 1).
	result target: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result attributeValues.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForawait_expression1: nodes [
	| result |
	result := CSAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbase_access1: nodes [
	| result |
	result := CSBaseAccessNode new.
	result baseToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifier: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbase_access2: nodes [
	| result |
	result := CSBaseAccessNode new.
	result baseToken: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbinary_operator_declarator1: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	self add: (nodes at: 5) to: (result at: 5).
	result at: 6 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 5).
	result at: 7 put: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForblock1: nodes [
	| result |
	result := CSBlockStatementNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbreak_statement1: nodes [
	| result |
	result := CSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcast_expression1: nodes [
	| result |
	result := CSCastExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result type: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForchecked_expression1: nodes [
	| result |
	result := CSCheckedExpressionNode new.
	result checkedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForchecked_statement1: nodes [
	| result |
	result := CSCheckedStatementNode new.
	result checkedToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_declaration1: nodes [
	| result |
	result := CSClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result classToken: (nodes at: 4).
	result name: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result commaToken: ((nodes at: 7) at: 3).
	result addTokens: ((nodes at: 7) at: 4) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcollection_initializer1: nodes [
	| result |
	result := CSCollectionInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcollection_initializer2: nodes [
	| result |
	result := CSCollectionInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcompilation_unit1: nodes [
	| result |
	result := CSCompilationUnitNode new.
	result addNodes: (nodes at: 1) to: result directives.
	result addNodes: (nodes at: 2) to: result directives.
	result addNodes: (nodes at: 3) to: result _attributes.
	result addNodes: (nodes at: 4) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconditional_expression3: nodes [
	| result |
	result := CSConditionalExpressionNode new.
	result booleanExpression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconst_declarator1: nodes [
	| result |
	result := CSConstantDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstant_declaration1: nodes [
	| result |
	result := CSConstantDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result constToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result declarators.
	result addTokens: ((nodes at: 5) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstant_declarator1: nodes [
	| result |
	result := CSConstantDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_constraint1: nodes [
	| result |
	result := CSConstructorConstraintNode new.
	result newToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_declaration1: nodes [
	| result |
	result := CSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result identifierToken: ((nodes at: 3) at: 1).
	result leftParenToken: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result parameters.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result rightParenToken: ((nodes at: 3) at: 5).
	result initializer: ((nodes at: 3) at: 6).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_initializer1: nodes [
	| result |
	result := CSConstructorInitializerNode new.
	result colonToken: (nodes at: 1).
	result baseToken: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_initializer2: nodes [
	| result |
	result := CSConstructorInitializerNode new.
	result colonToken: (nodes at: 1).
	result thisToken: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcontinue_statement1: nodes [
	| result |
	result := CSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconversion_operator_declarator1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconversion_operator_declarator2: nodes [
	| result |
	result := Array new: 7.
	result at: 7 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeclaration_expression1: nodes [
	| result |
	result := CSDeclarationExpressionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeclaration_statement1: nodes [
	| result |
	result := CSDeclarationStatementNode new.
	result declaration: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordefault_value_expression1: nodes [
	| result |
	result := CSDefaultValueExpressionNode new.
	result defaultToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordefault_value_expression2: nodes [
	| result |
	result := CSDefaultValueExpressionNode new.
	result defaultToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_creation_expression1: nodes [
	| result |
	result := CSDelegateCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_declaration1: nodes [
	| result |
	result := CSDelegateDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result delegateToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result leftParen: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result parameters.
	result addTokens: ((nodes at: 5) at: 4) to: result commas.
	result rightParen: ((nodes at: 5) at: 5).
	result semicolon: ((nodes at: 5) at: 6).
	result typeParameters: ((nodes at: 5) at: 7).
	result addNodes: ((nodes at: 5) at: 8) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_declaration2: nodes [
	| result |
	result := CSDelegateDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result delegateToken: (nodes at: 3).
	result refToken: ((nodes at: 4) at: 1).
	result readonlyToken: ((nodes at: 4) at: 2).
	result type: (nodes at: 5).
	result name: ((nodes at: 6) at: 1).
	result leftParen: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result parameters.
	result addTokens: ((nodes at: 6) at: 4) to: result commas.
	result rightParen: ((nodes at: 6) at: 5).
	result semicolon: ((nodes at: 6) at: 6).
	result typeParameters: ((nodes at: 6) at: 7).
	result addNodes: ((nodes at: 6) at: 8) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_header1: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_header2: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 7 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 8).
	result at: 6 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access1: nodes [
	| result |
	result := CSMemberAccessNode new.
	result periodToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeArguments: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access2: nodes [
	| result |
	result := CSElementAccessNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access3: nodes [
	| result |
	result := CSInvocationAccessNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordo_statement1: nodes [
	| result |
	result := CSDoStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result rightParenToken: (nodes at: 6).
	result semicolonToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_access1: nodes [
	| result |
	result := CSElementAccessNode new.
	result baseExpression: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_initializer1: nodes [
	| result |
	result := CSElementInitializerNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_initializer2: nodes [
	| result |
	result := CSElementInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForempty_statement1: nodes [
	| result |
	result := CSEmptyStatementNode new.
	result semicolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_declaration1: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result enumToken: (nodes at: 3).
	result name: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result typeToken: ((nodes at: 5) at: 2).
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result declarations.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result rightBrace: ((nodes at: 6) at: 4).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_member_declaration1: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_member_declaration2: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForevent_declaration1: nodes [
	| result |
	result := CSEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result declarators.
	result addTokens: ((nodes at: 5) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForevent_declaration2: nodes [
	| result |
	result := CSEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result leftBraceToken: (nodes at: 6).
	result addDeclaration: ((nodes at: 7) at: 1).
	result removeDeclaration: ((nodes at: 7) at: 2).
	result rightBraceToken: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexception_filter1: nodes [
	| result |
	result := CSExceptionFilterNode new.
	result whenToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_paramenter1: nodes [
	| result |
	result := CSAnonymousFunctionParameterNode new.
	result modifier: (nodes at: 1).
	result type: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_paramenter_list2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_signature1: nodes [
	| result |
	result := CSExplicitAnonymousFunctionSignatureNode new.
	result leftParenToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declaration1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result type: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result declarators.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarator1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarator2: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarators1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexpression_statement1: nodes [
	| result |
	result := CSExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directive1: nodes [
	| result |
	result := CSExternAliasDirectiveNode new.
	result externToken: (nodes at: 1).
	result aliasToken: (nodes at: 2).
	result identifierToken: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directives1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directives2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfield_declaration1: nodes [
	| result |
	result := CSFieldDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result type: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result declarators.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinalizer_declaration1: nodes [
	| result |
	result := CSFinalizerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2) to: result modifiers.
	result tildeToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result leftParenToken: (nodes at: 5).
	result rightParenToken: (nodes at: 6).
	result body: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinalizer_declaration2: nodes [
	| result |
	result := CSFinalizerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2) to: result modifiers.
	result addToken: (nodes at: 3) to: result modifiers.
	result tildeToken: (nodes at: 4).
	result identifierToken: (nodes at: 5).
	result leftParenToken: (nodes at: 6).
	result rightParenToken: (nodes at: 7).
	result body: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinally_clause1: nodes [
	| result |
	result := CSFinallyClauseNode new.
	result finallyToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_parameter1: nodes [
	| result |
	result := CSFixedParameterNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result expression: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_pointer_declarator1: nodes [
	| result |
	result := CSFixedPointerDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result andToken: ((nodes at: 3) at: 1).
	result expression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_size_buffer_declaration1: nodes [
	| result |
	result := CSFixedSizeBufferDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result fixedToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result declarators.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_size_buffer_declarator1: nodes [
	| result |
	result := CSFixedSizeBufferDeclaratorNode new.
	result name: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_statement1: nodes [
	| result |
	result := CSFixedStatementNode new.
	result fixedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result declarators.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfor_initializer2: nodes [
	| result |
	result := CSStatementListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result expressions.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfor_statement1: nodes [
	| result |
	result := CSForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result initializer: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolonTokens.
	result condition: (nodes at: 5).
	result addToken: (nodes at: 6) to: result semicolonTokens.
	result iterator: (nodes at: 7).
	result rightParenToken: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForforeach_statement1: nodes [
	| result |
	result := CSForeachStatementNode new.
	result foreachToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	result inToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result rightParenToken: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForforeach_statement2: nodes [
	| result |
	result := CSForeachStatementNode new.
	result foreachToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result inToken: (nodes at: 6).
	result expression: (nodes at: 7).
	result rightParenToken: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfrom_clause1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgeneral_catch_clause1: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgeneric_dimension_specifier1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForget_accessor_declaration1: nodes [
	| result |
	result := CSGetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result getToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result expression: ((nodes at: 4) at: 3).
	result semicolonToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement1: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result identifierToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement2: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result caseToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement3: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForif_statement1: nodes [
	| result |
	result := CSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForif_statement2: nodes [
	| result |
	result := CSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result elseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicit_anonymous_function_signature1: nodes [
	| result |
	result := CSImplicitAnonymousFunctionSignatureNode new.
	result leftParenToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicit_anonymous_function_signature2: nodes [
	| result |
	result := CSImplicitAnonymousFunctionSignatureNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicitly_typed_local_variable_declaration1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicitly_typed_local_variable_declaration2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: ((nodes at: 1) at: 1).
	result at: 4 put: ((nodes at: 1) at: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_body1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_body2: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declaration1: nodes [
	| result |
	result := CSIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result returnType: ((nodes at: 3) at: 1).
	result thisToken: ((nodes at: 3) at: 2).
	result leftBracketToken: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result parameters.
	result addTokens: ((nodes at: 3) at: 5) to: result commas.
	result rightBracketToken: ((nodes at: 3) at: 6).
	result type: ((nodes at: 3) at: 7).
	result periodToken: ((nodes at: 3) at: 8).
	result leftBraceToken: ((nodes at: 4) at: 1).
	result getAccessor: ((nodes at: 4) at: 2).
	result setAccessor: ((nodes at: 4) at: 3).
	result rightBraceToken: ((nodes at: 4) at: 4).
	result equalGreaterThanToken: ((nodes at: 4) at: 5).
	result expression: ((nodes at: 4) at: 6).
	result semicolonToken: ((nodes at: 4) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declaration2: nodes [
	| result |
	result := CSIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result addToken: ((nodes at: 3) at: 1) to: result refTokens.
	result readonlyToken: ((nodes at: 3) at: 2).
	result returnType: ((nodes at: 4) at: 1).
	result thisToken: ((nodes at: 4) at: 2).
	result leftBracketToken: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result parameters.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result rightBracketToken: ((nodes at: 4) at: 6).
	result type: ((nodes at: 4) at: 7).
	result periodToken: ((nodes at: 4) at: 8).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result getAccessor: ((nodes at: 5) at: 2).
	result rightBraceToken: ((nodes at: 5) at: 3).
	result equalGreaterThanToken: ((nodes at: 5) at: 4).
	result addToken: ((nodes at: 5) at: 5) to: result refTokens.
	result expression: ((nodes at: 5) at: 6).
	result semicolonToken: ((nodes at: 5) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declarator1: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declarator2: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 7 put: (nodes at: 2).
	result at: 8 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	self addAll: ((nodes at: 6) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinitializer_target1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinitializer_target2: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_declaration1: nodes [
	| result |
	result := CSInterfaceDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result interfaceToken: (nodes at: 4).
	result name: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colon: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBrace: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_event_declaration1: nodes [
	| result |
	result := CSInterfaceEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_declaration1: nodes [
	| result |
	result := CSInterfaceMethodDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result name: ((nodes at: 4) at: 1).
	result typeParameters: ((nodes at: 4) at: 2).
	result leftParen: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result parameters.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result rightParen: ((nodes at: 4) at: 6).
	result addNodes: ((nodes at: 4) at: 7) to: result constraintClauses.
	result body: ((nodes at: 4) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_declaration2: nodes [
	| result |
	result := CSInterfaceMethodDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result typeParameters: ((nodes at: 5) at: 2).
	result leftParen: ((nodes at: 5) at: 3).
	result addNodes: ((nodes at: 5) at: 4) to: result parameters.
	result addTokens: ((nodes at: 5) at: 5) to: result commas.
	result rightParen: ((nodes at: 5) at: 6).
	result addNodes: ((nodes at: 5) at: 7) to: result constraintClauses.
	result body: ((nodes at: 5) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_header1: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 7).
	result at: 8 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_string_expression1: nodes [
	| result |
	result := CSInterpolatedStringExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result stringParts.
	result addNodes: ((nodes at: 1) at: 2) to: result interpolations.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation1: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation2: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result format: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation3: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result constant: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation4: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result constant: (nodes at: 3).
	result format: ((nodes at: 4) at: 1).
	result colon: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinvocation_expression1: nodes [
	| result |
	result := CSInvocationExpressionNode new.
	result expression: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForjoin_clause1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	result at: 8 put: (nodes at: 8).
	result at: 9 put: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForjoin_into_clause1: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	result at: 8 put: (nodes at: 8).
	result at: 9 put: (nodes at: 9).
	result at: 10 put: (nodes at: 10).
	self add: (nodes at: 11) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlabeled_statement1: nodes [
	| result |
	result := CSLabeledStatementNode new.
	result identifierToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlambda_expression1: nodes [
	| result |
	result := CSLambdaExpressionNode new.
	result signature: (nodes at: 1).
	result equalGreaterThanToken: (nodes at: 2).
	result body: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlambda_expression2: nodes [
	| result |
	result := CSLambdaExpressionNode new.
	result asyncToken: (nodes at: 1).
	result signature: (nodes at: 2).
	result equalGreaterThanToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlet_clause1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral1: nodes [
	| result |
	result := CSBooleanLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral2: nodes [
	| result |
	result := CSIntegerLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral3: nodes [
	| result |
	result := CSRealLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral4: nodes [
	| result |
	result := CSCharacterLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral5: nodes [
	| result |
	result := CSStringLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral6: nodes [
	| result |
	result := CSNullLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_constant_declaration1: nodes [
	| result |
	result := CSLocalConstantDeclarationNode new.
	result constToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result declarators.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_declaration2: nodes [
	| result |
	result := CSLocalFunctionDeclarationStatementNode new.
	result header: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_header1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_header2: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result name: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result parameters.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declaration1: nodes [
	| result |
	result := CSLocalVariableDeclarationNode new.
	result type: ((nodes at: 1) at: 1).
	result addNode: ((nodes at: 1) at: 2) to: result declarators.
	result refToken: ((nodes at: 1) at: 3).
	result readonlyToken: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declaration3: nodes [
	| result |
	result := CSLocalVariableDeclarationNode new.
	result refToken: ((nodes at: 1) at: 1).
	result readonlyToken: ((nodes at: 1) at: 2).
	result type: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result declarators.
	result addTokens: ((nodes at: 1) at: 5) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlock_statement1: nodes [
	| result |
	result := CSLockStatementNode new.
	result lockToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_access1: nodes [
	| result |
	result := CSMemberAccessNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifier: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator1: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator2: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result access: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator5: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_initializer1: nodes [
	| result |
	result := CSMemberInitializerNode new.
	result identifier: ((nodes at: 1) at: 1).
	result leftBracketToken: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result arguments.
	result addTokens: ((nodes at: 1) at: 4) to: result commaTokens.
	result rightBracketToken: ((nodes at: 1) at: 5).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_declaration2: nodes [
	| result |
	result := CSMethodDeclarationNode new.
	result header: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_header1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result returnType: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result typeParameters: (nodes at: 6).
	result leftParenToken: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result parameters.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParenToken: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormultiplicative_expression4: nodes [
	| result |
	result := CSBinaryExpressionNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_argument1: nodes [
	| result |
	result := CSNamedArgumentNode new.
	result name: (nodes at: 1).
	result equal: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_entity1: nodes [
	| result |
	result := CSNamedEntityNode new.
	result target: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result identifierTokens.
	result addNodes: ((nodes at: 2) at: 3) to: result typeArgumentses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_entity_target3: nodes [
	| result |
	result := CSBaseExpressionNode new.
	result baseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornameof_expression1: nodes [
	| result |
	result := CSNameofExpressionNode new.
	result nameofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result name: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_body1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	self addAll: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 3).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_declaration1: nodes [
	| result |
	result := CSNamespaceDeclarationNode new.
	result namespaceToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result leftBraceToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result directives.
	result addNodes: ((nodes at: 3) at: 3) to: result declarations.
	result rightBraceToken: ((nodes at: 3) at: 4).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_or_type_name1: nodes [
	| result |
	result := CSTypeNameNode new.
	result name: (nodes at: 1).
	result typeArguments: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_or_type_name2: nodes [
	| result |
	result := CSTypeNameNode new.
	result namespace: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_element_access1: nodes [
	| result |
	result := CSElementAccessNode new.
	result baseExpression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_member_access1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result accesses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_projection_initializer1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornullable_value_type1: nodes [
	| result |
	result := CSNullableTypeNode new.
	result type: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_creation_expression1: nodes [
	| result |
	result := CSObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	result initializer: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_creation_expression2: nodes [
	| result |
	result := CSObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_initializer1: nodes [
	| result |
	result := CSObjectInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_initializer2: nodes [
	| result |
	result := CSObjectInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declaration1: nodes [
	| result |
	result := CSOperatorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result returnType: ((nodes at: 3) at: 1).
	result operatorToken: ((nodes at: 3) at: 2).
	result operator: ((nodes at: 3) at: 3).
	result leftParenToken: ((nodes at: 3) at: 4).
	result addNodes: ((nodes at: 3) at: 5) to: result parameters.
	result rightParenToken: ((nodes at: 3) at: 6).
	result commaToken: ((nodes at: 3) at: 7).
	result implicitToken: ((nodes at: 3) at: 8).
	result explicitToken: ((nodes at: 3) at: 9).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator1: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator2: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 7 put: ((nodes at: 1) at: 6).
	result at: 6 put: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator3: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 1 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	result at: 9 put: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFororderby_clause1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForordering1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForordering_direction2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFororderings1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFororderings2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForparameter_array1: nodes [
	| result |
	result := CSArrayParameterNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result paramsToken: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForparenthesized_expression1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result _leftParens.
	result addToken: (nodes at: 3) to: result _rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_member_access1: nodes [
	| result |
	result := CSPointerMemberAccessNode new.
	result expression: (nodes at: 1).
	result arrowToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_type1: nodes [
	| result |
	result := CSPointerTypeNode new.
	result type: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result timesTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpositional_argument1: nodes [
	| result |
	result := CSArgumentNode new.
	result identifier: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpost_increment_expression1: nodes [
	| result |
	result := CSPostExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint1: nodes [
	| result |
	result := CSTypeConstraintNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint2: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result classToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint3: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result structToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint4: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result unmanagedToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_body1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: ((nodes at: 4) at: 1).
	result at: 6 put: ((nodes at: 4) at: 2).
	result at: 7 put: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_body2: nodes [
	| result |
	result := Array new: 9.
	result at: 8 put: (nodes at: 1).
	result at: 9 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_declaration1: nodes [
	| result |
	result := CSPropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result type: (nodes at: 3).
	result name: ((nodes at: 4) at: 1).
	result interface: ((nodes at: 4) at: 2).
	result periodToken: ((nodes at: 4) at: 3).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result getAccessor: ((nodes at: 5) at: 2).
	result setAccessor: ((nodes at: 5) at: 3).
	result rightBraceToken: ((nodes at: 5) at: 4).
	result equalToken: ((nodes at: 5) at: 5).
	result initializer: ((nodes at: 5) at: 6).
	result semicolon: ((nodes at: 5) at: 7).
	result equalGreaterThanToken: ((nodes at: 5) at: 8).
	result expression: ((nodes at: 5) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_declaration2: nodes [
	| result |
	result := CSPropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result addToken: ((nodes at: 3) at: 1) to: result refTokens.
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result leftBraceToken: ((nodes at: 6) at: 1).
	result getAccessor: ((nodes at: 6) at: 2).
	result rightBraceToken: ((nodes at: 6) at: 3).
	result equalToken: ((nodes at: 6) at: 4).
	result initializer: ((nodes at: 6) at: 5).
	result semicolon: ((nodes at: 6) at: 6).
	result equalGreaterThanToken: ((nodes at: 6) at: 7).
	result addToken: ((nodes at: 6) at: 8) to: result refTokens.
	result expression: ((nodes at: 6) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_alias_member1: nodes [
	| result |
	result := CSQualifiedAliasMemberNode new.
	result global: (nodes at: 1).
	result colonColonToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_alias_member_expression1: nodes [
	| result |
	result := CSTypeExpressionNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_identifier1: nodes [
	| result |
	result := CSQualifiedIdentifierNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_identifier2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 6) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 7) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 8) to: (result at: 8).
	self addAll: ((nodes at: 1) at: 9) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 10) to: (result at: 10).
	self addAll: ((nodes at: 1) at: 11) to: (result at: 11).
	self addAll: ((nodes at: 1) at: 12) to: (result at: 12).
	self addAll: ((nodes at: 1) at: 13) to: (result at: 13).
	self addAll: ((nodes at: 1) at: 14) to: (result at: 14).
	self addAll: ((nodes at: 1) at: 15) to: (result at: 15).
	self addAll: ((nodes at: 1) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 1) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 19) to: (result at: 19).
	self add: ((nodes at: 2) at: 1) to: (result at: 20).
	self add: ((nodes at: 2) at: 2) to: (result at: 5).
	self add: ((nodes at: 2) at: 3) to: (result at: 21).
	self add: ((nodes at: 2) at: 4) to: (result at: 22).
	self add: ((nodes at: 2) at: 5) to: (result at: 23).
	self add: ((nodes at: 2) at: 6) to: (result at: 24).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 15).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 6).
	self addAll: ((nodes at: 3) at: 8) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 9) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 10) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 11) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 12) to: (result at: 11).
	self addAll: ((nodes at: 3) at: 13) to: (result at: 12).
	self addAll: ((nodes at: 3) at: 14) to: (result at: 13).
	self addAll: ((nodes at: 3) at: 15) to: (result at: 14).
	self addAll: ((nodes at: 3) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 3) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 3) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 3) at: 19) to: (result at: 19).
	self addAll: ((nodes at: 3) at: 20) to: (result at: 20).
	self addAll: ((nodes at: 3) at: 21) to: (result at: 21).
	self addAll: ((nodes at: 3) at: 22) to: (result at: 22).
	self addAll: ((nodes at: 3) at: 23) to: (result at: 23).
	self addAll: ((nodes at: 3) at: 24) to: (result at: 24).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause1: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause2: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 3).
	result at: 7 put: ((nodes at: 1) at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause3: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause4: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 9 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 10 put: ((nodes at: 1) at: 5).
	result at: 11 put: ((nodes at: 1) at: 6).
	result at: 12 put: ((nodes at: 1) at: 7).
	result at: 13 put: ((nodes at: 1) at: 8).
	result at: 14 put: ((nodes at: 1) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause5: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 9 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 10 put: ((nodes at: 1) at: 5).
	result at: 11 put: ((nodes at: 1) at: 6).
	result at: 12 put: ((nodes at: 1) at: 7).
	result at: 13 put: ((nodes at: 1) at: 8).
	result at: 14 put: ((nodes at: 1) at: 9).
	result at: 15 put: ((nodes at: 1) at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause6: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 16 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clauses1: nodes [
	| result |
	result := Array new: 19.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	self add: ((nodes at: 1) at: 6) to: (result at: 6).
	self add: ((nodes at: 1) at: 7) to: (result at: 7).
	self add: ((nodes at: 1) at: 8) to: (result at: 8).
	self add: ((nodes at: 1) at: 9) to: (result at: 9).
	self add: ((nodes at: 1) at: 10) to: (result at: 10).
	self add: ((nodes at: 1) at: 11) to: (result at: 11).
	self add: ((nodes at: 1) at: 12) to: (result at: 12).
	self add: ((nodes at: 1) at: 13) to: (result at: 13).
	self add: ((nodes at: 1) at: 14) to: (result at: 14).
	self add: ((nodes at: 1) at: 15) to: (result at: 15).
	self add: ((nodes at: 1) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 1) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 19) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clauses2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 5).
	self add: ((nodes at: 2) at: 6) to: (result at: 6).
	self add: ((nodes at: 2) at: 7) to: (result at: 7).
	self add: ((nodes at: 2) at: 8) to: (result at: 8).
	self add: ((nodes at: 2) at: 9) to: (result at: 9).
	self add: ((nodes at: 2) at: 10) to: (result at: 10).
	self add: ((nodes at: 2) at: 11) to: (result at: 11).
	self add: ((nodes at: 2) at: 12) to: (result at: 12).
	self add: ((nodes at: 2) at: 13) to: (result at: 13).
	self add: ((nodes at: 2) at: 14) to: (result at: 14).
	self add: ((nodes at: 2) at: 15) to: (result at: 15).
	self add: ((nodes at: 2) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 2) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 2) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 2) at: 19) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_continuation1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 6).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 8) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 9) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 10) to: (result at: 11).
	self addAll: ((nodes at: 3) at: 11) to: (result at: 12).
	self addAll: ((nodes at: 3) at: 12) to: (result at: 13).
	self addAll: ((nodes at: 3) at: 13) to: (result at: 14).
	self addAll: ((nodes at: 3) at: 14) to: (result at: 15).
	self addAll: ((nodes at: 3) at: 15) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 3) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 3) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 3) at: 19) to: (result at: 19).
	self addAll: ((nodes at: 3) at: 20) to: (result at: 20).
	self addAll: ((nodes at: 3) at: 21) to: (result at: 21).
	self addAll: ((nodes at: 3) at: 22) to: (result at: 22).
	self addAll: ((nodes at: 3) at: 23) to: (result at: 23).
	self addAll: ((nodes at: 3) at: 24) to: (result at: 24).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_expression1: nodes [
	| result |
	result := CSQueryExpressionNode new.
	result addToken: ((nodes at: 1) at: 1) to: result fromTokens.
	result addNode: ((nodes at: 1) at: 2) to: result types.
	result addToken: ((nodes at: 1) at: 3) to: result identifierTokens.
	result addToken: ((nodes at: 1) at: 4) to: result inTokens.
	result addNode: ((nodes at: 1) at: 5) to: result expressions.
	result addTokens: ((nodes at: 2) at: 1) to: result fromTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result types.
	result addTokens: ((nodes at: 2) at: 3) to: result identifierTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result inTokens.
	result addNodes: ((nodes at: 2) at: 5) to: result expressions.
	result addTokens: ((nodes at: 2) at: 6) to: result letTokens.
	result addTokens: ((nodes at: 2) at: 7) to: result equalTokens.
	result addTokens: ((nodes at: 2) at: 8) to: result whereTokens.
	result addTokens: ((nodes at: 2) at: 9) to: result joinTokens.
	result addNodes: ((nodes at: 2) at: 10) to: result joinInExpressions.
	result addTokens: ((nodes at: 2) at: 11) to: result onTokens.
	result addNodes: ((nodes at: 2) at: 12) to: result joinOnExpressions.
	result addTokens: ((nodes at: 2) at: 13) to: result equalsTokens.
	result addNodes: ((nodes at: 2) at: 14) to: result joinEqualsExpressions.
	result addTokens: ((nodes at: 2) at: 15) to: result intoTokens.
	result addTokens: ((nodes at: 2) at: 16) to: result orderbyTokens.
	result addTokens: ((nodes at: 2) at: 17) to: result ascendingTokens.
	result addTokens: ((nodes at: 2) at: 18) to: result descendingTokens.
	result addTokens: ((nodes at: 2) at: 19) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 20) to: result selectTokens.
	result addTokens: ((nodes at: 2) at: 21) to: result groupTokens.
	result addNodes: ((nodes at: 2) at: 22) to: result groupExpressions.
	result addTokens: ((nodes at: 2) at: 23) to: result byTokens.
	result addNodes: ((nodes at: 2) at: 24) to: result groupByExpressions.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForrank_specifier1: nodes [
	| result |
	result := CSRankSpecifierNode new.
	result leftBracketToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body3: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_get_accessor_declaration1: nodes [
	| result |
	result := CSGetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result getToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result refToken: ((nodes at: 4) at: 3).
	result expression: ((nodes at: 4) at: 4).
	result semicolonToken: ((nodes at: 4) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_indexer_body1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_indexer_body2: nodes [
	| result |
	result := Array new: 7.
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_kind1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_kind2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_function_body1: nodes [
	| result |
	result := CSMethodBodyNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_function_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_variable_declaration1: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_variable_declarator1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result refToken: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_method_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_method_body3: nodes [
	| result |
	result := CSMethodBodyNode new.
	result semicolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_property_body1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	result at: 5 put: ((nodes at: 4) at: 2).
	result at: 6 put: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_property_body2: nodes [
	| result |
	result := Array new: 9.
	result at: 7 put: (nodes at: 1).
	result at: 8 put: (nodes at: 2).
	result at: 9 put: (nodes at: 3).
	result at: 6 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForremove_accessor_declaration1: nodes [
	| result |
	result := CSRemoveAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result removeToken: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForreturn_statement1: nodes [
	| result |
	result := CSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForreturn_statement2: nodes [
	| result |
	result := CSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForselect_or_group_clause1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForselect_or_group_clause2: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: ((nodes at: 1) at: 1).
	result at: 4 put: ((nodes at: 1) at: 2).
	result at: 5 put: ((nodes at: 1) at: 3).
	result at: 6 put: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForset_accessor_declaration1: nodes [
	| result |
	result := CSSetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result setToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result expression: ((nodes at: 4) at: 3).
	result semicolonToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsimple_name1: nodes [
	| result |
	result := CSSimpleNameNode new.
	result identifierToken: (nodes at: 1).
	result typeArguments: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsimple_type2: nodes [
	| result |
	result := CSSimpleTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsizeof_expression1: nodes [
	| result |
	result := CSSizeofExpressionNode new.
	result sizeofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForspecific_catch_clause1: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result leftParenToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result name: ((nodes at: 2) at: 3).
	result rightParenToken: ((nodes at: 2) at: 4).
	result filter: (nodes at: 3).
	result block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForspecific_catch_clause2: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result filter: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstackalloc_expression1: nodes [
	| result |
	result := CSStackallocExpressionNode new.
	result stackallocToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstackalloc_expression2: nodes [
	| result |
	result := CSStackallocExpressionNode new.
	result stackallocToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result addTokens: ((nodes at: 6) at: 2) to: result commaTokens.
	result addNodes: ((nodes at: 6) at: 3) to: result initializers.
	result rightBrace: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstackalloc_initializer_element_list1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_body2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_body3: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_declaration1: nodes [
	| result |
	result := CSStaticConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result staticToken: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result modifiers.
	result identifierToken: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	result block: ((nodes at: 6) at: 1).
	result equalGreaterThanToken: ((nodes at: 6) at: 2).
	result expression: ((nodes at: 6) at: 3).
	result semicolonToken: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers3: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers5: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers6: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers7: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstruct_declaration1: nodes [
	| result |
	result := CSStructDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result structToken: (nodes at: 4).
	result identifierToken: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstruct_declaration2: nodes [
	| result |
	result := CSStructDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result refToken: (nodes at: 3).
	result partialToken: (nodes at: 4).
	result structToken: (nodes at: 5).
	result identifierToken: (nodes at: 6).
	result typeParameters: (nodes at: 7).
	result colonToken: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 8) at: 3) to: result commas.
	result addNodes: (nodes at: 9) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 10) at: 1).
	result addNodes: ((nodes at: 10) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 10) at: 3).
	result semicolon: (nodes at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstruct_interfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label1: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label2: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result whenToken: ((nodes at: 3) at: 1).
	result whenExpression: ((nodes at: 3) at: 2).
	result colonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label3: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_section1: nodes [
	| result |
	result := CSSwitchSectionNode new.
	result addNodes: (nodes at: 1) to: result labels.
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_statement1: nodes [
	| result |
	result := CSSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result sections.
	result rightBraceToken: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthis_access1: nodes [
	| result |
	result := CSThisAccessNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthrow_expression1: nodes [
	| result |
	result := CSThrowExpressionNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthrow_statement1: nodes [
	| result |
	result := CSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement1: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result clauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement2: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result finally: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement3: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result clauses.
	result finally: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_element1: nodes [
	| result |
	result := CSTupleElementNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_element2: nodes [
	| result |
	result := CSTupleElementNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_expression1: nodes [
	| result |
	result := CSTupleExpressionNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type1: nodes [
	| result |
	result := CSTupleTypeNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type_element1: nodes [
	| result |
	result := CSTupleTypeElementNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type_element2: nodes [
	| result |
	result := CSTupleTypeElementNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_argument_list1: nodes [
	| result |
	result := CSTypeArgumentListNode new.
	result lessThanToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result greaterThanToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter1: nodes [
	| result |
	result := CSTypeNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints5: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints7: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints_clause1: nodes [
	| result |
	result := CSTypeParameterConstraintsClauseNode new.
	result whereToken: (nodes at: 1).
	result parameter: (nodes at: 2).
	result colon: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result constraints.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_list1: nodes [
	| result |
	result := CSTypeParameterListNode new.
	result lessThan: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result _attributes.
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commaTokens.
	result greaterThan: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self addAll: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortypeof_expression1: nodes [
	| result |
	result := CSTypeofExpressionNode new.
	result typeofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunary_expression4: nodes [
	| result |
	result := CSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunary_operator_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name1: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result lessThanToken: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result gtToken: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name2: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result colonColonToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifierTokens.
	result lessThanToken: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result gtToken: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name3: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result type: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifierTokens.
	result lessThanToken: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result gtToken: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunchecked_expression1: nodes [
	| result |
	result := CSUncheckedExpressionNode new.
	result uncheckedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunchecked_statement1: nodes [
	| result |
	result := CSUncheckedStatementNode new.
	result uncheckedToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunsafe_statement1: nodes [
	| result |
	result := CSUnsafeStatementNode new.
	result unsafeToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_alias_directive1: nodes [
	| result |
	result := CSUsingAliasDirectiveNode new.
	result usingToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result namespace: (nodes at: 4).
	result semicolonToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_namespace_directive1: nodes [
	| result |
	result := CSUsingNamespaceDirectiveNode new.
	result usingToken: (nodes at: 1).
	result namespace: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_statement1: nodes [
	| result |
	result := CSUsingStatementNode new.
	result usingToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_static_directive1: nodes [
	| result |
	result := CSUsingStaticDirectiveNode new.
	result usingToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result namespace: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariable_declarator1: nodes [
	| result |
	result := CSVariableDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariable_declarator2: nodes [
	| result |
	result := CSVariableDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameter_list1: nodes [
	| result |
	result := CSVariantTypeParameterListNode new.
	result lessThan: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result _attributes.
	result addTokens: ((nodes at: 2) at: 2) to: result annotations.
	result addNodes: ((nodes at: 2) at: 3) to: result parameters.
	result addTokens: ((nodes at: 2) at: 4) to: result commaTokens.
	result greaterThan: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameters1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self addAll: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvoid_type1: nodes [
	| result |
	result := CSVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForwhile_statement1: nodes [
	| result |
	result := CSWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForyield_statement1: nodes [
	| result |
	result := CSYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result returnToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForyield_statement2: nodes [
	| result |
	result := CSYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result breakToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #private }
CSharpParser >> scanFormat [
	| token |
	token := scanner scanFormat.
	self position: scanner position.
	^ token
]

{ #category : #private }
CSharpParser >> tryAllTokens [
	| id ids |
	id := scanner IdentifierId.
	ids := currentToken ids.
	^ (ids includes: id)
		ifTrue:
			[ ids first = id
				ifTrue: [ ^ false ].
			^ (self class keywords includes: currentToken value) not ]
		ifFalse: [ ^ false ]
]
