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
#[ 0 42 4 73] 
#[ 0 74 0 86 0 90] 
#[ 0 142 5 177] 
#[ 1 22 1 26] 
#[ 1 58 1 62] 
#[ 1 66 1 70] 
#[ 1 74 6 133] 
#[ 1 78 6 149] 
#[ 1 114 6 157] 
#[ 1 134 6 169] 
#[ 1 134 6 173] 
#[ 1 134 6 177] 
#[ 1 134 6 189] 
#[ 1 138 6 193] 
#[ 1 254 7 9] 
#[ 2 6 7 13] 
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
#[ 2 214 5 29] 
#[ 2 226 5 161] 
#[ 1 22 1 26 6 121] 
#[ 2 242 7 193] 
#[ 2 246 7 201] 
#[ 2 246 7 205] 
#[ 2 254 7 217] 
#[ 2 254 7 221] 
#[ 2 254 7 225] 
#[ 2 254 7 229] 
#[ 2 254 7 233] 
#[ 2 254 7 237] 
#[ 3 2 7 241] 
#[ 3 2 7 245] 
#[ 3 6 7 249] 
#[ 3 10 7 253] 
#[ 3 14 8 1] 
#[ 3 18 8 5] 
#[ 3 22 8 9] 
#[ 3 22 8 13] 
#[ 3 26 8 17] 
#[ 3 118 3 122 3 126 3 130] 
#[ 3 134 8 117] 
#[ 3 134 8 125] 
#[ 3 134 8 129] 
#[ 3 134 8 133] 
#[ 3 134 8 137] 
#[ 0 74 0 86 0 90 3 130] 
#[ 3 134 8 141] 
#[ 3 134 8 145] 
#[ 3 134 8 149] 
#[ 0 90 3 118 3 122 3 134] 
#[ 3 134 8 157] 
#[ 3 134 8 161] 
#[ 3 146 8 165] 
#[ 3 134 8 169] 
#[ 3 118 3 122 3 126 3 130 3 150] 
#[ 3 158 9 53] 
#[ 3 202 3 206 3 210 3 214 3 218] 
#[ 3 202 3 214 3 218] 
#[ 3 202 3 206 3 214 3 218] 
#[ 3 222 3 226 3 230 3 234 3 238] 
#[ 3 222 3 234 3 238] 
#[ 3 222 3 226 3 234 3 238] 
#[ 3 242 3 246 3 250 3 254 4 2] 
#[ 3 242 3 254 4 2] 
#[ 3 242 3 246 3 254 4 2] 
#[ 4 6 4 10 4 14 4 18 4 22] 
#[ 4 6 4 18 4 22] 
#[ 4 6 4 10 4 18 4 22] 
#[ 4 26 4 30 4 34 4 38 4 42] 
#[ 4 26 4 38 4 42] 
#[ 4 26 4 30 4 38 4 42] 
#[ 4 58 4 62] 
#[ 4 58 4 66] 
#[ 4 58 4 70] 
#[ 4 58 4 62 4 66 4 70 4 74] 
#[ 4 58 4 62 4 70 4 74] 
#[ 4 58 4 74] 
#[ 4 122 4 126 4 130 4 134] 
#[ 4 122 4 130 4 134] 
#[ 1 22 6 121] 
#[ 1 22 1 26 2 230] 
#[ 2 234 10 49] 
#[ 1 66 1 70 4 210] 
#[ 1 130 11 45] 
#[ 4 234 11 93] 
#[ 5 6 5 10] 
#[ 5 30 11 213] 
#[ 5 46 11 221] 
#[ 5 170 11 213] 
#[ 2 214 7 165] 
#[ 6 22 6 26 6 30] 
#[ 3 198 6 22 6 26 6 30 6 34] 
#[ 6 22 6 26 6 30 6 34] 
#[ 3 198 6 26] 
#[ 6 22 6 30] 
#[ 3 198 6 22 6 26 6 34] 
#[ 6 42 6 46 6 50 6 54] 
#[ 6 42 6 46 6 54 6 58] 
#[ 6 42 6 46 6 50 6 54 6 58 6 62] 
#[ 6 42 6 46 6 54 6 58 6 62] 
#[ 6 46 6 54] 
#[ 6 42 6 46 6 50 6 58 13 77] 
#[ 6 42 6 46 6 50 6 54 6 58 6 62 6 66 7 33] 
#[ 6 42 6 46 6 50 6 54 6 62] 
#[ 6 70 6 74 6 78 6 82] 
#[ 3 202 6 74 6 78 6 82 6 86] 
#[ 6 74 6 78 6 82 6 86 6 94] 
#[ 3 202 3 206 3 210 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 90 6 94] 
#[ 3 202 3 206 3 210 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 90] 
#[ 6 74 6 78 6 82 6 86] 
#[ 3 202 3 214 3 218 6 82] 
#[ 3 218 6 70] 
#[ 3 218 6 74 6 78] 
#[ 3 202 6 70 6 74 6 82 6 86] 
#[ 3 202 3 206 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 94] 
#[ 6 70 6 74 6 78 6 82 6 94] 
#[ 6 98 6 102 6 106 6 110] 
#[ 3 222 6 98 6 102 6 110 6 114] 
#[ 6 98 6 102 6 110 6 114] 
#[ 3 222 3 226 3 230 3 234 3 238 6 98 6 102 6 106 6 110 6 114 6 118] 
#[ 3 222 3 234 3 238 6 110] 
#[ 3 238 6 106] 
#[ 3 238 6 98 6 102] 
#[ 3 222 6 102 6 106 6 110 6 114] 
#[ 3 222 3 226 3 234 3 238 6 98 6 102 6 106 6 110 6 114] 
#[ 6 122 6 126 6 130] 
#[ 6 122 6 126 6 130 6 134] 
#[ 6 122 6 126] 
#[ 6 126 6 130 6 134] 
#[ 6 138 6 142 6 146 6 150] 
#[ 3 242 6 142 6 146 6 150 6 154] 
#[ 6 142 6 146 6 150 6 154 6 162] 
#[ 3 242 3 246 3 250 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 158 6 162] 
#[ 3 242 3 246 3 250 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 158] 
#[ 6 142 6 146 6 150 6 154] 
#[ 3 242 3 254 4 2 6 142] 
#[ 4 2 6 138] 
#[ 4 2 6 146 6 150] 
#[ 3 242 6 138 6 142 6 150 6 154] 
#[ 3 242 3 246 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 162] 
#[ 6 138 6 142 6 146 6 150 6 162] 
#[ 6 166 6 170 6 174 6 178] 
#[ 4 6 6 170 6 174 6 178 6 182] 
#[ 6 170 6 174 6 178 6 182 6 190] 
#[ 4 6 4 10 4 14 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 186 6 190] 
#[ 4 6 4 10 4 14 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 186] 
#[ 6 170 6 174 6 178 6 182] 
#[ 4 6 4 18 4 22 6 174] 
#[ 4 22 6 166] 
#[ 4 22 6 170 6 178] 
#[ 4 6 6 166 6 170 6 174 6 182] 
#[ 4 6 4 10 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 190] 
#[ 6 166 6 170 6 174 6 178 6 190] 
#[ 6 194 6 198 6 202 6 206 6 210] 
#[ 4 26 6 194 6 198 6 202 6 214] 
#[ 6 194 6 198 6 202 6 210 6 214 6 222] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 214 6 218 6 222] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 214 6 218] 
#[ 6 194 6 198 6 202 6 214] 
#[ 4 26 4 38 4 42 6 198] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 210 6 214 6 218 6 222] 
#[ 4 42 6 206] 
#[ 4 42 6 194 6 202] 
#[ 4 26 6 198 6 202 6 206 6 210 6 214] 
#[ 4 26 4 30 4 38 4 42 6 194 6 198 6 202 6 206 6 210 6 214 6 222] 
#[ 6 194 6 198 6 202 6 206 6 210 6 222] 
#[ 4 46 6 226] 
#[ 6 230 6 234 6 238] 
#[ 4 50 6 230 6 234 6 238 6 242] 
#[ 6 230 6 234 6 238 6 242] 
#[ 4 50 6 238] 
#[ 6 230 6 234] 
#[ 4 50 6 230 6 238 6 242] 
#[ 6 246 6 250 6 254 7 2] 
#[ 4 54 6 246 6 254 7 6] 
#[ 6 246 6 250 6 254 7 6 13 85] 
#[ 4 54 6 246 6 254 7 2 7 6] 
#[ 6 246 6 254 7 6] 
#[ 4 54 6 246] 
#[ 4 54 6 246 6 250 6 254 7 2 7 6] 
#[ 4 54 6 246 6 250 6 254 7 2 7 6 7 33] 
#[ 6 246 6 250 6 254 7 2 7 10] 
#[ 4 58 7 14 7 18 7 22 7 26 7 30] 
#[ 4 58 4 62 7 14 7 22 7 30 7 34] 
#[ 4 58 7 34] 
#[ 4 58 7 26] 
#[ 4 58 7 14 7 22 7 26 7 30 7 34 7 38] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 30 7 34 7 38] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 30 7 34] 
#[ 4 58 7 14 7 22 7 30 7 34] 
#[ 4 58 4 62 4 70 4 74 7 14] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 26 7 30 7 34 7 38] 
#[ 4 58 4 74 7 18] 
#[ 4 58 4 74 7 22 7 30] 
#[ 4 58 4 62 7 14 7 18 7 26 7 30 7 34] 
#[ 4 58 7 18] 
#[ 4 58 7 14 7 18 7 22 7 26 7 30 7 38] 
#[ 7 42 7 46 7 50] 
#[ 7 42 7 46 7 50 7 54] 
#[ 7 46 7 50] 
#[ 7 42 7 50 7 54] 
#[ 7 126 7 130 7 134 7 138] 
#[ 4 122 7 130 7 138 7 142] 
#[ 7 126 7 130 7 138 7 142 7 146 15 9] 
#[ 4 122 4 126 4 130 4 134 7 130 7 134 7 138 7 142 7 146] 
#[ 4 122 4 126 4 130 4 134 7 130 7 134 7 138 7 142] 
#[ 7 130 7 138 7 142] 
#[ 4 122 4 126 4 130 4 134 7 126 7 130 7 134 7 138 7 142 7 146] 
#[ 4 134 7 134] 
#[ 4 134 7 130 7 138] 
#[ 4 122 7 126 7 134 7 138 7 142 15 13] 
#[ 7 126 7 130 7 134 7 138 7 146] 
#[ 7 162 9 53] 
#[ 1 22 1 26 8 142] 
#[ 1 22 8 142] 
#[ 2 234 6 137] 
#[ 3 74 7 97] 
#[ 7 193 9 10] 
#[ 7 193 9 14] 
#[ 7 201 9 18] 
#[ 7 205 9 18] 
#[ 7 201 9 22] 
#[ 7 205 9 22] 
#[ 2 234 9 42 17 133] 
#[ 3 74 17 133] 
#[ 7 217 9 70] 
#[ 7 221 9 70] 
#[ 7 225 9 70] 
#[ 7 229 9 70] 
#[ 7 233 9 70] 
#[ 7 237 9 70] 
#[ 7 217 9 74] 
#[ 7 221 9 74] 
#[ 7 225 9 74] 
#[ 7 229 9 74] 
#[ 7 233 9 74] 
#[ 7 237 9 74] 
#[ 7 241 9 78] 
#[ 7 245 9 78] 
#[ 7 249 9 82] 
#[ 7 253 9 86] 
#[ 8 1 9 90] 
#[ 8 5 9 98] 
#[ 9 138 17 201] 
#[ 4 58 7 30] 
#[ 4 58 7 22] 
#[ 4 58 7 38] 
#[ 5 46 18 165] 
#[ 0 105 10 206] 
#[ 0 109 10 206] 
#[ 3 53 10 206] 
#[ 0 117 10 206] 
#[ 0 121 10 206] 
#[ 0 125 10 206] 
#[ 0 129 10 206] 
#[ 0 133 10 206] 
#[ 3 57 10 206] 
#[ 0 145 10 206] 
#[ 0 149 10 206] 
#[ 0 153 10 206] 
#[ 0 161 10 206] 
#[ 0 165 10 206] 
#[ 3 61 10 206] 
#[ 0 181 10 206] 
#[ 0 185 10 206] 
#[ 0 189 10 206] 
#[ 0 197 10 206] 
#[ 0 201 10 206] 
#[ 0 205 10 206] 
#[ 0 213 10 206] 
#[ 3 65 10 206] 
#[ 0 233 10 206] 
#[ 0 241 10 206] 
#[ 0 245 10 206] 
#[ 0 249 10 206] 
#[ 0 253 10 206] 
#[ 1 9 10 206] 
#[ 1 13 10 206] 
#[ 1 17 10 206] 
#[ 1 21 10 206] 
#[ 1 25 10 206] 
#[ 1 33 10 206] 
#[ 3 69 10 206] 
#[ 1 41 10 206] 
#[ 1 49 10 206] 
#[ 1 53 10 206] 
#[ 1 57 10 206] 
#[ 3 73 10 206] 
#[ 1 69 10 206] 
#[ 1 77 10 206] 
#[ 1 81 10 206] 
#[ 1 97 10 206] 
#[ 3 77 10 206] 
#[ 1 105 10 206] 
#[ 1 109 10 206] 
#[ 1 113 10 206] 
#[ 1 117 10 206] 
#[ 0 22 10 206] 
#[ 1 121 10 206] 
#[ 0 26 10 206] 
#[ 1 125 10 206] 
#[ 1 129 10 206] 
#[ 6 66 11 142] 
#[ 6 121 11 158] 
#[ 6 66 11 198] 
#[ 12 22 21 185] 
#[ 11 29 12 46] 
#[ 12 70 22 5] 
#[ 13 6 13 10] 
#[ 13 18 13 22] 
#[ 11 45 13 218] 
#[ 14 26 24 57] 
#[ 14 26 24 61] 
#[ 14 26 24 65] 
#[ 2 238 4 146] 
#[ 4 146 6 217] 
#[ 4 146 6 221] 
#[ 4 146 6 225] 
#[ 4 146 6 229] 
#[ 4 146 6 233] 
#[ 4 146 6 237] 
#[ 4 146 6 241] 
#[ 4 146 6 245] 
#[ 4 146 6 249] 
#[ 4 146 6 253] 
#[ 4 146 7 1] 
#[ 2 234 17 133] 
#[ 0 185 15 18] 
#[ 3 134 27 233] 
#[ 3 134 27 237] 
#[ 3 134 27 241] 
#[ 3 134 27 245] 
#[ 3 134 27 249] 
#[ 3 134 27 253] 
#[ 1 66 11 162] 
#[ 6 42 6 46 6 50 6 54 6 58 6 62 7 33] 
#[ 3 202 3 206 3 210 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 90 6 94 17 50] 
#[ 3 202 3 206 3 210 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 90 17 50] 
#[ 3 202 3 206 3 214 3 218 6 70 6 74 6 78 6 82 6 86 6 94 17 50] 
#[ 3 222 3 226 3 230 3 234 3 238 6 98 6 102 6 106 6 110 6 114 6 118 17 54] 
#[ 3 222 3 226 3 234 3 238 6 98 6 102 6 106 6 110 6 114 17 54] 
#[ 3 242 3 246 3 250 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 158 6 162 17 58] 
#[ 3 242 3 246 3 250 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 158 17 58] 
#[ 3 242 3 246 3 254 4 2 6 138 6 142 6 146 6 150 6 154 6 162 17 58] 
#[ 4 6 4 10 4 14 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 186 6 190 17 62] 
#[ 4 6 4 10 4 14 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 186 17 62] 
#[ 4 6 4 10 4 18 4 22 6 166 6 170 6 174 6 178 6 182 6 190 17 62] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 214 6 218 6 222 17 66] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 214 6 218 17 66] 
#[ 4 26 4 30 4 34 4 38 4 42 6 194 6 198 6 202 6 206 6 210 6 214 6 218 6 222 17 66] 
#[ 4 26 4 30 4 38 4 42 6 194 6 198 6 202 6 206 6 210 6 214 6 222 17 66] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 30 7 34 7 38 17 70] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 30 7 34 17 70] 
#[ 4 58 4 62 4 66 4 70 4 74 7 14 7 18 7 22 7 26 7 30 7 34 7 38 17 70] 
#[ 7 126 7 130 7 138 7 142 7 146 28 73] 
#[ 5 138 28 173] 
#[ 8 226 28 225]
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> cacheId [
	^'2024-06-20T08:53:27.186656-05:00'
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
	| interface_property_declaration
	| interface_event_declaration
	| interface_indexer_declaration
	;
interface_method_declaration
	: _attributes _new 'modifier' return_type 'type' interface_method_header {{}}
	| _attributes _new 'modifier' ref_kind ref_return_type 'type' interface_method_header {{}}
	;
interface_method_header
	: <Identifier> 'name' _type_parameter_list ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses method_body 'body'	## method_body?
	;
interface_property_declaration
	: _attributes _new 'modifier' type 'type' <Identifier> 'name' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' {{}}
	| _attributes _new 'modifier' ref_kind type 'type' <Identifier> 'name' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' {{}}
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
	: _attributes _new 'modifier' type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' {{}}
	| _attributes _new 'modifier' ref_kind type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' {{}}
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
attribute_target
	: <Identifier>
#	| keyword	## handled by Identifier?
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
	#(175 0 #reduceActionFor_extern_alias_directives1: 6611969 false) 
	#(631 0 #reduceActionFor_extern_alias_directives1: 57798657 false) 
	#(384 0 #reduceActionFor_extern_alias_directives1: 29688833 false) 
	#(382 0 #nil 29553665 false) 
	#(239 0 #reduceActionForStartInterpolatedString1: 12348417 true) 
	#(245 0 #reduceActionForStartInterpolatedVerbatimString1: 13061121 true) 
	#(178 0 #reduceActionFor_extern_alias_directives1: 6871041 false) 
	#(175 1 #reduceActionFor_extern_alias_directives2: 6611970 false) 
	#(176 1 #reduceActionForextern_alias_directives1: 6671361 false) 
	#(635 0 #reduceActionFor_attribute_target_specifier1: 58210305 false) 
	#(186 1 #liftFirstValue: 7613441 false) 
	#(186 1 #liftFirstValue: 7613442 false) 
	#(187 1 #liftFirstValue: 7692289 false) 
	#(187 1 #liftFirstValue: 7692290 false) 
	#(187 1 #liftFirstValue: 7692291 false) 
	#(187 1 #liftFirstValue: 7692292 false) 
	#(187 1 #liftFirstValue: 7692293 false) 
	#(460 0 #reduceActionFor_extern_alias_directives1: 37089281 false) 
	#(622 0 #reduceActionFor_extern_alias_directives1: 56895489 false) 
	#(614 0 #reduceActionFor_extern_alias_directives1: 55782401 false) 
	#(586 0 #reduceActionFor_extern_alias_directives1: 52074497 false) 
	#(572 0 #reduceActionFor_extern_alias_directives1: 50413569 false) 
	#(631 1 #reduceActionFor_extern_alias_directives2: 57798658 false) 
	#(632 1 #reduceActionFor_extern_alias_directives2: 57831425 false) 
	#(633 1 #reduceActionForextern_alias_directives1: 57868289 false) 
	#(377 1 #reduceActionForempty_statement1: 29015041 false) 
	#(201 1 #reduceActionForsimple_type2: 8770562 false) 
	#(262 1 #reduceActionForsimple_type2: 14583809 false) 
	#(203 1 #liftFirstValue: 8909826 false) 
	#(262 1 #reduceActionForsimple_type2: 14583810 false) 
	#(203 1 #liftFirstValue: 8909833 false) 
	#(262 1 #reduceActionForsimple_type2: 14583811 false) 
	#(202 1 #liftFirstValue: 8839171 false) 
	#(262 1 #reduceActionForsimple_type2: 14583812 false) 
	#(297 1 #reduceActionFordefault_value_expression1: 18821121 false) 
	#(332 0 #nil 24798209 false) 
	#(204 1 #liftFirstValue: 9023490 false) 
	#(262 1 #reduceActionForsimple_type2: 14583813 false) 
	#(207 1 #reduceActionForsimple_type2: 9180163 false) 
	#(211 1 #reduceActionForsimple_type2: 9545731 false) 
	#(650 1 #liftFirstValue: 59877378 false) 
	#(204 1 #liftFirstValue: 9023489 false) 
	#(262 1 #reduceActionForsimple_type2: 14583814 false) 
	#(203 1 #liftFirstValue: 8909829 false) 
	#(262 1 #reduceActionForsimple_type2: 14583815 false) 
	#(203 1 #liftFirstValue: 8909831 false) 
	#(262 1 #reduceActionForsimple_type2: 14583816 false) 
	#(208 1 #reduceActionForsimple_type2: 9353218 false) 
	#(262 1 #reduceActionForsimple_type2: 14583817 false) 
	#(393 1 #reduceActionForref_kind1: 31062017 false) 
	#(367 0 #nil 28148737 false) 
	#(203 1 #liftFirstValue: 8909825 false) 
	#(262 1 #reduceActionForsimple_type2: 14583818 false) 
	#(203 1 #liftFirstValue: 8909827 false) 
	#(262 1 #reduceActionForsimple_type2: 14583819 false) 
	#(208 1 #reduceActionForsimple_type2: 9353219 false) 
	#(262 1 #reduceActionForsimple_type2: 14583820 false) 
	#(266 1 #reduceActionForthis_access1: 15416321 false) 
	#(650 1 #liftFirstValue: 59877377 false) 
	#(203 1 #liftFirstValue: 8909830 false) 
	#(262 1 #reduceActionForsimple_type2: 14583821 false) 
	#(203 1 #liftFirstValue: 8909832 false) 
	#(262 1 #reduceActionForsimple_type2: 14583822 false) 
	#(203 1 #liftFirstValue: 8909828 false) 
	#(262 1 #reduceActionForsimple_type2: 14583823 false) 
	#(405 1 #reduceActionForVarType1: 31956993 false) 
	#(684 1 #reduceActionForvoid_type1: 63952897 false) 
	#(375 0 #reduceActionFor_extern_alias_directives1: 28888065 false) 
	#(248 0 #nil 13390849 false) 
	#(466 1 #reduceActionFortype_parameter1: 37648385 false) 
	#(649 1 #reduceActionForliteral2: 59527170 false) 
	#(649 1 #reduceActionForliteral3: 59527171 false) 
	#(649 1 #reduceActionForliteral4: 59527172 false) 
	#(238 1 #reduceActionForinterpolated_regular_string1: 12112897 false) 
	#(244 1 #reduceActionForinterpolated_regular_string1: 12810241 false) 
	#(649 1 #reduceActionForliteral5: 59527173 false) 
	#(649 1 #reduceActionForliteral6: 59527174 false) 
	#(191 1 #liftFirstValue: 8041475 false) 
	#(260 1 #reduceActionForqualified_alias_member_expression1: 14415873 false) 
	#(208 1 #liftFirstValue: 9353217 false) 
	#(196 1 #liftFirstValue: 8524801 false) 
	#(190 1 #liftFirstValue: 8001537 false) 
	#(193 1 #liftFirstValue: 8320001 false) 
	#(211 1 #liftFirstValue: 9545729 false) 
	#(194 1 #liftFirstValue: 8379394 false) 
	#(205 1 #liftFirstValue: 9070593 false) 
	#(196 1 #liftFirstValue: 8524803 false) 
	#(196 1 #liftFirstValue: 8524802 false) 
	#(201 1 #reduceActionForsimple_type2: 8770561 false) 
	#(202 1 #liftFirstValue: 8839169 false) 
	#(202 1 #liftFirstValue: 8839170 false) 
	#(194 1 #liftFirstValue: 8379393 false) 
	#(193 1 #liftFirstValue: 8320002 false) 
	#(207 1 #liftFirstValue: 9180161 false) 
	#(211 1 #liftFirstValue: 9545730 false) 
	#(207 1 #liftFirstValue: 9180162 false) 
	#(304 1 #liftFirstValue: 19496961 false) 
	#(235 1 #liftFirstValue: 11215873 false) 
	#(236 1 #liftFirstValue: 11309058 false) 
	#(237 1 #reduceActionForinterpolated_string_expression1: 12003329 false) 
	#(237 1 #reduceActionForinterpolated_string_expression1: 12003330 false) 
	#(236 1 #liftFirstValue: 11309059 false) 
	#(236 1 #liftFirstValue: 11309060 false) 
	#(236 1 #liftFirstValue: 11309061 false) 
	#(236 1 #liftFirstValue: 11309062 false) 
	#(261 1 #reduceActionForqualified_alias_member_expression1: 14507009 false) 
	#(236 1 #liftFirstValue: 11309064 false) 
	#(413 1 #liftFirstValue: 32790530 false) 
	#(236 1 #liftFirstValue: 11309065 false) 
	#(236 1 #liftFirstValue: 11309067 false) 
	#(236 1 #liftFirstValue: 11309068 false) 
	#(236 1 #liftFirstValue: 11309069 false) 
	#(413 1 #liftFirstValue: 32790533 false) 
	#(236 1 #liftFirstValue: 11309070 false) 
	#(413 1 #liftFirstValue: 32790534 false) 
	#(236 1 #liftFirstValue: 11309071 false) 
	#(413 1 #liftFirstValue: 32790531 false) 
	#(235 1 #liftFirstValue: 11215874 false) 
	#(236 1 #liftFirstValue: 11309072 false) 
	#(236 1 #liftFirstValue: 11309073 false) 
	#(236 1 #liftFirstValue: 11309074 false) 
	#(236 1 #liftFirstValue: 11309076 false) 
	#(236 1 #liftFirstValue: 11309077 false) 
	#(236 1 #liftFirstValue: 11309078 false) 
	#(236 1 #liftFirstValue: 11309081 false) 
	#(236 1 #liftFirstValue: 11309079 false) 
	#(236 1 #liftFirstValue: 11309063 false) 
	#(413 1 #liftFirstValue: 32790529 false) 
	#(236 1 #liftFirstValue: 11309066 false) 
	#(304 1 #liftFirstValue: 19496966 false) 
	#(413 1 #liftFirstValue: 32790535 false) 
	#(304 1 #liftFirstValue: 19496967 false) 
	#(413 1 #liftFirstValue: 32790536 false) 
	#(304 1 #liftFirstValue: 19496968 false) 
	#(304 1 #liftFirstValue: 19496969 false) 
	#(413 1 #liftFirstValue: 32790537 false) 
	#(236 1 #liftFirstValue: 11309080 false) 
	#(413 1 #liftFirstValue: 32790532 false) 
	#(372 1 #liftFirstValue: 28478467 false) 
	#(373 1 #liftFirstValue: 28561409 false) 
	#(373 1 #liftFirstValue: 28561410 false) 
	#(372 1 #liftFirstValue: 28478465 false) 
	#(372 1 #liftFirstValue: 28478466 false) 
	#(379 1 #liftFirstValue: 29116419 false) 
	#(390 1 #reduceActionForlocal_variable_declaration1: 30556161 false) 
	#(390 1 #liftFirstValue: 30556162 false) 
	#(390 1 #reduceActionForlocal_variable_declaration3: 30556163 false) 
	#(373 1 #liftFirstValue: 28561411 false) 
	#(373 1 #liftFirstValue: 28561412 false) 
	#(414 1 #liftFirstValue: 33065985 false) 
	#(414 1 #liftFirstValue: 33065986 false) 
	#(373 1 #liftFirstValue: 28561413 false) 
	#(424 1 #liftFirstValue: 33923073 false) 
	#(424 1 #liftFirstValue: 33923074 false) 
	#(424 1 #liftFirstValue: 33923075 false) 
	#(424 1 #liftFirstValue: 33923076 false) 
	#(373 1 #liftFirstValue: 28561414 false) 
	#(436 1 #liftFirstValue: 35037185 false) 
	#(436 1 #liftFirstValue: 35037186 false) 
	#(436 1 #liftFirstValue: 35037187 false) 
	#(436 1 #liftFirstValue: 35037188 false) 
	#(436 1 #liftFirstValue: 35037189 false) 
	#(373 1 #liftFirstValue: 28561415 false) 
	#(373 1 #liftFirstValue: 28561416 false) 
	#(373 1 #liftFirstValue: 28561417 false) 
	#(373 1 #liftFirstValue: 28561418 false) 
	#(373 1 #liftFirstValue: 28561419 false) 
	#(373 1 #liftFirstValue: 28561420 false) 
	#(193 1 #liftFirstValue: 8320003 false) 
	#(211 1 #liftFirstValue: 9545732 false) 
	#(236 1 #liftFirstValue: 11309057 false) 
	#(649 1 #reduceActionForliteral1: 59527169 false) 
	#(373 1 #liftFirstValue: 28561421 false) 
	#(193 1 #liftFirstValue: 8320004 false) 
	#(211 1 #liftFirstValue: 9545733 false) 
	#(304 1 #liftFirstValue: 19496970 false) 
	#(236 1 #liftFirstValue: 11309082 false) 
	#(304 1 #liftFirstValue: 19496971 false) 
	#(236 1 #liftFirstValue: 11309075 false) 
	#(373 1 #liftFirstValue: 28561422 false) 
	#(337 0 #nil 25450497 false) 
	#(340 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 25777153 false) 
	#(334 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 24990721 false) 
	#(192 0 #nil 8292353 false) 
	#(342 1 #liftFirstValue: 26070017 false) 
	#(404 1 #liftFirstValue: 31913985 false) 
	#(315 1 #liftFirstValue: 21229569 false) 
	#(316 1 #liftFirstValue: 21577729 false) 
	#(317 1 #liftFirstValue: 21835777 false) 
	#(318 1 #liftFirstValue: 22070273 false) 
	#(319 1 #liftFirstValue: 22755329 false) 
	#(320 1 #liftFirstValue: 23003137 false) 
	#(321 1 #liftFirstValue: 23136257 false) 
	#(322 1 #liftFirstValue: 23277569 false) 
	#(323 1 #liftFirstValue: 23437313 false) 
	#(324 1 #liftFirstValue: 23604225 false) 
	#(325 1 #liftFirstValue: 23775233 false) 
	#(328 1 #liftFirstValue: 24127489 false) 
	#(325 1 #liftFirstValue: 23775235 false) 
	#(369 1 #liftFirstValue: 28255233 false) 
	#(369 1 #liftFirstValue: 28255234 false) 
	#(369 1 #liftFirstValue: 28255235 false) 
	#(331 1 #liftFirstValue: 24681473 false) 
	#(331 1 #liftFirstValue: 24681474 false) 
	#(339 1 #reduceActionForimplicit_anonymous_function_signature2: 25619458 false) 
	#(369 1 #liftFirstValue: 28255236 false) 
	#(348 0 #reduceActionFor_query_body_clauses1: 26514433 false) 
	#(368 1 #liftFirstValue: 28194818 false) 
	#(368 1 #liftFirstValue: 28194817 false) 
	#(404 1 #liftFirstValue: 31913986 false) 
	#(481 1 #liftFirstValue: 39633931 false) 
	#(481 1 #liftFirstValue: 39633921 false) 
	#(481 1 #liftFirstValue: 39633922 false) 
	#(481 1 #liftFirstValue: 39633923 false) 
	#(481 1 #liftFirstValue: 39633924 false) 
	#(481 1 #liftFirstValue: 39633925 false) 
	#(481 1 #liftFirstValue: 39633926 false) 
	#(481 1 #liftFirstValue: 39633927 false) 
	#(481 1 #liftFirstValue: 39633928 false) 
	#(481 1 #liftFirstValue: 39633930 false) 
	#(519 0 #reduceActionFor_extern_alias_directives1: 43569153 false) 
	#(544 0 #reduceActionFor_extern_alias_directives1: 46577665 false) 
	#(489 0 #reduceActionFor_extern_alias_directives1: 40587265 false) 
	#(499 0 #reduceActionFor_extern_alias_directives1: 41713665 false) 
	#(497 0 #reduceActionFor_extern_alias_directives1: 41323521 false) 
	#(483 0 #reduceActionFor_extern_alias_directives1: 40045569 false) 
	#(537 0 #reduceActionFor_extern_alias_directives1: 45708289 false) 
	#(654 0 #nil 60027905 false) 
	#(561 0 #reduceActionFor_extern_alias_directives1: 48721921 false) 
	#(481 1 #liftFirstValue: 39633929 false) 
	#(625 0 #reduceActionFor_extern_alias_directives1: 57179137 false) 
	#(178 1 #reduceActionFor_extern_alias_directives2: 6871042 false) 
	#(179 1 #reduceActionForextern_alias_directives1: 6916097 false) 
	#(180 1 #liftFirstValue: 7017473 false) 
	#(180 1 #liftFirstValue: 7017474 false) 
	#(180 1 #liftFirstValue: 7017475 false) 
	#(176 2 #reduceActionForextern_alias_directives2: 6671362 false) 
	#(637 1 #liftFirstValue: 58349569 false) 
	#(635 1 #reduceActionFor_extern_alias_directives2: 58210306 false) 
	#(173 1 #reduceActionForqualified_identifier1: 6389761 false) 
	#(462 1 #liftFirstValue: 37227526 false) 
	#(462 1 #liftFirstValue: 37227524 false) 
	#(624 1 #liftFirstValue: 57052164 false) 
	#(616 1 #liftFirstValue: 55908356 false) 
	#(588 1 #liftFirstValue: 52237316 false) 
	#(574 1 #liftFirstValue: 50558980 false) 
	#(462 1 #liftFirstValue: 37227521 false) 
	#(624 1 #liftFirstValue: 57052161 false) 
	#(616 1 #liftFirstValue: 55908353 false) 
	#(588 1 #liftFirstValue: 52237313 false) 
	#(574 1 #liftFirstValue: 50558977 false) 
	#(462 1 #liftFirstValue: 37227525 false) 
	#(624 1 #liftFirstValue: 57052165 false) 
	#(616 1 #liftFirstValue: 55908357 false) 
	#(588 1 #liftFirstValue: 52237317 false) 
	#(574 1 #liftFirstValue: 50558981 false) 
	#(462 1 #liftFirstValue: 37227523 false) 
	#(624 1 #liftFirstValue: 57052163 false) 
	#(616 1 #liftFirstValue: 55908355 false) 
	#(588 1 #liftFirstValue: 52237315 false) 
	#(574 1 #liftFirstValue: 50558979 false) 
	#(462 1 #liftFirstValue: 37227522 false) 
	#(624 1 #liftFirstValue: 57052162 false) 
	#(616 1 #liftFirstValue: 55908354 false) 
	#(588 1 #liftFirstValue: 52237314 false) 
	#(574 1 #liftFirstValue: 50558978 false) 
	#(574 1 #liftFirstValue: 50558982 false) 
	#(462 1 #liftFirstValue: 37227527 false) 
	#(462 1 #liftFirstValue: 37227528 false) 
	#(658 1 #liftFirstValue: 60899329 false) 
	#(462 1 #liftFirstValue: 37227530 false) 
	#(624 1 #liftFirstValue: 57052167 false) 
	#(588 1 #liftFirstValue: 52237319 false) 
	#(574 1 #liftFirstValue: 50558984 false) 
	#(653 0 #nil 59983873 false) 
	#(460 1 #reduceActionFor_extern_alias_directives2: 37089282 false) 
	#(461 1 #reduceActionForextern_alias_directives1: 37132289 false) 
	#(572 1 #reduceActionFor_extern_alias_directives2: 50413570 false) 
	#(573 1 #reduceActionForextern_alias_directives1: 50459649 false) 
	#(586 1 #reduceActionFor_extern_alias_directives2: 52074498 false) 
	#(587 1 #reduceActionForextern_alias_directives1: 52125697 false) 
	#(614 1 #reduceActionFor_extern_alias_directives2: 55782402 false) 
	#(615 1 #reduceActionForextern_alias_directives1: 55821313 false) 
	#(622 1 #reduceActionFor_extern_alias_directives2: 56895490 false) 
	#(623 1 #reduceActionForextern_alias_directives1: 56944641 false) 
	#(462 1 #liftFirstValue: 37227529 false) 
	#(624 1 #liftFirstValue: 57052166 false) 
	#(588 1 #liftFirstValue: 52237318 false) 
	#(574 1 #liftFirstValue: 50558983 false) 
	#(633 2 #reduceActionForextern_alias_directives2: 57868290 false) 
	#(304 2 #reduceActionForunary_expression4: 19496964 false) 
	#(666 2 #reduceActionForunary_expression4: 62097409 false) 
	#(200 1 #reduceActionFortuple_type_element1: 8706049 false) 
	#(253 1 #reduceActionFortuple_element1: 13654017 false) 
	#(663 2 #reduceActionForunary_expression4: 61725697 false) 
	#(304 2 #reduceActionForunary_expression4: 19496962 false) 
	#(311 2 #reduceActionForunary_expression4: 20882433 false) 
	#(304 2 #reduceActionForunary_expression4: 19496963 false) 
	#(312 2 #reduceActionForunary_expression4: 20982785 false) 
	#(314 2 #reduceActionForawait_expression1: 21161985 false) 
	#(437 2 #reduceActionForbreak_statement1: 35155969 false) 
	#(453 2 #reduceActionForchecked_statement1: 36386817 false) 
	#(438 2 #reduceActionForcontinue_statement1: 35195905 false) 
	#(332 1 #liftFirstValue: 24798210 false) 
	#(428 0 #nil 34371585 false) 
	#(215 0 #reduceActionFor_extern_alias_directives1: 9963521 false) 
	#(286 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 17701889 false) 
	#(217 1 #liftFirstValue: 10053633 false) 
	#(284 2 #reduceActionForanonymous_object_creation_expression1: 17490945 false) 
	#(393 2 #reduceActionForref_kind2: 31062018 false) 
	#(367 1 #liftFirstValue: 28148738 false) 
	#(662 1 #liftFirstValue: 61473793 false) 
	#(662 1 #liftFirstValue: 61473794 false) 
	#(445 0 #reduceActionFor_extern_alias_directives1: 35785729 false) 
	#(454 2 #reduceActionForunchecked_statement1: 36441089 false) 
	#(659 2 #reduceActionForunsafe_statement1: 61302785 false) 
	#(376 1 #reduceActionForextern_alias_directives1: 28930049 false) 
	#(375 1 #reduceActionFor_extern_alias_directives2: 28888066 false) 
	#(304 2 #reduceActionForunary_expression4: 19496965 false) 
	#(248 1 #liftFirstValue: 13390850 false) 
	#(191 2 #reduceActionFornamespace_or_type_name1: 8041473 false) 
	#(247 2 #reduceActionForsimple_name1: 13317121 false) 
	#(399 1 #reduceActionForexplicitly_typed_local_variable_declarator1: 31542273 false) 
	#(395 2 #reduceActionForexplicitly_typed_local_variable_declaration1: 31232001 false) 
	#(398 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 31474689 false) 
	#(661 1 #reduceActionForextern_alias_directives1: 61429761 false) 
	#(660 2 #reduceActionForpointer_type1: 61394945 false) 
	#(195 2 #reduceActionFornullable_value_type1: 8444929 false) 
	#(210 2 #reduceActionForarray_type1: 9484289 false) 
	#(213 1 #reduceActionForextern_alias_directives1: 9806849 false) 
	#(232 0 #reduceActionFor_attribute_target_specifier1: 10951681 false) 
	#(229 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 10769409 false) 
	#(268 2 #reduceActionForpost_increment_expression1: 15585281 false) 
	#(269 2 #reduceActionForpost_increment_expression1: 15686657 false) 
	#(366 1 #reduceActionForref_kind1: 27902983 false) 
	#(366 1 #reduceActionForref_kind1: 27902984 false) 
	#(366 1 #reduceActionForref_kind1: 27902981 false) 
	#(366 1 #reduceActionForref_kind1: 27902979 false) 
	#(366 1 #reduceActionForref_kind1: 27902980 false) 
	#(366 1 #reduceActionForref_kind1: 27902982 false) 
	#(366 1 #reduceActionForref_kind1: 27902987 false) 
	#(366 1 #reduceActionForref_kind1: 27902977 false) 
	#(366 1 #reduceActionForref_kind1: 27902988 false) 
	#(366 1 #reduceActionForref_kind1: 27902986 false) 
	#(366 1 #reduceActionForref_kind1: 27902985 false) 
	#(389 1 #reduceActionForref_local_function_body1: 30416897 false) 
	#(380 2 #reduceActionForlocal_function_declaration2: 29281282 false) 
	#(387 1 #liftFirstValue: 30163969 false) 
	#(382 2 #liftFirstValue: 29553666 false) 
	#(387 1 #liftFirstValue: 30163970 false) 
	#(388 1 #reduceActionForref_local_function_body1: 30227457 false) 
	#(380 2 #reduceActionForlocal_function_declaration2: 29281281 false) 
	#(386 1 #liftFirstValue: 30093314 false) 
	#(503 1 #liftFirstValue: 42080257 false) 
	#(384 2 #reduceActionForextern_alias_directives2: 29688834 false) 
	#(386 1 #liftFirstValue: 30093313 false) 
	#(503 1 #liftFirstValue: 42080258 false) 
	#(379 2 #reduceActionFordeclaration_statement1: 29116417 false) 
	#(391 2 #reduceActionForimplicitly_typed_local_variable_declaration1: 30734337 false) 
	#(379 2 #reduceActionFordeclaration_statement1: 29116418 false) 
	#(412 2 #reduceActionForexpression_statement1: 32718849 false) 
	#(660 2 #reduceActionForpointer_type1: 61394946 false) 
	#(338 1 #liftFirstValue: 25550851 false) 
	#(338 1 #liftFirstValue: 25550850 false) 
	#(338 1 #liftFirstValue: 25550849 false) 
	#(334 1 #reduceActionFor_extern_alias_directives2: 24990722 false) 
	#(335 1 #reduceActionForinterpolated_regular_string1: 25092097 false) 
	#(337 1 #liftFirstValue: 25450498 false) 
	#(340 1 #reduceActionFor_extern_alias_directives2: 25777154 false) 
	#(341 1 #reduceActionForinterpolated_regular_string1: 25876481 false) 
	#(192 1 #liftFirstValue: 8292354 false) 
	#(326 2 #reduceActionForthrow_expression1: 23966721 false) 
	#(350 1 #reduceActionForquery_body_clause1: 26649601 false) 
	#(345 2 #reduceActionForquery_expression1: 26305537 false) 
	#(348 1 #reduceActionFor_extern_alias_directives2: 26514434 false) 
	#(349 1 #reduceActionForquery_body_clauses1: 26564609 false) 
	#(350 1 #reduceActionForquery_body_clause2: 26649602 false) 
	#(350 1 #reduceActionForquery_body_clause3: 26649603 false) 
	#(350 1 #reduceActionForquery_body_clause4: 26649604 false) 
	#(350 1 #reduceActionForquery_body_clause5: 26649605 false) 
	#(350 1 #reduceActionForquery_body_clause6: 26649606 false) 
	#(327 2 #reduceActionFordeclaration_expression1: 24044545 false) 
	#(507 1 #reduceActionForref_method_body3: 42401795 false) 
	#(507 1 #reduceActionForref_local_function_body1: 42401793 false) 
	#(495 2 #reduceActionFormethod_declaration2: 41160706 false) 
	#(506 1 #reduceActionForref_method_body3: 42238980 false) 
	#(506 1 #reduceActionForref_local_function_body1: 42238977 false) 
	#(495 2 #reduceActionFormethod_declaration2: 41160705 false) 
	#(521 1 #liftFirstValue: 43725834 false) 
	#(502 1 #liftFirstValue: 41913354 false) 
	#(546 1 #liftFirstValue: 46728201 false) 
	#(539 1 #liftFirstValue: 45846538 false) 
	#(501 1 #liftFirstValue: 41859074 false) 
	#(502 1 #liftFirstValue: 41913355 false) 
	#(521 1 #liftFirstValue: 43725835 false) 
	#(552 1 #liftFirstValue: 47515651 false) 
	#(546 1 #liftFirstValue: 46728202 false) 
	#(539 1 #liftFirstValue: 45846539 false) 
	#(563 1 #liftFirstValue: 48898053 false) 
	#(654 1 #liftFirstValue: 60027906 false) 
	#(491 1 #liftFirstValue: 40726532 false) 
	#(521 1 #liftFirstValue: 43725828 false) 
	#(546 1 #liftFirstValue: 46728196 false) 
	#(502 1 #liftFirstValue: 41913348 false) 
	#(539 1 #liftFirstValue: 45846532 false) 
	#(485 1 #liftFirstValue: 40198148 false) 
	#(563 1 #liftFirstValue: 48898051 false) 
	#(546 1 #liftFirstValue: 46728193 false) 
	#(521 1 #liftFirstValue: 43725825 false) 
	#(491 1 #liftFirstValue: 40726529 false) 
	#(502 1 #liftFirstValue: 41913345 false) 
	#(539 1 #liftFirstValue: 45846529 false) 
	#(485 1 #liftFirstValue: 40198145 false) 
	#(546 1 #liftFirstValue: 46728200 false) 
	#(521 1 #liftFirstValue: 43725833 false) 
	#(502 1 #liftFirstValue: 41913353 false) 
	#(539 1 #liftFirstValue: 45846537 false) 
	#(491 1 #liftFirstValue: 40726533 false) 
	#(502 1 #liftFirstValue: 41913349 false) 
	#(546 1 #liftFirstValue: 46728197 false) 
	#(521 1 #liftFirstValue: 43725829 false) 
	#(539 1 #liftFirstValue: 45846533 false) 
	#(485 1 #liftFirstValue: 40198149 false) 
	#(563 1 #liftFirstValue: 48898052 false) 
	#(491 1 #liftFirstValue: 40726531 false) 
	#(521 1 #liftFirstValue: 43725827 false) 
	#(502 1 #liftFirstValue: 41913347 false) 
	#(546 1 #liftFirstValue: 46728195 false) 
	#(539 1 #liftFirstValue: 45846531 false) 
	#(485 1 #liftFirstValue: 40198147 false) 
	#(563 1 #liftFirstValue: 48898050 false) 
	#(546 1 #liftFirstValue: 46728194 false) 
	#(502 1 #liftFirstValue: 41913346 false) 
	#(521 1 #liftFirstValue: 43725826 false) 
	#(491 1 #liftFirstValue: 40726530 false) 
	#(552 1 #liftFirstValue: 47515649 false) 
	#(539 1 #liftFirstValue: 45846530 false) 
	#(485 1 #liftFirstValue: 40198146 false) 
	#(563 1 #liftFirstValue: 48898049 false) 
	#(491 1 #liftFirstValue: 40726535 false) 
	#(521 1 #liftFirstValue: 43725832 false) 
	#(546 1 #liftFirstValue: 46728199 false) 
	#(502 1 #liftFirstValue: 41913352 false) 
	#(539 1 #liftFirstValue: 45846536 false) 
	#(502 1 #liftFirstValue: 41913350 false) 
	#(552 1 #liftFirstValue: 47515650 false) 
	#(521 1 #liftFirstValue: 43725830 false) 
	#(491 1 #liftFirstValue: 40726534 false) 
	#(539 1 #liftFirstValue: 45846534 false) 
	#(569 1 #reduceActionForstatic_constructor_modifiers1: 49593345 false) 
	#(501 1 #liftFirstValue: 41859075 false) 
	#(491 1 #liftFirstValue: 40726538 false) 
	#(546 1 #liftFirstValue: 46728204 false) 
	#(552 1 #liftFirstValue: 47515653 false) 
	#(521 1 #liftFirstValue: 43725837 false) 
	#(539 1 #liftFirstValue: 45846541 false) 
	#(563 1 #liftFirstValue: 48898055 false) 
	#(502 1 #liftFirstValue: 41913351 false) 
	#(546 1 #liftFirstValue: 46728198 false) 
	#(521 1 #liftFirstValue: 43725831 false) 
	#(539 1 #liftFirstValue: 45846535 false) 
	#(491 1 #liftFirstValue: 40726536 false) 
	#(483 1 #reduceActionFor_extern_alias_directives2: 40045570 false) 
	#(484 1 #reduceActionForextern_alias_directives1: 40094721 false) 
	#(489 1 #reduceActionFor_extern_alias_directives2: 40587266 false) 
	#(490 1 #reduceActionForextern_alias_directives1: 40631297 false) 
	#(499 1 #reduceActionFor_extern_alias_directives2: 41713666 false) 
	#(500 1 #reduceActionForextern_alias_directives1: 41759745 false) 
	#(501 1 #liftFirstValue: 41859073 false) 
	#(519 1 #reduceActionFor_extern_alias_directives2: 43569154 false) 
	#(520 1 #reduceActionForextern_alias_directives1: 43618305 false) 
	#(537 1 #reduceActionFor_extern_alias_directives2: 45708290 false) 
	#(538 1 #reduceActionForextern_alias_directives1: 45751297 false) 
	#(544 1 #reduceActionFor_extern_alias_directives2: 46577666 false) 
	#(545 1 #reduceActionForextern_alias_directives1: 46624769 false) 
	#(551 1 #reduceActionForextern_alias_directives1: 47408129 false) 
	#(561 1 #reduceActionFor_extern_alias_directives2: 48721922 false) 
	#(562 1 #reduceActionForextern_alias_directives1: 48778241 false) 
	#(552 1 #liftFirstValue: 47515652 false) 
	#(546 1 #liftFirstValue: 46728203 false) 
	#(491 1 #liftFirstValue: 40726537 false) 
	#(521 1 #liftFirstValue: 43725836 false) 
	#(539 1 #liftFirstValue: 45846540 false) 
	#(563 1 #liftFirstValue: 48898054 false) 
	#(189 1 #liftFirstValue: 7956481 false) 
	#(184 0 #reduceActionFor_extern_alias_directives1: 7382017 false) 
	#(625 1 #reduceActionFor_extern_alias_directives2: 57179138 false) 
	#(626 1 #reduceActionFor_extern_alias_directives2: 57226241 false) 
	#(627 1 #reduceActionForextern_alias_directives1: 57277441 false) 
	#(179 2 #reduceActionForextern_alias_directives2: 6916098 false) 
	#(640 1 #liftFirstValue: 58612737 false) 
	#(638 1 #reduceActionForinterpolated_regular_string1: 58425345 false) 
	#(641 0 #reduceActionFor_attribute_arguments1: 58644481 false) 
	#(636 2 #reduceActionForref_kind2: 58276865 false) 
	#(651 0 #nil 59926529 false) 
	#(653 1 #liftFirstValue: 59983874 false) 
	#(461 2 #reduceActionForextern_alias_directives2: 37132290 false) 
	#(573 2 #reduceActionForextern_alias_directives2: 50459650 false) 
	#(587 2 #reduceActionForextern_alias_directives2: 52125698 false) 
	#(615 2 #reduceActionForextern_alias_directives2: 55821314 false) 
	#(623 2 #reduceActionForextern_alias_directives2: 56944642 false) 
	#(200 2 #reduceActionFortuple_type_element2: 8706050 false) 
	#(199 1 #reduceActionFor_____tuple_type_element__element___1: 8643585 false) 
	#(252 1 #reduceActionFor_____tuple_type_element__element___1: 13596673 false) 
	#(249 3 #reduceActionForparenthesized_expression1: 13441025 false) 
	#(265 1 #reduceActionForinterpolated_regular_string1: 15321089 false) 
	#(409 3 #reduceActionForlocal_constant_declaration1: 32422913 false) 
	#(410 1 #reduceActionForinterpolated_regular_string1: 32500737 false) 
	#(330 3 #reduceActionForanonymous_method_expression1: 24554497 false) 
	#(429 1 #liftFirstValue: 34429953 false) 
	#(434 1 #reduceActionForinterpolated_regular_string1: 34733057 false) 
	#(428 1 #liftFirstValue: 34371586 false) 
	#(429 1 #reduceActionForfor_initializer2: 34429954 false) 
	#(370 1 #liftFirstValue: 28383233 false) 
	#(439 3 #reduceActionForgoto_statement3: 35241987 false) 
	#(439 3 #reduceActionForgoto_statement1: 35241985 false) 
	#(371 1 #liftFirstValue: 28421121 false) 
	#(303 1 #reduceActionFornamed_entity_target3: 19333123 false) 
	#(303 1 #reduceActionForthis_access1: 19333122 false) 
	#(303 1 #liftFirstValue: 19333121 false) 
	#(303 1 #liftFirstValue: 19333125 false) 
	#(303 1 #liftFirstValue: 19333124 false) 
	#(302 0 #reduceActionFor______Identifier___type_argument_list__typeArguments___1: 19267585 false) 
	#(216 1 #reduceActionForextern_alias_directives1: 10005505 false) 
	#(215 1 #reduceActionFor_extern_alias_directives2: 9963522 false) 
	#(288 1 #reduceActionFormember_declarator1: 17884161 false) 
	#(288 1 #reduceActionFormember_declarator2: 17884162 false) 
	#(288 1 #reduceActionFormember_declarator2: 17884164 false) 
	#(286 1 #reduceActionFor_extern_alias_directives2: 17701890 false) 
	#(287 1 #reduceActionForinterpolated_regular_string1: 17760257 false) 
	#(288 1 #reduceActionFormember_declarator2: 17884163 false) 
	#(274 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 16284673 false) 
	#(270 3 #reduceActionForobject_creation_expression2: 15788034 false) 
	#(272 1 #liftFirstValue: 16070657 false) 
	#(272 1 #liftFirstValue: 16070658 false) 
	#(583 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 51554305 false) 
	#(282 3 #reduceActionForarray_creation_expression2: 17087490 false) 
	#(282 3 #reduceActionForarray_creation_expression3: 17087491 false) 
	#(440 3 #reduceActionForreturn_statement2: 35383298 false) 
	#(221 1 #liftFirstValue: 10291201 false) 
	#(440 3 #reduceActionForreturn_statement1: 35383297 false) 
	#(441 3 #reduceActionForthrow_statement1: 35493889 false) 
	#(442 3 #reduceActionFortry_statement1: 35546113 false) 
	#(443 1 #reduceActionFor_extern_alias_directives2: 35729409 false) 
	#(444 1 #reduceActionForextern_alias_directives1: 35746817 false) 
	#(442 3 #reduceActionFortry_statement2: 35546114 false) 
	#(291 0 #reduceActionFor_generic_dimension_specifier1: 18475009 false) 
	#(457 1 #liftFirstValue: 36708354 false) 
	#(457 1 #liftFirstValue: 36708353 false) 
	#(458 3 #reduceActionForyield_statement2: 36777986 false) 
	#(374 3 #reduceActionForblock1: 28822529 false) 
	#(376 2 #reduceActionForextern_alias_directives2: 28930050 false) 
	#(378 3 #reduceActionForlabeled_statement1: 29046785 false) 
	#(220 1 #liftFirstValue: 10246145 false) 
	#(219 1 #reduceActionForinterpolated_regular_string1: 10159105 false) 
	#(396 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31369217 false) 
	#(661 2 #reduceActionForextern_alias_directives2: 61429762 false) 
	#(213 2 #reduceActionForextern_alias_directives2: 9806850 false) 
	#(229 1 #reduceActionFor_extern_alias_directives2: 10769410 false) 
	#(230 1 #reduceActionForinterpolated_regular_string1: 10817537 false) 
	#(232 1 #reduceActionFor_extern_alias_directives2: 10951682 false) 
	#(240 1 #reduceActionForinterpolated_regular_string1: 12401665 false) 
	#(243 0 #reduceActionForScanFormat1: 12774401 true) 
	#(241 1 #reduceActionForinterpolation1: 12584961 false) 
	#(246 1 #reduceActionForinterpolated_regular_string1: 13130753 false) 
	#(366 2 #reduceActionForref_kind2: 27902978 false) 
	#(365 3 #reduceActionForassignment1: 27819009 false) 
	#(504 1 #liftFirstValue: 42117121 false) 
	#(383 3 #reduceActionForLocalFunctionHeader1: 29665281 false) 
	#(403 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 31859713 false) 
	#(400 3 #reduceActionForref_local_variable_declaration1: 31689729 false) 
	#(391 3 #reduceActionForimplicitly_typed_local_variable_declaration2: 30734338 false) 
	#(333 3 #reduceActionForexplicit_anonymous_function_signature1: 24886273 false) 
	#(339 3 #reduceActionForimplicit_anonymous_function_signature1: 25619457 false) 
	#(315 3 #reduceActionFormultiplicative_expression4: 21229572 false) 
	#(315 3 #reduceActionFormultiplicative_expression4: 21229570 false) 
	#(315 3 #reduceActionFormultiplicative_expression4: 21229571 false) 
	#(316 3 #reduceActionFormultiplicative_expression4: 21577730 false) 
	#(316 3 #reduceActionFormultiplicative_expression4: 21577731 false) 
	#(317 3 #reduceActionFormultiplicative_expression4: 21835778 false) 
	#(317 3 #reduceActionFormultiplicative_expression4: 21835779 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070274 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070276 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070277 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070280 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070278 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070279 false) 
	#(222 1 #liftFirstValue: 10328067 false) 
	#(222 1 #liftFirstValue: 10328066 false) 
	#(222 1 #liftFirstValue: 10328065 false) 
	#(225 1 #liftFirstValue: 10509313 false) 
	#(318 3 #reduceActionFormultiplicative_expression4: 22070275 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 22755331 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 22755330 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 23003138 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 23136258 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 23277570 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 23437314 false) 
	#(325 3 #reduceActionFormultiplicative_expression4: 23775234 false) 
	#(324 3 #reduceActionFormultiplicative_expression4: 23604226 false) 
	#(343 1 #liftFirstValue: 26128385 false) 
	#(329 3 #reduceActionForlambda_expression1: 24436737 false) 
	#(343 1 #liftFirstValue: 26128387 false) 
	#(343 1 #liftFirstValue: 26128386 false) 
	#(343 1 #liftFirstValue: 26128388 false) 
	#(355 2 #reduceActionFororderby_clause1: 27243521 false) 
	#(356 1 #reduceActionFororderings1: 27285505 false) 
	#(358 0 #reduceActionFor_attribute_target_specifier1: 27398145 false) 
	#(352 2 #reduceActionForref_kind2: 26836993 false) 
	#(363 0 #reduceActionFor_query_continuation1: 27711489 false) 
	#(360 1 #reduceActionForselect_or_group_clause1: 27502593 false) 
	#(360 1 #reduceActionForselect_or_group_clause2: 27502594 false) 
	#(349 2 #reduceActionForquery_body_clauses2: 26564610 false) 
	#(569 2 #reduceActionForstatic_constructor_modifiers5: 49593349 false) 
	#(569 2 #reduceActionForstatic_constructor_modifiers2: 49593346 false) 
	#(484 2 #reduceActionForextern_alias_directives2: 40094722 false) 
	#(490 2 #reduceActionForextern_alias_directives2: 40631298 false) 
	#(497 2 #reduceActionForextern_alias_directives2: 41323522 false) 
	#(500 2 #reduceActionForextern_alias_directives2: 41759746 false) 
	#(520 2 #reduceActionForextern_alias_directives2: 43618306 false) 
	#(538 2 #reduceActionForextern_alias_directives2: 45751298 false) 
	#(545 2 #reduceActionForextern_alias_directives2: 46624770 false) 
	#(551 2 #reduceActionForextern_alias_directives2: 47408130 false) 
	#(553 1 #reduceActionForoperator_declarator1: 47593473 false) 
	#(553 1 #reduceActionForoperator_declarator2: 47593474 false) 
	#(553 1 #reduceActionForoperator_declarator3: 47593475 false) 
	#(562 2 #reduceActionForextern_alias_directives2: 48778242 false) 
	#(177 4 #reduceActionForextern_alias_directive1: 6801409 false) 
	#(182 3 #reduceActionForusing_namespace_directive1: 7225345 false) 
	#(630 1 #liftFirstValue: 57754625 false) 
	#(171 4 #reduceActionForcompilation_unit1: 6158337 false) 
	#(184 1 #reduceActionFor_extern_alias_directives2: 7382018 false) 
	#(185 1 #reduceActionForextern_alias_directives1: 7454721 false) 
	#(627 2 #reduceActionForextern_alias_directives2: 57277442 false) 
	#(634 4 #reduceActionForattribute_section1: 57977857 false) 
	#(643 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 58936321 false) 
	#(639 2 #reduceActionForattribute1: 58532865 false) 
	#(641 1 #reduceActionFor_attribute_arguments2: 58644482 false) 
	#(173 3 #reduceActionForqualified_identifier2: 6389762 false) 
	#(651 1 #liftFirstValue: 59926530 false) 
	#(172 4 #reduceActionFornamespace_declaration1: 6282241 false) 
	#(610 0 #reduceActionFor_attribute_target_specifier1: 55459841 false) 
	#(253 3 #reduceActionFortuple_element2: 13654018 false) 
	#(313 4 #reduceActionForcast_expression1: 21083137 false) 
	#(198 2 #reduceActionForref_kind2: 8643585 false) 
	#(197 4 #reduceActionFortuple_type1: 8583169 false) 
	#(199 2 #reduceActionFor_____tuple_type_element__element___2: 8643586 false) 
	#(251 2 #reduceActionForref_kind2: 13596673 false) 
	#(250 4 #reduceActionFortuple_expression1: 13535233 false) 
	#(252 2 #reduceActionFor_____tuple_type_element__element___2: 13596674 false) 
	#(330 4 #reduceActionForanonymous_method_expression2: 24554498 false) 
	#(267 4 #reduceActionForbase_access1: 15447041 false) 
	#(267 4 #reduceActionForbase_access2: 15447042 false) 
	#(295 4 #reduceActionForchecked_expression1: 18669569 false) 
	#(297 4 #reduceActionFordefault_value_expression2: 18821122 false) 
	#(669 1 #reduceActionForinterpolated_regular_string1: 62427137 false) 
	#(430 0 #nil 34528257 false) 
	#(439 4 #reduceActionForgoto_statement2: 35241986 false) 
	#(299 4 #reduceActionFornameof_expression1: 19153921 false) 
	#(300 2 #reduceActionFornamed_entity1: 19221505 false) 
	#(214 3 #reduceActionForrank_specifier1: 9912321 false) 
	#(216 2 #reduceActionForextern_alias_directives2: 10005506 false) 
	#(285 3 #reduceActionForanonymous_object_initializer1: 17575937 false) 
	#(277 1 #reduceActionForinitializer_target1: 16556033 false) 
	#(274 1 #reduceActionFor_extern_alias_directives2: 16284674 false) 
	#(275 1 #reduceActionForinterpolated_regular_string1: 16345089 false) 
	#(280 1 #reduceActionForinterpolated_regular_string1: 16839681 false) 
	#(281 1 #reduceActionForelement_initializer1: 16973825 false) 
	#(494 1 #liftFirstValue: 41100289 false) 
	#(584 1 #reduceActionForinterpolated_regular_string1: 51617793 false) 
	#(494 1 #liftFirstValue: 41100290 false) 
	#(583 1 #reduceActionFor_extern_alias_directives2: 51554306 false) 
	#(667 4 #reduceActionForsizeof_expression1: 62192641 false) 
	#(449 0 #nil 36137985 false) 
	#(452 2 #reduceActionForfinally_clause1: 36335617 false) 
	#(442 4 #reduceActionFortry_statement3: 35546115 false) 
	#(444 2 #reduceActionForextern_alias_directives2: 35746818 false) 
	#(445 2 #reduceActionForextern_alias_directives2: 35785730 false) 
	#(443 2 #reduceActionForextern_alias_directives2: 35729410 false) 
	#(293 0 #reduceActionFor_extern_alias_directives1: 18595841 false) 
	#(290 2 #reduceActionForunbound_type_name1: 18251777 false) 
	#(291 1 #reduceActionFor_extern_alias_directives2: 18475010 false) 
	#(289 4 #reduceActionFortypeof_expression1: 18098177 false) 
	#(289 4 #reduceActionFortypeof_expression1: 18098178 false) 
	#(289 4 #reduceActionFortypeof_expression1: 18098179 false) 
	#(296 4 #reduceActionForunchecked_expression1: 18743297 false) 
	#(458 4 #reduceActionForyield_statement1: 36777985 false) 
	#(188 4 #reduceActionForqualified_alias_member1: 7827457 false) 
	#(218 3 #reduceActionFortype_argument_list1: 10084353 false) 
	#(191 4 #reduceActionFornamespace_or_type_name2: 8041474 false) 
	#(682 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 63803393 false) 
	#(408 1 #liftFirstValue: 32356353 false) 
	#(399 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31542274 false) 
	#(408 1 #liftFirstValue: 32356354 false) 
	#(408 1 #liftFirstValue: 32356355 false) 
	#(398 2 #reduceActionFor_____tuple_type_element__element___2: 31474690 false) 
	#(233 2 #reduceActionForref_kind2: 10990593 false) 
	#(263 4 #reduceActionForinvocation_expression1: 15124481 false) 
	#(231 2 #reduceActionForargument1: 10900481 false) 
	#(234 1 #reduceActionForargument_value1: 11041793 false) 
	#(664 4 #reduceActionForpointer_member_access1: 61831169 false) 
	#(259 4 #reduceActionFormember_access1: 14049281 false) 
	#(264 4 #reduceActionForelement_access1: 15214593 false) 
	#(238 4 #reduceActionForinterpolated_regular_string2: 12112898 false) 
	#(241 2 #reduceActionForinterpolation2: 12584962 false) 
	#(244 4 #reduceActionForinterpolated_regular_string2: 12810242 false) 
	#(259 4 #reduceActionFormember_access1: 14049283 false) 
	#(259 4 #reduceActionFormember_access1: 14049282 false) 
	#(309 4 #reduceActionForinvocation_expression1: 20502529 false) 
	#(309 4 #reduceActionForinvocation_expression1: 20502530 false) 
	#(381 4 #liftFirstValue: 29527041 false) 
	#(388 3 #reduceActionForlocal_function_body2: 30227458 false) 
	#(388 3 #reduceActionForlocal_function_body2: 30227459 false) 
	#(508 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 42543105 false) 
	#(401 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31780865 false) 
	#(394 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31104001 false) 
	#(335 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25092098 false) 
	#(336 3 #reduceActionForexplicit_anonymous_function_paramenter1: 25299969 false) 
	#(341 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25876482 false) 
	#(329 4 #reduceActionForlambda_expression2: 24436738 false) 
	#(228 1 #liftFirstValue: 10692609 false) 
	#(226 2 #reduceActionFordeclaration_expression1: 10553345 false) 
	#(227 1 #liftFirstValue: 10638337 false) 
	#(223 2 #reduceActionFordeclaration_expression1: 10398721 false) 
	#(224 1 #liftFirstValue: 10471425 false) 
	#(344 2 #reduceActionForRefExpression1: 26241025 false) 
	#(359 1 #reduceActionForref_kind1: 27448321 false) 
	#(359 1 #reduceActionForordering_direction2: 27448322 false) 
	#(357 2 #reduceActionForordering1: 27337729 false) 
	#(358 1 #reduceActionFor_extern_alias_directives2: 27398146 false) 
	#(361 2 #reduceActionForref_kind2: 27563009 false) 
	#(347 3 #reduceActionForquery_body1: 26432513 false) 
	#(363 1 #reduceActionFor_extern_alias_directives2: 27711490 false) 
	#(506 3 #reduceActionForlocal_function_body2: 42238978 false) 
	#(506 3 #reduceActionForlocal_function_body2: 42238979 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers6: 49593350 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers7: 49593351 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers3: 49593347 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers3: 49593348 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers3: 49593357 false) 
	#(493 1 #reduceActionForvariable_declarator1: 40993793 false) 
	#(492 1 #reduceActionForinterpolated_regular_string1: 40869889 false) 
	#(505 1 #reduceActionFormember_name1: 42144769 false) 
	#(209 1 #liftFirstValue: 9452545 false) 
	#(543 4 #reduceActionForindexer_declaration1: 46395393 false) 
	#(559 1 #reduceActionForref_method_body3: 48477187 false) 
	#(559 1 #reduceActionForref_local_function_body1: 48477185 false) 
	#(550 4 #reduceActionForoperator_declaration1: 47301633 false) 
	#(567 1 #reduceActionForref_method_body3: 49299459 false) 
	#(567 1 #reduceActionForref_local_function_body1: 49299457 false) 
	#(560 4 #reduceActionForconstructor_declaration1: 48602113 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers7: 49593353 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers6: 49593352 false) 
	#(569 3 #reduceActionForstatic_constructor_modifiers6: 49593361 false) 
	#(183 4 #reduceActionForusing_static_directive1: 7303169 false) 
	#(629 2 #reduceActionForref_kind2: 57667585 false) 
	#(185 2 #reduceActionForextern_alias_directives2: 7454722 false) 
	#(634 5 #reduceActionForattribute_section2: 57977858 false) 
	#(638 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 58425346 false) 
	#(643 1 #reduceActionFor_extern_alias_directives2: 58936322 false) 
	#(644 1 #reduceActionForinterpolated_regular_string1: 58997761 false) 
	#(646 1 #reduceActionForinterpolated_regular_string1: 59233281 false) 
	#(463 0 #nil 37369857 false) 
	#(589 0 #nil 52343809 false) 
	#(610 1 #reduceActionFor_extern_alias_directives2: 55459842 false) 
	#(620 5 #reduceActionFordelegate_declaration1: 56349697 false) 
	#(265 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 15321090 false) 
	#(411 3 #reduceActionForconst_declarator1: 32613377 false) 
	#(410 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 32500738 false) 
	#(431 1 #liftFirstValue: 34579457 false) 
	#(430 1 #liftFirstValue: 34528258 false) 
	#(434 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 34733058 false) 
	#(415 5 #reduceActionForif_statement1: 33126401 false) 
	#(455 5 #reduceActionForlock_statement1: 36499457 false) 
	#(302 2 #reduceActionFor______Identifier___type_argument_list__typeArguments___2: 19267586 false) 
	#(288 3 #reduceActionFormember_declarator5: 17884165 false) 
	#(285 4 #reduceActionForanonymous_object_initializer2: 17575938 false) 
	#(287 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 17760258 false) 
	#(271 0 #nil 15992833 false) 
	#(273 3 #reduceActionForobject_initializer1: 16156673 false) 
	#(279 3 #reduceActionForcollection_initializer1: 16706561 false) 
	#(582 3 #reduceActionForarray_initializer1: 51423233 false) 
	#(212 0 #reduceActionFor_extern_alias_directives1: 9762817 false) 
	#(283 5 #reduceActionFordelegate_creation_expression1: 17389569 false) 
	#(298 5 #reduceActionForstackalloc_expression1: 18891777 false) 
	#(418 0 #reduceActionFor_extern_alias_directives1: 33504257 false) 
	#(416 5 #reduceActionForswitch_statement1: 33366017 false) 
	#(655 0 #nil 60065793 false) 
	#(449 1 #liftFirstValue: 36137986 false) 
	#(446 3 #reduceActionForspecific_catch_clause2: 35852290 false) 
	#(451 2 #reduceActionForgeneral_catch_clause1: 36269057 false) 
	#(294 1 #reduceActionForextern_alias_directives1: 18621441 false) 
	#(293 1 #reduceActionFor_extern_alias_directives2: 18595842 false) 
	#(456 5 #reduceActionForusing_statement1: 36597761 false) 
	#(425 5 #reduceActionForwhile_statement1: 34021377 false) 
	#(219 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10159106 false) 
	#(397 2 #reduceActionForref_kind2: 31474689 false) 
	#(230 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10817538 false) 
	#(234 2 #reduceActionForargument_value2: 11041794 false) 
	#(234 2 #reduceActionForargument_value4: 11041796 false) 
	#(234 2 #reduceActionForargument_value3: 11041795 false) 
	#(306 0 #reduceActionFor_extern_alias_directives1: 20045825 false) 
	#(310 5 #reduceActionFornull_conditional_element_access1: 20741121 false) 
	#(240 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 12401666 false) 
	#(241 3 #reduceActionForinterpolation3: 12584963 false) 
	#(242 2 #reduceActionForref_kind2: 12704769 false) 
	#(246 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 13130754 false) 
	#(389 4 #reduceActionForref_local_function_body2: 30416898 false) 
	#(508 1 #reduceActionFor_extern_alias_directives2: 42543106 false) 
	#(509 1 #reduceActionFor_extern_alias_directives2: 42601473 false) 
	#(510 1 #reduceActionForinterpolated_regular_string1: 42741761 false) 
	#(509 1 #reduceActionForinterpolated_regular_string1: 42601475 false) 
	#(514 0 #nil 43078657 false) 
	#(403 2 #reduceActionFor_____tuple_type_element__element___2: 31859714 false) 
	#(346 5 #reduceActionForfrom_clause1: 26357761 false) 
	#(328 5 #reduceActionForconditional_expression3: 24127491 false) 
	#(328 5 #reduceActionForconditional_expression3: 24127490 false) 
	#(351 4 #reduceActionForlet_clause1: 26771457 false) 
	#(356 3 #reduceActionFororderings2: 27285506 false) 
	#(507 4 #reduceActionForref_method_body2: 42401794 false) 
	#(486 1 #reduceActionForinterpolated_regular_string1: 40283137 false) 
	#(488 5 #reduceActionForfield_declaration1: 40489985 false) 
	#(518 5 #reduceActionForproperty_declaration1: 43371521 false) 
	#(543 5 #reduceActionForindexer_declaration2: 46395394 false) 
	#(529 0 #nil 44695553 false) 
	#(527 0 #nil 44544001 false) 
	#(531 0 #reduceActionFor_extern_alias_directives1: 44847105 false) 
	#(555 1 #liftFirstValue: 47851523 false) 
	#(557 1 #liftFirstValue: 48123916 false) 
	#(557 1 #liftFirstValue: 48123909 false) 
	#(557 1 #liftFirstValue: 48123910 false) 
	#(557 1 #liftFirstValue: 48123907 false) 
	#(555 1 #liftFirstValue: 47851521 false) 
	#(557 1 #liftFirstValue: 48123905 false) 
	#(555 1 #liftFirstValue: 47851525 false) 
	#(555 1 #liftFirstValue: 47851522 false) 
	#(557 1 #liftFirstValue: 48123906 false) 
	#(555 1 #liftFirstValue: 47851526 false) 
	#(557 1 #liftFirstValue: 48123908 false) 
	#(557 1 #liftFirstValue: 48123918 false) 
	#(557 1 #liftFirstValue: 48123913 false) 
	#(557 1 #liftFirstValue: 48123920 false) 
	#(557 1 #liftFirstValue: 48123915 false) 
	#(557 1 #liftFirstValue: 48123919 false) 
	#(557 1 #liftFirstValue: 48123912 false) 
	#(555 1 #liftFirstValue: 47851528 false) 
	#(555 1 #liftFirstValue: 47851527 false) 
	#(557 1 #liftFirstValue: 48123911 false) 
	#(555 1 #liftFirstValue: 47851524 false) 
	#(557 1 #liftFirstValue: 48123917 false) 
	#(557 1 #liftFirstValue: 48123914 false) 
	#(181 5 #reduceActionForusing_alias_directive1: 7118849 false) 
	#(628 4 #reduceActionForattribute_section1: 57415681 false) 
	#(648 1 #liftFirstValue: 59460609 false) 
	#(645 2 #reduceActionForpositional_argument1: 59133953 false) 
	#(642 3 #reduceActionForanonymous_object_initializer1: 58696705 false) 
	#(642 3 #reduceActionForanonymous_object_initializer1: 58696707 false) 
	#(467 0 #reduceActionFor_class_base1: 37704705 false) 
	#(463 1 #liftFirstValue: 37369858 false) 
	#(575 0 #reduceActionFor_struct_interfaces1: 50676737 false) 
	#(594 0 #reduceActionFor_struct_interfaces1: 52818945 false) 
	#(589 1 #liftFirstValue: 52343810 false) 
	#(612 1 #liftFirstValue: 55576577 false) 
	#(611 2 #reduceActionForref_kind2: 55490561 false) 
	#(611 2 #reduceActionForref_kind2: 55490562 false) 
	#(617 0 #reduceActionFor_implicit_anonymous_function_parameter_list1: 55989249 false) 
	#(620 6 #reduceActionFordelegate_declaration2: 56349698 false) 
	#(671 1 #reduceActionForordering_direction2: 62652418 false) 
	#(670 3 #reduceActionForfixed_pointer_declarator1: 62571521 false) 
	#(668 6 #reduceActionForfixed_statement1: 62304257 false) 
	#(669 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 62427138 false) 
	#(432 0 #nil 34619393 false) 
	#(270 6 #reduceActionForobject_creation_expression1: 15788033 false) 
	#(271 1 #liftFirstValue: 15992834 false) 
	#(277 3 #reduceActionForinitializer_target2: 16556034 false) 
	#(281 3 #reduceActionForelement_initializer2: 16973826 false) 
	#(273 4 #reduceActionForobject_initializer2: 16156674 false) 
	#(275 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16345090 false) 
	#(278 1 #liftFirstValue: 16633858 false) 
	#(276 3 #reduceActionFormember_initializer1: 16475137 false) 
	#(278 1 #liftFirstValue: 16633857 false) 
	#(279 4 #reduceActionForcollection_initializer2: 16706562 false) 
	#(280 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16839682 false) 
	#(582 4 #reduceActionForarray_initializer2: 51423234 false) 
	#(584 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 51617794 false) 
	#(581 0 #nil 51376129 false) 
	#(212 1 #reduceActionFor_extern_alias_directives2: 9762818 false) 
	#(298 6 #reduceActionForstackalloc_expression2: 18891778 false) 
	#(418 1 #reduceActionFor_extern_alias_directives2: 33504258 false) 
	#(419 1 #reduceActionForextern_alias_directives1: 33547265 false) 
	#(421 1 #reduceActionForextern_alias_directives1: 33696769 false) 
	#(655 1 #liftFirstValue: 60065794 false) 
	#(446 4 #reduceActionForspecific_catch_clause1: 35852289 false) 
	#(290 4 #reduceActionForunbound_type_name2: 18251778 false) 
	#(292 3 #reduceActionForgeneric_dimension_specifier1: 18543617 false) 
	#(294 2 #reduceActionForextern_alias_directives2: 18621442 false) 
	#(290 4 #reduceActionForunbound_type_name3: 18251779 false) 
	#(679 3 #reduceActionForanonymous_object_initializer1: 63653889 false) 
	#(683 1 #liftFirstValue: 63877121 false) 
	#(682 2 #reduceActionFor_stackalloc_element_initializer______2: 63803394 false) 
	#(680 2 #reduceActionForstackalloc_initializer_element_list1: 63763457 false) 
	#(305 6 #reduceActionFornull_conditional_member_access1: 19919873 false) 
	#(241 4 #reduceActionForinterpolation4: 12584964 false) 
	#(385 4 #reduceActionForlocal_function_header1: 29794305 false) 
	#(516 1 #liftFirstValue: 43199491 false) 
	#(516 1 #liftFirstValue: 43199490 false) 
	#(516 1 #liftFirstValue: 43199489 false) 
	#(515 1 #liftFirstValue: 43139074 false) 
	#(514 1 #liftFirstValue: 43078658 false) 
	#(515 1 #liftFirstValue: 43139073 false) 
	#(464 3 #reduceActionFortype_parameter_list1: 37439489 false) 
	#(465 2 #reduceActionFortype_parameters1: 37522433 false) 
	#(392 4 #reduceActionForref_local_variable_declarator1: 30932993 false) 
	#(402 2 #reduceActionForref_kind2: 31859713 false) 
	#(362 4 #reduceActionForlet_clause1: 27617281 false) 
	#(364 3 #reduceActionForquery_continuation1: 27761665 false) 
	#(482 6 #reduceActionForconstant_declaration1: 39933953 false) 
	#(493 3 #reduceActionForvariable_declarator2: 40993794 false) 
	#(492 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40869890 false) 
	#(505 3 #reduceActionFormember_name2: 42144770 false) 
	#(518 6 #reduceActionForproperty_declaration2: 43371522 false) 
	#(536 6 #reduceActionForevent_declaration1: 45486081 false) 
	#(548 3 #reduceActionForindexer_body2: 47069186 false) 
	#(548 3 #reduceActionForindexer_body1: 47069185 false) 
	#(526 2 #reduceActionForref_kind2: 44350465 false) 
	#(529 1 #liftFirstValue: 44695554 false) 
	#(526 2 #reduceActionForaccessor_declarations2: 44350466 false) 
	#(527 1 #liftFirstValue: 44544002 false) 
	#(532 1 #reduceActionForextern_alias_directives1: 44896258 false) 
	#(532 1 #reduceActionForextern_alias_directives1: 44896259 false) 
	#(532 1 #reduceActionForextern_alias_directives1: 44896257 false) 
	#(531 1 #reduceActionFor_extern_alias_directives2: 44847106 false) 
	#(559 3 #reduceActionForlocal_function_body2: 48477186 false) 
	#(565 0 #nil 49111041 false) 
	#(567 3 #reduceActionForlocal_function_body2: 49299458 false) 
	#(570 1 #reduceActionForstatic_constructor_body3: 49935363 false) 
	#(570 1 #reduceActionForargument_value1: 49935361 false) 
	#(568 6 #reduceActionForstatic_constructor_declaration1: 49427457 false) 
	#(628 5 #reduceActionForattribute_section2: 57415682 false) 
	#(647 3 #reduceActionFornamed_argument1: 59348993 false) 
	#(644 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 58997762 false) 
	#(646 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 59233282 false) 
	#(174 5 #reduceActionFornamespace_body1: 6497281 false) 
	#(470 0 #reduceActionFor_extern_alias_directives1: 38008833 false) 
	#(467 1 #reduceActionFor_extern_alias_directives2: 37704706 false) 
	#(575 1 #reduceActionFor_extern_alias_directives2: 50676738 false) 
	#(592 0 #nil 52713473 false) 
	#(594 1 #reduceActionFor_extern_alias_directives2: 52818946 false) 
	#(617 1 #reduceActionFor_extern_alias_directives2: 55989250 false) 
	#(618 1 #reduceActionForinterpolated_regular_string1: 56050689 false) 
	#(609 7 #reduceActionForenum_declaration1: 55330817 false) 
	#(426 7 #reduceActionFordo_statement1: 34129921 false) 
	#(671 2 #reduceActionForref_kind2: 62652417 false) 
	#(432 1 #liftFirstValue: 34619394 false) 
	#(433 1 #reduceActionForfor_initializer2: 34668545 false) 
	#(415 7 #reduceActionForif_statement2: 33126402 false) 
	#(301 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 19267585 false) 
	#(308 5 #reduceActionFornull_conditional_projection_initializer1: 20331521 false) 
	#(282 7 #reduceActionForarray_creation_expression1: 17087489 false) 
	#(581 1 #liftFirstValue: 51376130 false) 
	#(422 2 #reduceActionForswitch_label3: 33777667 false) 
	#(417 3 #reduceActionForgeneric_dimension_specifier1: 33449985 false) 
	#(419 2 #reduceActionForextern_alias_directives2: 33547266 false) 
	#(420 2 #reduceActionForswitch_section1: 33640449 false) 
	#(421 2 #reduceActionForextern_alias_directives2: 33696770 false) 
	#(448 4 #reduceActionForlet_clause1: 36078593 false) 
	#(450 4 #reduceActionForexception_filter1: 36192257 false) 
	#(681 2 #reduceActionForref_kind2: 63803393 false) 
	#(306 2 #reduceActionForextern_alias_directives2: 20045826 false) 
	#(510 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42741762 false) 
	#(509 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42601474 false) 
	#(487 3 #reduceActionForconstant_declarator1: 40407041 false) 
	#(486 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40283138 false) 
	#(522 3 #reduceActionForproperty_body2: 43910146 false) 
	#(523 0 #reduceActionFor_property_initializer1: 44042241 false) 
	#(547 5 #reduceActionForindexer_declarator1: 46899201 false) 
	#(549 3 #reduceActionForref_indexer_body1: 47165441 false) 
	#(532 2 #reduceActionForaccessor_modifiers5: 44896261 false) 
	#(532 2 #reduceActionForaccessor_modifiers5: 44896263 false) 
	#(532 2 #reduceActionForaccessor_modifiers5: 44896260 false) 
	#(532 2 #reduceActionForaccessor_modifiers5: 44896262 false) 
	#(564 5 #reduceActionForconstructor_declarator1: 49009665 false) 
	#(565 1 #liftFirstValue: 49111042 false) 
	#(657 1 #reduceActionForref_method_body3: 60773379 false) 
	#(657 1 #reduceActionForref_local_function_body1: 60773377 false) 
	#(656 7 #reduceActionForfinalizer_declaration1: 60488705 false) 
	#(642 5 #reduceActionForattribute_arguments2: 58696706 false) 
	#(468 2 #reduceActionForclass_base1: 37738497 false) 
	#(470 1 #reduceActionFor_extern_alias_directives2: 38008834 false) 
	#(471 1 #reduceActionForextern_alias_directives1: 38091777 false) 
	#(469 1 #reduceActionForinterpolated_regular_string1: 37891073 false) 
	#(576 2 #reduceActionForstruct_interfaces1: 50723841 false) 
	#(590 3 #reduceActionForvariant_type_parameter_list1: 52428801 false) 
	#(593 1 #liftFirstValue: 52777985 false) 
	#(593 1 #liftFirstValue: 52777986 false) 
	#(592 1 #liftFirstValue: 52713474 false) 
	#(595 2 #reduceActionForstruct_interfaces1: 52860929 false) 
	#(613 3 #reduceActionForanonymous_object_initializer1: 55612417 false) 
	#(619 2 #reduceActionForenum_member_declaration1: 56201217 false) 
	#(435 8 #reduceActionForforeach_statement1: 34869249 false) 
	#(422 3 #reduceActionForswitch_label1: 33777665 false) 
	#(517 4 #reduceActionForparameter_array1: 43254785 false) 
	#(512 0 #reduceActionFor_attribute_target_specifier1: 42981377 false) 
	#(465 4 #reduceActionFortype_parameters2: 37522434 false) 
	#(385 6 #reduceActionForlocal_function_header2: 29794306 false) 
	#(522 4 #reduceActionForproperty_body1: 43910145 false) 
	#(523 1 #reduceActionFor_extern_alias_directives2: 44042242 false) 
	#(536 8 #reduceActionForevent_declaration2: 45486082 false) 
	#(540 2 #reduceActionForref_kind2: 46027777 false) 
	#(540 2 #reduceActionForaccessor_declarations2: 46027778 false) 
	#(549 4 #reduceActionForref_indexer_body2: 47165442 false) 
	#(533 1 #reduceActionForstatic_constructor_body3: 45190147 false) 
	#(533 1 #reduceActionForargument_value1: 45190145 false) 
	#(528 4 #reduceActionForget_accessor_declaration1: 44605441 false) 
	#(530 4 #reduceActionForset_accessor_declaration1: 44756993 false) 
	#(558 6 #reduceActionForconversion_operator_declarator2: 48280578 false) 
	#(558 6 #reduceActionForconversion_operator_declarator1: 48280577 false) 
	#(554 6 #reduceActionForunary_operator_declarator1: 47712257 false) 
	#(570 3 #reduceActionForstatic_constructor_body2: 49935362 false) 
	#(656 8 #reduceActionForfinalizer_declaration2: 60488706 false) 
	#(656 8 #reduceActionForfinalizer_declaration2: 60488707 false) 
	#(479 0 #reduceActionFor_extern_alias_directives1: 39427073 false) 
	#(471 2 #reduceActionForextern_alias_directives2: 38091778 false) 
	#(578 0 #reduceActionFor_extern_alias_directives1: 50837505 false) 
	#(591 3 #reduceActionForvariant_type_parameters1: 52528129 false) 
	#(597 0 #reduceActionFor_extern_alias_directives1: 53011457 false) 
	#(613 4 #reduceActionForanonymous_object_initializer2: 55612418 false) 
	#(618 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 56050690 false) 
	#(621 5 #reduceActionFordelegate_header1: 56596481 false) 
	#(427 9 #reduceActionForfor_statement1: 34244609 false) 
	#(435 9 #reduceActionForforeach_statement2: 34869250 false) 
	#(423 2 #reduceActionForref_kind2: 33869825 false) 
	#(422 4 #reduceActionForswitch_label2: 33777666 false) 
	#(307 3 #reduceActionFordependent_access3: 20081667 false) 
	#(307 3 #reduceActionFordependent_access1: 20081665 false) 
	#(307 3 #reduceActionFordependent_access2: 20081666 false) 
	#(511 5 #reduceActionForfixed_parameter1: 42855425 false) 
	#(512 1 #reduceActionFor_extern_alias_directives2: 42981378 false) 
	#(525 4 #reduceActionForref_property_body2: 44179458 false) 
	#(525 4 #reduceActionForref_property_body1: 44179457 false) 
	#(541 3 #reduceActionForadd_accessor_declaration1: 46249985 false) 
	#(542 3 #reduceActionForremove_accessor_declaration1: 46319617 false) 
	#(547 7 #reduceActionForindexer_declarator2: 46899202 false) 
	#(535 1 #reduceActionForref_accessor_body3: 45388803 false) 
	#(535 1 #reduceActionForref_accessor_body1: 45388801 false) 
	#(534 4 #reduceActionForref_get_accessor_declaration1: 45267969 false) 
	#(657 3 #reduceActionForlocal_function_body2: 60773378 false) 
	#(468 4 #reduceActionForclass_base2: 37738498 false) 
	#(479 1 #reduceActionFor_extern_alias_directives2: 39427074 false) 
	#(480 1 #reduceActionForextern_alias_directives1: 39491585 false) 
	#(459 10 #reduceActionForclass_declaration1: 36898817 false) 
	#(469 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 37891074 false) 
	#(580 1 #liftFirstValue: 51050506 false) 
	#(580 1 #liftFirstValue: 51050497 false) 
	#(580 1 #liftFirstValue: 51050498 false) 
	#(580 1 #liftFirstValue: 51050499 false) 
	#(580 1 #liftFirstValue: 51050500 false) 
	#(580 1 #liftFirstValue: 51050501 false) 
	#(580 1 #liftFirstValue: 51050502 false) 
	#(580 1 #liftFirstValue: 51050503 false) 
	#(580 1 #liftFirstValue: 51050504 false) 
	#(580 1 #liftFirstValue: 51050505 false) 
	#(578 1 #reduceActionFor_extern_alias_directives2: 50837506 false) 
	#(579 1 #reduceActionForextern_alias_directives1: 50904065 false) 
	#(673 0 #reduceActionFor_extern_alias_directives1: 62967809 false) 
	#(580 1 #liftFirstValue: 51050507 false) 
	#(571 10 #reduceActionForstruct_declaration1: 50211841 false) 
	#(597 1 #reduceActionFor_extern_alias_directives2: 53011458 false) 
	#(598 1 #reduceActionForextern_alias_directives1: 53083137 false) 
	#(599 1 #liftFirstValue: 53241857 false) 
	#(599 1 #liftFirstValue: 53241858 false) 
	#(599 1 #liftFirstValue: 53241859 false) 
	#(599 1 #liftFirstValue: 53241860 false) 
	#(652 0 #nil 59963393 false) 
	#(585 10 #reduceActionForinterface_declaration1: 51837953 false) 
	#(619 4 #reduceActionForenum_member_declaration2: 56201218 false) 
	#(513 2 #reduceActionForref_kind2: 43026433 false) 
	#(353 9 #reduceActionForjoin_clause1: 26897409 false) 
	#(496 10 #reduceActionForRefMethodHeader1: 41291777 false) 
	#(498 10 #reduceActionFormethod_header1: 41519105 false) 
	#(524 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 44095489 false) 
	#(533 3 #reduceActionForstatic_constructor_body2: 45190146 false) 
	#(556 8 #reduceActionForbinary_operator_declarator1: 47949825 false) 
	#(474 1 #reduceActionForprimary_constraint2: 38858754 false) 
	#(474 1 #reduceActionForprimary_constraint3: 38858755 false) 
	#(474 1 #reduceActionForprimary_constraint4: 38858756 false) 
	#(474 1 #reduceActionForprimary_constraint1: 38858753 false) 
	#(476 1 #reduceActionForprimary_constraint1: 39240705 false) 
	#(475 1 #reduceActionForinterpolated_regular_string1: 38976514 false) 
	#(472 4 #reduceActionFortype_parameter_constraints_clause1: 38281217 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 38416385 false) 
	#(473 1 #reduceActionFor_extern_alias_directives2: 38416386 false) 
	#(475 1 #reduceActionForinterpolated_regular_string1: 38976513 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 38416387 false) 
	#(478 3 #reduceActionForgeneric_dimension_specifier1: 39364609 false) 
	#(480 2 #reduceActionForextern_alias_directives2: 39491586 false) 
	#(571 11 #reduceActionForstruct_declaration2: 50211842 false) 
	#(577 3 #reduceActionForgeneric_dimension_specifier1: 50772993 false) 
	#(579 2 #reduceActionForextern_alias_directives2: 50904066 false) 
	#(675 1 #liftFirstValue: 63180804 false) 
	#(675 1 #liftFirstValue: 63180801 false) 
	#(675 1 #liftFirstValue: 63180805 false) 
	#(675 1 #liftFirstValue: 63180803 false) 
	#(675 1 #liftFirstValue: 63180802 false) 
	#(675 1 #liftFirstValue: 63180806 false) 
	#(673 1 #reduceActionFor_extern_alias_directives2: 62967810 false) 
	#(674 1 #reduceActionForextern_alias_directives1: 63036417 false) 
	#(591 5 #reduceActionForvariant_type_parameters2: 52528130 false) 
	#(596 3 #reduceActionForgeneric_dimension_specifier1: 52915201 false) 
	#(598 2 #reduceActionForextern_alias_directives2: 53083138 false) 
	#(652 1 #liftFirstValue: 59963394 false) 
	#(621 7 #reduceActionFordelegate_header2: 56596482 false) 
	#(566 5 #reduceActionForconstructor_initializer1: 49185793 false) 
	#(566 5 #reduceActionForconstructor_initializer2: 49185794 false) 
	#(674 2 #reduceActionForextern_alias_directives2: 63036418 false) 
	#(354 11 #reduceActionForjoin_into_clause1: 27057153 false) 
	#(535 4 #reduceActionForref_accessor_body2: 45388802 false) 
	#(477 3 #reduceActionForconstructor_constraint1: 39315457 false) 
	#(473 3 #reduceActionFortype_parameter_constraints4: 38416388 false) 
	#(473 3 #reduceActionFortype_parameter_constraints5: 38416389 false) 
	#(475 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38976516 false) 
	#(475 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38976515 false) 
	#(473 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38416390 false) 
	#(676 1 #liftFirstValue: 63304705 false) 
	#(600 4 #reduceActionForinterface_method_declaration1: 53407745 false) 
	#(677 1 #reduceActionForextern_alias_directives1: 63336449 false) 
	#(600 5 #reduceActionForinterface_method_declaration2: 53407746 false) 
	#(473 5 #reduceActionFortype_parameter_constraints7: 38416391 false) 
	#(672 6 #reduceActionForfixed_size_buffer_declaration1: 62813185 false) 
	#(677 2 #reduceActionForextern_alias_directives2: 63336450 false) 
	#(607 6 #reduceActionForinterface_event_declaration1: 54742017 false) 
	#(603 1 #reduceActionForref_kind1: 54132737 false) 
	#(603 1 #reduceActionForordering_direction2: 54132738 false) 
	#(602 7 #reduceActionForinterface_property_declaration1: 53819393 false) 
	#(603 2 #reduceActionForref_kind2: 54132739 false) 
	#(603 2 #reduceActionForaccessor_declarations2: 54132740 false) 
	#(604 1 #liftFirstValue: 54453249 false) 
	#(678 4 #reduceActionForfixed_size_buffer_declarator1: 63493121 false) 
	#(605 3 #reduceActionForinterface_get_accessor1: 54520833 false) 
	#(606 3 #reduceActionForinterface_get_accessor1: 54631425 false) 
	#(602 8 #reduceActionForinterface_property_declaration2: 53819394 false) 
	#(608 10 #reduceActionForinterface_indexer_declaration1: 54881281 false) 
	#(601 7 #reduceActionForinterface_method_header1: 53615617 false) 
	#(608 11 #reduceActionForinterface_indexer_declaration2: 54881282 false)
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>="' '"?"' '"??"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"add"' '"alias"' '"as"' '"ascending"' '"async"' '"await"' '"base"' '"bool"' '"break"' '"by"' '"byte"' '"case"' '"catch"' '"char"' '"checked"' '"class"' '"const"' '"continue"' '"decimal"' '"default"' '"delegate"' '"descending"' '"do"' '"double"' '"dynamic"' '"else"' '"enum"' '"equals"' '"event"' '"explicit"' '"extern"' '"false"' '"finally"' '"fixed"' '"float"' '"for"' '"foreach"' '"from"' '"get"' '"goto"' '"group"' '"if"' '"implicit"' '"in"' '"int"' '"interface"' '"internal"' '"into"' '"is"' '"join"' '"let"' '"lock"' '"long"' '"nameof"' '"namespace"' '"new"' '"object"' '"on"' '"operator"' '"orderby"' '"out"' '"override"' '"params"' '"partial"' '"private"' '"protected"' '"public"' '"readonly"' '"ref"' '"remove"' '"return"' '"sbyte"' '"sealed"' '"select"' '"set"' '"short"' '"sizeof"' '"stackalloc"' '"static"' '"string"' '"struct"' '"switch"' '"this"' '"throw"' '"true"' '"try"' '"typeof"' '"uint"' '"ulong"' '"unchecked"' '"unmanaged"' '"unsafe"' '"ushort"' '"using"' '"var"' '"virtual"' '"void"' '"volatile"' '"when"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"~"' '<gt>' '<gtgt>' '<rightBrace>' '<comment>' '<Identifier>' '<IntegerLiteral>' '<RealLiteral>' '<CharacterLiteral>' '<InterpolatedRegularStringWhole>' '<InterpolatedRegularStringStart>' '<InterpolatedRegularStringEnd>' '<InterpolatedRegularStringMid>' '<InterpolatedVerbatimStringLiteral>' '<InterpolatedVerbatimStringStart>' '<InterpolatedVerbatimStringEnd>' '<InterpolatedVerbatimStringMid>' '<StringLiteral>' '<NullLiteral>' '<whitespace>' '<preprocessorDirective>' '<patternToken>' 'B e g i n' 'compilation_unit' 'namespace_declaration' 'qualified_identifier' 'namespace_body' '_extern_alias_directives' 'extern_alias_directives' 'extern_alias_directive' '_using_directives' 'using_directives' 'using_directive' 'using_alias_directive' 'using_namespace_directive' 'using_static_directive' '_namespace_member_declarations' 'namespace_member_declarations' 'namespace_member_declaration' 'type_declaration' 'qualified_alias_member' 'namespace_name' 'type_name' 'namespace_or_type_name' '_type' 'type' 'value_type' 'nullable_value_type' 'struct_type' 'tuple_type' '("," tuple_type_element ''element'')' '("," tuple_type_element ''element'')+' 'tuple_type_element' 'simple_type' 'numeric_type' 'integral_type' 'floating_point_type' 'non_nullable_value_type' 'enum_type' 'reference_type' 'class_type' 'interface_type' 'array_type' 'non_array_type' '_rank_specifiers' 'rank_specifiers' 'rank_specifier' '_dim_separators' 'dim_separators' 'delegate_type' 'type_argument_list' 'type_arguments' 'type_argument' 'variable_reference' 'pattern' 'var_pattern' 'designation' 'constant_pattern' 'declaration_pattern' 'simple_designation' 'single_variable_designation' '_argument_list' 'argument_list' 'argument' '_argument_name' 'argument_name' 'argument_value' 'primary_expression' 'primary_no_array_creation_expression' 'interpolated_string_expression' 'interpolated_regular_string' 'StartInterpolatedString' 'interpolated_regular_string_body' 'interpolation' 'Regular_Interpolation_Format' 'ScanFormat' 'interpolated_verbatim_string' 'StartInterpolatedVerbatimString' 'interpolated_verbatim_string_body' 'simple_name' '_type_argument_list' 'parenthesized_expression' 'tuple_expression' '("," tuple_element ''element'')' '("," tuple_element ''element'')+' 'tuple_element' 'deconstruction_expression' 'deconstruction_tuple' '("," deconstruction_element ''element'')' '("," deconstruction_element ''element'')+' 'deconstruction_element' 'member_access' 'qualified_alias_member_expression' 'predefined_type_expression' 'predefined_type' 'invocation_expression' 'element_access' 'expression_list' 'this_access' 'base_access' 'post_increment_expression' 'post_decrement_expression' 'object_creation_expression' '_object_or_collection_initializer' 'object_or_collection_initializer' 'object_initializer' '_member_initializer_list' 'member_initializer_list' 'member_initializer' 'initializer_target' 'initializer_value' 'collection_initializer' 'element_initializer_list' 'element_initializer' 'array_creation_expression' 'delegate_creation_expression' 'anonymous_object_creation_expression' 'anonymous_object_initializer' '_member_declarator_list' 'member_declarator_list' 'member_declarator' 'typeof_expression' 'unbound_type_name' '_generic_dimension_specifier' 'generic_dimension_specifier' '_commas' 'commas' 'checked_expression' 'unchecked_expression' 'default_value_expression' 'stackalloc_expression' 'nameof_expression' 'named_entity' '("." <Identifier> _type_argument_list ''typeArguments'')' '("." <Identifier> _type_argument_list ''typeArguments'')*' 'named_entity_target' 'unary_expression' 'null_conditional_member_access' 'dependent_access ''access''*' 'dependent_access' 'null_conditional_projection_initializer' 'null_conditional_invocation_expression' 'null_conditional_element_access' 'pre_increment_expression' 'pre_decrement_expression' 'cast_expression' 'await_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'null_coalescing_expression' 'throw_expression' 'declaration_expression' 'conditional_expression' 'lambda_expression' 'anonymous_method_expression' 'anonymous_function_signature' '_explicit_anonymous_function_signature' 'explicit_anonymous_function_signature' '_explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter' '_anonymous_function_parameter_modifier' 'anonymous_function_parameter_modifier' 'implicit_anonymous_function_signature' '_implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter' 'anonymous_function_body' 'RefExpression' 'query_expression' 'from_clause' 'query_body' '_query_body_clauses' 'query_body_clauses' 'query_body_clause' 'let_clause' 'where_clause' 'join_clause' 'join_into_clause' 'orderby_clause' 'orderings' 'ordering' '_ordering_direction' 'ordering_direction' 'select_or_group_clause' 'select_clause' 'group_clause' '_query_continuation' 'query_continuation' 'assignment' 'assignment_operator' '_expression' 'expression' 'non_assignment_expression' 'constant_expression' 'boolean_expression' 'statement' 'embedded_statement' 'block' '_statement_list' 'statement_list' 'empty_statement' 'labeled_statement' 'declaration_statement' 'local_function_declaration' 'RefLocalFunctionHeader' 'ref_local_function_modifier ''modifier''*' 'LocalFunctionHeader' 'local_function_modifier ''modifier''*' 'local_function_header' 'local_function_modifier' 'ref_local_function_modifier' 'local_function_body' 'ref_local_function_body' 'local_variable_declaration' 'implicitly_typed_local_variable_declaration' 'ref_local_variable_declarator' 'ref_kind' 'implicitly_typed_local_variable_declarator' 'explicitly_typed_local_variable_declaration' 'explicitly_typed_local_variable_declarators' '("," explicitly_typed_local_variable_declarator ''declarator'')' '("," explicitly_typed_local_variable_declarator ''declarator'')*' 'explicitly_typed_local_variable_declarator' 'ref_local_variable_declaration' 'ref_local_variable_declarators' '("," ref_local_variable_declarator ''declarator'')' '("," ref_local_variable_declarator ''declarator'')*' 'local_variable_type' 'VarType' 'local_variable_declarator' '_local_variable_declarator_name' 'local_variable_initializer' 'local_constant_declaration' 'const_declarators' 'const_declarator' 'expression_statement' 'statement_expression' 'selection_statement' 'if_statement' 'switch_statement' 'switch_block' '_switch_sections' 'switch_sections' 'switch_section' 'switch_labels' 'switch_label' 'case_guard' 'iteration_statement' 'while_statement' 'do_statement' 'for_statement' '_for_initializer' 'for_initializer' '_for_condition' 'for_condition' '_for_iterator' 'for_iterator' 'statement_expression_list' 'foreach_statement' 'jump_statement' 'break_statement' 'continue_statement' 'goto_statement' 'return_statement' 'throw_statement' 'try_statement' 'catch_clauses' 'specific_catch_clause ''clause''+' 'specific_catch_clause ''clause''*' 'specific_catch_clause' '_exception_specifier' 'exception_specifier' '_exception_filter' 'exception_filter' 'general_catch_clause' 'finally_clause' 'checked_statement' 'unchecked_statement' 'lock_statement' 'using_statement' 'resource_acquisition' 'yield_statement' 'class_declaration' '_class_modifiers' 'class_modifiers' 'class_modifier' '_type_parameter_list' 'type_parameter_list' 'type_parameters' 'type_parameter' '_class_base' 'class_base' 'interface_type_list' '_type_parameter_constraints_clauses' 'type_parameter_constraints_clauses' 'type_parameter_constraints_clause' 'type_parameter_constraints' 'primary_constraint' 'secondary_constraints' 'interface_type_constraint' 'constructor_constraint' 'class_body' '_class_member_declarations' 'class_member_declarations' 'class_member_declaration' 'constant_declaration' '_constant_modifiers' 'constant_modifers' 'constant_modifer' 'constant_declarators' 'constant_declarator' 'field_declaration' '_field_modifiers' 'field_modifiers' 'field_modifier' 'variable_declarators' 'variable_declarator' 'variable_initializer' 'method_declaration' 'RefMethodHeader' 'ref_method_modifier ''modifier''*' 'method_header' '_method_modifiers' 'method_modifiers' 'method_modifier' 'ref_method_modifier' 'return_type' 'ref_return_type' 'member_name' 'method_body' 'ref_method_body' '_formal_parameters_list' 'formal_parameters_list' 'fixed_parameters' 'fixed_parameter' '_default_argument' 'default_argument' '_parameter_modifier' 'parameter_modifier' 'parameter_mode_modifier' 'parameter_array' 'property_declaration' '_property_modifiers' 'property_modifiers' 'property_modifier' 'property_body' '_property_initializer' 'property_initializer' 'ref_property_body' 'accessor_declarations' '_get_accessor_declaration' 'get_accessor_declaration' '_set_accessor_declaration' 'set_accessor_declaration' '_accessor_modifiers' 'accessor_modifiers' 'accessor_body' 'ref_get_accessor_declaration' 'ref_accessor_body' 'event_declaration' '_event_modifiers' 'event_modifiers' 'event_modifier' 'event_accessor_declarations' 'add_accessor_declaration' 'remove_accessor_declaration' 'indexer_declaration' '_indexer_modifiers' 'indexer_modifiers' 'indexer_modifier' 'indexer_declarator' 'indexer_body' 'ref_indexer_body' 'operator_declaration' 'operator_modifiers' 'operator_modifier' 'operator_declarator' 'unary_operator_declarator' 'overloadable_unary_operator' 'binary_operator_declarator' 'overloadable_binary_operator' 'conversion_operator_declarator' 'operator_body' 'constructor_declaration' '_constructor_modifiers' 'constructor_modifiers' 'constructor_modifier' 'constructor_declarator' '_constructor_initializer' 'constructor_initializer' 'constructor_body' 'static_constructor_declaration' 'static_constructor_modifiers' 'static_constructor_body' 'struct_declaration' '_struct_modifiers' 'struct_modifiers' 'struct_modifier' '_struct_interfaces' 'struct_interfaces' 'struct_body' '_struct_member_declarations' 'struct_member_declarations' 'struct_member_declaration' '_array_initializer' 'array_initializer' '_variable_initializer_list' 'variable_initializer_list' 'interface_declaration' '_interface_modifiers' 'interface_modifiers' 'interface_modifier' '_variant_type_parameter_list' 'variant_type_parameter_list' 'variant_type_parameters' '_variance_annotation' 'variance_annotation' '_interface_base' 'interface_base' 'interface_body' '_interface_member_declarations' 'interface_member_declarations' 'interface_member_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_property_declaration' 'interface_accessors' 'ref_interface_accessor' 'interface_get_accessor' 'interface_set_accessor' 'interface_event_declaration' 'interface_indexer_declaration' 'enum_declaration' '_enum_base' 'enum_base' 'integral_type_name' 'enum_body' '_enum_modifers' 'enum_modifers' 'enum_modifer' '_enum_member_declarations' 'enum_member_declarations' 'enum_member_declaration' 'delegate_declaration' 'delegate_header' '_delegate_modifiers' 'delegate_modifiers' 'delegate_modifier' '_global_attributes' 'global_attributes' 'global_attribute_sections' 'global_attribute_section' 'global_attribute_target_specifier' 'global_attribute_target' '_attributes' 'attributes' 'attribute_sections' 'attribute_section' '_attribute_target_specifier' 'attribute_target_specifier' 'attribute_target' 'attribute_list' 'attribute' 'attribute_name' '_attribute_arguments' 'attribute_arguments' '_positional_argument_list' 'positional_argument_list' 'positional_argument' 'named_argument_list' 'named_argument' 'attribute_argument_expression' 'literal' 'boolean_literal' '_semicolon' '_new' '_partial' '_extern' '_identifier' 'finalizer_declaration' 'finalizer_body' 'unsafe_modifier' 'unsafe_statement' 'pointer_type' '"*"+' 'unmanaged_type' 'pointer_indirection_expression' 'pointer_member_access' 'pointer_element_access' 'addressof_expression' 'sizeof_expression' 'fixed_statement' 'fixed_pointer_declarators' 'fixed_pointer_declarator' 'fixed_pointer_initializer' 'fixed_size_buffer_declaration' '_fixed_size_buffer_modifiers' 'fixed_size_buffer_modifiers' 'fixed_size_buffer_modifier' 'buffer_element_type' 'fixed_size_buffer_declarators' 'fixed_size_buffer_declarator' 'stackalloc_initializer' 'stackalloc_initializer_element_list' '(stackalloc_element_initializer ",")' '(stackalloc_element_initializer ",")*' 'stackalloc_element_initializer' 'void_type' 'E O F' 'error')
]

{ #category : #generated }
CSharpParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSCompilationUnitNode #CSCompilationUnitNode #CSNamespaceDeclarationNode #CSQualifiedIdentifierNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExternAliasDirectiveNode #OrderedCollection #OrderedCollection #CSUsingDirectiveNode #CSUsingAliasDirectiveNode #CSUsingNamespaceDirectiveNode #CSUsingStaticDirectiveNode #OrderedCollection #OrderedCollection #CSDeclarationNode #CSDeclarationNode #CSQualifiedAliasMemberNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSNullableTypeNode #CSTypeNode #CSTupleTypeNode #OrderedCollection #OrderedCollection #CSTupleTypeElementNode #CSSimpleTypeNode #SmaCCToken #SmaCCToken #SmaCCToken #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSArrayTypeNode #CSTypeNode #OrderedCollection #OrderedCollection #CSRankSpecifierNode #OrderedCollection #OrderedCollection #CSTypeNode #CSTypeArgumentListNode #OrderedCollection #CSTypeNode #CSExpressionNode #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSInterpolatedStringExpressionNode #OrderedCollection #ByteSymbol #OrderedCollection #CSInterpolationNode #OrderedCollection #Object #OrderedCollection #ByteSymbol #OrderedCollection #CSSimpleNameNode #CSTypeArgumentListNode #CSExpressionNode #CSTupleExpressionNode #OrderedCollection #OrderedCollection #CSTupleElementNode #CSDeconstructionExpressionNode #CSDeconstructionTupleNode #OrderedCollection #OrderedCollection #CSProgramNode #CSMemberAccessNode #CSTypeExpressionNode #CSTypeExpressionNode #CSSimpleTypeNode #CSInvocationExpressionNode #CSElementAccessNode #OrderedCollection #CSThisAccessNode #CSBaseAccessNode #CSPostExpressionNode #CSPostExpressionNode #CSObjectCreationExpressionNode #CSProgramNode #CSProgramNode #CSObjectInitializerNode #OrderedCollection #OrderedCollection #CSMemberInitializerNode #OrderedCollection #CSProgramNode #CSCollectionInitializerNode #OrderedCollection #CSElementInitializerNode #CSArrayCreationExpressionNode #CSDelegateCreationExpressionNode #CSAnonymousObjectCreationExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #CSMemberDeclaratorNode #CSTypeofExpressionNode #CSUnboundTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSCheckedExpressionNode #CSUncheckedExpressionNode #CSDefaultValueExpressionNode #CSStackallocExpressionNode #CSNameofExpressionNode #CSNamedEntityNode #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSNullConditionalMemberAccessNode #OrderedCollection #CSProgramNode #CSNullConditionalMemberAccessNode #CSInvocationExpressionNode #CSElementAccessNode #CSPrefixExpressionNode #CSPrefixExpressionNode #CSCastExpressionNode #CSAwaitExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSThrowExpressionNode #CSDeclarationExpressionNode #CSExpressionNode #CSLambdaExpressionNode #CSAnonymousMethodExpressionNode #CSProgramNode #CSExplicitAnonymousFunctionSignatureNode #CSExplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #CSAnonymousFunctionParameterNode #SmaCCToken #SmaCCToken #CSImplicitAnonymousFunctionSignatureNode #OrderedCollection #OrderedCollection #SmaCCToken #CSProgramNode #CSRefExpressionNode #CSQueryExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAssignmentNode #OrderedCollection #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSStatementNode #CSStatementNode #CSBlockStatementNode #OrderedCollection #OrderedCollection #CSEmptyStatementNode #CSLabeledStatementNode #CSStatementNode #CSLocalFunctionDeclarationStatementNode nil nil #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #SmaCCToken #SmaCCToken #CSMethodBodyNode #CSMethodBodyNode #CSProgramNode #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #CSLocalVariableDeclaratorNode #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeNode #CSVarTypeNode #CSLocalVariableDeclaratorNode #CSSimpleNameNode #Object #CSLocalConstantDeclarationNode #OrderedCollection #CSConstantDeclaratorNode #CSExpressionStatementNode #CSExpressionNode #CSStatementNode #CSIfStatementNode #CSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSwitchSectionNode #OrderedCollection #CSSwitchLabelNode #OrderedCollection #CSStatementNode #CSWhileStatementNode #CSDoStatementNode #CSForStatementNode #CSProgramNode #CSProgramNode #CSExpressionNode #CSExpressionNode #CSStatementListNode #CSStatementListNode #OrderedCollection #CSForeachStatementNode #CSStatementNode #CSBreakStatementNode #CSContinueStatementNode #CSGotoStatementNode #CSReturnStatementNode #CSThrowStatementNode #CSTryStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSCatchClauseNode #OrderedCollection #OrderedCollection #CSExceptionFilterNode #CSExceptionFilterNode #CSCatchClauseNode #CSFinallyClauseNode #CSCheckedStatementNode #CSUncheckedStatementNode #CSLockStatementNode #CSUsingStatementNode #CSProgramNode #CSYieldStatementNode #CSClassDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeParameterListNode #CSTypeParameterListNode #OrderedCollection #CSTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeParameterConstraintsClauseNode #OrderedCollection #CSProgramNode #OrderedCollection #CSTypeConstraintNode #CSConstructorConstraintNode #OrderedCollection #OrderedCollection #OrderedCollection #CSProgramNode #CSConstantDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstantDeclaratorNode #CSFieldDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSVariableDeclaratorNode #CSProgramNode #CSMethodDeclarationNode #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #CSTypeNode #CSTypeNode #OrderedCollection #CSMethodBodyNode #CSMethodBodyNode #OrderedCollection #OrderedCollection #OrderedCollection #CSFixedParameterNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #CSArrayParameterNode #CSPropertyDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #CSGetAccessorDeclarationNode #CSSetAccessorDeclarationNode #CSSetAccessorDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #OrderedCollection #CSEventDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAddAccessorDeclarationNode #CSRemoveAccessorDeclarationNode #CSIndexerDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSOperatorDeclarationNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #CSMethodBodyNode #CSConstructorDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSConstructorInitializerNode #CSConstructorInitializerNode #CSMethodBodyNode #CSStaticConstructorDeclarationNode #OrderedCollection #OrderedCollection #CSStructDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSArrayInitializerNode #CSArrayInitializerNode #OrderedCollection #OrderedCollection #CSInterfaceDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSVariantTypeParameterListNode #CSVariantTypeParameterListNode #OrderedCollection #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSInterfaceMethodDeclarationNode #OrderedCollection #CSInterfacePropertyDeclarationNode #OrderedCollection #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfacePropertyAccessorNode #CSInterfaceEventDeclarationNode #CSInterfaceIndexerDeclarationNode #CSEnumDeclarationNode #OrderedCollection #OrderedCollection #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CSEnumDeclarationNode #CSDelegateDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAttributeValueNode #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #CSNamedArgumentNode #CSExpressionNode #CSLiteralExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSFinalizerDeclarationNode #CSMethodBodyNode #SmaCCToken #CSUnsafeStatementNode #CSPointerTypeNode #OrderedCollection #CSTypeNode #CSPrefixExpressionNode #CSPointerMemberAccessNode #CSPointerElementAccessNode #CSPrefixExpressionNode #CSSizeofExpressionNode #CSFixedStatementNode #OrderedCollection #CSFixedPointerDeclaratorNode #OrderedCollection #CSFixedSizeBufferDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #CSTypeNode #OrderedCollection #CSFixedSizeBufferDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSVoidTypeNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CSharpParser class >> transitionTable [
^#(
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 68 0 29 0 72 0 6 0 87 0 6 0 88 0 6 0 96 0 6 0 97 0 6 0 105 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 114 0 6 0 120 0 6 0 122 0 6 0 133 0 6 0 135 0 33 0 171 0 37 0 175 0 41 0 176 0 45 0 177 0 6 2 173] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 87 0 10 0 88 0 53 0 96 0 10 0 97 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 114 0 10 0 120 0 10 0 122 0 10 0 133 0 61 0 172 0 61 0 186 0 61 0 187 0 61 1 203 0 61 2 59 0 61 2 73 0 61 2 97 0 61 2 108 0 89 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 2 105 1 116 2 105 1 117 2 105 1 118 2 105 1 121 2 105 1 122 2 105 1 123 2 105 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 2 105 1 156 2 181 1 157 2 105 1 158 2 105 1 159 2 105 1 160 2 105 1 168 2 105 1 169 2 105 1 170 2 105 1 171 2 105 1 179 2 105 1 180 2 105 1 181 2 105 1 182 2 105 1 183 2 105 1 184 2 105 1 185 2 105 1 186 2 105 1 197 2 105 1 198 2 105 1 199 2 105 1 200 2 105 1 202 3 9 1 210 1 205 2 137 3 17 2 138 2 105 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 2 105 2 156 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 3 213 1 71 3 213 1 72 3 213 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 3 213 1 89 3 205 1 90 3 213 1 109 3 213 1 112 3 213 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 1 93 0 144 3 229 1 118] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 103 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 129 0 10 0 130 0 10 0 133 0 10 0 134 0 10 0 137 0 10 0 138 0 10 0 139 0 10 0 148 0 10 0 153 3 237 0 187 3 237 1 203 3 237 1 225 3 237 1 226 3 237 1 232 3 237 1 239 3 253 1 240 4 1 1 242 3 237 2 6 3 237 2 24 3 237 2 31 3 237 2 38 3 237 2 48 3 237 2 56 3 237 2 59 3 237 2 73 3 237 2 97 3 237 2 108 4 29 2 119 0 93 2 120 0 97 2 121 0 101 2 122 3 237 2 144] 
#[0 4 37 0 43] 
#[0 0 0 2 173] 
#[1 0 30 0 37 0 30 0 41 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 87 0 30 0 88 0 30 0 96 0 30 0 97 0 30 0 105 0 30 0 106 0 30 0 107 0 30 0 108 0 30 0 109 0 30 0 110 0 30 0 114 0 30 0 120 0 30 0 122 0 30 0 133 4 41 0 135 4 45 0 178 4 49 0 179 4 53 0 180 4 53 0 181 4 53 0 182 4 53 0 183 0 30 2 173] 
#[1 0 34 0 37 0 34 0 41 0 34 0 57 0 34 0 62 0 34 0 68 0 29 0 72 0 34 0 87 0 34 0 88 0 34 0 96 0 34 0 97 0 34 0 105 0 34 0 106 0 34 0 107 0 34 0 108 0 34 0 109 0 34 0 110 0 34 0 114 0 34 0 120 0 34 0 122 0 34 0 133 0 34 0 135 0 34 0 151 4 69 0 177 0 34 2 173] 
#[0 0 38 0 37 0 41 0 57 0 62 0 68 0 72 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[1 0 99 0 153 4 77 2 123 4 81 2 124 4 85 2 125] 
#[1 4 89 0 153 4 93 0 173] 
#[0 0 46 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[0 0 0 2 173] 
#[0 0 50 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[0 0 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 0 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 0 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 0 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 0 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 4 145 0 41 0 74 0 57 0 78 0 62 0 82 0 68 0 86 0 87 4 101 0 88 4 105 0 97 0 103 0 105 4 109 0 106 4 113 0 107 4 117 0 108 4 157 0 109 0 90 0 110 4 145 0 114 4 145 0 120 0 90 0 122 4 133 0 133 4 137 1 204 4 141 1 205 4 145 1 206 4 149 2 60 4 153 2 61 4 157 2 62 4 161 2 74 4 165 2 75 4 169 2 76 4 173 2 102 4 177 2 103 4 181 2 104 4 185 2 110 4 189 2 111 4 193 2 112 4 197 2 146] 
#[0 0 94 0 8 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 97 0 98 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 120 0 121 0 122 0 124 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 153] 
#[1 0 98 0 8 0 49 0 37 0 98 0 41 0 98 0 42 0 98 0 46 0 98 0 49 0 98 0 52 0 98 0 55 0 98 0 57 0 98 0 58 0 98 0 60 0 98 0 62 0 98 0 65 0 98 0 66 0 98 0 68 0 98 0 70 0 98 0 72 0 98 0 75 0 98 0 76 0 98 0 80 0 98 0 85 0 98 0 86 0 98 0 87 0 98 0 88 0 98 0 94 0 98 0 97 0 98 0 98 0 98 0 102 0 98 0 103 0 98 0 104 0 98 0 105 0 98 0 106 0 98 0 107 0 98 0 108 0 98 0 109 0 98 0 110 0 98 0 111 0 98 0 113 0 98 0 114 0 98 0 116 0 98 0 117 0 98 0 120 0 98 0 121 0 98 0 122 0 98 0 124 0 98 0 129 0 98 0 130 0 98 0 133 0 98 0 134 0 98 0 137 0 98 0 138 0 98 0 139 0 98 0 148 0 98 0 153 4 201 2 122] 
#[0 0 102 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 97 0 98 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 120 0 121 0 122 0 124 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 153] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 21 1 48 1 205 1 49 1 205 1 54 5 21 1 55 5 21 1 56 5 21 1 57 5 21 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 21 2 151 1 205 2 152 5 21 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 25 1 48 1 205 1 49 1 205 1 54 5 25 1 55 5 25 1 56 5 25 1 57 5 25 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 25 2 151 1 205 2 152 5 25 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 5 29 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 5 33 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 5 37 0 200 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 5 33 0 207 1 189 0 208 5 33 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 5 41 0 253 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 5 45 1 71 5 45 1 72 5 45 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 5 45 1 89 3 205 1 90 5 45 1 109 5 45 1 112 5 45 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 49 1 48 1 205 1 49 1 205 1 54 5 49 1 55 5 49 1 56 5 49 1 57 5 49 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 49 2 151 1 205 2 152 5 49 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 53 1 48 1 205 1 49 1 205 1 54 5 53 1 55 5 53 1 56 5 53 1 57 5 53 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 53 2 151 1 205 2 152 5 53 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 57 1 48 1 205 1 49 1 205 1 54 5 57 1 55 5 57 1 56 5 57 1 57 5 57 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 57 2 151 1 205 2 152 5 57 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 61 1 48 1 205 1 49 1 205 1 54 5 61 1 55 5 61 1 56 5 61 1 57 5 61 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 61 2 151 1 205 2 152 5 61 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 65 1 48 1 205 1 49 1 205 1 54 5 65 1 55 5 65 1 56 5 65 1 57 5 65 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 65 2 151 1 205 2 152 5 65 2 154 1 205 2 155] 
#[0 0 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 69 0 62] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 5 73 1 48 1 205 1 49 1 205 1 54 5 73 1 55 5 73 1 56 5 73 1 57 5 73 1 58 1 205 1 74 1 205 2 137 3 17 2 138 5 73 2 151 1 205 2 152 5 73 2 154 1 205 2 155] 
#[1 5 77 0 20 5 81 0 37] 
#[1 0 110 0 1 0 110 0 2 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 12 0 110 0 13 0 110 0 15 0 110 0 16 0 110 0 17 0 114 0 20 0 110 0 23 0 110 0 25 0 110 0 26 0 110 0 29 0 110 0 31 0 110 0 33 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 39 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 53 0 110 0 55 0 110 0 56 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 63 0 110 0 64 0 110 0 65 0 110 0 66 0 110 0 67 0 110 0 69 0 110 0 73 0 110 0 75 0 110 0 76 0 110 0 77 0 110 0 78 0 110 0 79 0 110 0 81 0 110 0 82 0 110 0 83 0 110 0 86 0 110 0 89 0 110 0 90 0 110 0 91 0 110 0 92 0 110 0 93 0 110 0 94 0 110 0 95 0 110 0 97 0 110 0 98 0 110 0 99 0 110 0 101 0 110 0 110 0 110 0 112 0 110 0 113 0 110 0 115 0 110 0 117 0 110 0 118 0 110 0 119 0 110 0 120 0 110 0 121 0 110 0 123 0 110 0 124 0 110 0 125 0 110 0 126 0 110 0 127 0 110 0 128 0 110 0 129 0 110 0 130 0 110 0 131 0 110 0 133 0 110 0 134 0 110 0 135 0 110 0 136 0 110 0 138 0 110 0 140 0 110 0 141 0 110 0 142 0 110 0 143 0 110 0 144 0 110 0 145 0 110 0 147 0 110 0 148 0 110 0 149 0 110 0 151 0 110 0 153 0 110 0 154 0 110 0 155 0 110 0 156 0 110 0 157 0 110 0 158 0 110 0 159 0 110 0 160 0 110 0 161 0 110 0 162 0 110 0 163 0 110 0 164 0 110 0 165 0 110 0 166 0 110 2 173] 
#[0 5 85 0 25] 
#[1 0 118 0 1 0 118 0 2 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 12 0 118 0 13 0 118 0 15 0 118 0 16 0 118 0 17 0 122 0 20 0 118 0 23 0 118 0 25 0 118 0 26 0 118 0 29 0 118 0 31 0 118 0 33 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 44 0 118 0 45 0 118 0 46 0 118 0 47 0 118 0 48 0 118 0 49 0 118 0 50 0 118 0 51 0 118 0 52 0 118 0 53 0 118 0 55 0 118 0 56 0 118 0 58 0 118 0 59 0 118 0 60 0 118 0 61 0 118 0 62 0 118 0 63 0 118 0 64 0 118 0 65 0 118 0 66 0 118 0 67 0 118 0 69 0 118 0 73 0 118 0 75 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 81 0 118 0 82 0 118 0 83 0 118 0 86 0 118 0 89 0 118 0 90 0 118 0 91 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 118 0 97 0 118 0 98 0 118 0 99 0 118 0 101 0 118 0 110 0 118 0 112 0 118 0 113 0 118 0 115 0 118 0 117 0 118 0 118 0 118 0 119 0 118 0 120 0 118 0 121 0 118 0 123 0 118 0 124 0 118 0 125 0 118 0 126 0 118 0 127 0 118 0 128 0 118 0 129 0 118 0 130 0 118 0 131 0 118 0 133 0 118 0 134 0 118 0 135 0 118 0 136 0 118 0 138 0 118 0 140 0 118 0 141 0 118 0 142 0 118 0 143 0 118 0 144 0 118 0 145 0 118 0 147 0 118 0 148 0 118 0 149 0 118 0 151 0 118 0 153 0 118 0 154 0 118 0 155 0 118 0 156 0 118 0 157 0 118 0 158 0 118 0 159 0 118 0 160 0 118 0 161 0 118 0 162 0 118 0 163 0 118 0 164 0 118 0 165 0 118 0 166 0 118 2 173] 
#[1 0 126 0 1 0 126 0 2 0 126 0 5 0 126 0 6 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 12 0 126 0 13 0 126 0 15 0 126 0 16 0 126 0 17 0 130 0 20 0 126 0 23 0 126 0 25 0 126 0 26 0 126 0 29 0 126 0 31 0 126 0 33 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 39 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 52 0 126 0 53 0 126 0 55 0 126 0 56 0 126 0 58 0 126 0 59 0 126 0 60 0 126 0 61 0 126 0 62 0 126 0 63 0 126 0 64 0 126 0 65 0 126 0 66 0 126 0 67 0 126 0 69 0 126 0 73 0 126 0 75 0 126 0 76 0 126 0 77 0 126 0 78 0 126 0 79 0 126 0 81 0 126 0 82 0 126 0 83 0 126 0 86 0 126 0 89 0 126 0 90 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 95 0 126 0 97 0 126 0 98 0 126 0 99 0 126 0 101 0 126 0 110 0 126 0 112 0 126 0 113 0 126 0 115 0 126 0 117 0 126 0 118 0 126 0 119 0 126 0 120 0 126 0 121 0 126 0 123 0 126 0 124 0 126 0 125 0 126 0 126 0 126 0 127 0 126 0 128 0 126 0 129 0 126 0 130 0 126 0 131 0 126 0 133 0 126 0 134 0 126 0 135 0 126 0 136 0 126 0 138 0 126 0 140 0 126 0 141 0 126 0 142 0 126 0 143 0 126 0 144 0 126 0 145 0 126 0 147 0 126 0 148 0 126 0 149 0 126 0 151 0 126 0 153 0 126 0 154 0 126 0 155 0 126 0 156 0 126 0 157 0 126 0 158 0 126 0 159 0 126 0 160 0 126 0 161 0 126 0 162 0 126 0 163 0 126 0 164 0 126 0 165 0 126 0 166 0 126 2 173] 
#[1 5 89 0 8 1 93 0 144 5 93 1 118] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 5 169 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 5 169 0 207 1 189 0 208 5 169 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 5 173 0 25] 
#[1 0 134 0 1 0 134 0 2 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 12 0 134 0 13 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 20 0 134 0 23 0 134 0 25 0 134 0 26 0 134 0 29 0 134 0 31 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 53 0 134 0 55 0 134 0 56 0 134 0 58 0 134 0 59 0 134 0 60 0 134 0 61 0 134 0 62 0 134 0 63 0 134 0 64 0 134 0 65 0 134 0 66 0 134 0 67 0 134 0 69 0 134 0 73 0 134 0 75 0 134 0 76 0 134 0 77 0 134 0 78 0 134 0 79 0 134 0 81 0 134 0 82 0 134 0 83 0 134 0 86 0 134 0 89 0 134 0 90 0 134 0 91 0 134 0 92 0 134 0 93 0 134 0 94 0 134 0 95 0 134 0 97 0 134 0 98 0 134 0 99 0 134 0 101 0 134 0 110 0 134 0 112 0 134 0 113 0 134 0 115 0 134 0 117 0 134 0 118 0 134 0 119 0 134 0 120 0 134 0 121 0 134 0 123 0 134 0 124 0 134 0 125 0 134 0 126 0 134 0 127 0 134 0 128 0 134 0 129 0 134 0 130 0 134 0 131 0 134 0 133 0 134 0 134 0 134 0 135 0 134 0 136 0 134 0 138 0 134 0 140 0 134 0 141 0 134 0 142 0 134 0 143 0 134 0 144 0 134 0 145 0 134 0 147 0 134 0 148 0 134 0 149 0 134 0 151 0 134 0 153 0 134 0 154 0 134 0 155 0 134 0 156 0 134 0 157 0 134 0 158 0 134 0 159 0 134 0 160 0 134 0 161 0 134 0 162 0 134 0 163 0 134 0 164 0 134 0 165 0 134 0 166 0 134 2 173] 
#[1 0 142 0 1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 107 0 8 0 142 0 9 0 142 0 10 0 142 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 18 0 142 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 25 0 142 0 26 0 142 0 27 0 142 0 28 0 142 0 29 0 142 0 30 0 142 0 31 0 142 0 33 0 142 0 34 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 38 0 142 0 39 0 142 0 40 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 52 0 142 0 53 0 142 0 55 0 142 0 56 0 142 0 58 0 142 0 59 0 142 0 60 0 142 0 61 0 142 0 62 0 142 0 63 0 142 0 64 0 142 0 65 0 142 0 66 0 142 0 67 0 142 0 69 0 142 0 73 0 142 0 75 0 142 0 76 0 142 0 77 0 142 0 78 0 142 0 79 0 142 0 81 0 142 0 82 0 142 0 83 0 142 0 86 0 142 0 89 0 142 0 90 0 142 0 91 0 142 0 92 0 142 0 93 0 142 0 94 0 142 0 95 0 142 0 97 0 142 0 98 0 142 0 99 0 142 0 101 0 142 0 110 0 142 0 112 0 142 0 113 0 142 0 115 0 142 0 117 0 142 0 118 0 142 0 119 0 142 0 120 0 142 0 121 0 142 0 123 0 142 0 124 0 142 0 125 0 142 0 126 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 138 0 142 0 140 0 142 0 141 0 142 0 142 0 142 0 143 0 142 0 144 0 142 0 145 0 142 0 146 0 142 0 147 0 142 0 148 0 142 0 149 0 142 0 150 0 142 0 151 0 142 0 153 0 142 0 154 0 142 0 155 0 142 0 156 0 142 0 157 0 142 0 158 0 142 0 159 0 142 0 160 0 142 0 161 0 142 0 162 0 142 0 163 0 142 0 164 0 142 0 165 0 142 0 166 0 142 2 173] 
#[1 5 181 0 8 0 146 0 144 5 185 1 76 5 185 1 77] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 5 193 1 117 5 193 1 118 5 193 1 121 5 193 1 156 2 181 1 157 5 193 1 158 5 193 1 159 5 193 1 160 5 193 1 168 5 193 1 169 5 193 1 170 5 193 1 171 5 193 1 179 5 193 1 180 5 193 1 181 5 193 1 182 5 193 1 183 5 193 1 184 5 193 1 185 5 193 1 186 5 193 1 197 5 193 1 198 5 193 1 199 5 193 1 200 5 193 1 202 1 205 2 137 3 17 2 138 5 193 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 5 193 2 156] 
#[1 0 150 0 1 0 150 0 2 0 150 0 5 0 150 0 6 0 150 0 8 0 150 0 9 0 150 0 10 0 150 0 12 0 150 0 13 0 150 0 15 0 150 0 16 0 150 0 17 0 154 0 20 0 150 0 23 0 150 0 25 0 150 0 26 0 150 0 29 0 150 0 31 0 150 0 33 0 150 0 35 0 150 0 36 0 150 0 37 0 150 0 38 0 150 0 39 0 150 0 44 0 150 0 45 0 150 0 46 0 150 0 47 0 150 0 48 0 150 0 49 0 150 0 50 0 150 0 51 0 150 0 52 0 150 0 53 0 150 0 55 0 150 0 56 0 150 0 58 0 150 0 59 0 150 0 60 0 150 0 61 0 150 0 62 0 150 0 63 0 150 0 64 0 150 0 65 0 150 0 66 0 150 0 67 0 150 0 69 0 150 0 73 0 150 0 75 0 150 0 76 0 150 0 77 0 150 0 78 0 150 0 79 0 150 0 81 0 150 0 82 0 150 0 83 0 150 0 86 0 150 0 89 0 150 0 90 0 150 0 91 0 150 0 92 0 150 0 93 0 150 0 94 0 150 0 95 0 150 0 97 0 150 0 98 0 150 0 99 0 150 0 101 0 150 0 110 0 150 0 112 0 150 0 113 0 150 0 115 0 150 0 117 0 150 0 118 0 150 0 119 0 150 0 120 0 150 0 121 0 150 0 123 0 150 0 124 0 150 0 125 0 150 0 126 0 150 0 127 0 150 0 128 0 150 0 129 0 150 0 130 0 150 0 131 0 150 0 133 0 150 0 134 0 150 0 135 0 150 0 136 0 150 0 138 0 150 0 140 0 150 0 141 0 150 0 142 0 150 0 143 0 150 0 144 0 150 0 145 0 150 0 147 0 150 0 148 0 150 0 149 0 150 0 151 0 150 0 153 0 150 0 154 0 150 0 155 0 150 0 156 0 150 0 157 0 150 0 158 0 150 0 159 0 150 0 160 0 150 0 161 0 150 0 162 0 150 0 163 0 150 0 164 0 150 0 165 0 150 0 166 0 150 2 173] 
#[1 0 158 0 1 0 158 0 2 0 158 0 5 0 158 0 6 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 12 0 158 0 13 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 23 0 158 0 25 0 158 0 26 0 158 0 29 0 158 0 31 0 158 0 33 0 158 0 35 0 158 0 36 0 162 0 37 0 158 0 38 0 158 0 39 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 48 0 158 0 49 0 158 0 50 0 158 0 51 0 158 0 52 0 158 0 53 0 158 0 55 0 158 0 56 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 63 0 158 0 64 0 158 0 65 0 158 0 66 0 158 0 67 0 158 0 69 0 158 0 73 0 158 0 75 0 158 0 76 0 158 0 77 0 158 0 78 0 158 0 79 0 158 0 81 0 158 0 82 0 158 0 83 0 158 0 86 0 158 0 89 0 158 0 90 0 158 0 91 0 158 0 92 0 158 0 93 0 158 0 94 0 158 0 95 0 158 0 97 0 158 0 98 0 158 0 99 0 158 0 100 0 158 0 101 0 158 0 110 0 158 0 112 0 158 0 113 0 158 0 115 0 158 0 117 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 158 0 129 0 158 0 130 0 158 0 131 0 158 0 133 0 158 0 134 0 158 0 135 0 158 0 136 0 158 0 138 0 158 0 140 0 158 0 141 0 158 0 142 0 158 0 143 0 158 0 144 0 158 0 145 0 158 0 147 0 158 0 148 0 158 0 149 0 158 0 151 0 158 0 153 0 158 0 154 0 158 0 155 0 158 0 156 0 158 0 157 0 158 0 158 0 158 0 159 0 158 0 160 0 158 0 161 0 158 0 162 0 158 0 163 0 158 0 164 0 158 0 165 0 158 0 166 0 158 2 173] 
#[0 0 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 5 197 0 8] 
#[1 0 170 0 1 0 170 0 2 0 170 0 5 0 170 0 6 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 12 0 170 0 13 0 170 0 15 0 170 0 16 0 170 0 17 0 174 0 20 0 170 0 23 0 170 0 25 0 170 0 26 0 170 0 29 0 170 0 31 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 49 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 53 0 170 0 55 0 170 0 56 0 170 0 58 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 62 0 170 0 63 0 170 0 64 0 170 0 65 0 170 0 66 0 170 0 67 0 170 0 69 0 170 0 73 0 170 0 75 0 170 0 76 0 170 0 77 0 170 0 78 0 170 0 79 0 170 0 81 0 170 0 82 0 170 0 83 0 170 0 86 0 170 0 89 0 170 0 90 0 170 0 91 0 170 0 92 0 170 0 93 0 170 0 94 0 170 0 95 0 170 0 97 0 170 0 98 0 170 0 99 0 170 0 101 0 170 0 110 0 170 0 112 0 170 0 113 0 170 0 115 0 170 0 117 0 170 0 118 0 170 0 119 0 170 0 120 0 170 0 121 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 126 0 170 0 127 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 138 0 170 0 140 0 170 0 141 0 170 0 142 0 170 0 143 0 170 0 144 0 170 0 145 0 170 0 147 0 170 0 148 0 170 0 149 0 170 0 151 0 170 0 153 0 170 0 154 0 170 0 155 0 170 0 156 0 170 0 157 0 170 0 158 0 170 0 159 0 170 0 160 0 170 0 161 0 170 0 162 0 170 0 163 0 170 0 164 0 170 0 165 0 170 0 166 0 170 2 173] 
#[0 5 201 0 8] 
#[0 5 205 0 8] 
#[1 5 209 0 53 5 213 0 61 5 217 0 153] 
#[0 5 221 0 8] 
#[1 0 178 0 1 0 178 0 2 0 178 0 5 0 178 0 6 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 15 0 178 0 16 0 178 0 17 0 182 0 20 0 178 0 23 0 178 0 25 0 178 0 26 0 178 0 29 0 178 0 31 0 178 0 33 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 51 0 178 0 52 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 63 0 178 0 64 0 178 0 65 0 178 0 66 0 178 0 67 0 178 0 69 0 178 0 73 0 178 0 75 0 178 0 76 0 178 0 77 0 178 0 78 0 178 0 79 0 178 0 81 0 178 0 82 0 178 0 83 0 178 0 86 0 178 0 89 0 178 0 90 0 178 0 91 0 178 0 92 0 178 0 93 0 178 0 94 0 178 0 95 0 178 0 97 0 178 0 98 0 178 0 99 0 178 0 101 0 178 0 110 0 178 0 112 0 178 0 113 0 178 0 115 0 178 0 117 0 178 0 118 0 178 0 119 0 178 0 120 0 178 0 121 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 126 0 178 0 127 0 178 0 128 0 178 0 129 0 178 0 130 0 178 0 131 0 178 0 133 0 178 0 134 0 178 0 135 0 178 0 136 0 178 0 138 0 178 0 140 0 178 0 141 0 178 0 142 0 178 0 143 0 178 0 144 0 178 0 145 0 178 0 147 0 178 0 148 0 178 0 149 0 178 0 151 0 178 0 153 0 178 0 154 0 178 0 155 0 178 0 156 0 178 0 157 0 178 0 158 0 178 0 159 0 178 0 160 0 178 0 161 0 178 0 162 0 178 0 163 0 178 0 164 0 178 0 165 0 178 0 166 0 178 2 173] 
#[0 5 225 0 8] 
#[1 0 186 0 1 0 186 0 2 0 186 0 5 0 186 0 6 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 12 0 186 0 13 0 186 0 15 0 186 0 16 0 186 0 17 0 190 0 20 0 186 0 23 0 186 0 25 0 186 0 26 0 186 0 29 0 186 0 31 0 186 0 33 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 49 0 186 0 50 0 186 0 51 0 186 0 52 0 186 0 53 0 186 0 55 0 186 0 56 0 186 0 58 0 186 0 59 0 186 0 60 0 186 0 61 0 186 0 62 0 186 0 63 0 186 0 64 0 186 0 65 0 186 0 66 0 186 0 67 0 186 0 69 0 186 0 73 0 186 0 75 0 186 0 76 0 186 0 77 0 186 0 78 0 186 0 79 0 186 0 81 0 186 0 82 0 186 0 83 0 186 0 86 0 186 0 89 0 186 0 90 0 186 0 91 0 186 0 92 0 186 0 93 0 186 0 94 0 186 0 95 0 186 0 97 0 186 0 98 0 186 0 99 0 186 0 101 0 186 0 110 0 186 0 112 0 186 0 113 0 186 0 115 0 186 0 117 0 186 0 118 0 186 0 119 0 186 0 120 0 186 0 121 0 186 0 123 0 186 0 124 0 186 0 125 0 186 0 126 0 186 0 127 0 186 0 128 0 186 0 129 0 186 0 130 0 186 0 131 0 186 0 133 0 186 0 134 0 186 0 135 0 186 0 136 0 186 0 138 0 186 0 140 0 186 0 141 0 186 0 142 0 186 0 143 0 186 0 144 0 186 0 145 0 186 0 147 0 186 0 148 0 186 0 149 0 186 0 151 0 186 0 153 0 186 0 154 0 186 0 155 0 186 0 156 0 186 0 157 0 186 0 158 0 186 0 159 0 186 0 160 0 186 0 161 0 186 0 162 0 186 0 163 0 186 0 164 0 186 0 165 0 186 0 166 0 186 2 173] 
#[0 5 229 0 8] 
#[1 5 97 0 8 5 233 0 37 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 237 0 144 5 161 0 153 1 141 0 188 5 241 0 190 1 141 0 191 5 245 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 5 245 0 207 1 189 0 208 5 249 0 210 5 253 0 211 6 1 0 214 6 5 0 217 6 9 1 29 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 0 194 0 1 0 194 0 2 0 194 0 5 0 194 0 6 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 12 0 194 0 13 0 194 0 15 0 194 0 16 0 194 0 17 0 198 0 20 0 194 0 23 0 194 0 25 0 194 0 26 0 194 0 29 0 194 0 31 0 194 0 33 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 52 0 194 0 53 0 194 0 55 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 60 0 194 0 61 0 194 0 62 0 194 0 63 0 194 0 64 0 194 0 65 0 194 0 66 0 194 0 67 0 194 0 69 0 194 0 73 0 194 0 75 0 194 0 76 0 194 0 77 0 194 0 78 0 194 0 79 0 194 0 81 0 194 0 82 0 194 0 83 0 194 0 86 0 194 0 89 0 194 0 90 0 194 0 91 0 194 0 92 0 194 0 93 0 194 0 94 0 194 0 95 0 194 0 97 0 194 0 98 0 194 0 99 0 194 0 101 0 194 0 110 0 194 0 112 0 194 0 113 0 194 0 115 0 194 0 117 0 194 0 118 0 194 0 119 0 194 0 120 0 194 0 121 0 194 0 123 0 194 0 124 0 194 0 125 0 194 0 126 0 194 0 127 0 194 0 128 0 194 0 129 0 194 0 130 0 194 0 131 0 194 0 133 0 194 0 134 0 194 0 135 0 194 0 136 0 194 0 138 0 194 0 140 0 194 0 141 0 194 0 142 0 194 0 143 0 194 0 144 0 194 0 145 0 194 0 147 0 194 0 148 0 194 0 149 0 194 0 151 0 194 0 153 0 194 0 154 0 194 0 155 0 194 0 156 0 194 0 157 0 194 0 158 0 194 0 159 0 194 0 160 0 194 0 161 0 194 0 162 0 194 0 163 0 194 0 164 0 194 0 165 0 194 0 166 0 194 2 173] 
#[1 0 202 0 8 0 202 0 49 0 202 0 52 0 202 0 55 0 202 0 60 0 202 0 65 0 202 0 66 0 202 0 76 0 202 0 86 0 202 0 94 0 202 0 98 6 13 0 109 0 202 0 113 0 202 0 117 0 202 0 121 0 202 0 129 0 202 0 130 0 202 0 134 0 202 0 136 0 202 0 138 0 202 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 206 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 6 17 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 6 21 1 71 6 21 1 72 6 21 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 6 21 1 89 3 205 1 90 6 21 1 109 6 21 1 111 6 21 1 112 6 21 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 210 0 1 0 210 0 2 0 210 0 5 0 210 0 6 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 12 0 210 0 13 0 210 0 15 0 210 0 16 0 210 0 17 0 214 0 20 0 210 0 23 0 210 0 25 0 210 0 26 0 210 0 29 0 210 0 31 0 210 0 33 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 51 0 210 0 52 0 210 0 53 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 62 0 210 0 63 0 210 0 64 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 73 0 210 0 75 0 210 0 76 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 81 0 210 0 82 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 93 0 210 0 94 0 210 0 95 0 210 0 97 0 210 0 98 0 210 0 99 0 210 0 101 0 210 0 110 0 210 0 112 0 210 0 113 0 210 0 115 0 210 0 117 0 210 0 118 0 210 0 119 0 210 0 120 0 210 0 121 0 210 0 123 0 210 0 124 0 210 0 125 0 210 0 126 0 210 0 127 0 210 0 128 0 210 0 129 0 210 0 130 0 210 0 131 0 210 0 133 0 210 0 134 0 210 0 135 0 210 0 136 0 210 0 138 0 210 0 140 0 210 0 141 0 210 0 142 0 210 0 143 0 210 0 144 0 210 0 145 0 210 0 147 0 210 0 148 0 210 0 149 0 210 0 151 0 210 0 153 0 210 0 154 0 210 0 155 0 210 0 156 0 210 0 157 0 210 0 158 0 210 0 159 0 210 0 160 0 210 0 161 0 210 0 162 0 210 0 163 0 210 0 164 0 210 0 165 0 210 0 166 0 210 2 173] 
#[1 0 218 0 1 0 218 0 2 0 218 0 5 0 218 0 6 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 16 0 218 0 17 0 222 0 20 0 218 0 23 0 218 0 25 0 218 0 26 0 218 0 29 0 218 0 31 0 218 0 33 0 218 0 35 0 218 0 36 0 218 0 37 0 218 0 38 0 218 0 39 0 218 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 49 0 218 0 50 0 218 0 51 0 218 0 52 0 218 0 53 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 60 0 218 0 61 0 218 0 62 0 218 0 63 0 218 0 64 0 218 0 65 0 218 0 66 0 218 0 67 0 218 0 69 0 218 0 73 0 218 0 75 0 218 0 76 0 218 0 77 0 218 0 78 0 218 0 79 0 218 0 81 0 218 0 82 0 218 0 83 0 218 0 86 0 218 0 89 0 218 0 90 0 218 0 91 0 218 0 92 0 218 0 93 0 218 0 94 0 218 0 95 0 218 0 97 0 218 0 98 0 218 0 99 0 218 0 101 0 218 0 110 0 218 0 112 0 218 0 113 0 218 0 115 0 218 0 117 0 218 0 118 0 218 0 119 0 218 0 120 0 218 0 121 0 218 0 123 0 218 0 124 0 218 0 125 0 218 0 126 0 218 0 127 0 218 0 128 0 218 0 129 0 218 0 130 0 218 0 131 0 218 0 133 0 218 0 134 0 218 0 135 0 218 0 136 0 218 0 138 0 218 0 140 0 218 0 141 0 218 0 142 0 218 0 143 0 218 0 144 0 218 0 145 0 218 0 147 0 218 0 148 0 218 0 149 0 218 0 151 0 218 0 153 0 218 0 154 0 218 0 155 0 218 0 156 0 218 0 157 0 218 0 158 0 218 0 159 0 218 0 160 0 218 0 161 0 218 0 162 0 218 0 163 0 218 0 164 0 218 0 165 0 218 0 166 0 218 2 173] 
#[0 6 29 0 8] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 76 1 169 0 86 1 169 0 94 1 169 0 113 1 169 0 117 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 6 33 0 153 1 141 0 188 1 181 0 190 1 141 0 191 6 41 0 194 6 41 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 6 49 2 148 6 49 2 150 3 49 2 172] 
#[1 0 226 0 1 0 226 0 2 0 226 0 5 0 226 0 6 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 12 0 226 0 13 0 226 0 15 0 226 0 16 0 226 0 17 0 230 0 20 0 226 0 23 0 226 0 25 0 226 0 26 0 226 0 29 0 226 0 31 0 226 0 33 0 226 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 49 0 226 0 50 0 226 0 51 0 226 0 52 0 226 0 53 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 62 0 226 0 63 0 226 0 64 0 226 0 65 0 226 0 66 0 226 0 67 0 226 0 69 0 226 0 73 0 226 0 75 0 226 0 76 0 226 0 77 0 226 0 78 0 226 0 79 0 226 0 81 0 226 0 82 0 226 0 83 0 226 0 86 0 226 0 89 0 226 0 90 0 226 0 91 0 226 0 92 0 226 0 93 0 226 0 94 0 226 0 95 0 226 0 97 0 226 0 98 0 226 0 99 0 226 0 101 0 226 0 110 0 226 0 112 0 226 0 113 0 226 0 115 0 226 0 117 0 226 0 118 0 226 0 119 0 226 0 120 0 226 0 121 0 226 0 123 0 226 0 124 0 226 0 125 0 226 0 126 0 226 0 127 0 226 0 128 0 226 0 129 0 226 0 130 0 226 0 131 0 226 0 133 0 226 0 134 0 226 0 135 0 226 0 136 0 226 0 138 0 226 0 140 0 226 0 141 0 226 0 142 0 226 0 143 0 226 0 144 0 226 0 145 0 226 0 147 0 226 0 148 0 226 0 149 0 226 0 151 0 226 0 153 0 226 0 154 0 226 0 155 0 226 0 156 0 226 0 157 0 226 0 158 0 226 0 159 0 226 0 160 0 226 0 161 0 226 0 162 0 226 0 163 0 226 0 164 0 226 0 165 0 226 0 166 0 226 2 173] 
#[0 6 53 0 8] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 206 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 6 57 1 71 6 57 1 72 6 57 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 6 57 1 89 3 205 1 90 6 57 1 109 6 57 1 111 6 57 1 112 6 57 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 0 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 93 0 144 6 61 1 118] 
#[0 6 65 0 8] 
#[1 0 242 0 1 0 242 0 2 0 242 0 5 0 242 0 6 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 12 0 242 0 13 0 242 0 15 0 242 0 16 0 242 0 17 0 246 0 20 0 242 0 23 0 242 0 25 0 242 0 26 0 242 0 29 0 242 0 31 0 242 0 33 0 242 0 35 0 242 0 36 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 44 0 242 0 45 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 49 0 242 0 50 0 242 0 51 0 242 0 52 0 242 0 53 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 59 0 242 0 60 0 242 0 61 0 242 0 62 0 242 0 63 0 242 0 64 0 242 0 65 0 242 0 66 0 242 0 67 0 242 0 69 0 242 0 73 0 242 0 75 0 242 0 76 0 242 0 77 0 242 0 78 0 242 0 79 0 242 0 81 0 242 0 82 0 242 0 83 0 242 0 86 0 242 0 89 0 242 0 90 0 242 0 91 0 242 0 92 0 242 0 93 0 242 0 94 0 242 0 95 0 242 0 97 0 242 0 98 0 242 0 99 0 242 0 101 0 242 0 110 0 242 0 112 0 242 0 113 0 242 0 115 0 242 0 117 0 242 0 118 0 242 0 119 0 242 0 120 0 242 0 121 0 242 0 123 0 242 0 124 0 242 0 125 0 242 0 126 0 242 0 127 0 242 0 128 0 242 0 129 0 242 0 130 0 242 0 131 0 242 0 133 0 242 0 134 0 242 0 135 0 242 0 136 0 242 0 138 0 242 0 140 0 242 0 141 0 242 0 142 0 242 0 143 0 242 0 144 0 242 0 145 0 242 0 147 0 242 0 148 0 242 0 149 0 242 0 151 0 242 0 153 0 242 0 154 0 242 0 155 0 242 0 156 0 242 0 157 0 242 0 158 0 242 0 159 0 242 0 160 0 242 0 161 0 242 0 162 0 242 0 163 0 242 0 164 0 242 0 165 0 242 0 166 0 242 2 173] 
#[1 0 250 0 1 0 250 0 2 0 250 0 5 0 250 0 6 0 250 0 8 0 250 0 9 0 250 0 10 0 250 0 12 0 250 0 13 0 250 0 15 0 250 0 16 0 250 0 17 0 254 0 20 0 250 0 23 0 250 0 25 0 250 0 26 0 250 0 29 0 250 0 31 0 250 0 33 0 250 0 35 0 250 0 36 0 250 0 37 0 250 0 38 0 250 0 39 0 250 0 44 0 250 0 45 0 250 0 46 0 250 0 47 0 250 0 48 0 250 0 49 0 250 0 50 0 250 0 51 0 250 0 52 0 250 0 53 0 250 0 55 0 250 0 56 0 250 0 58 0 250 0 59 0 250 0 60 0 250 0 61 0 250 0 62 0 250 0 63 0 250 0 64 0 250 0 65 0 250 0 66 0 250 0 67 0 250 0 69 0 250 0 73 0 250 0 75 0 250 0 76 0 250 0 77 0 250 0 78 0 250 0 79 0 250 0 81 0 250 0 82 0 250 0 83 0 250 0 86 0 250 0 89 0 250 0 90 0 250 0 91 0 250 0 92 0 250 0 93 0 250 0 94 0 250 0 95 0 250 0 97 0 250 0 98 0 250 0 99 0 250 0 101 0 250 0 110 0 250 0 112 0 250 0 113 0 250 0 115 0 250 0 117 0 250 0 118 0 250 0 119 0 250 0 120 0 250 0 121 0 250 0 123 0 250 0 124 0 250 0 125 0 250 0 126 0 250 0 127 0 250 0 128 0 250 0 129 0 250 0 130 0 250 0 131 0 250 0 133 0 250 0 134 0 250 0 135 0 250 0 136 0 250 0 138 0 250 0 140 0 250 0 141 0 250 0 142 0 250 0 143 0 250 0 144 0 250 0 145 0 250 0 147 0 250 0 148 0 250 0 149 0 250 0 151 0 250 0 153 0 250 0 154 0 250 0 155 0 250 0 156 0 250 0 157 0 250 0 158 0 250 0 159 0 250 0 160 0 250 0 161 0 250 0 162 0 250 0 163 0 250 0 164 0 250 0 165 0 250 0 166 0 250 2 173] 
#[1 6 69 0 8 1 93 0 144 6 73 1 118] 
#[1 1 93 0 144 6 77 1 118] 
#[1 1 2 0 1 1 2 0 2 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 12 1 2 0 13 1 2 0 15 1 2 0 16 1 2 0 17 1 6 0 20 1 2 0 23 1 2 0 25 1 2 0 26 1 2 0 29 1 2 0 31 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 44 1 2 0 45 1 2 0 46 1 2 0 47 1 2 0 48 1 2 0 49 1 2 0 50 1 2 0 51 1 2 0 52 1 2 0 53 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 59 1 2 0 60 1 2 0 61 1 2 0 62 1 2 0 63 1 2 0 64 1 2 0 65 1 2 0 66 1 2 0 67 1 2 0 69 1 2 0 73 1 2 0 75 1 2 0 76 1 2 0 77 1 2 0 78 1 2 0 79 1 2 0 81 1 2 0 82 1 2 0 83 1 2 0 86 1 2 0 89 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 93 1 2 0 94 1 2 0 95 1 2 0 97 1 2 0 98 1 2 0 99 1 2 0 101 1 2 0 110 1 2 0 112 1 2 0 113 1 2 0 115 1 2 0 117 1 2 0 118 1 2 0 119 1 2 0 120 1 2 0 121 1 2 0 123 1 2 0 124 1 2 0 125 1 2 0 126 1 2 0 127 1 2 0 128 1 2 0 129 1 2 0 130 1 2 0 131 1 2 0 133 1 2 0 134 1 2 0 135 1 2 0 136 1 2 0 138 1 2 0 140 1 2 0 141 1 2 0 142 1 2 0 143 1 2 0 144 1 2 0 145 1 2 0 147 1 2 0 148 1 2 0 149 1 2 0 151 1 2 0 153 1 2 0 154 1 2 0 155 1 2 0 156 1 2 0 157 1 2 0 158 1 2 0 159 1 2 0 160 1 2 0 161 1 2 0 162 1 2 0 163 1 2 0 164 1 2 0 165 1 2 0 166 1 2 2 173] 
#[0 6 81 0 8] 
#[0 1 10 0 153] 
#[0 1 14 0 9 0 10 0 153] 
#[0 6 85 0 8] 
#[1 6 89 0 50 6 93 0 112] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 1 18 0 151 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 6 97 1 116 6 97 1 117 6 97 1 118 6 101 1 119 6 105 1 120 6 97 1 121 6 97 1 122 6 97 1 123 6 97 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 6 97 1 156 2 181 1 157 6 97 1 158 6 97 1 159 6 97 1 160 6 97 1 168 6 97 1 169 6 97 1 170 6 97 1 171 6 97 1 179 6 97 1 180 6 97 1 181 6 97 1 182 6 97 1 183 6 97 1 184 6 97 1 185 6 97 1 186 6 97 1 197 6 97 1 198 6 97 1 199 6 97 1 200 6 97 1 202 3 9 1 210 1 205 2 137 3 17 2 138 6 97 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 6 97 2 156 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 6 109 1 48 1 205 1 49 1 205 1 54 6 109 1 55 6 109 1 56 6 109 1 57 6 109 1 58 1 205 1 74 1 205 2 137 3 17 2 138 6 109 2 151 1 205 2 152 6 109 2 154 1 205 2 155] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 113 0 23 6 117 0 24 6 121 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 0 111 0 37 1 22 0 40 1 22 0 146 0 111 0 153 6 129 0 218 6 129 0 248] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 58 0 1 1 58 0 2 1 58 0 5 1 58 0 6 1 58 0 8 1 58 0 9 1 58 0 10 1 58 0 12 1 58 0 13 1 58 0 15 1 58 0 16 1 58 0 17 0 115 0 20 1 58 0 23 1 58 0 25 1 58 0 26 1 58 0 29 1 58 0 31 1 58 0 33 1 58 0 35 1 58 0 36 1 58 0 37 1 58 0 38 1 58 0 39 1 58 0 44 1 58 0 45 1 58 0 46 1 58 0 47 1 58 0 48 1 58 0 49 1 58 0 50 1 58 0 51 1 58 0 52 1 58 0 53 1 58 0 55 1 58 0 56 1 58 0 58 1 58 0 59 1 58 0 60 1 58 0 61 1 58 0 62 1 58 0 63 1 58 0 64 1 58 0 65 1 58 0 66 1 58 0 67 1 58 0 69 1 58 0 73 1 58 0 75 1 58 0 76 1 58 0 77 1 58 0 78 1 58 0 79 1 58 0 81 1 58 0 82 1 58 0 83 1 58 0 86 1 58 0 89 1 58 0 90 1 58 0 91 1 58 0 92 1 58 0 93 1 58 0 94 1 58 0 95 1 58 0 97 1 58 0 98 1 58 0 99 1 58 0 101 1 58 0 110 1 58 0 112 1 58 0 113 1 58 0 115 1 58 0 117 1 58 0 118 1 58 0 119 1 58 0 120 1 58 0 121 1 58 0 123 1 58 0 124 1 58 0 125 1 58 0 126 1 58 0 127 1 58 0 128 1 58 0 129 1 58 0 130 1 58 0 131 1 58 0 133 1 58 0 134 1 58 0 135 1 58 0 136 1 58 0 138 1 58 0 140 1 58 0 141 1 58 0 142 1 58 0 143 1 58 0 144 1 58 0 145 1 58 0 147 1 58 0 148 1 58 0 149 1 58 0 151 1 58 0 153 1 58 0 154 1 58 0 155 1 58 0 156 1 58 0 157 1 58 0 158 1 58 0 159 1 58 0 160 1 58 0 161 1 58 0 162 1 58 0 163 1 58 0 164 1 58 0 165 1 58 0 166 1 58 2 173] 
#[0 0 119 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 74 0 1 1 74 0 2 1 74 0 5 1 74 0 6 1 74 0 8 1 74 0 9 1 74 0 10 1 74 0 12 1 74 0 13 1 74 0 15 1 74 0 16 1 74 0 17 0 123 0 20 1 74 0 23 1 74 0 25 1 74 0 26 1 74 0 29 1 74 0 31 1 74 0 32 1 74 0 33 1 74 0 35 1 74 0 36 1 74 0 37 1 74 0 38 1 74 0 39 1 74 0 44 1 74 0 45 1 74 0 46 1 74 0 47 1 74 0 48 1 74 0 49 1 74 0 50 1 74 0 51 1 74 0 52 1 74 0 53 1 74 0 55 1 74 0 56 1 74 0 58 1 74 0 59 1 74 0 60 1 74 0 61 1 74 0 62 1 74 0 63 1 74 0 64 1 74 0 65 1 74 0 66 1 74 0 67 1 74 0 69 1 74 0 73 1 74 0 75 1 74 0 76 1 74 0 77 1 74 0 78 1 74 0 79 1 74 0 81 1 74 0 82 1 74 0 83 1 74 0 86 1 74 0 89 1 74 0 90 1 74 0 91 1 74 0 92 1 74 0 93 1 74 0 94 1 74 0 95 1 74 0 97 1 74 0 98 1 74 0 99 1 74 0 100 1 74 0 101 1 74 0 110 1 74 0 112 1 74 0 113 1 74 0 115 1 74 0 117 1 74 0 118 1 74 0 119 1 74 0 120 1 74 0 121 1 74 0 123 1 74 0 124 1 74 0 125 1 74 0 126 1 74 0 127 1 74 0 128 1 74 0 129 1 74 0 130 1 74 0 131 1 74 0 133 1 74 0 134 1 74 0 135 1 74 0 136 1 74 0 138 1 74 0 140 1 74 0 141 1 74 0 142 1 74 0 143 1 74 0 144 1 74 0 145 1 74 0 147 1 74 0 148 1 74 0 149 1 74 0 151 1 74 0 153 1 74 0 154 1 74 0 155 1 74 0 156 1 74 0 157 1 74 0 158 1 74 0 159 1 74 0 160 1 74 0 161 1 74 0 162 1 74 0 163 1 74 0 164 1 74 0 165 1 74 0 166 1 74 2 173] 
#[1 6 137 0 153 6 141 1 140 6 145 1 143] 
#[1 1 78 0 1 1 78 0 2 1 78 0 5 1 78 0 6 1 78 0 8 1 78 0 9 0 127 0 10 1 78 0 12 1 78 0 13 1 78 0 15 1 78 0 16 1 78 0 17 1 78 0 23 1 78 0 25 1 78 0 26 1 78 0 29 1 78 0 31 1 78 0 33 1 78 0 35 1 78 0 36 1 82 0 37 1 78 0 38 1 78 0 39 1 78 0 44 1 78 0 45 1 78 0 46 1 78 0 47 1 78 0 48 1 78 0 49 1 78 0 50 1 78 0 51 1 78 0 52 1 78 0 53 1 78 0 55 1 78 0 56 1 78 0 58 1 78 0 59 1 78 0 60 1 78 0 61 1 78 0 62 1 78 0 63 1 78 0 64 1 78 0 65 1 78 0 66 1 78 0 67 1 78 0 69 1 78 0 73 1 78 0 75 1 78 0 76 1 78 0 77 1 78 0 78 1 78 0 79 1 78 0 81 1 78 0 82 1 78 0 83 1 78 0 86 1 78 0 89 1 78 0 90 1 78 0 91 1 78 0 92 1 78 0 93 1 78 0 94 1 78 0 95 1 78 0 97 1 78 0 98 1 78 0 99 1 78 0 100 1 78 0 101 1 78 0 110 1 78 0 112 1 78 0 113 1 78 0 115 1 78 0 117 1 78 0 118 1 78 0 119 1 78 0 120 1 78 0 121 1 78 0 123 1 78 0 124 1 78 0 125 1 78 0 126 1 78 0 127 1 78 0 128 1 78 0 129 1 78 0 130 1 78 0 131 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 138 1 78 0 140 1 78 0 141 1 78 0 142 1 78 0 143 1 78 0 144 1 78 0 145 1 78 0 147 1 78 0 148 1 78 0 149 1 78 0 151 1 78 0 153 1 78 0 154 1 78 0 155 1 78 0 156 1 78 0 157 1 78 0 158 1 78 0 159 1 78 0 160 1 78 0 161 1 78 0 162 1 78 0 163 1 78 0 164 1 78 0 165 1 78 0 166 6 153 2 149 1 78 2 173] 
#[0 1 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 98 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 114 0 1 1 114 0 2 1 114 0 5 1 114 0 6 1 114 0 8 1 114 0 9 1 114 0 10 1 114 0 12 1 114 0 13 1 114 0 15 1 114 0 16 1 114 0 17 1 114 0 23 1 114 0 25 1 114 0 26 1 114 0 29 1 114 0 31 1 114 0 33 0 131 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 48 1 114 0 49 1 114 0 50 1 114 0 51 1 114 0 52 1 114 0 53 1 114 0 55 1 114 0 56 1 114 0 58 1 114 0 59 1 114 0 60 1 114 0 61 1 114 0 62 1 114 0 63 1 114 0 64 1 114 0 65 1 114 0 66 1 114 0 67 1 114 0 69 1 114 0 73 1 114 0 75 1 114 0 76 1 114 0 77 1 114 0 78 1 114 0 79 1 114 0 81 1 114 0 82 1 114 0 83 1 114 0 86 1 114 0 89 1 114 0 90 1 114 0 91 1 114 0 92 1 114 0 93 1 114 0 94 1 114 0 95 1 114 0 97 1 114 0 98 1 114 0 99 1 114 0 100 1 114 0 101 1 114 0 110 1 114 0 112 1 114 0 113 1 114 0 115 1 114 0 117 1 114 0 118 1 114 0 119 1 114 0 120 1 114 0 121 1 114 0 123 1 114 0 124 1 114 0 125 1 114 0 126 1 114 0 127 1 114 0 128 1 114 0 129 1 114 0 130 1 114 0 131 1 114 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 138 1 114 0 140 1 114 0 141 1 114 0 142 1 114 0 143 1 114 0 144 1 114 0 145 1 114 0 147 1 114 0 148 1 114 0 149 1 114 0 151 1 114 0 153 1 114 0 154 1 114 0 155 1 114 0 156 1 114 0 157 1 114 0 158 1 114 0 159 1 114 0 160 1 114 0 161 1 114 0 162 1 114 0 163 1 114 0 164 1 114 0 165 1 114 0 166 1 114 2 173] 
#[0 1 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 122 0 1 1 122 0 2 1 122 0 5 1 122 0 6 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 12 1 122 0 13 1 122 0 15 1 122 0 16 1 122 0 17 1 122 0 23 1 122 0 25 1 122 0 26 1 122 0 29 1 122 0 31 1 122 0 33 1 122 0 35 1 122 0 36 1 126 0 37 1 122 0 38 1 122 0 39 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 50 1 122 0 51 1 122 0 52 1 122 0 53 1 122 0 55 1 122 0 56 1 122 0 58 1 122 0 59 1 122 0 60 1 122 0 61 1 122 0 62 1 122 0 63 1 122 0 64 1 122 0 65 1 122 0 66 1 122 0 67 1 122 0 69 1 122 0 73 1 122 0 75 1 122 0 76 1 122 0 77 1 122 0 78 1 122 0 79 1 122 0 81 1 122 0 82 1 122 0 83 1 122 0 86 1 122 0 89 1 122 0 90 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 95 1 122 0 97 1 122 0 98 1 122 0 99 1 122 0 100 1 122 0 101 1 122 0 110 1 122 0 112 1 122 0 113 1 122 0 115 1 122 0 117 1 122 0 118 1 122 0 119 1 122 0 120 1 122 0 121 1 122 0 123 1 122 0 124 1 122 0 125 1 122 0 126 1 122 0 127 1 122 0 128 1 122 0 129 1 122 0 130 1 122 0 131 1 122 0 133 1 122 0 134 1 122 0 135 1 122 0 136 1 122 0 138 1 122 0 140 1 122 0 141 1 122 0 142 1 122 0 143 1 122 0 144 1 122 0 145 1 122 0 147 1 122 0 148 1 122 0 149 1 122 0 151 1 122 0 153 1 122 0 154 1 122 0 155 1 122 0 156 1 122 0 157 1 122 0 158 1 122 0 159 1 122 0 160 1 122 0 161 1 122 0 162 1 122 0 163 1 122 0 164 1 122 0 165 1 122 0 166 1 122 2 173] 
#[0 1 130 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 233 0 37 6 161 0 213 6 165 0 214] 
#[1 1 134 0 1 1 134 0 2 1 134 0 3 1 134 0 4 1 134 0 5 1 134 0 6 1 134 0 7 0 135 0 8 1 134 0 9 1 134 0 10 1 134 0 11 1 134 0 12 0 139 0 13 1 134 0 14 1 134 0 15 1 134 0 16 0 143 0 17 1 134 0 18 6 181 0 19 6 185 0 20 1 134 0 21 1 134 0 22 1 134 0 23 1 134 0 25 1 134 0 26 1 134 0 27 1 134 0 28 1 134 0 29 1 134 0 30 1 134 0 31 1 134 0 33 1 134 0 34 0 147 0 35 1 134 0 36 1 134 0 38 1 134 0 39 1 134 0 40 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 47 1 134 0 48 1 134 0 49 1 134 0 50 1 134 0 51 1 134 0 52 1 134 0 53 1 134 0 55 1 134 0 56 1 134 0 58 1 134 0 59 1 134 0 60 1 134 0 61 1 134 0 62 1 134 0 63 1 134 0 64 1 134 0 65 1 134 0 66 1 134 0 67 1 134 0 69 1 134 0 73 1 134 0 75 1 134 0 76 1 134 0 77 1 134 0 78 1 134 0 79 1 134 0 81 1 134 0 82 1 134 0 83 1 134 0 86 1 134 0 89 1 134 0 90 1 134 0 91 1 134 0 92 1 134 0 93 1 134 0 94 1 134 0 95 1 134 0 97 1 134 0 98 1 134 0 99 1 134 0 101 1 134 0 110 1 134 0 112 1 134 0 113 1 134 0 115 1 134 0 117 1 134 0 118 1 134 0 119 1 134 0 120 1 134 0 121 1 134 0 123 1 134 0 124 1 134 0 125 1 134 0 126 1 134 0 127 1 134 0 128 1 134 0 129 1 134 0 130 1 134 0 131 1 134 0 133 1 134 0 134 1 134 0 135 1 134 0 136 1 134 0 138 1 134 0 140 1 134 0 141 1 134 0 142 1 134 0 143 1 134 0 144 1 134 0 145 1 134 0 146 1 134 0 147 1 134 0 148 1 134 0 149 1 134 0 150 1 134 0 151 1 134 0 153 1 134 0 154 1 134 0 155 1 134 0 156 1 134 0 157 1 134 0 158 1 134 0 159 1 134 0 160 1 134 0 161 1 134 0 162 1 134 0 163 1 134 0 164 1 134 0 165 1 134 0 166 1 134 2 173] 
#[1 1 138 0 1 1 138 0 2 1 138 0 3 1 138 0 4 1 138 0 5 1 138 0 6 1 138 0 7 1 138 0 8 1 138 0 9 1 138 0 10 1 138 0 11 1 138 0 12 1 138 0 13 1 138 0 14 1 138 0 15 1 138 0 16 1 138 0 17 1 138 0 18 1 138 0 19 1 138 0 20 1 138 0 21 1 138 0 22 1 138 0 23 1 138 0 25 1 138 0 26 1 138 0 27 1 138 0 28 1 138 0 29 1 138 0 30 1 138 0 31 1 138 0 33 1 138 0 34 0 151 0 35 1 138 0 36 6 197 0 37 1 138 0 38 1 138 0 39 1 138 0 40 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 47 1 138 0 48 1 138 0 49 1 138 0 50 1 138 0 51 1 138 0 52 1 138 0 53 1 138 0 55 1 138 0 56 1 138 0 58 1 138 0 59 1 138 0 60 1 138 0 61 1 138 0 62 1 138 0 63 1 138 0 64 1 138 0 65 1 138 0 66 1 138 0 67 1 138 0 69 1 138 0 73 1 138 0 75 1 138 0 76 1 138 0 77 1 138 0 78 1 138 0 79 1 138 0 81 1 138 0 82 1 138 0 83 1 138 0 86 1 138 0 89 1 138 0 90 1 138 0 91 1 138 0 92 1 138 0 93 1 138 0 94 1 138 0 95 1 138 0 97 1 138 0 98 1 138 0 99 1 138 0 101 1 138 0 110 1 138 0 112 1 138 0 113 1 138 0 115 1 138 0 117 1 138 0 118 1 138 0 119 1 138 0 120 1 138 0 121 1 138 0 123 1 138 0 124 1 138 0 125 1 138 0 126 1 138 0 127 1 138 0 128 1 138 0 129 1 138 0 130 1 138 0 131 1 138 0 133 1 138 0 134 1 138 0 135 1 138 0 136 1 138 0 138 1 138 0 140 1 138 0 141 1 138 0 142 1 138 0 143 1 138 0 144 1 138 0 145 1 138 0 146 1 138 0 147 1 138 0 148 1 138 0 149 1 138 0 150 1 138 0 151 1 138 0 153 1 138 0 154 1 138 0 155 1 138 0 156 1 138 0 157 1 138 0 158 1 138 0 159 1 138 0 160 1 138 0 161 1 138 0 162 1 138 0 163 1 138 0 164 1 138 0 165 1 138 0 166 1 138 2 173] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 6 201 0 158] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 6 205 0 162] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 6 209 0 20] 
#[0 6 213 0 20] 
#[0 1 170 0 9 0 20] 
#[1 1 174 0 4 1 174 0 7 1 174 0 8 1 178 0 9 1 174 0 11 1 174 0 13 1 174 0 14 1 178 0 15 1 174 0 17 1 174 0 18 1 174 0 19 1 174 0 20 1 174 0 22 1 178 0 25 1 174 0 28 1 174 0 30 1 174 0 34 1 174 0 35 1 174 0 37 1 174 0 40 1 174 0 146] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 194 0 4 1 194 0 7 1 194 0 8 1 198 0 9 1 194 0 11 1 194 0 13 1 194 0 14 1 198 0 15 1 194 0 17 1 194 0 18 1 194 0 19 1 194 0 20 1 194 0 22 1 198 0 25 1 194 0 28 1 194 0 30 1 194 0 34 1 194 0 35 1 194 0 37 1 194 0 40 1 194 0 146] 
#[1 1 202 0 4 1 202 0 7 1 202 0 8 1 206 0 9 1 202 0 11 1 202 0 13 1 202 0 14 1 206 0 15 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 22 1 206 0 25 1 202 0 28 1 202 0 30 1 202 0 34 1 202 0 35 1 202 0 37 1 202 0 40 1 202 0 146] 
#[1 1 210 0 4 1 210 0 7 1 210 0 8 1 214 0 9 1 210 0 11 1 210 0 13 1 210 0 14 1 214 0 15 1 210 0 17 1 210 0 18 1 210 0 19 1 210 0 20 1 210 0 22 1 214 0 25 1 210 0 28 1 210 0 30 1 210 0 34 1 210 0 35 1 210 0 37 1 210 0 40 1 210 0 146] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 6 217 0 4 6 221 0 7 6 225 0 11 6 229 0 14 6 233 0 18 6 237 0 22 6 241 0 28 6 245 0 30 6 249 0 34 6 253 0 40 7 1 0 146 7 5 1 110] 
#[1 1 254 0 1 1 254 0 2 1 254 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 0 155 0 8 1 254 0 9 1 254 0 10 1 254 0 11 1 254 0 12 1 254 0 13 1 254 0 14 1 254 0 15 1 254 0 16 1 254 0 17 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 22 1 254 0 23 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 29 1 254 0 30 1 254 0 31 1 254 0 33 1 254 0 34 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 40 1 254 0 44 1 254 0 45 1 254 0 46 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 50 1 254 0 51 1 254 0 52 1 254 0 53 1 254 0 55 1 254 0 56 1 254 0 58 1 254 0 59 1 254 0 60 1 254 0 61 1 254 0 62 1 254 0 63 1 254 0 64 1 254 0 65 1 254 0 66 1 254 0 67 1 254 0 69 1 254 0 73 1 254 0 75 1 254 0 76 1 254 0 77 1 254 0 78 1 254 0 79 1 254 0 81 1 254 0 82 1 254 0 83 1 254 0 86 1 254 0 89 1 254 0 90 1 254 0 91 1 254 0 92 1 254 0 93 1 254 0 94 1 254 0 95 1 254 0 97 1 254 0 98 1 254 0 99 1 254 0 101 1 254 0 110 1 254 0 112 1 254 0 113 1 254 0 115 1 254 0 117 1 254 0 118 1 254 0 119 1 254 0 120 1 254 0 121 1 254 0 123 1 254 0 124 1 254 0 125 1 254 0 126 1 254 0 127 1 254 0 128 1 254 0 129 1 254 0 130 1 254 0 131 1 254 0 133 1 254 0 134 1 254 0 135 1 254 0 136 1 254 0 138 1 254 0 140 1 254 0 141 1 254 0 142 1 254 0 143 1 254 0 144 1 254 0 145 1 254 0 146 1 254 0 147 1 254 0 148 1 254 0 149 1 254 0 150 1 254 0 151 1 254 0 153 1 254 0 154 1 254 0 155 1 254 0 156 1 254 0 157 1 254 0 158 1 254 0 159 1 254 0 160 1 254 0 161 1 254 0 162 1 254 0 163 1 254 0 164 1 254 0 165 1 254 0 166 1 254 2 173] 
#[0 2 2 0 9 0 15 0 25] 
#[1 2 6 0 1 2 6 0 2 2 6 0 3 2 6 0 4 2 6 0 5 2 6 0 6 2 6 0 7 0 159 0 8 2 6 0 9 2 6 0 10 2 6 0 11 2 6 0 12 2 6 0 13 2 6 0 14 2 6 0 15 2 6 0 16 2 6 0 17 2 6 0 18 2 6 0 19 2 6 0 20 2 6 0 21 2 6 0 22 2 6 0 23 2 6 0 25 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 34 2 6 0 35 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 40 2 6 0 44 2 6 0 45 2 6 0 46 2 6 0 47 2 6 0 48 2 6 0 49 2 6 0 50 2 6 0 51 2 6 0 52 2 6 0 53 2 6 0 55 2 6 0 56 2 6 0 58 2 6 0 59 2 6 0 60 2 6 0 61 2 6 0 62 2 6 0 63 2 6 0 64 2 6 0 65 2 6 0 66 2 6 0 67 2 6 0 69 2 6 0 73 2 6 0 75 2 6 0 76 2 6 0 77 2 6 0 78 2 6 0 79 2 6 0 81 2 6 0 82 2 6 0 83 2 6 0 86 2 6 0 89 2 6 0 90 2 6 0 91 2 6 0 92 2 6 0 93 2 6 0 94 2 6 0 95 2 6 0 97 2 6 0 98 2 6 0 99 2 6 0 101 2 6 0 110 2 6 0 112 2 6 0 113 2 6 0 115 2 6 0 117 2 6 0 118 2 6 0 119 2 6 0 120 2 6 0 121 2 6 0 123 2 6 0 124 2 6 0 125 2 6 0 126 2 6 0 127 2 6 0 128 2 6 0 129 2 6 0 130 2 6 0 131 2 6 0 133 2 6 0 134 2 6 0 135 2 6 0 136 2 6 0 138 2 6 0 140 2 6 0 141 2 6 0 142 2 6 0 143 2 6 0 144 2 6 0 145 2 6 0 146 2 6 0 147 2 6 0 148 2 6 0 149 2 6 0 150 2 6 0 151 2 6 0 153 2 6 0 154 2 6 0 155 2 6 0 156 2 6 0 157 2 6 0 158 2 6 0 159 2 6 0 160 2 6 0 161 2 6 0 162 2 6 0 163 2 6 0 164 2 6 0 165 2 6 0 166 2 6 2 173] 
#[1 2 10 0 4 2 10 0 7 2 14 0 9 2 10 0 11 2 10 0 14 2 14 0 15 2 10 0 18 2 10 0 22 2 14 0 25 2 10 0 28 2 10 0 30 2 10 0 34 2 10 0 40 2 10 0 146] 
#[1 2 18 0 4 2 18 0 7 2 22 0 9 2 18 0 11 2 18 0 14 2 22 0 15 2 18 0 18 2 18 0 22 2 22 0 25 2 18 0 28 2 18 0 30 2 18 0 34 2 18 0 40 2 18 0 146] 
#[0 2 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 2 30 0 4 2 30 0 7 2 34 0 9 2 30 0 11 2 30 0 14 2 34 0 15 2 30 0 18 2 30 0 22 2 34 0 25 2 30 0 28 2 30 0 30 2 30 0 34 2 30 0 40 2 30 0 146] 
#[0 2 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 42 0 9 0 15 0 25] 
#[0 0 0 2 173] 
#[0 2 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 66 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 7 17 0 32 1 93 0 144 7 21 1 118 7 25 1 133] 
#[1 1 1 0 110 7 37 0 120 7 37 0 133 7 37 1 131 7 41 1 137 7 37 2 146] 
#[1 7 49 0 32 1 93 0 144 7 53 1 118 7 57 1 132] 
#[1 5 97 0 8 7 69 0 46 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 7 69 0 120 5 145 0 121 1 169 0 129 1 169 0 130 7 69 0 133 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 7 77 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 7 77 0 207 1 189 0 208 7 77 0 210 1 197 0 211 7 69 1 130 7 69 1 131 3 9 1 210 7 77 1 247 7 69 2 146 3 25 2 148 7 81 2 172] 
#[0 7 85 0 25] 
#[0 2 70 0 9 0 25] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 77 0 136 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 7 89 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 7 89 0 207 1 189 0 208 7 89 0 210 1 197 0 211 7 93 1 149 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 2 74 0 9 0 25] 
#[0 2 78 0 9 0 25] 
#[1 7 97 0 153 7 101 1 138] 
#[0 7 105 0 25] 
#[0 2 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 7 109 0 25] 
#[0 2 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 2 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 2 166 0 1 2 166 0 2 2 166 0 5 2 166 0 6 2 166 0 8 2 166 0 9 2 166 0 10 2 166 0 12 2 166 0 13 2 166 0 15 2 166 0 16 2 166 0 17 2 166 0 23 2 166 0 25 2 166 0 26 2 166 0 29 2 166 0 31 2 166 0 33 2 166 0 35 2 166 0 36 2 170 0 37 2 166 0 38 2 166 0 39 2 166 0 44 2 166 0 45 2 166 0 46 2 166 0 47 2 166 0 48 2 166 0 49 2 166 0 50 2 166 0 51 2 166 0 52 2 166 0 53 2 166 0 55 2 166 0 56 2 166 0 58 2 166 0 59 2 166 0 60 2 166 0 61 2 166 0 62 2 166 0 63 2 166 0 64 2 166 0 65 2 166 0 66 2 166 0 67 2 166 0 69 2 166 0 73 2 166 0 75 2 166 0 76 2 166 0 77 2 166 0 78 2 166 0 79 2 166 0 81 2 166 0 82 2 166 0 83 2 166 0 86 2 166 0 89 2 166 0 90 2 166 0 91 2 166 0 92 2 166 0 93 2 166 0 94 2 166 0 95 2 166 0 97 2 166 0 98 2 166 0 99 2 166 0 100 2 166 0 101 2 166 0 110 2 166 0 112 2 166 0 113 2 166 0 115 2 166 0 117 2 166 0 118 2 166 0 119 2 166 0 120 2 166 0 121 2 166 0 123 2 166 0 124 2 166 0 125 2 166 0 126 2 166 0 127 2 166 0 128 2 166 0 129 2 166 0 130 2 166 0 131 2 166 0 133 2 166 0 134 2 166 0 135 2 166 0 136 2 166 0 138 2 166 0 140 2 166 0 141 2 166 0 142 2 166 0 143 2 166 0 144 2 166 0 145 2 166 0 147 2 166 0 148 2 166 0 149 2 166 0 151 2 166 0 153 2 166 0 154 2 166 0 155 2 166 0 156 2 166 0 157 2 166 0 158 2 166 0 159 2 166 0 160 2 166 0 161 2 166 0 162 2 166 0 163 2 166 0 164 2 166 0 165 2 166 0 166 2 166 2 173] 
#[0 2 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 2 186 0 1 2 186 0 2 2 186 0 5 2 186 0 6 2 186 0 8 2 186 0 9 2 186 0 10 2 186 0 12 2 186 0 13 2 186 0 15 2 186 0 16 2 186 0 17 2 186 0 23 2 186 0 25 2 186 0 26 2 186 0 29 2 186 0 31 2 186 0 33 2 186 0 35 2 186 0 36 2 190 0 37 2 186 0 38 2 186 0 39 2 186 0 44 2 186 0 45 2 186 0 46 2 186 0 47 2 186 0 48 2 186 0 49 2 186 0 50 2 186 0 51 2 186 0 52 2 186 0 53 2 186 0 55 2 186 0 56 2 186 0 58 2 186 0 59 2 186 0 60 2 186 0 61 2 186 0 62 2 186 0 63 2 186 0 64 2 186 0 65 2 186 0 66 2 186 0 67 2 186 0 69 2 186 0 73 2 186 0 75 2 186 0 76 2 186 0 77 2 186 0 78 2 186 0 79 2 186 0 81 2 186 0 82 2 186 0 83 2 186 0 86 2 186 0 89 2 186 0 90 2 186 0 91 2 186 0 92 2 186 0 93 2 186 0 94 2 186 0 95 2 186 0 97 2 186 0 98 2 186 0 99 2 186 0 100 2 186 0 101 2 186 0 110 2 186 0 112 2 186 0 113 2 186 0 115 2 186 0 117 2 186 0 118 2 186 0 119 2 186 0 120 2 186 0 121 2 186 0 123 2 186 0 124 2 186 0 125 2 186 0 126 2 186 0 127 2 186 0 128 2 186 0 129 2 186 0 130 2 186 0 131 2 186 0 133 2 186 0 134 2 186 0 135 2 186 0 136 2 186 0 138 2 186 0 140 2 186 0 141 2 186 0 142 2 186 0 143 2 186 0 144 2 186 0 145 2 186 0 147 2 186 0 148 2 186 0 149 2 186 0 151 2 186 0 153 2 186 0 154 2 186 0 155 2 186 0 156 2 186 0 157 2 186 0 158 2 186 0 159 2 186 0 160 2 186 0 161 2 186 0 162 2 186 0 163 2 186 0 164 2 186 0 165 2 186 0 166 2 186 2 173] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 210 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 6 149 0 10 7 113 2 149] 
#[1 0 105 0 1 0 109 0 5 0 163 0 8 0 167 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 171 0 49 0 175 0 52 0 179 0 55 3 61 0 56 0 183 0 60 0 185 0 61 0 189 0 62 0 187 0 65 0 191 0 66 3 17 0 73 0 195 0 76 3 65 0 79 7 141 0 85 0 199 0 86 0 203 0 94 0 245 0 95 0 249 0 97 0 207 0 98 7 141 0 102 7 141 0 110 0 211 0 113 0 215 0 117 1 17 0 118 1 21 0 119 0 219 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 0 223 0 129 0 227 0 130 3 73 0 131 0 231 0 134 1 77 0 136 0 235 0 138 1 97 0 148 0 239 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 5 33 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 5 37 0 200 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 5 33 0 207 1 189 0 208 5 33 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 5 41 0 253 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 5 45 1 71 5 45 1 72 5 45 1 73 1 205 1 74 3 185 1 75 3 185 1 77 7 129 1 78 7 133 1 79 7 137 1 80 7 141 1 81 7 141 1 82 3 185 1 83 7 149 1 84 7 153 1 85 7 157 1 86 5 45 1 89 3 205 1 90 5 45 1 109 5 45 1 112 5 45 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 7 161 0 8 5 69 0 62 3 197 0 153 7 169 1 75 7 169 1 77 7 169 1 83 3 197 1 86] 
#[0 5 89 0 8] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 0 243 0 153 1 141 0 188 1 137 0 190 1 141 0 191 7 173 0 192 7 173 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 7 173 0 207 1 189 0 208 7 173 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 7 185 1 69 7 185 1 70 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[0 6 69 0 8] 
#[1 0 111 0 1 0 111 0 2 1 22 0 3 1 22 0 4 0 111 0 5 0 111 0 6 1 22 0 7 0 111 0 8 0 111 0 9 0 111 0 10 1 22 0 11 0 111 0 12 0 111 0 13 1 22 0 14 0 111 0 15 0 111 0 16 0 111 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 0 111 0 23 6 117 0 24 0 111 0 25 0 247 0 26 1 22 0 27 1 22 0 28 0 111 0 29 1 22 0 30 0 111 0 31 2 230 0 32 0 111 0 33 1 22 0 34 0 111 0 35 0 111 0 36 0 111 0 37 0 111 0 38 0 111 0 39 1 22 0 40 0 111 0 44 0 111 0 45 0 111 0 46 0 111 0 47 0 111 0 48 0 111 0 49 0 111 0 50 0 111 0 51 0 111 0 52 0 111 0 53 0 111 0 55 0 111 0 56 0 111 0 58 0 111 0 59 0 111 0 60 0 111 0 61 0 111 0 62 0 111 0 63 0 111 0 64 0 111 0 65 0 111 0 66 0 111 0 67 0 111 0 69 0 111 0 73 0 111 0 75 0 111 0 76 0 111 0 77 0 111 0 78 0 111 0 79 0 111 0 81 0 111 0 82 0 111 0 83 0 111 0 86 0 111 0 89 0 111 0 90 0 111 0 91 0 111 0 92 0 111 0 93 0 111 0 94 0 111 0 95 0 111 0 97 0 111 0 98 0 111 0 99 0 111 0 101 0 111 0 110 0 111 0 112 0 111 0 113 0 111 0 115 0 111 0 117 0 111 0 118 0 111 0 119 0 111 0 120 0 111 0 121 0 111 0 123 0 111 0 124 0 111 0 125 0 111 0 126 0 111 0 127 0 111 0 128 0 111 0 129 0 111 0 130 0 111 0 131 0 111 0 133 0 111 0 134 0 111 0 135 0 111 0 136 0 111 0 138 0 111 0 140 0 111 0 141 0 111 0 142 0 111 0 143 0 111 0 144 0 111 0 145 1 22 0 146 0 111 0 147 0 111 0 148 0 111 0 149 1 22 0 150 0 111 0 151 0 111 0 153 0 111 0 154 0 111 0 155 0 111 0 156 0 111 0 157 0 111 0 158 0 111 0 159 0 111 0 160 0 111 0 161 0 111 0 162 0 111 0 163 0 111 0 164 0 111 0 165 0 111 0 166 6 129 0 218 6 129 0 248 0 111 2 173] 
#[0 2 234 0 153] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 2 238 0 1 2 238 0 2 2 238 0 3 6 217 0 4 2 238 0 5 2 238 0 6 6 221 0 7 2 238 0 8 2 238 0 9 2 238 0 10 6 225 0 11 2 238 0 12 2 238 0 13 6 229 0 14 2 238 0 15 2 238 0 16 2 238 0 17 6 233 0 18 2 238 0 21 6 237 0 22 2 238 0 23 2 238 0 25 2 238 0 26 2 238 0 27 6 241 0 28 2 238 0 29 6 245 0 30 2 238 0 31 2 238 0 33 6 249 0 34 2 238 0 35 2 238 0 36 2 238 0 38 2 238 0 39 6 253 0 40 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 51 2 238 0 52 2 238 0 53 2 238 0 55 2 238 0 56 2 238 0 58 2 238 0 59 2 238 0 60 2 238 0 61 2 238 0 62 2 238 0 63 2 238 0 64 2 238 0 65 2 238 0 66 2 238 0 67 2 238 0 69 2 238 0 73 2 238 0 75 2 238 0 76 2 238 0 77 2 238 0 78 2 238 0 79 2 238 0 81 2 238 0 82 2 238 0 83 2 238 0 86 2 238 0 89 2 238 0 90 2 238 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 95 2 238 0 97 2 238 0 98 2 238 0 99 2 238 0 101 2 238 0 110 2 238 0 112 2 238 0 113 2 238 0 115 2 238 0 117 2 238 0 118 2 238 0 119 2 238 0 120 2 238 0 121 2 238 0 123 2 238 0 124 2 238 0 125 2 238 0 126 2 238 0 127 2 238 0 128 2 238 0 129 2 238 0 130 2 238 0 131 2 238 0 133 2 238 0 134 2 238 0 135 2 238 0 136 2 238 0 138 2 238 0 140 2 238 0 141 2 238 0 142 2 238 0 143 2 238 0 144 2 238 0 145 7 1 0 146 2 238 0 147 2 238 0 148 2 238 0 149 2 238 0 150 2 238 0 151 2 238 0 153 2 238 0 154 2 238 0 155 2 238 0 156 2 238 0 157 2 238 0 158 2 238 0 159 2 238 0 160 2 238 0 161 2 238 0 162 2 238 0 163 2 238 0 164 2 238 0 165 2 238 0 166 7 5 1 110 2 238 2 173] 
#[0 1 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 2 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 2 242 0 1 2 242 0 2 7 189 0 3 2 242 0 5 2 242 0 6 2 242 0 8 2 242 0 9 0 251 0 10 2 242 0 12 2 242 0 13 2 242 0 15 2 242 0 16 2 242 0 17 7 197 0 21 2 242 0 23 2 242 0 25 2 242 0 26 2 242 0 27 2 242 0 29 2 242 0 31 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 38 2 242 0 39 2 242 0 44 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 2 242 0 52 2 242 0 53 2 242 0 55 2 242 0 56 2 242 0 58 2 242 0 59 2 242 0 60 2 242 0 61 2 242 0 62 2 242 0 63 2 242 0 64 2 242 0 65 2 242 0 66 2 242 0 67 2 242 0 69 2 242 0 73 2 242 0 75 2 242 0 76 2 242 0 77 2 242 0 78 2 242 0 79 2 242 0 81 2 242 0 82 2 242 0 83 2 242 0 86 2 242 0 89 2 242 0 90 2 242 0 91 2 242 0 92 2 242 0 93 2 242 0 94 2 242 0 95 2 242 0 97 2 242 0 98 2 242 0 99 2 242 0 101 2 242 0 110 2 242 0 112 2 242 0 113 2 242 0 115 2 242 0 117 2 242 0 118 2 242 0 119 2 242 0 120 2 242 0 121 2 242 0 123 2 242 0 124 2 242 0 125 2 242 0 126 2 242 0 127 2 242 0 128 2 242 0 129 2 242 0 130 2 242 0 131 2 242 0 133 2 242 0 134 2 242 0 135 2 242 0 136 2 242 0 138 2 242 0 140 2 242 0 141 2 242 0 142 2 242 0 143 2 242 0 144 2 242 0 145 2 242 0 147 2 242 0 148 2 242 0 149 2 242 0 150 2 242 0 151 2 242 0 153 2 242 0 154 2 242 0 155 2 242 0 156 2 242 0 157 2 242 0 158 2 242 0 159 2 242 0 160 2 242 0 161 2 242 0 162 2 242 0 163 2 242 0 164 2 242 0 165 2 242 0 166 2 242 2 173] 
#[1 2 246 0 1 2 246 0 2 2 246 0 5 2 246 0 6 2 246 0 8 2 246 0 9 2 246 0 10 0 255 0 12 2 246 0 13 2 246 0 15 1 3 0 16 2 246 0 17 2 246 0 23 2 246 0 25 2 246 0 26 2 246 0 27 2 246 0 29 2 246 0 31 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 39 2 246 0 44 2 246 0 45 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 49 2 246 0 50 2 246 0 51 2 246 0 52 2 246 0 53 2 246 0 55 2 246 0 56 2 246 0 58 2 246 0 59 2 246 0 60 2 246 0 61 2 246 0 62 2 246 0 63 2 246 0 64 2 246 0 65 2 246 0 66 2 246 0 67 2 246 0 69 2 246 0 73 2 246 0 75 2 246 0 76 2 246 0 77 2 246 0 78 2 246 0 79 2 246 0 81 2 246 0 82 2 246 0 83 2 246 0 86 2 246 0 89 2 246 0 90 2 246 0 91 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 95 2 246 0 97 2 246 0 98 2 246 0 99 2 246 0 101 2 246 0 110 2 246 0 112 2 246 0 113 2 246 0 115 2 246 0 117 2 246 0 118 2 246 0 119 2 246 0 120 2 246 0 121 2 246 0 123 2 246 0 124 2 246 0 125 2 246 0 126 2 246 0 127 2 246 0 128 2 246 0 129 2 246 0 130 2 246 0 131 2 246 0 133 2 246 0 134 2 246 0 135 2 246 0 136 2 246 0 138 2 246 0 140 2 246 0 141 2 246 0 142 2 246 0 143 2 246 0 144 2 246 0 145 2 246 0 147 2 246 0 148 2 246 0 149 2 246 0 150 2 246 0 151 2 246 0 153 2 246 0 154 2 246 0 155 2 246 0 156 2 246 0 157 2 246 0 158 2 246 0 159 2 246 0 160 2 246 0 161 2 246 0 162 2 246 0 163 2 246 0 164 2 246 0 165 2 246 0 166 2 246 2 173] 
#[1 2 250 0 1 2 250 0 2 2 250 0 5 2 250 0 6 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 12 2 250 0 13 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 23 2 250 0 25 2 250 0 26 7 209 0 27 2 250 0 29 2 250 0 31 2 250 0 33 2 250 0 35 2 250 0 36 2 250 0 38 2 250 0 39 2 250 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 52 2 250 0 53 2 250 0 55 2 250 0 56 2 250 0 58 2 250 0 59 2 250 0 60 2 250 0 61 2 250 0 62 2 250 0 63 2 250 0 64 2 250 0 65 2 250 0 66 2 250 0 67 2 250 0 69 2 250 0 73 2 250 0 75 2 250 0 76 2 250 0 77 2 250 0 78 2 250 0 79 2 250 0 81 2 250 0 82 2 250 0 83 2 250 0 86 2 250 0 89 2 250 0 90 2 250 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 95 2 250 0 97 2 250 0 98 2 250 0 99 2 250 0 101 2 250 0 110 2 250 0 112 2 250 0 113 2 250 0 115 2 250 0 117 2 250 0 118 2 250 0 119 2 250 0 120 2 250 0 121 2 250 0 123 2 250 0 124 2 250 0 125 2 250 0 126 2 250 0 127 2 250 0 128 2 250 0 129 2 250 0 130 2 250 0 131 2 250 0 133 2 250 0 134 2 250 0 135 2 250 0 136 2 250 0 138 2 250 0 140 2 250 0 141 2 250 0 142 2 250 0 143 2 250 0 144 2 250 0 145 2 250 0 147 2 250 0 148 2 250 0 149 7 213 0 150 2 250 0 151 2 250 0 153 2 250 0 154 2 250 0 155 2 250 0 156 2 250 0 157 2 250 0 158 2 250 0 159 2 250 0 160 2 250 0 161 2 250 0 162 2 250 0 163 2 250 0 164 2 250 0 165 2 250 0 166 2 250 2 173] 
#[1 2 254 0 1 2 254 0 2 2 254 0 5 2 254 0 6 2 254 0 8 2 254 0 9 2 254 0 10 2 254 0 12 2 254 0 13 2 254 0 15 2 254 0 16 2 254 0 17 2 254 0 23 2 254 0 25 1 7 0 26 1 11 0 29 2 254 0 31 1 15 0 33 2 254 0 35 2 254 0 36 2 254 0 38 2 254 0 39 1 19 0 44 2 254 0 45 2 254 0 46 2 254 0 47 2 254 0 48 2 254 0 49 2 254 0 50 2 254 0 51 2 254 0 52 2 254 0 53 2 254 0 55 2 254 0 56 2 254 0 58 2 254 0 59 2 254 0 60 2 254 0 61 2 254 0 62 2 254 0 63 2 254 0 64 2 254 0 65 2 254 0 66 2 254 0 67 2 254 0 69 2 254 0 73 2 254 0 75 2 254 0 76 2 254 0 77 2 254 0 78 2 254 0 79 2 254 0 81 2 254 0 82 2 254 0 83 2 254 0 86 2 254 0 89 1 23 0 90 2 254 0 91 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 95 2 254 0 97 2 254 0 98 2 254 0 99 2 254 0 101 2 254 0 110 2 254 0 112 2 254 0 113 2 254 0 115 2 254 0 117 2 254 0 118 2 254 0 119 2 254 0 120 2 254 0 121 2 254 0 123 2 254 0 124 2 254 0 125 2 254 0 126 2 254 0 127 2 254 0 128 2 254 0 129 2 254 0 130 2 254 0 131 2 254 0 133 2 254 0 134 2 254 0 135 2 254 0 136 2 254 0 138 2 254 0 140 2 254 0 141 2 254 0 142 2 254 0 143 2 254 0 144 2 254 0 145 2 254 0 147 2 254 0 148 1 27 0 149 2 254 0 151 2 254 0 153 2 254 0 154 2 254 0 155 2 254 0 156 2 254 0 157 2 254 0 158 2 254 0 159 2 254 0 160 2 254 0 161 2 254 0 162 2 254 0 163 2 254 0 164 2 254 0 165 2 254 0 166 2 254 2 173] 
#[1 3 2 0 1 1 31 0 2 3 2 0 5 3 2 0 6 3 2 0 8 3 2 0 9 3 2 0 10 3 2 0 12 3 2 0 13 3 2 0 15 3 2 0 16 3 2 0 17 3 2 0 23 3 2 0 25 3 2 0 26 3 2 0 29 1 35 0 31 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 38 3 2 0 39 3 2 0 44 3 2 0 45 3 2 0 46 3 2 0 47 3 2 0 48 3 2 0 49 3 2 0 50 3 2 0 51 3 2 0 52 3 2 0 53 3 2 0 55 3 2 0 56 3 2 0 58 3 2 0 59 3 2 0 60 3 2 0 61 3 2 0 62 3 2 0 63 3 2 0 64 3 2 0 65 3 2 0 66 3 2 0 67 3 2 0 69 3 2 0 73 3 2 0 75 3 2 0 76 3 2 0 77 3 2 0 78 3 2 0 79 3 2 0 81 3 2 0 82 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 90 3 2 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 95 3 2 0 97 3 2 0 98 3 2 0 99 3 2 0 101 3 2 0 110 3 2 0 112 3 2 0 113 3 2 0 115 3 2 0 117 3 2 0 118 3 2 0 119 3 2 0 120 3 2 0 121 3 2 0 123 3 2 0 124 3 2 0 125 3 2 0 126 3 2 0 127 3 2 0 128 3 2 0 129 3 2 0 130 3 2 0 131 3 2 0 133 3 2 0 134 3 2 0 135 3 2 0 136 3 2 0 138 3 2 0 140 3 2 0 141 3 2 0 142 3 2 0 143 3 2 0 144 3 2 0 145 3 2 0 147 3 2 0 148 3 2 0 149 3 2 0 151 3 2 0 153 3 2 0 154 3 2 0 155 3 2 0 156 3 2 0 157 3 2 0 158 3 2 0 159 3 2 0 160 3 2 0 161 3 2 0 162 3 2 0 163 3 2 0 164 3 2 0 165 3 2 0 166 3 2 2 173] 
#[1 3 6 0 1 3 6 0 2 1 39 0 5 3 6 0 6 3 6 0 8 3 6 0 9 3 6 0 10 3 6 0 12 3 6 0 13 3 6 0 15 3 6 0 16 3 6 0 17 3 6 0 23 3 6 0 25 3 6 0 26 3 6 0 29 3 6 0 31 3 6 0 33 3 6 0 35 3 6 0 36 3 6 0 38 3 6 0 39 3 6 0 44 3 6 0 45 3 6 0 46 3 6 0 47 3 6 0 48 3 6 0 49 3 6 0 50 3 6 0 51 3 6 0 52 3 6 0 53 3 6 0 55 3 6 0 56 3 6 0 58 3 6 0 59 3 6 0 60 3 6 0 61 3 6 0 62 3 6 0 63 3 6 0 64 3 6 0 65 3 6 0 66 3 6 0 67 3 6 0 69 3 6 0 73 3 6 0 75 3 6 0 76 3 6 0 77 3 6 0 78 3 6 0 79 3 6 0 81 3 6 0 82 3 6 0 83 3 6 0 86 3 6 0 89 3 6 0 90 3 6 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 95 3 6 0 97 3 6 0 98 3 6 0 99 3 6 0 101 3 6 0 110 3 6 0 112 3 6 0 113 3 6 0 115 3 6 0 117 3 6 0 118 3 6 0 119 3 6 0 120 3 6 0 121 3 6 0 123 3 6 0 124 3 6 0 125 3 6 0 126 3 6 0 127 3 6 0 128 3 6 0 129 3 6 0 130 3 6 0 131 3 6 0 133 3 6 0 134 3 6 0 135 3 6 0 136 3 6 0 138 3 6 0 140 3 6 0 141 3 6 0 142 3 6 0 143 3 6 0 144 3 6 0 145 3 6 0 147 3 6 0 148 3 6 0 149 3 6 0 151 3 6 0 153 3 6 0 154 3 6 0 155 3 6 0 156 3 6 0 157 3 6 0 158 3 6 0 159 3 6 0 160 3 6 0 161 3 6 0 162 3 6 0 163 3 6 0 164 3 6 0 165 3 6 0 166 3 6 2 173] 
#[1 3 10 0 1 3 10 0 2 3 10 0 5 3 10 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 12 3 10 0 13 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 23 3 10 0 25 3 10 0 26 3 10 0 29 3 10 0 31 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 38 1 43 0 39 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 10 0 48 3 10 0 49 3 10 0 50 3 10 0 51 3 10 0 52 3 10 0 53 3 10 0 55 3 10 0 56 3 10 0 58 3 10 0 59 3 10 0 60 3 10 0 61 3 10 0 62 3 10 0 63 3 10 0 64 3 10 0 65 3 10 0 66 3 10 0 67 3 10 0 69 3 10 0 73 3 10 0 75 3 10 0 76 3 10 0 77 3 10 0 78 3 10 0 79 3 10 0 81 3 10 0 82 3 10 0 83 3 10 0 86 3 10 0 89 3 10 0 90 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 97 3 10 0 98 3 10 0 99 3 10 0 101 3 10 0 110 3 10 0 112 3 10 0 113 3 10 0 115 3 10 0 117 3 10 0 118 3 10 0 119 3 10 0 120 3 10 0 121 3 10 0 123 3 10 0 124 3 10 0 125 3 10 0 126 3 10 0 127 3 10 0 128 3 10 0 129 3 10 0 130 3 10 0 131 3 10 0 133 3 10 0 134 3 10 0 135 3 10 0 136 3 10 0 138 3 10 0 140 3 10 0 141 3 10 0 142 3 10 0 143 3 10 0 144 3 10 0 145 3 10 0 147 3 10 0 148 3 10 0 149 3 10 0 151 3 10 0 153 3 10 0 154 3 10 0 155 3 10 0 156 3 10 0 157 3 10 0 158 3 10 0 159 3 10 0 160 3 10 0 161 3 10 0 162 3 10 0 163 3 10 0 164 3 10 0 165 3 10 0 166 3 10 2 173] 
#[1 3 14 0 1 3 14 0 2 3 14 0 5 3 14 0 6 3 14 0 8 3 14 0 9 3 14 0 10 3 14 0 12 3 14 0 13 3 14 0 15 3 14 0 16 3 14 0 17 3 14 0 23 3 14 0 25 3 14 0 26 3 14 0 29 3 14 0 31 3 14 0 33 3 14 0 35 3 14 0 36 3 14 0 38 3 14 0 39 3 14 0 44 3 14 0 45 3 14 0 46 3 14 0 47 3 14 0 48 3 14 0 49 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 55 3 14 0 56 3 14 0 58 3 14 0 59 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 69 3 14 0 73 3 14 0 75 3 14 0 76 3 14 0 77 3 14 0 78 3 14 0 79 3 14 0 81 3 14 0 82 3 14 0 83 3 14 0 86 3 14 0 89 3 14 0 90 3 14 0 91 3 14 0 92 3 14 0 93 3 14 0 94 3 14 0 95 3 14 0 97 3 14 0 98 3 14 0 99 3 14 0 101 3 14 0 110 3 14 0 112 3 14 0 113 3 14 0 115 3 14 0 117 3 14 0 118 3 14 0 119 3 14 0 120 3 14 0 121 3 14 0 123 3 14 0 124 3 14 0 125 3 14 0 126 3 14 0 127 3 14 0 128 3 14 0 129 3 14 0 130 3 14 0 131 3 14 0 133 3 14 0 134 3 14 0 135 3 14 0 136 3 14 0 138 3 14 0 140 3 14 0 141 3 14 0 142 3 14 0 143 3 14 0 144 1 47 0 145 3 14 0 147 3 14 0 148 3 14 0 149 3 14 0 151 3 14 0 153 3 14 0 154 3 14 0 155 3 14 0 156 3 14 0 157 3 14 0 158 3 14 0 159 3 14 0 160 3 14 0 161 3 14 0 162 3 14 0 163 3 14 0 164 3 14 0 165 3 14 0 166 3 14 2 173] 
#[1 3 18 0 1 3 18 0 2 3 18 0 5 1 51 0 6 3 18 0 8 3 18 0 9 3 18 0 10 3 18 0 12 3 18 0 13 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 23 3 18 0 25 3 18 0 26 3 18 0 29 3 18 0 31 3 18 0 33 3 18 0 35 3 18 0 36 3 18 0 38 3 18 0 39 3 18 0 44 3 18 0 45 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 49 3 18 0 50 3 18 0 51 3 18 0 52 3 18 0 53 3 18 0 55 3 18 0 56 3 18 0 58 3 18 0 59 3 18 0 60 3 18 0 61 3 18 0 62 3 18 0 63 3 18 0 64 3 18 0 65 3 18 0 66 3 18 0 67 3 18 0 69 3 18 0 73 3 18 0 75 3 18 0 76 3 18 0 77 3 18 0 78 3 18 0 79 3 18 0 81 3 18 0 82 3 18 0 83 3 18 0 86 3 18 0 89 3 18 0 90 3 18 0 91 3 18 0 92 3 18 0 93 3 18 0 94 3 18 0 95 3 18 0 97 3 18 0 98 3 18 0 99 3 18 0 101 3 18 0 110 3 18 0 112 3 18 0 113 3 18 0 115 3 18 0 117 3 18 0 118 3 18 0 119 3 18 0 120 3 18 0 121 3 18 0 123 3 18 0 124 3 18 0 125 3 18 0 126 3 18 0 127 3 18 0 128 3 18 0 129 3 18 0 130 3 18 0 131 3 18 0 133 3 18 0 134 3 18 0 135 3 18 0 136 3 18 0 138 3 18 0 140 3 18 0 141 3 18 0 142 3 18 0 143 3 18 0 144 3 18 0 145 3 18 0 147 3 18 0 148 3 18 0 149 3 18 0 151 3 18 0 153 3 18 0 154 3 18 0 155 3 18 0 156 3 18 0 157 3 18 0 158 3 18 0 159 3 18 0 160 3 18 0 161 3 18 0 162 3 18 0 163 3 18 0 164 3 18 0 165 3 18 0 166 3 18 2 173] 
#[1 3 22 0 1 3 22 0 2 3 22 0 5 3 22 0 6 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 12 3 22 0 13 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 23 3 22 0 25 3 22 0 26 3 22 0 29 3 22 0 31 3 22 0 33 3 22 0 35 1 55 0 36 3 22 0 38 3 22 0 39 3 22 0 44 3 22 0 45 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 49 3 22 0 50 3 22 0 51 3 22 0 52 3 22 0 53 3 22 0 55 3 22 0 56 3 22 0 58 3 22 0 59 3 22 0 60 3 22 0 61 3 22 0 62 3 22 0 63 3 22 0 64 3 22 0 65 3 22 0 66 3 22 0 67 3 22 0 69 3 22 0 73 3 22 0 75 3 22 0 76 3 22 0 77 3 22 0 78 3 22 0 79 3 22 0 81 3 22 0 82 3 22 0 83 3 22 0 86 3 22 0 89 3 22 0 90 3 22 0 91 3 22 0 92 3 22 0 93 3 22 0 94 3 22 0 95 3 22 0 97 3 22 0 98 3 22 0 99 3 22 0 101 3 22 0 110 3 22 0 112 3 22 0 113 3 22 0 115 3 22 0 117 3 22 0 118 3 22 0 119 3 22 0 120 3 22 0 121 3 22 0 123 3 22 0 124 3 22 0 125 3 22 0 126 3 22 0 127 3 22 0 128 3 22 0 129 3 22 0 130 3 22 0 131 3 22 0 133 3 22 0 134 3 22 0 135 3 22 0 136 3 22 0 138 3 22 0 140 3 22 0 141 3 22 0 142 3 22 0 143 3 22 0 144 3 22 0 145 1 59 0 147 3 22 0 148 3 22 0 149 3 22 0 151 3 22 0 153 3 22 0 154 3 22 0 155 3 22 0 156 3 22 0 157 3 22 0 158 3 22 0 159 3 22 0 160 3 22 0 161 3 22 0 162 3 22 0 163 3 22 0 164 3 22 0 165 3 22 0 166 3 22 2 173] 
#[1 3 26 0 1 3 26 0 2 3 26 0 5 3 26 0 6 3 26 0 8 3 26 0 9 3 26 0 10 3 26 0 12 3 26 0 13 3 26 0 15 3 26 0 16 3 26 0 17 3 26 0 23 3 26 0 25 3 26 0 26 3 26 0 29 3 26 0 31 3 26 0 33 1 63 0 35 3 26 0 36 3 26 0 38 3 26 0 39 3 26 0 44 3 26 0 45 3 26 0 46 3 26 0 47 3 26 0 48 3 26 0 49 3 26 0 50 3 26 0 51 3 26 0 52 3 26 0 53 3 26 0 55 3 26 0 56 3 26 0 58 3 26 0 59 3 26 0 60 3 26 0 61 3 26 0 62 3 26 0 63 3 26 0 64 3 26 0 65 3 26 0 66 3 26 0 67 3 26 0 69 3 26 0 73 3 26 0 75 3 26 0 76 3 26 0 77 3 26 0 78 3 26 0 79 3 26 0 81 3 26 0 82 3 26 0 83 3 26 0 86 3 26 0 89 3 26 0 90 3 26 0 91 3 26 0 92 3 26 0 93 3 26 0 94 3 26 0 95 3 26 0 97 3 26 0 98 3 26 0 99 3 26 0 101 3 26 0 110 3 26 0 112 3 26 0 113 3 26 0 115 3 26 0 117 3 26 0 118 3 26 0 119 3 26 0 120 3 26 0 121 3 26 0 123 3 26 0 124 3 26 0 125 3 26 0 126 3 26 0 127 3 26 0 128 3 26 0 129 3 26 0 130 3 26 0 131 3 26 0 133 3 26 0 134 3 26 0 135 3 26 0 136 3 26 0 138 3 26 0 140 3 26 0 141 3 26 0 142 3 26 0 143 3 26 0 144 3 26 0 145 3 26 0 147 3 26 0 148 3 26 0 149 3 26 0 151 3 26 0 153 3 26 0 154 3 26 0 155 3 26 0 156 3 26 0 157 3 26 0 158 3 26 0 159 3 26 0 160 3 26 0 161 3 26 0 162 3 26 0 163 3 26 0 164 3 26 0 165 3 26 0 166 3 26 2 173] 
#[0 3 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 3 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 3 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 3 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 21 0 32] 
#[0 3 46 0 32] 
#[0 3 50 0 32] 
#[0 3 54 0 32] 
#[0 3 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 3 65 0 79 3 62 0 82 8 25 0 91 8 29 0 92 8 33 0 101 3 62 0 115 8 37 0 141 8 41 1 90 8 45 1 91 8 49 1 92 8 53 1 93 8 57 1 94 8 61 1 95 8 65 1 96 8 69 1 97 8 73 1 98 8 77 1 99] 
#[0 3 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 0 2 173] 
#[0 3 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 81 0 153] 
#[0 3 74 0 153] 
#[0 0 0 2 173] 
#[0 3 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 0 0 2 173] 
#[0 3 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 8 85 0 25 8 89 0 32 1 93 0 144 8 93 1 118 8 97 1 251] 
#[1 8 101 0 25 8 105 0 32 1 93 0 144 8 109 1 118 8 113 1 250] 
#[0 3 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 3 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 1 67 0 8 1 71 0 41 8 213 0 46 1 67 0 49 1 67 0 52 1 67 0 55 0 74 0 57 3 138 0 58 1 67 0 60 0 78 0 62 1 67 0 65 1 67 0 66 0 82 0 68 3 142 0 70 1 75 0 72 1 67 0 76 1 67 0 86 0 86 0 87 1 79 0 88 1 67 0 94 1 83 0 97 1 67 0 98 1 87 0 103 1 91 0 105 1 95 0 106 1 99 0 107 1 103 0 108 8 153 0 109 1 107 0 110 1 67 0 113 1 111 0 114 1 67 0 117 1 115 0 120 1 67 0 121 0 90 0 122 1 67 0 129 1 67 0 130 1 119 0 133 1 67 0 134 1 123 0 137 1 67 0 138 8 197 0 139 3 146 0 148 1 127 0 153 4 137 1 204 4 141 1 205 4 145 1 206 8 177 1 227 8 181 1 228 8 185 1 229 8 189 1 233 8 193 1 234 8 197 1 235 8 201 1 241 8 205 1 243 8 209 1 244 8 213 1 245 8 213 1 246 8 221 2 7 8 225 2 8 8 229 2 9 8 233 2 25 8 237 2 26 8 241 2 27 8 245 2 32 8 249 2 33 8 253 2 34 9 1 2 39 9 5 2 40 9 9 2 49 9 13 2 50 9 17 2 51 9 21 2 57 4 149 2 60 4 153 2 61 4 157 2 62 4 161 2 74 4 165 2 75 4 169 2 76 4 173 2 102 4 177 2 103 4 181 2 104 4 185 2 110 4 189 2 111 4 193 2 112 9 25 2 142 9 29 2 146] 
#[0 3 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 9 33 0 153] 
#[1 9 37 0 120 9 41 0 153 9 49 0 188 9 45 0 189 9 49 0 191] 
#[1 1 131 0 37 3 158 0 41 3 158 0 57 3 158 0 62 3 158 0 68 3 158 0 87 3 158 0 88 3 158 0 96 3 158 0 97 3 158 0 105 3 158 0 106 3 158 0 107 3 158 0 108 3 158 0 109 3 158 0 110 3 158 0 114 3 158 0 120 3 158 0 122 3 158 0 133 9 57 2 113 9 61 2 114 9 65 2 115 9 69 2 116 3 158 2 173] 
#[1 3 162 0 37 3 162 0 41 3 162 0 57 3 162 0 62 3 162 0 68 3 162 0 87 3 162 0 88 3 162 0 96 3 162 0 97 3 162 0 105 3 162 0 106 3 162 0 107 3 162 0 108 3 162 0 109 3 162 0 110 3 162 0 114 3 162 0 120 3 162 0 122 3 162 0 133 4 41 0 135 3 162 0 151 9 73 0 180 9 73 0 181 9 73 0 182 9 73 0 183 3 162 2 173] 
#[0 3 166 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 3 170 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 3 174 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 3 178 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 3 182 0 37 0 41 0 57 0 62 0 68 0 72 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 3 186 0 23] 
#[1 6 33 0 153 1 141 0 188 9 89 0 190 1 141 0 191 9 81 2 126 9 85 2 127 9 89 2 128] 
#[0 3 190 0 153] 
#[0 9 93 0 23] 
#[0 3 194 0 20 0 144] 
#[1 9 97 0 20 9 101 0 144 9 105 0 174] 
#[0 3 198 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[1 3 202 0 41 3 202 0 57 3 206 0 62 3 210 0 68 3 214 0 87 1 135 0 88 1 135 0 97 1 139 0 105 1 135 0 106 1 135 0 107 1 135 0 108 3 218 0 109 3 218 0 110 3 202 0 114 3 202 0 120 3 218 0 122 1 143 0 133] 
#[1 3 222 0 41 3 222 0 57 3 226 0 62 3 230 0 68 3 234 0 87 1 147 0 88 1 147 0 97 1 151 0 105 1 147 0 106 1 147 0 107 1 147 0 108 3 238 0 109 3 238 0 110 3 222 0 114 3 222 0 120 3 238 0 122 1 155 0 133] 
#[1 3 242 0 41 3 242 0 57 3 246 0 62 3 250 0 68 3 254 0 87 1 159 0 88 1 159 0 97 1 163 0 105 1 159 0 106 1 159 0 107 1 159 0 108 4 2 0 109 4 2 0 110 3 242 0 114 3 242 0 120 4 2 0 122 1 167 0 133] 
#[1 4 6 0 41 4 6 0 57 4 10 0 62 4 14 0 68 4 18 0 87 1 171 0 88 1 171 0 97 1 175 0 105 1 171 0 106 1 171 0 107 1 171 0 108 4 22 0 109 4 22 0 110 4 6 0 114 4 6 0 120 4 22 0 122 1 179 0 133] 
#[1 4 26 0 41 4 26 0 57 4 30 0 62 4 34 0 68 4 38 0 87 1 183 0 88 1 183 0 97 1 187 0 105 1 183 0 106 1 183 0 107 1 183 0 108 4 42 0 109 4 42 0 110 4 26 0 114 4 26 0 120 4 42 0 122 1 191 0 133] 
#[0 4 46 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 4 50 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 4 54 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[1 1 195 0 41 1 195 0 57 1 199 0 62 1 203 0 87 1 207 0 88 1 207 0 97 1 211 0 105 1 207 0 106 1 207 0 107 1 207 0 108 1 215 0 109 1 215 0 110 1 195 0 114 1 195 0 120 1 215 0 122 1 207 0 133] 
#[1 4 78 0 57 9 113 0 105 9 113 2 141] 
#[1 9 141 0 41 4 82 0 57 9 141 0 88 9 141 0 97 4 82 0 105 9 141 0 106 9 141 0 107 9 141 0 108 9 141 0 114 9 141 0 120 9 137 0 133 9 141 1 206 9 141 2 146] 
#[0 4 86 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[1 9 153 0 105 9 149 0 110 4 78 0 122 9 153 2 141] 
#[1 9 181 0 88 9 181 0 97 4 90 0 105 9 181 0 106 9 181 0 107 9 181 0 108 9 181 0 109 4 90 0 110 4 90 0 122 9 177 0 133 9 181 2 62 9 181 2 146] 
#[0 4 94 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[1 4 78 0 87 9 189 0 105 9 189 2 141] 
#[1 4 98 0 87 9 217 0 88 9 217 0 97 4 98 0 105 9 217 0 106 9 217 0 107 9 217 0 108 9 213 0 133 9 217 2 76 9 217 2 146] 
#[0 4 102 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 9 225 0 68] 
#[1 4 106 0 68 9 249 0 88 9 249 0 97 9 249 0 106 9 249 0 107 9 249 0 108 9 249 2 104] 
#[0 4 110 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 9 253 0 62] 
#[1 4 114 0 62 10 25 0 88 10 25 0 97 10 25 0 106 10 25 0 107 10 25 0 108 10 21 0 133 10 25 2 112 10 25 2 146] 
#[0 4 118 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[1 4 122 0 41 4 122 0 57 4 126 0 62 4 130 0 87 1 219 0 88 1 219 0 97 1 223 0 105 1 219 0 106 1 219 0 107 1 219 0 108 4 134 0 109 4 134 0 110 4 122 0 114 4 122 0 120 4 134 0 122 1 219 0 133] 
#[0 4 138 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 97 0 98 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 120 0 121 0 122 0 124 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 5 29 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 10 33 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 33 0 207 1 189 0 208 10 33 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 5 41 0 253 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 5 45 1 71 5 45 1 72 5 45 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 5 45 1 89 3 205 1 90 5 45 1 109 5 45 1 112 5 45 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
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
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 6 117 0 24 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 10 37 0 218 10 37 0 248 1 22 2 173] 
#[0 1 62 0 9 0 20] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 231 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 231 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 10 41 0 23 6 117 0 24 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 2 230 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 0 111 0 37 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 90 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 149 1 22 0 150 0 111 0 153 6 129 0 218 6 129 0 248] 
#[1 10 45 0 9 4 150 0 15 1 235 0 153] 
#[1 10 53 0 15 10 57 0 198 10 61 0 199] 
#[1 10 65 0 15 10 69 0 251 10 73 0 252] 
#[1 10 77 0 9 4 154 0 15] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 181 0 8 0 146 0 144 10 81 1 76 10 81 1 77] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 85 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 10 89 1 9 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 93 1 71 10 93 1 72 10 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 93 1 89 3 205 1 90 10 93 1 109 10 93 1 112 10 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 4 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 97 1 71 10 97 1 72 10 97 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 97 1 89 3 205 1 90 10 97 1 109 10 97 1 112 10 97 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 4 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 10 101 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 5 37 0 200 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 101 0 207 1 189 0 208 10 101 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 0 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 126 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 150 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 170 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 178 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 186 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 210 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 242 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 0 250 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 1 2 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 111 0 1 0 111 0 2 0 111 0 5 0 111 0 6 0 111 0 8 0 111 0 9 0 111 0 10 0 111 0 12 0 111 0 13 0 111 0 15 0 111 0 16 0 111 0 17 1 22 0 20 0 111 0 23 6 117 0 24 0 111 0 25 0 247 0 26 0 111 0 29 0 111 0 31 0 111 0 32 0 111 0 33 0 111 0 35 0 111 0 36 0 111 0 37 0 111 0 38 0 111 0 39 0 111 0 44 0 111 0 45 0 111 0 46 0 111 0 47 0 111 0 48 0 111 0 49 0 111 0 50 0 111 0 51 0 111 0 52 0 111 0 53 0 111 0 55 0 111 0 56 0 111 0 58 0 111 0 59 0 111 0 60 0 111 0 61 0 111 0 62 0 111 0 63 0 111 0 64 0 111 0 65 0 111 0 66 0 111 0 67 0 111 0 69 0 111 0 73 0 111 0 75 0 111 0 76 0 111 0 77 0 111 0 78 0 111 0 79 0 111 0 81 0 111 0 82 0 111 0 83 0 111 0 86 0 111 0 89 0 111 0 90 0 111 0 91 0 111 0 92 0 111 0 93 0 111 0 94 0 111 0 95 0 111 0 97 0 111 0 98 0 111 0 99 0 111 0 100 0 111 0 101 0 111 0 110 0 111 0 112 0 111 0 113 0 111 0 115 0 111 0 117 0 111 0 118 0 111 0 119 0 111 0 120 0 111 0 121 0 111 0 123 0 111 0 124 0 111 0 125 0 111 0 126 0 111 0 127 0 111 0 128 0 111 0 129 0 111 0 130 0 111 0 131 0 111 0 133 0 111 0 134 0 111 0 135 0 111 0 136 0 111 0 138 0 111 0 140 0 111 0 141 0 111 0 142 0 111 0 143 0 111 0 144 0 111 0 145 0 111 0 147 0 111 0 148 0 111 0 149 0 111 0 151 0 111 0 153 0 111 0 154 0 111 0 155 0 111 0 156 0 111 0 157 0 111 0 158 0 111 0 159 0 111 0 160 0 111 0 161 0 111 0 162 0 111 0 163 0 111 0 164 0 111 0 165 0 111 0 166 10 105 0 218 10 105 0 248 0 111 2 173] 
#[0 1 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 10 109 0 153 10 113 1 154 10 117 1 155] 
#[0 4 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 10 121 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 121 0 207 1 189 0 208 10 121 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 2 214 0 8 2 222 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 76 7 141 0 85 2 214 0 86 2 214 0 94 2 214 0 98 7 141 0 102 7 141 0 110 2 214 0 113 2 214 0 117 2 214 0 121 2 214 0 129 2 214 0 130 2 214 0 134 2 214 0 138 2 214 0 153 7 129 1 78 7 133 1 79 7 137 1 80 7 141 1 81 7 141 1 82] 
#[1 1 93 0 144 10 125 1 118] 
#[0 4 194 0 144] 
#[0 10 129 0 142] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 76 1 169 0 86 1 169 0 94 1 169 0 113 1 169 0 117 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 6 33 0 153 1 141 0 188 1 181 0 190 1 141 0 191 10 133 0 194 10 133 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 137 2 148 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 198 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 1 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 10 141 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 10 149 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 10 149 1 109 10 153 1 134 2 153 1 135 2 157 1 137 10 153 1 139 2 165 1 144 2 169 1 149 10 149 1 157 10 153 1 172 10 153 1 173 10 161 1 178 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 3 49 2 172] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 1 0 110 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 77 0 136 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 10 169 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 169 0 207 1 189 0 208 10 169 0 210 1 197 0 211 10 165 1 137 10 169 1 148 10 169 1 149 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 177 1 71 10 177 1 72 10 177 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 177 1 89 3 205 1 90 10 177 1 109 10 177 1 112 10 177 1 113 10 177 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 10 181 0 25] 
#[0 10 185 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 193 1 71 10 193 1 72 10 193 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 193 1 89 3 205 1 90 10 193 1 109 10 193 1 112 10 193 1 113 10 193 1 115 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 197 1 71 10 197 1 72 10 197 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 197 1 89 3 205 1 90 10 197 1 109 10 197 1 112 10 197 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 10 201 0 48 4 209 0 49 4 213 0 52 4 217 0 55 4 221 0 60 4 225 0 65 4 229 0 76 4 233 0 86 4 237 0 94 4 241 0 98 4 245 0 113 4 249 0 117 4 253 0 121 10 205 0 124 5 1 0 129 5 5 0 130 5 9 0 134 5 13 0 153 5 17 0 188 10 225 0 247 10 225 1 4 10 225 1 5 1 253 1 6 10 221 1 44 10 225 1 47] 
#[1 10 229 0 15 4 202 0 38 10 233 0 215 10 237 0 216] 
#[1 10 241 0 8 0 141 0 46 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 4 206 0 151 10 245 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 10 249 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 10 253 0 247 1 205 0 249 1 205 0 250 11 1 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 11 5 1 11 1 205 1 12 1 205 1 13 1 205 1 14 10 249 1 26 1 205 1 27 1 205 1 28 11 9 1 30 11 13 1 31 11 17 1 32 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 1 205 1 49 11 21 1 52 1 205 1 54 1 205 1 74 1 205 2 137 3 17 2 138 1 205 2 152 1 205 2 155] 
#[1 1 239 0 8 1 70 0 10 1 70 0 35 0 119 0 37 0 119 0 144] 
#[1 11 25 0 8 11 29 0 144 11 33 1 16 11 33 1 17 11 33 1 23] 
#[1 1 130 0 8 1 243 0 144 11 49 2 70] 
#[1 11 53 0 37 6 161 0 213 6 165 0 214] 
#[1 11 45 0 144 11 57 2 70] 
#[0 11 61 0 8] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 4 218 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 136 0 138 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 11 65 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 65 1 71 11 65 1 72 11 65 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 65 1 89 3 205 1 90 11 65 1 109 11 65 1 112 11 65 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 73 0 25] 
#[0 4 222 0 25] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 76 1 169 0 86 1 169 0 94 1 169 0 113 1 169 0 117 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 6 33 0 153 1 141 0 188 1 181 0 190 1 141 0 191 6 41 0 194 6 41 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 11 77 2 148 11 77 2 150 3 49 2 172] 
#[1 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 15 1 22 0 20 6 117 0 24 1 22 0 25 6 121 0 26 1 22 0 35 1 22 0 37 1 22 0 38 1 22 0 141 1 22 0 144 10 105 0 218 10 105 0 248] 
#[0 1 70 0 9 0 10 0 35 0 37] 
#[1 4 226 0 9 6 149 0 10 4 226 0 37 6 153 2 149] 
#[0 4 230 0 9 0 37] 
#[0 11 81 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 85 1 71 11 85 1 72 11 85 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 85 1 89 3 205 1 90 11 85 1 109 11 85 1 112 11 85 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 89 0 25] 
#[1 1 247 0 54 11 97 0 74 11 101 1 187 11 105 1 188 11 109 1 189 11 113 1 190 11 117 1 196] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 11 121 0 153 1 141 0 188 1 137 0 190 1 141 0 191 11 125 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 11 125 0 207 1 189 0 208 11 125 0 210 1 197 0 211 11 129 1 34 3 9 1 210 3 25 2 148 11 133 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 137 1 71 11 137 1 72 11 137 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 137 1 89 3 205 1 90 11 137 1 109 11 137 1 112 11 137 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 4 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 4 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 1 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 11 141 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 11 141 0 207 1 189 0 208 11 141 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 157 1 71 11 157 1 72 11 157 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 157 1 89 3 205 1 90 11 157 1 109 11 157 1 112 11 157 1 113 11 157 1 134 2 153 1 135 2 157 1 137 11 157 1 139 2 165 1 144 3 221 1 148 11 153 1 149 11 157 1 201 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 161 1 71 11 161 1 72 11 161 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 161 1 89 3 205 1 90 11 161 1 109 11 161 1 112 11 161 1 113 11 161 1 115 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 165 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 11 169 1 71 11 169 1 72 11 169 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 11 169 1 89 3 205 1 90 11 169 1 109 11 169 1 112 11 169 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 4 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 11 173 0 151] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 4 250 0 151 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 11 177 1 116 11 177 1 117 11 177 1 118 11 177 1 121 11 177 1 122 11 177 1 123 11 177 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 11 177 1 156 2 181 1 157 11 177 1 158 11 177 1 159 11 177 1 160 11 177 1 168 11 177 1 169 11 177 1 170 11 177 1 171 11 177 1 179 11 177 1 180 11 177 1 181 11 177 1 182 11 177 1 183 11 177 1 184 11 177 1 185 11 177 1 186 11 177 1 197 11 177 1 198 11 177 1 199 11 177 1 200 11 177 1 202 3 9 1 210 1 205 2 137 3 17 2 138 11 177 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 11 177 2 156 3 49 2 172] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 11 181 1 116 11 181 1 117 11 181 1 118 11 181 1 121 11 181 1 122 11 181 1 123 11 181 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 11 181 1 156 2 181 1 157 11 181 1 158 11 181 1 159 11 181 1 160 11 181 1 168 11 181 1 169 11 181 1 170 11 181 1 171 11 181 1 179 11 181 1 180 11 181 1 181 11 181 1 182 11 181 1 183 11 181 1 184 11 181 1 185 11 181 1 186 11 181 1 197 11 181 1 198 11 181 1 199 11 181 1 200 11 181 1 202 3 9 1 210 1 205 2 137 3 17 2 138 11 181 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 11 181 2 156 3 49 2 172] 
#[0 11 185 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 11 197 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 11 197 0 207 1 189 0 208 11 197 0 210 1 197 0 211 11 193 0 219 11 197 0 220 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 5 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 251 0 1 1 251 0 2 5 10 0 3 5 10 0 4 1 251 0 5 1 251 0 6 5 10 0 7 1 251 0 8 1 251 0 9 1 251 0 10 5 10 0 11 1 251 0 12 1 251 0 13 5 10 0 14 1 251 0 15 1 251 0 16 1 251 0 17 5 10 0 18 5 10 0 19 1 251 0 20 5 10 0 21 5 10 0 22 1 251 0 23 1 251 0 25 1 251 0 26 5 10 0 27 5 10 0 28 1 251 0 29 5 10 0 30 1 251 0 31 1 251 0 33 5 10 0 34 1 251 0 35 1 251 0 36 1 251 0 37 1 251 0 38 1 251 0 39 5 10 0 40 1 251 0 44 1 251 0 45 1 251 0 46 1 251 0 47 1 251 0 48 1 251 0 49 1 251 0 50 1 251 0 51 1 251 0 52 1 251 0 53 1 251 0 55 1 251 0 56 1 251 0 58 1 251 0 59 1 251 0 60 1 251 0 61 1 251 0 62 1 251 0 63 1 251 0 64 1 251 0 65 1 251 0 66 1 251 0 67 1 251 0 69 1 251 0 73 1 251 0 75 1 251 0 76 1 251 0 77 1 251 0 78 1 251 0 79 1 251 0 81 1 251 0 82 1 251 0 83 1 251 0 86 1 251 0 89 1 251 0 90 1 251 0 91 1 251 0 92 1 251 0 93 1 251 0 94 1 251 0 95 1 251 0 97 1 251 0 98 1 251 0 99 1 251 0 101 1 251 0 110 1 251 0 112 1 251 0 113 1 251 0 115 1 251 0 117 1 251 0 118 1 251 0 119 1 251 0 120 1 251 0 121 1 251 0 123 1 251 0 124 1 251 0 125 1 251 0 126 1 251 0 127 1 251 0 128 1 251 0 129 1 251 0 130 1 251 0 131 1 251 0 133 1 251 0 134 1 251 0 135 1 251 0 136 1 251 0 138 1 251 0 140 1 251 0 141 1 251 0 142 1 251 0 143 1 251 0 144 1 251 0 145 5 10 0 146 1 251 0 147 1 251 0 148 1 251 0 149 5 10 0 150 1 251 0 151 1 251 0 153 1 251 0 154 1 251 0 155 1 251 0 156 1 251 0 157 1 251 0 158 1 251 0 159 1 251 0 160 1 251 0 161 1 251 0 162 1 251 0 163 1 251 0 164 1 251 0 165 1 251 0 166 1 251 2 173] 
#[0 11 201 0 153] 
#[1 5 14 0 9 5 14 0 15 5 14 0 25 11 205 0 30] 
#[0 5 18 0 9 0 25] 
#[1 5 22 0 9 5 22 0 15 5 22 0 25 11 209 1 142] 
#[0 5 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 30 0 1 5 30 0 2 5 30 0 5 5 30 0 6 5 30 0 8 5 30 0 9 1 255 0 10 5 30 0 12 5 30 0 13 5 30 0 15 5 30 0 16 5 30 0 17 5 30 0 23 5 30 0 25 5 30 0 26 5 30 0 29 5 30 0 31 5 30 0 33 5 30 0 35 5 30 0 36 5 30 0 37 5 30 0 38 5 30 0 39 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 5 30 0 48 5 30 0 49 5 30 0 50 5 30 0 51 5 30 0 52 5 30 0 53 5 30 0 55 5 30 0 56 5 30 0 58 5 30 0 59 5 30 0 60 5 30 0 61 5 30 0 62 5 30 0 63 5 30 0 64 5 30 0 65 5 30 0 66 5 30 0 67 5 30 0 69 5 30 0 73 5 30 0 75 5 30 0 76 5 30 0 77 5 30 0 78 5 30 0 79 5 30 0 81 5 30 0 82 5 30 0 83 5 30 0 86 5 30 0 89 5 30 0 90 5 30 0 91 5 30 0 92 5 30 0 93 5 30 0 94 5 30 0 95 5 30 0 97 5 30 0 98 5 30 0 99 5 30 0 100 5 30 0 101 5 30 0 110 5 30 0 112 5 30 0 113 5 30 0 115 5 30 0 117 5 30 0 118 5 30 0 119 5 30 0 120 5 30 0 121 5 30 0 123 5 30 0 124 5 30 0 125 5 30 0 126 5 30 0 127 5 30 0 128 5 30 0 129 5 30 0 130 5 30 0 131 5 30 0 133 5 30 0 134 5 30 0 135 5 30 0 136 5 30 0 138 5 30 0 140 5 30 0 141 5 30 0 142 5 30 0 143 5 30 0 144 5 30 0 145 5 30 0 147 5 30 0 148 5 30 0 149 5 30 0 151 5 30 0 153 5 30 0 154 5 30 0 155 5 30 0 156 5 30 0 157 5 30 0 158 5 30 0 159 5 30 0 160 5 30 0 161 5 30 0 162 5 30 0 163 5 30 0 164 5 30 0 165 5 30 0 166 5 30 2 173] 
#[0 5 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 38 0 1 5 38 0 2 5 38 0 5 5 38 0 6 5 38 0 8 5 38 0 9 5 38 0 10 5 38 0 12 5 38 0 13 5 38 0 15 5 38 0 16 5 38 0 17 5 38 0 23 5 38 0 25 5 38 0 26 5 38 0 29 5 38 0 31 5 38 0 33 5 38 0 35 5 38 0 36 5 233 0 37 5 38 0 38 5 38 0 39 5 38 0 44 5 38 0 45 5 38 0 46 5 38 0 47 5 38 0 48 5 38 0 49 5 38 0 50 5 38 0 51 5 38 0 52 5 38 0 53 5 38 0 55 5 38 0 56 5 38 0 58 5 38 0 59 5 38 0 60 5 38 0 61 5 38 0 62 5 38 0 63 5 38 0 64 5 38 0 65 5 38 0 66 5 38 0 67 5 38 0 69 5 38 0 73 5 38 0 75 5 38 0 76 5 38 0 77 5 38 0 78 5 38 0 79 5 38 0 81 5 38 0 82 5 38 0 83 5 38 0 86 5 38 0 89 5 38 0 90 5 38 0 91 5 38 0 92 5 38 0 93 5 38 0 94 5 38 0 95 5 38 0 97 5 38 0 98 5 38 0 99 5 38 0 100 5 38 0 101 5 38 0 110 5 38 0 112 5 38 0 113 5 38 0 115 5 38 0 117 5 38 0 118 5 38 0 119 5 38 0 120 5 38 0 121 5 38 0 123 5 38 0 124 5 38 0 125 5 38 0 126 5 38 0 127 5 38 0 128 5 38 0 129 5 38 0 130 5 38 0 131 5 38 0 133 5 38 0 134 5 38 0 135 5 38 0 136 5 38 0 138 5 38 0 140 5 38 0 141 5 38 0 142 5 38 0 143 5 38 0 144 5 38 0 145 5 38 0 147 5 38 0 148 5 38 0 149 5 38 0 151 5 38 0 153 5 38 0 154 5 38 0 155 5 38 0 156 5 38 0 157 5 38 0 158 5 38 0 159 5 38 0 160 5 38 0 161 5 38 0 162 5 38 0 163 5 38 0 164 5 38 0 165 5 38 0 166 11 217 0 214 5 38 2 173] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 11 225 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 245 0 153] 
#[0 11 249 0 153] 
#[0 11 253 0 20] 
#[0 12 1 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 12 5 1 9 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 93 1 71 10 93 1 72 10 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 93 1 89 3 205 1 90 10 93 1 109 10 93 1 112 10 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 12 9 0 240 12 13 0 241 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 17 1 71 12 17 1 72 12 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 17 1 89 3 205 1 90 12 17 1 109 12 17 1 112 12 17 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 12 21 0 241 1 221 0 244 1 225 0 245 12 25 0 246 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 17 1 71 12 17 1 72 12 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 17 1 89 3 205 1 90 12 17 1 109 12 17 1 112 12 17 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 12 29 0 153] 
#[0 12 33 0 153] 
#[0 5 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 66 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 70 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 74 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 5 90 0 1 5 90 0 5 5 90 0 8 5 90 0 10 5 90 0 12 5 90 0 13 5 90 0 16 5 90 0 17 5 90 0 46 5 90 0 47 5 90 0 48 5 90 0 49 5 90 0 52 5 90 0 55 5 90 0 56 5 90 0 60 5 90 0 61 5 90 0 62 5 90 0 65 5 90 0 66 5 90 0 73 5 90 0 76 5 90 0 79 5 90 0 86 5 90 0 94 5 90 0 95 5 90 0 97 5 90 0 98 12 37 0 110 5 90 0 113 5 90 0 117 5 90 0 118 5 90 0 119 5 90 0 121 5 90 0 124 5 90 0 125 5 90 0 126 5 90 0 128 5 90 0 129 5 90 0 130 5 90 0 131 5 90 0 134 5 90 0 136 5 90 0 138 5 90 0 148 5 90 0 153 5 90 0 154 5 90 0 155 5 90 0 156 5 90 0 157 5 90 0 158 5 90 0 161 5 90 0 162 5 90 0 165 5 90 0 166] 
#[0 5 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 5 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 41 1 71 12 41 1 72 12 41 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 41 1 89 3 205 1 90 12 41 1 109 12 41 1 112 12 41 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 12 45 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 12 49 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[0 12 53 0 110] 
#[0 5 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 114 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 110 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 4 58 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 94 0 98 0 110 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 148 0 153] 
#[0 5 118 0 110 0 120 0 133] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 12 61 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 12 61 0 207 1 189 0 208 12 61 0 210 1 197 0 211 3 9 1 210 12 61 1 248 3 25 2 148 3 49 2 172] 
#[0 5 122 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 110 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 2 69 1 49 12 65 1 53 2 77 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 69 1 71 12 69 1 72 12 69 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 69 1 89 3 205 1 90 12 69 1 109 12 69 1 112 12 69 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 5 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 134 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 5 138 0 153] 
#[0 5 142 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 5 146 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[1 12 73 0 153 12 77 1 129] 
#[1 6 149 0 10 5 150 0 153 7 113 2 149] 
#[0 5 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 12 81 0 153 12 85 1 136 12 89 1 145] 
#[1 12 81 0 153 12 93 1 136] 
#[0 12 97 0 30] 
#[0 5 158 0 9 0 25] 
#[0 5 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 5 166 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 5 170 0 1 5 170 0 2 5 170 0 5 5 170 0 6 5 170 0 8 5 170 0 9 2 7 0 10 5 170 0 12 5 170 0 13 5 170 0 15 5 170 0 16 5 170 0 17 5 170 0 23 5 170 0 25 5 170 0 26 5 170 0 29 5 170 0 31 5 170 0 33 5 170 0 35 5 170 0 36 5 170 0 37 5 170 0 38 5 170 0 39 5 170 0 44 5 170 0 45 5 170 0 46 5 170 0 47 5 170 0 48 5 170 0 49 5 170 0 50 5 170 0 51 5 170 0 52 5 170 0 53 5 170 0 55 5 170 0 56 5 170 0 58 5 170 0 59 5 170 0 60 5 170 0 61 5 170 0 62 5 170 0 63 5 170 0 64 5 170 0 65 5 170 0 66 5 170 0 67 5 170 0 69 5 170 0 73 5 170 0 75 5 170 0 76 5 170 0 77 5 170 0 78 5 170 0 79 5 170 0 81 5 170 0 82 5 170 0 83 5 170 0 86 5 170 0 89 5 170 0 90 5 170 0 91 5 170 0 92 5 170 0 93 5 170 0 94 5 170 0 95 5 170 0 97 5 170 0 98 5 170 0 99 5 170 0 100 5 170 0 101 5 170 0 110 5 170 0 112 5 170 0 113 5 170 0 115 5 170 0 117 5 170 0 118 5 170 0 119 5 170 0 120 5 170 0 121 5 170 0 123 5 170 0 124 5 170 0 125 5 170 0 126 5 170 0 127 5 170 0 128 5 170 0 129 5 170 0 130 5 170 0 131 5 170 0 133 5 170 0 134 5 170 0 135 5 170 0 136 5 170 0 138 5 170 0 140 5 170 0 141 5 170 0 142 5 170 0 143 5 170 0 144 5 170 0 145 5 170 0 147 5 170 0 148 5 170 0 149 5 170 0 151 5 170 0 153 5 170 0 154 5 170 0 155 5 170 0 156 5 170 0 157 5 170 0 158 5 170 0 159 5 170 0 160 5 170 0 161 5 170 0 162 5 170 0 163 5 170 0 164 5 170 0 165 5 170 0 166 5 170 2 173] 
#[0 5 174 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 5 178 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 5 182 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 12 101 0 9] 
#[1 5 186 0 9 12 105 0 15] 
#[0 5 190 0 9 0 15] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 12 109 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 12 109 0 207 1 189 0 208 12 109 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 5 194 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 12 113 0 9] 
#[1 5 198 0 9 12 117 0 15] 
#[1 5 202 0 9 5 202 0 15 3 54 0 32] 
#[1 2 214 0 8 0 167 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 76 7 141 0 85 2 214 0 86 2 214 0 94 2 214 0 98 7 141 0 102 7 141 0 110 2 214 0 113 2 214 0 117 2 214 0 121 2 214 0 129 2 214 0 130 2 214 0 134 2 214 0 138 2 11 0 153 7 129 1 78 7 133 1 79 7 137 1 80 7 141 1 81 7 141 1 82 7 149 1 84 7 153 1 85 12 121 1 86] 
#[0 2 230 0 9 0 15 0 32] 
#[0 12 125 0 32] 
#[0 12 129 0 153] 
#[0 5 206 0 153] 
#[0 2 238 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 5 210 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 12 133 1 48 1 205 1 49 1 205 1 54 12 133 1 55 12 133 1 56 12 133 1 57 12 133 1 58 1 205 1 74 1 205 2 137 3 17 2 138 12 133 2 151 1 205 2 152 12 133 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 12 137 1 48 1 205 1 49 1 205 1 54 12 137 1 55 12 137 1 56 12 137 1 57 12 137 1 58 1 205 1 74 1 205 2 137 3 17 2 138 12 137 2 151 1 205 2 152 12 137 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 12 141 1 48 1 205 1 49 1 205 1 54 12 141 1 55 12 141 1 56 12 141 1 57 12 141 1 58 1 205 1 74 1 205 2 137 3 17 2 138 12 141 2 151 1 205 2 152 12 141 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 12 145 1 48 1 205 1 49 1 205 1 54 12 145 1 55 12 145 1 56 12 145 1 57 12 145 1 58 12 145 1 59 1 205 1 74 1 205 2 137 3 17 2 138 12 145 2 151 1 205 2 152 12 145 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 12 149 1 48 1 205 1 49 1 205 1 54 12 149 1 55 12 149 1 56 12 149 1 57 12 149 1 58 12 149 1 59 1 205 1 74 1 205 2 137 3 17 2 138 12 149 2 151 1 205 2 152 12 149 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 12 153 1 60 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 12 157 1 60 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 12 161 1 61 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 12 165 1 61 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 12 169 1 61 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 12 173 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 12 173 0 207 1 189 0 208 12 173 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 12 177 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 12 177 0 207 1 189 0 208 12 177 0 210 1 197 0 211 12 181 0 222 12 181 0 223 12 181 0 225 12 181 0 226 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 181 1 71 12 181 1 72 12 181 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 181 1 89 3 205 1 90 12 181 1 109 12 181 1 112 12 181 1 113 12 181 1 114 3 221 1 148 12 201 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 12 205 1 61 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 12 209 1 62 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 12 213 1 62 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 12 217 1 63 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 12 221 1 64 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 12 225 1 65 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 12 229 1 66 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 12 233 1 69 12 233 1 70 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 12 237 1 67 1 205 1 74 1 205 2 137 3 17 2 138 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 12 241 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 249 1 71 12 249 1 72 12 249 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 245 1 88 12 249 1 89 3 205 1 90 12 249 1 109 12 249 1 112 12 249 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 12 241 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 93 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 2 69 1 49 13 1 1 53 2 77 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 13 1 1 71 13 1 1 72 13 1 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 13 1 1 87 13 1 1 88 13 1 1 89 3 205 1 90 13 1 1 109 13 1 1 112 13 1 1 113 13 1 1 118 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 0 243 0 153 1 141 0 188 1 137 0 190 1 141 0 191 13 17 0 192 13 17 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 13 17 0 207 1 189 0 208 13 17 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 13 21 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 13 33 1 71 13 33 1 72 13 33 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 13 33 1 89 3 205 1 90 13 25 1 100 13 29 1 101 13 33 1 109 13 33 1 112 13 33 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 13 37 1 71 13 37 1 72 13 37 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 13 37 1 89 3 205 1 90 13 37 1 109 13 37 1 112 13 37 1 113 13 37 1 115 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 5 214 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 13 41 0 82 13 45 0 115 13 49 1 104 13 53 1 105 13 57 1 106] 
#[1 3 65 0 79 5 222 0 82 8 25 0 91 8 29 0 92 8 33 0 101 5 222 0 115 8 37 0 141 8 41 1 90 13 61 1 94 8 61 1 95 8 65 1 96 8 69 1 97 8 73 1 98 8 77 1 99] 
#[0 5 226 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 230 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 234 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 238 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 242 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 246 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 5 250 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 5 254 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 13 65 0 110] 
#[0 6 2 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 6 6 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 6 10 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 2 69 1 49 13 69 1 53 2 77 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 13 73 1 71 13 73 1 72 13 73 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 13 73 1 89 3 205 1 90 13 73 1 109 13 73 1 112 13 73 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 6 14 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 6 18 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 2 15 0 8 2 19 0 41 6 26 0 46 2 15 0 49 2 15 0 52 2 15 0 55 3 198 0 57 2 15 0 60 2 15 0 65 2 15 0 66 6 34 0 70 2 23 0 72 2 15 0 76 2 15 0 86 2 19 0 88 2 15 0 94 2 19 0 97 2 15 0 98 2 23 0 103 2 27 0 105 2 19 0 106 2 19 0 107 2 19 0 108 2 31 0 110 2 15 0 113 2 19 0 114 2 15 0 117 2 35 0 120 2 15 0 121 2 15 0 129 2 15 0 130 2 19 0 133 2 15 0 134 2 23 0 137 2 15 0 138 2 15 0 153] 
#[0 6 38 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 2 39 0 8 2 43 0 41 6 42 0 46 2 39 0 49 2 39 0 52 2 39 0 55 2 39 0 60 2 39 0 65 2 39 0 66 6 58 0 70 6 50 0 71 2 47 0 72 2 39 0 76 6 50 0 84 2 39 0 86 2 51 0 88 2 39 0 94 2 43 0 97 2 39 0 98 2 43 0 103 6 42 0 105 2 51 0 106 2 51 0 107 2 47 0 108 2 55 0 110 2 39 0 113 2 43 0 114 2 39 0 117 2 59 0 120 2 39 0 121 2 39 0 129 2 39 0 130 2 63 0 133 2 39 0 134 2 43 0 137 2 39 0 138 6 66 0 148 2 67 0 153 13 81 2 146] 
#[1 2 71 0 8 2 75 0 41 6 82 0 46 2 71 0 49 2 71 0 52 2 71 0 55 3 202 0 57 6 90 0 58 2 71 0 60 3 206 0 62 2 71 0 65 2 71 0 66 3 210 0 68 6 86 0 70 2 79 0 72 2 71 0 76 2 71 0 86 3 214 0 87 2 83 0 88 2 71 0 94 2 87 0 97 2 71 0 98 2 91 0 103 2 95 0 105 2 83 0 106 2 83 0 107 2 83 0 108 2 99 0 109 2 103 0 110 2 71 0 113 2 75 0 114 2 71 0 117 2 107 0 120 2 71 0 121 3 218 0 122 2 71 0 129 2 71 0 130 2 111 0 133 2 71 0 134 2 91 0 137 2 71 0 138 6 70 0 139 2 115 0 153] 
#[1 2 119 0 8 2 123 0 41 6 110 0 46 2 119 0 49 2 119 0 52 2 119 0 55 3 222 0 57 6 118 0 58 2 119 0 60 3 226 0 62 2 119 0 65 2 119 0 66 3 230 0 68 6 114 0 70 2 127 0 72 2 119 0 76 2 119 0 86 3 234 0 87 2 131 0 88 2 119 0 94 2 131 0 97 2 119 0 98 2 127 0 103 2 135 0 105 2 131 0 106 2 131 0 107 2 131 0 108 2 139 0 109 2 143 0 110 2 119 0 113 2 123 0 114 2 119 0 117 2 147 0 120 2 119 0 121 3 238 0 122 2 119 0 129 2 119 0 130 2 151 0 133 2 119 0 134 2 127 0 137 2 119 0 138 6 106 0 139 2 119 0 153] 
#[1 2 155 0 8 2 159 0 41 6 130 0 46 2 155 0 49 2 155 0 52 2 155 0 55 2 155 0 60 2 155 0 65 2 155 0 66 6 134 0 70 2 159 0 72 2 155 0 76 2 155 0 86 2 159 0 88 2 155 0 94 2 159 0 97 2 155 0 98 2 159 0 103 6 130 0 105 2 159 0 106 2 159 0 107 2 159 0 108 2 163 0 110 2 155 0 113 2 159 0 114 2 155 0 117 2 167 0 120 2 155 0 121 2 155 0 129 2 155 0 130 2 159 0 133 2 155 0 134 2 159 0 137 2 155 0 138 2 155 0 153] 
#[1 2 171 0 8 2 175 0 41 6 142 0 46 2 171 0 49 2 171 0 52 2 171 0 55 3 242 0 57 6 158 0 58 2 171 0 60 3 246 0 62 2 171 0 65 2 171 0 66 3 250 0 68 6 154 0 70 2 179 0 72 2 171 0 76 2 171 0 86 3 254 0 87 2 183 0 88 2 171 0 94 2 187 0 97 2 171 0 98 2 191 0 103 2 195 0 105 2 183 0 106 2 183 0 107 2 183 0 108 2 199 0 109 2 203 0 110 2 171 0 113 2 175 0 114 2 171 0 117 2 207 0 120 2 171 0 121 4 2 0 122 2 171 0 129 2 171 0 130 2 211 0 133 2 171 0 134 2 191 0 137 2 171 0 138 6 138 0 139 2 215 0 153] 
#[1 2 219 0 8 2 223 0 41 6 174 0 46 2 219 0 49 2 219 0 52 2 219 0 55 4 6 0 57 6 186 0 58 2 219 0 60 4 10 0 62 2 219 0 65 2 219 0 66 4 14 0 68 6 182 0 70 2 227 0 72 2 219 0 76 2 219 0 86 4 18 0 87 2 231 0 88 2 219 0 94 2 235 0 97 2 219 0 98 2 239 0 103 2 243 0 105 2 231 0 106 2 231 0 107 2 231 0 108 2 247 0 109 2 251 0 110 2 219 0 113 2 223 0 114 2 219 0 117 2 255 0 120 2 219 0 121 4 22 0 122 2 219 0 129 2 219 0 130 3 3 0 133 2 219 0 134 2 239 0 137 2 219 0 138 6 166 0 139 3 7 0 153] 
#[1 3 11 0 8 3 15 0 41 6 198 0 46 3 11 0 49 3 11 0 52 3 11 0 55 4 26 0 57 6 218 0 58 3 11 0 60 4 30 0 62 3 11 0 65 3 11 0 66 4 34 0 68 6 214 0 70 6 210 0 71 3 19 0 72 3 11 0 76 6 210 0 84 3 11 0 86 4 38 0 87 3 23 0 88 3 11 0 94 3 27 0 97 3 11 0 98 3 31 0 103 3 35 0 105 3 23 0 106 3 23 0 107 3 39 0 108 3 43 0 109 3 47 0 110 3 11 0 113 3 15 0 114 3 11 0 117 3 51 0 120 3 11 0 121 4 42 0 122 3 11 0 129 3 11 0 130 3 55 0 133 3 11 0 134 3 31 0 137 3 11 0 138 6 206 0 139 3 59 0 153] 
#[1 6 226 0 8 6 226 0 49 6 226 0 52 6 226 0 55 6 226 0 60 6 226 0 65 6 226 0 66 6 226 0 76 6 226 0 86 3 63 0 88 6 226 0 94 3 63 0 97 6 226 0 98 4 46 0 105 3 63 0 106 3 63 0 107 3 63 0 108 3 63 0 109 4 46 0 110 6 226 0 113 6 226 0 117 6 226 0 120 6 226 0 121 4 46 0 122 6 226 0 129 6 226 0 130 3 63 0 133 6 226 0 134 6 226 0 138 6 226 0 139 6 226 0 153] 
#[1 3 67 0 8 3 71 0 41 6 238 0 46 3 67 0 49 3 67 0 52 3 67 0 55 4 50 0 57 3 67 0 60 3 67 0 65 3 67 0 66 6 242 0 70 3 75 0 72 3 67 0 76 3 67 0 86 3 71 0 88 3 67 0 94 3 71 0 97 3 67 0 98 3 75 0 103 3 79 0 105 3 71 0 106 3 71 0 107 3 71 0 108 3 83 0 110 3 67 0 113 3 71 0 114 3 67 0 117 3 87 0 120 3 67 0 121 3 67 0 129 3 67 0 130 3 71 0 133 3 67 0 134 3 75 0 137 3 67 0 138 3 67 0 153] 
#[1 3 91 0 8 3 95 0 41 6 246 0 46 3 91 0 49 3 91 0 52 3 91 0 55 4 54 0 57 3 91 0 60 3 91 0 65 3 91 0 66 7 6 0 70 6 250 0 71 3 99 0 72 3 91 0 76 6 250 0 84 3 91 0 86 3 103 0 88 3 91 0 94 3 103 0 97 3 91 0 98 3 107 0 103 3 111 0 105 3 103 0 106 3 103 0 107 3 115 0 108 7 2 0 109 6 254 0 110 3 91 0 113 3 95 0 114 3 91 0 117 3 115 0 120 3 91 0 121 3 91 0 129 3 91 0 130 3 119 0 133 3 91 0 134 3 107 0 137 3 91 0 138 7 2 0 139 3 123 0 153 13 89 2 146] 
#[1 3 127 0 8 3 131 0 41 7 14 0 46 3 127 0 49 3 127 0 52 3 127 0 55 1 195 0 57 3 127 0 60 1 199 0 62 3 127 0 65 3 127 0 66 3 135 0 70 3 139 0 71 3 143 0 72 3 127 0 76 3 139 0 84 3 127 0 86 1 203 0 87 3 147 0 88 3 127 0 94 3 151 0 97 3 127 0 98 3 155 0 103 3 159 0 105 3 147 0 106 3 147 0 107 3 163 0 108 3 167 0 109 3 171 0 110 3 127 0 113 3 131 0 114 3 127 0 117 3 175 0 120 3 127 0 121 1 215 0 122 3 127 0 129 3 127 0 130 3 163 0 133 3 127 0 134 3 155 0 137 3 127 0 138 3 179 0 139 4 58 0 148 3 183 0 153] 
#[1 3 187 0 8 3 191 0 41 7 42 0 46 3 187 0 49 3 187 0 52 3 187 0 55 3 187 0 60 3 187 0 65 3 187 0 66 7 54 0 70 3 191 0 72 3 187 0 76 3 187 0 86 3 191 0 88 3 187 0 94 3 191 0 97 3 187 0 98 3 191 0 103 7 42 0 105 3 191 0 106 3 191 0 107 3 191 0 108 3 195 0 110 3 187 0 113 3 191 0 114 3 187 0 117 3 199 0 120 3 187 0 121 3 187 0 129 3 187 0 130 3 191 0 133 3 187 0 134 3 191 0 137 3 187 0 138 3 187 0 153] 
#[0 7 58 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 13 93 0 58] 
#[1 7 62 0 58 13 117 0 88 13 117 0 97 13 117 0 106 13 117 0 107 13 117 0 108 13 117 1 229] 
#[0 7 66 0 58 0 88 0 97 0 106 0 107 0 108] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 13 121 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 13 121 0 207 1 189 0 208 13 121 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 7 70 0 8 7 70 0 49 7 70 0 52 7 70 0 55 7 70 0 60 7 70 0 65 7 70 0 66 7 70 0 76 7 70 0 86 13 157 0 88 7 70 0 94 13 157 0 97 7 70 0 98 13 157 0 106 13 157 0 107 13 157 0 108 13 157 0 109 7 70 0 113 7 70 0 117 13 157 0 120 7 70 0 121 7 70 0 129 7 70 0 130 13 153 0 133 7 70 0 134 7 70 0 138 13 157 0 139 7 70 0 153 13 157 1 235 13 157 2 146] 
#[0 7 74 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[1 13 213 0 41 13 213 0 72 13 213 0 88 13 213 0 97 13 213 0 103 13 213 0 106 13 213 0 107 13 213 0 108 1 1 0 110 13 213 0 114 13 213 0 120 13 213 0 137 13 209 1 137 13 213 1 246] 
#[1 4 78 0 8 4 78 0 49 4 78 0 52 4 78 0 55 4 78 0 60 4 78 0 65 4 78 0 66 4 78 0 76 4 78 0 86 4 78 0 94 4 78 0 98 13 217 0 105 4 78 0 113 4 78 0 117 4 78 0 121 4 78 0 129 4 78 0 130 4 78 0 134 4 78 0 138 4 78 0 153 13 217 2 141] 
#[1 7 78 0 8 13 225 0 41 13 225 0 46 7 78 0 49 7 78 0 52 7 78 0 55 7 78 0 60 7 78 0 65 7 78 0 66 13 225 0 72 7 78 0 76 7 78 0 86 13 225 0 88 7 78 0 94 13 225 0 97 7 78 0 98 13 225 0 103 7 78 0 105 13 225 0 106 13 225 0 107 13 225 0 108 7 78 0 113 13 225 0 114 7 78 0 117 13 225 0 120 7 78 0 121 7 78 0 129 7 78 0 130 13 225 0 133 7 78 0 134 13 225 0 137 7 78 0 138 7 78 0 153 13 225 1 245 13 225 1 246] 
#[0 7 82 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 86 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 1 0 110 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 13 229 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 13 229 0 207 1 189 0 208 13 229 0 210 1 197 0 211 13 233 1 137 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 7 90 0 8 14 29 0 41 7 90 0 49 7 90 0 52 7 90 0 55 7 90 0 60 7 90 0 65 7 90 0 66 14 29 0 72 7 90 0 76 7 90 0 86 14 29 0 88 7 90 0 94 14 29 0 97 7 90 0 98 14 29 0 103 14 29 0 106 14 29 0 107 14 29 0 108 7 90 0 110 7 90 0 113 14 29 0 114 7 90 0 117 14 29 0 120 7 90 0 121 7 90 0 129 7 90 0 130 14 21 0 133 7 90 0 134 14 29 0 137 7 90 0 138 7 90 0 153 14 29 2 9 14 29 2 146] 
#[0 7 94 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 14 37 0 70] 
#[1 14 89 0 41 7 98 0 70 14 89 0 72 14 89 0 88 14 89 0 97 14 89 0 103 14 89 0 106 14 89 0 107 14 89 0 108 14 89 0 114 14 89 0 120 14 81 0 133 14 89 0 137 14 89 2 27 14 89 2 146] 
#[0 7 102 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 1 0 110 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 14 97 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 14 97 0 207 1 189 0 208 14 97 0 210 1 197 0 211 14 101 1 137 3 9 1 210 14 105 2 35 3 25 2 148 3 49 2 172] 
#[1 7 106 0 8 14 153 0 41 7 106 0 49 7 106 0 52 7 106 0 55 7 106 0 60 7 106 0 65 7 106 0 66 14 153 0 72 7 106 0 76 7 106 0 86 14 153 0 88 7 106 0 94 14 153 0 97 7 106 0 98 14 153 0 103 14 153 0 106 14 153 0 107 14 153 0 108 7 106 0 110 7 106 0 113 14 153 0 114 7 106 0 117 7 106 0 121 7 106 0 129 7 106 0 130 14 145 0 133 7 106 0 134 14 153 0 137 7 106 0 138 7 106 0 153 14 153 2 34 14 153 2 146] 
#[0 7 110 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 14 161 0 71 14 189 0 72 1 169 0 76 14 169 0 84 1 169 0 86 1 169 0 94 5 133 0 98 14 189 0 108 1 169 0 113 1 169 0 117 14 189 0 120 5 145 0 121 1 169 0 129 1 169 0 130 14 181 0 133 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 14 185 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 14 185 0 207 1 189 0 208 14 185 0 210 1 197 0 211 3 9 1 210 14 189 2 40 14 193 2 41 14 197 2 42 14 201 2 44 14 205 2 46 14 189 2 146 3 25 2 148 3 49 2 172] 
#[0 7 114 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[1 14 213 0 153 14 217 2 52] 
#[1 14 245 0 72 14 245 0 88 14 245 0 106 14 245 0 107 14 245 0 108 14 241 0 133 7 118 0 153 14 245 2 51 14 245 2 146] 
#[0 7 122 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 14 253 0 153] 
#[1 15 5 0 133 15 1 0 148 15 5 2 146] 
#[1 3 203 0 8 3 207 0 41 3 203 0 49 3 203 0 52 3 203 0 55 4 122 0 57 3 203 0 60 4 126 0 62 3 203 0 65 3 203 0 66 7 142 0 70 7 126 0 71 3 211 0 72 3 203 0 76 7 126 0 84 3 203 0 86 4 130 0 87 3 215 0 88 3 203 0 94 3 219 0 97 3 203 0 98 3 223 0 103 1 223 0 105 3 215 0 106 3 215 0 107 3 227 0 108 3 231 0 109 3 235 0 110 3 203 0 113 3 207 0 114 3 203 0 117 3 239 0 120 3 203 0 121 4 134 0 122 3 203 0 129 3 203 0 130 3 227 0 133 3 203 0 134 3 223 0 137 3 203 0 138 7 134 0 139 3 146 0 148 3 243 0 153 15 17 2 142] 
#[0 15 21 0 25] 
#[1 6 33 0 153 1 141 0 188 15 25 0 190 1 141 0 191] 
#[1 1 22 0 20 6 117 0 24 1 22 0 25 6 121 0 26 15 29 0 30 10 105 0 218 10 105 0 248] 
#[0 15 33 0 25] 
#[1 6 133 0 20 7 150 0 25] 
#[1 15 45 0 153 15 41 2 117 15 45 2 118] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 87 0 10 0 88 0 53 0 96 0 10 0 97 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 114 0 10 0 120 0 10 0 122 0 10 0 133 15 57 0 172 15 49 0 184 15 53 0 185 15 57 0 186 15 57 0 187 15 57 1 203 15 57 2 59 15 57 2 73 15 57 2 97 15 57 2 108 0 89 2 119 0 93 2 120 0 97 2 121 0 101 2 122 7 154 2 173] 
#[0 7 158 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 2 173] 
#[1 3 247 0 37 7 162 0 41 7 162 0 57 7 162 0 62 7 162 0 68 7 162 0 87 7 162 0 88 7 162 0 96 7 162 0 97 7 162 0 105 7 162 0 106 7 162 0 107 7 162 0 108 7 162 0 109 7 162 0 110 7 162 0 114 7 162 0 120 7 162 0 122 7 162 0 133 15 61 2 116 7 162 2 173] 
#[0 7 166 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 2 173] 
#[0 7 170 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 7 174 0 8 0 15 0 38] 
#[1 15 65 0 15 15 69 0 38] 
#[0 7 178 0 15 0 38] 
#[1 15 73 0 8 7 182 0 15 7 182 0 38 15 77 2 129 15 81 2 130] 
#[0 7 186 0 153] 
#[0 15 85 0 153] 
#[1 0 6 0 37 0 6 0 41 0 6 0 57 0 6 0 62 0 6 0 68 0 29 0 72 0 6 0 87 0 6 0 88 0 6 0 96 0 6 0 97 0 6 0 105 0 6 0 106 0 6 0 107 0 6 0 108 0 6 0 109 0 6 0 110 0 6 0 114 0 6 0 120 0 6 0 122 0 6 0 133 0 6 0 135 0 6 0 151 15 89 0 175 0 41 0 176 0 45 0 177] 
#[1 15 97 0 25 7 190 0 37 7 190 0 41 7 190 0 57 7 190 0 62 7 190 0 68 7 190 0 87 7 190 0 88 7 190 0 96 7 190 0 97 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 114 7 190 0 120 7 190 0 122 7 190 0 133 7 190 0 151 15 97 2 139 7 190 2 173] 
#[0 7 194 0 8 0 49 0 52 0 55 0 57 0 60 0 65 0 66 0 76 0 86 0 87 0 94 0 98 0 113 0 117 0 121 0 122 0 129 0 130 0 134 0 138 0 153] 
#[0 15 101 0 57] 
#[0 3 202 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 3 222 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 3 242 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 4 6 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 4 26 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 1 195 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 7 198 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[0 4 122 0 41 0 57 0 88 0 97 0 105 0 106 0 107 0 108 0 114 0 120 0 133] 
#[1 15 105 0 105 4 78 0 122 15 105 2 141] 
#[0 15 109 0 122] 
#[0 3 218 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 3 238 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 4 2 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 4 22 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 4 42 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 1 215 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 7 202 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 4 134 0 88 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 122 0 133] 
#[0 15 113 0 87] 
#[0 3 214 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 3 234 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 3 254 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 4 18 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 4 38 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 1 203 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 7 206 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 4 130 0 87 0 88 0 97 0 105 0 106 0 107 0 108 0 133] 
#[0 15 117 0 153] 
#[0 3 210 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 3 230 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 3 250 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 4 14 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 4 34 0 68 0 88 0 97 0 106 0 107 0 108] 
#[0 7 210 0 68 0 88 0 97 0 106 0 107 0 108] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 1 0 110 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 15 125 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 15 125 0 207 1 189 0 208 15 125 0 210 1 197 0 211 15 121 1 137 3 9 1 210 15 125 1 247 3 25 2 148 7 81 2 172] 
#[0 3 206 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 3 226 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 3 246 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 4 10 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 4 30 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 1 199 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 7 214 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 4 126 0 62 0 88 0 97 0 106 0 107 0 108 0 133] 
#[1 10 45 0 9 2 234 0 153] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 15 129 1 71 15 129 1 72 15 129 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 15 129 1 89 3 205 1 90 15 129 1 109 15 129 1 112 15 129 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 15 133 1 48 1 205 1 49 1 205 1 54 15 133 1 55 15 133 1 56 15 133 1 57 15 133 1 58 1 205 1 74 1 205 2 137 3 17 2 138 15 133 2 151 1 205 2 152 15 133 2 154 1 205 2 155] 
#[0 7 218 0 9 0 15] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 10 101 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 15 137 0 200 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 10 101 0 207 1 189 0 208 10 101 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 7 222 0 9 0 15] 
#[1 15 141 0 9 10 53 0 15 15 145 0 198] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 5 29 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 15 149 0 253 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 15 153 1 71 15 153 1 72 15 153 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 15 153 1 89 3 205 1 90 15 153 1 109 15 153 1 112 15 153 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 7 226 0 9 0 15] 
#[1 15 157 0 9 10 65 0 15 15 161 0 251] 
#[0 7 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 93 0 144 15 165 1 118] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 15 169 0 218 15 169 0 248 1 22 2 173] 
#[1 15 173 0 15 15 177 0 38] 
#[0 7 234 0 15 0 38 0 151] 
#[0 15 181 0 9] 
#[1 4 150 0 9 4 150 0 15 10 49 0 153] 
#[0 5 6 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 15 185 0 30] 
#[1 15 189 0 15 7 238 0 25] 
#[0 7 242 0 15 0 25] 
#[0 15 193 0 9] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 15 197 0 8] 
#[1 6 149 0 10 6 153 2 149] 
#[1 15 201 0 153 15 205 2 157 15 209 2 158] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 117 0 24 6 121 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 0 111 0 37 1 22 0 40 1 22 0 146 0 111 0 153 6 129 0 218 6 129 0 248] 
#[0 7 250 0 25] 
#[0 7 254 0 9 0 15 0 25] 
#[0 15 213 0 25] 
#[0 8 2 0 25] 
#[1 15 217 0 15 8 6 0 25] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 77 0 136 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 15 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 15 221 0 207 1 189 0 208 15 221 0 210 1 197 0 211 15 221 1 148 15 221 1 149 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 15 225 0 153] 
#[0 8 10 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 15 229 0 25] 
#[0 8 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 8 18 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 8 22 0 9 0 25 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 15 233 0 9] 
#[0 15 237 0 9] 
#[0 8 26 0 9 0 20] 
#[0 8 30 0 9 0 20] 
#[0 8 34 0 9 0 20] 
#[0 8 38 0 9 0 20] 
#[0 8 42 0 9 0 20] 
#[0 15 241 0 9] 
#[1 8 46 0 9 8 46 0 20 15 245 1 46] 
#[0 8 50 0 15 0 38] 
#[0 15 249 0 38] 
#[1 15 253 0 15 8 54 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 5 29 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 5 41 0 253 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 5 45 1 71 5 45 1 72 5 45 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 5 45 1 89 3 205 1 90 5 45 1 109 5 45 1 112 5 45 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 117 0 24 6 121 0 26 16 1 0 30 1 22 0 35 1 22 0 37 1 22 0 151 10 37 0 218 10 37 0 248] 
#[1 6 169 0 8 6 173 0 13 6 177 0 17 6 181 0 19 6 185 0 20 16 5 0 35] 
#[1 1 154 0 8 1 154 0 13 8 58 0 15 1 154 0 17 1 154 0 19 1 154 0 20 1 154 0 35 1 154 0 37 8 58 0 151] 
#[1 1 166 0 8 1 166 0 13 8 62 0 15 1 166 0 17 1 166 0 19 1 166 0 20 1 166 0 35 1 166 0 37 8 62 0 151] 
#[1 1 190 0 8 1 190 0 13 8 66 0 15 1 190 0 17 1 190 0 19 1 190 0 20 1 190 0 35 1 190 0 37 8 66 0 151] 
#[0 16 9 0 151] 
#[1 16 13 0 15 8 70 0 151] 
#[0 8 74 0 15 0 151] 
#[0 8 78 0 15 0 151] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 16 17 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 16 21 0 37 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 16 25 0 144 1 97 0 148 8 82 0 151 16 29 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 16 33 1 18 16 37 1 19 16 41 1 20 16 45 1 21 16 49 1 24 16 53 1 25 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 57 1 71 16 57 1 72 16 57 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 57 1 89 3 205 1 90 16 57 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155 3 49 2 172] 
#[0 8 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 11 45 0 144 1 97 0 148 8 98 0 151 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 65 1 71 16 65 1 72 16 65 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 65 1 89 3 205 1 90 16 65 1 109 16 65 1 112 16 65 1 113 3 221 1 148 3 221 1 149 3 9 1 210 16 65 1 238 16 65 2 70 16 73 2 71 16 77 2 72 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 10 229 0 15 0 129 0 16 0 133 0 17 4 202 0 38 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 10 233 0 215 10 237 0 216 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 16 81 1 9 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 93 1 71 10 93 1 72 10 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 93 1 89 3 205 1 90 10 93 1 109 10 93 1 112 10 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 85 1 71 16 85 1 72 16 85 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 85 1 89 3 205 1 90 16 85 1 109 16 85 1 112 16 85 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 8 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 16 89 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 93 1 71 16 93 1 72 16 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 93 1 89 3 205 1 90 16 93 1 109 16 93 1 112 16 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 16 97 0 9] 
#[0 8 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 16 101 0 8 16 105 0 140 16 109 1 192 16 113 1 194] 
#[1 1 93 0 144 16 117 1 118] 
#[1 8 126 0 1 8 126 0 5 8 126 0 8 8 126 0 10 8 126 0 12 8 126 0 13 8 126 0 16 8 126 0 17 8 126 0 25 8 126 0 46 8 126 0 47 8 126 0 48 8 126 0 49 8 126 0 50 8 126 0 52 8 126 0 53 8 126 0 55 8 126 0 56 8 126 0 58 8 126 0 59 8 126 0 60 8 126 0 61 8 126 0 62 8 126 0 64 8 126 0 65 8 126 0 66 8 126 0 67 8 126 0 73 11 97 0 74 8 126 0 75 8 126 0 76 8 126 0 77 8 126 0 78 8 126 0 81 8 126 0 83 8 126 0 86 8 126 0 93 8 126 0 94 8 126 0 95 8 126 0 97 8 126 0 98 8 126 0 110 8 126 0 112 8 126 0 113 8 126 0 117 8 126 0 118 8 126 0 119 8 126 0 120 8 126 0 121 8 126 0 123 8 126 0 124 8 126 0 125 8 126 0 126 8 126 0 127 8 126 0 128 8 126 0 129 8 126 0 130 8 126 0 131 8 126 0 133 8 126 0 134 8 126 0 135 8 126 0 136 8 126 0 138 8 126 0 142 8 126 0 143 8 126 0 144 8 126 0 148 8 126 0 151 8 126 0 153 8 126 0 154 8 126 0 155 8 126 0 156 8 126 0 157 8 126 0 158 8 126 0 161 8 126 0 162 8 126 0 165 8 126 0 166 16 121 1 196 8 126 2 173] 
#[1 8 130 0 1 8 130 0 5 8 130 0 8 8 130 0 10 8 130 0 12 8 130 0 13 8 130 0 16 8 130 0 17 8 130 0 25 8 130 0 46 8 130 0 47 8 130 0 48 8 130 0 49 8 130 0 50 8 130 0 52 8 130 0 53 11 93 0 54 8 130 0 55 8 130 0 56 8 130 0 58 8 130 0 59 8 130 0 60 8 130 0 61 8 130 0 62 8 130 0 64 8 130 0 65 8 130 0 66 8 130 0 67 8 130 0 73 8 130 0 74 8 130 0 75 8 130 0 76 8 130 0 77 8 130 0 78 8 130 0 81 8 130 0 83 8 130 0 86 8 130 0 93 8 130 0 94 8 130 0 95 8 130 0 97 8 130 0 98 8 130 0 110 8 130 0 112 8 130 0 113 8 130 0 117 8 130 0 118 8 130 0 119 8 130 0 120 8 130 0 121 8 130 0 123 8 130 0 124 8 130 0 125 8 130 0 126 8 130 0 127 8 130 0 128 8 130 0 129 8 130 0 130 8 130 0 131 8 130 0 133 8 130 0 134 8 130 0 135 8 130 0 136 8 130 0 138 8 130 0 142 8 130 0 143 8 130 0 144 8 130 0 148 8 130 0 151 8 130 0 153 8 130 0 154 8 130 0 155 8 130 0 156 8 130 0 157 8 130 0 158 8 130 0 161 8 130 0 162 8 130 0 165 8 130 0 166 16 125 1 190 8 130 2 173] 
#[1 16 129 0 54 16 133 1 190 16 137 1 195] 
#[0 8 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 8 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 3 251 0 9 1 22 0 10 3 255 0 20 16 141 0 24 16 145 0 26 1 22 0 35 0 111 0 37 10 105 0 218 10 105 0 248 16 149 1 35 16 153 1 36] 
#[0 16 157 0 9] 
#[1 16 161 0 9 16 165 0 20] 
#[1 16 169 0 9 6 149 0 10 7 113 2 149] 
#[0 16 173 0 9] 
#[1 4 3 0 153 6 141 1 140 6 145 1 143] 
#[0 8 146 0 9] 
#[0 8 150 0 9] 
#[1 4 7 0 153 7 101 1 138] 
#[0 16 177 0 9] 
#[0 16 181 0 9] 
#[0 8 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 16 185 0 25] 
#[0 8 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 8 166 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 16 189 0 218 16 189 0 248 1 22 2 173] 
#[0 8 170 0 15 0 149] 
#[1 16 193 0 15 16 197 0 149] 
#[0 8 174 0 15 0 149] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 16 201 0 218 16 201 0 248 1 22 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 16 205 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 213 1 71 16 213 1 72 16 213 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 213 1 89 3 205 1 90 16 213 1 109 16 213 1 112 16 213 1 113 3 221 1 148 3 221 1 149 16 213 1 152 3 9 1 210 16 213 2 70 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 16 213 2 167 3 49 2 172] 
#[1 8 178 0 9 16 225 0 15 8 178 0 25 16 229 1 141] 
#[0 8 182 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 8 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 16 233 0 23] 
#[0 16 237 0 9] 
#[1 8 190 0 9 16 241 0 15] 
#[0 8 194 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 16 245 0 85 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 16 249 0 102 16 253 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 17 1 0 234 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 5 1 71 17 5 1 72 17 5 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 5 1 89 3 205 1 90 17 5 1 109 17 5 1 112 17 5 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 198 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 85 0 86 0 94 0 95 0 97 0 98 0 102 0 110 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 17 9 0 218 17 9 0 248 1 22 2 173] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 17 13 0 218 17 13 0 248 1 22 2 173] 
#[0 17 17 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 17 21 1 9 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 93 1 71 10 93 1 72 10 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 93 1 89 3 205 1 90 10 93 1 109 10 93 1 112 10 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 15 173 0 15 17 25 0 38] 
#[1 17 29 0 159 17 33 0 160] 
#[0 8 202 0 159 0 160] 
#[1 17 37 0 15 8 206 0 23 8 210 0 159 8 210 0 160 8 210 0 163 8 210 0 164 17 41 0 242 17 45 0 243] 
#[0 8 214 0 163 0 164] 
#[1 17 49 0 163 17 53 0 164] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 17 57 0 218 17 57 0 248 1 22 2 173] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 17 61 0 218 17 61 0 248 1 22 2 173] 
#[0 8 218 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 8 222 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 17 65 0 9] 
#[0 17 69 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 17 73 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 73 1 71 17 73 1 72 17 73 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 73 1 89 3 205 1 90 17 73 1 109 17 73 1 112 17 73 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 226 0 153] 
#[1 12 73 0 153 17 77 1 129] 
#[0 17 81 0 25] 
#[0 17 85 0 25] 
#[1 17 89 0 8 17 93 0 26 17 97 1 208] 
#[0 8 230 0 32 0 144] 
#[0 17 101 0 30] 
#[1 8 234 0 9 8 234 0 15 8 234 0 25 17 105 1 147] 
#[0 8 238 0 9 0 25] 
#[0 8 242 0 9 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 109 1 71 17 109 1 72 17 109 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 109 1 89 3 205 1 90 17 109 1 109 17 109 1 112 17 109 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 8 246 0 32 0 144] 
#[1 2 214 0 8 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 76 7 141 0 85 2 214 0 86 2 214 0 94 2 214 0 98 7 141 0 102 7 141 0 110 2 214 0 113 2 214 0 117 2 214 0 121 2 214 0 129 2 214 0 130 2 214 0 134 2 214 0 138 2 214 0 153 17 113 1 80 7 141 1 81 7 141 1 82] 
#[0 17 117 0 153] 
#[0 8 250 0 32] 
#[0 17 121 0 153 1 86] 
#[0 5 202 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 12 241 0 110 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 93 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 2 69 1 49 17 125 1 53 2 77 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 125 1 71 17 125 1 72 17 125 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 125 1 87 17 125 1 88 17 125 1 89 3 205 1 90 17 125 1 109 17 125 1 112 17 125 1 113 17 125 1 118 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 17 129 0 85] 
#[0 8 254 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 2 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 6 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 9 10 0 1 9 10 0 2 7 189 0 3 9 10 0 5 9 10 0 6 9 10 0 8 9 10 0 9 4 11 0 10 9 10 0 12 9 10 0 13 9 10 0 15 9 10 0 16 9 10 0 17 7 197 0 21 9 10 0 23 9 10 0 25 9 10 0 26 9 10 0 27 9 10 0 29 9 10 0 31 9 10 0 33 9 10 0 35 9 10 0 36 9 10 0 38 9 10 0 39 9 10 0 44 9 10 0 45 9 10 0 46 9 10 0 47 9 10 0 48 9 10 0 49 9 10 0 50 9 10 0 51 9 10 0 52 9 10 0 53 9 10 0 55 9 10 0 56 9 10 0 58 9 10 0 59 9 10 0 60 9 10 0 61 9 10 0 62 9 10 0 63 9 10 0 64 9 10 0 65 9 10 0 66 9 10 0 67 9 10 0 69 9 10 0 73 9 10 0 75 9 10 0 76 9 10 0 77 9 10 0 78 9 10 0 79 9 10 0 81 9 10 0 82 9 10 0 83 9 10 0 86 9 10 0 89 9 10 0 90 9 10 0 91 9 10 0 92 9 10 0 93 9 10 0 94 9 10 0 95 9 10 0 97 9 10 0 98 9 10 0 99 9 10 0 101 9 10 0 110 9 10 0 112 9 10 0 113 9 10 0 115 9 10 0 117 9 10 0 118 9 10 0 119 9 10 0 120 9 10 0 121 9 10 0 123 9 10 0 124 9 10 0 125 9 10 0 126 9 10 0 127 9 10 0 128 9 10 0 129 9 10 0 130 9 10 0 131 9 10 0 133 9 10 0 134 9 10 0 135 9 10 0 136 9 10 0 138 9 10 0 140 9 10 0 141 9 10 0 142 9 10 0 143 9 10 0 144 9 10 0 145 9 10 0 147 9 10 0 148 9 10 0 149 9 10 0 150 9 10 0 151 9 10 0 153 9 10 0 154 9 10 0 155 9 10 0 156 9 10 0 157 9 10 0 158 9 10 0 159 9 10 0 160 9 10 0 161 9 10 0 162 9 10 0 163 9 10 0 164 9 10 0 165 9 10 0 166 9 10 2 173] 
#[1 9 14 0 1 9 14 0 2 7 189 0 3 9 14 0 5 9 14 0 6 9 14 0 8 9 14 0 9 4 15 0 10 9 14 0 12 9 14 0 13 9 14 0 15 9 14 0 16 9 14 0 17 7 197 0 21 9 14 0 23 9 14 0 25 9 14 0 26 9 14 0 27 9 14 0 29 9 14 0 31 9 14 0 33 9 14 0 35 9 14 0 36 9 14 0 38 9 14 0 39 9 14 0 44 9 14 0 45 9 14 0 46 9 14 0 47 9 14 0 48 9 14 0 49 9 14 0 50 9 14 0 51 9 14 0 52 9 14 0 53 9 14 0 55 9 14 0 56 9 14 0 58 9 14 0 59 9 14 0 60 9 14 0 61 9 14 0 62 9 14 0 63 9 14 0 64 9 14 0 65 9 14 0 66 9 14 0 67 9 14 0 69 9 14 0 73 9 14 0 75 9 14 0 76 9 14 0 77 9 14 0 78 9 14 0 79 9 14 0 81 9 14 0 82 9 14 0 83 9 14 0 86 9 14 0 89 9 14 0 90 9 14 0 91 9 14 0 92 9 14 0 93 9 14 0 94 9 14 0 95 9 14 0 97 9 14 0 98 9 14 0 99 9 14 0 101 9 14 0 110 9 14 0 112 9 14 0 113 9 14 0 115 9 14 0 117 9 14 0 118 9 14 0 119 9 14 0 120 9 14 0 121 9 14 0 123 9 14 0 124 9 14 0 125 9 14 0 126 9 14 0 127 9 14 0 128 9 14 0 129 9 14 0 130 9 14 0 131 9 14 0 133 9 14 0 134 9 14 0 135 9 14 0 136 9 14 0 138 9 14 0 140 9 14 0 141 9 14 0 142 9 14 0 143 9 14 0 144 9 14 0 145 9 14 0 147 9 14 0 148 9 14 0 149 9 14 0 150 9 14 0 151 9 14 0 153 9 14 0 154 9 14 0 155 9 14 0 156 9 14 0 157 9 14 0 158 9 14 0 159 9 14 0 160 9 14 0 161 9 14 0 162 9 14 0 163 9 14 0 164 9 14 0 165 9 14 0 166 9 14 2 173] 
#[1 9 18 0 1 9 18 0 2 9 18 0 5 9 18 0 6 9 18 0 8 9 18 0 9 9 18 0 10 4 19 0 12 9 18 0 13 9 18 0 15 4 23 0 16 9 18 0 17 9 18 0 23 9 18 0 25 9 18 0 26 9 18 0 27 9 18 0 29 9 18 0 31 9 18 0 33 9 18 0 35 9 18 0 36 9 18 0 38 9 18 0 39 9 18 0 44 9 18 0 45 9 18 0 46 9 18 0 47 9 18 0 48 9 18 0 49 9 18 0 50 9 18 0 51 9 18 0 52 9 18 0 53 9 18 0 55 9 18 0 56 9 18 0 58 9 18 0 59 9 18 0 60 9 18 0 61 9 18 0 62 9 18 0 63 9 18 0 64 9 18 0 65 9 18 0 66 9 18 0 67 9 18 0 69 9 18 0 73 9 18 0 75 9 18 0 76 9 18 0 77 9 18 0 78 9 18 0 79 9 18 0 81 9 18 0 82 9 18 0 83 9 18 0 86 9 18 0 89 9 18 0 90 9 18 0 91 9 18 0 92 9 18 0 93 9 18 0 94 9 18 0 95 9 18 0 97 9 18 0 98 9 18 0 99 9 18 0 101 9 18 0 110 9 18 0 112 9 18 0 113 9 18 0 115 9 18 0 117 9 18 0 118 9 18 0 119 9 18 0 120 9 18 0 121 9 18 0 123 9 18 0 124 9 18 0 125 9 18 0 126 9 18 0 127 9 18 0 128 9 18 0 129 9 18 0 130 9 18 0 131 9 18 0 133 9 18 0 134 9 18 0 135 9 18 0 136 9 18 0 138 9 18 0 140 9 18 0 141 9 18 0 142 9 18 0 143 9 18 0 144 9 18 0 145 9 18 0 147 9 18 0 148 9 18 0 149 9 18 0 150 9 18 0 151 9 18 0 153 9 18 0 154 9 18 0 155 9 18 0 156 9 18 0 157 9 18 0 158 9 18 0 159 9 18 0 160 9 18 0 161 9 18 0 162 9 18 0 163 9 18 0 164 9 18 0 165 9 18 0 166 9 18 2 173] 
#[1 9 22 0 1 9 22 0 2 9 22 0 5 9 22 0 6 9 22 0 8 9 22 0 9 9 22 0 10 4 27 0 12 9 22 0 13 9 22 0 15 4 31 0 16 9 22 0 17 9 22 0 23 9 22 0 25 9 22 0 26 9 22 0 27 9 22 0 29 9 22 0 31 9 22 0 33 9 22 0 35 9 22 0 36 9 22 0 38 9 22 0 39 9 22 0 44 9 22 0 45 9 22 0 46 9 22 0 47 9 22 0 48 9 22 0 49 9 22 0 50 9 22 0 51 9 22 0 52 9 22 0 53 9 22 0 55 9 22 0 56 9 22 0 58 9 22 0 59 9 22 0 60 9 22 0 61 9 22 0 62 9 22 0 63 9 22 0 64 9 22 0 65 9 22 0 66 9 22 0 67 9 22 0 69 9 22 0 73 9 22 0 75 9 22 0 76 9 22 0 77 9 22 0 78 9 22 0 79 9 22 0 81 9 22 0 82 9 22 0 83 9 22 0 86 9 22 0 89 9 22 0 90 9 22 0 91 9 22 0 92 9 22 0 93 9 22 0 94 9 22 0 95 9 22 0 97 9 22 0 98 9 22 0 99 9 22 0 101 9 22 0 110 9 22 0 112 9 22 0 113 9 22 0 115 9 22 0 117 9 22 0 118 9 22 0 119 9 22 0 120 9 22 0 121 9 22 0 123 9 22 0 124 9 22 0 125 9 22 0 126 9 22 0 127 9 22 0 128 9 22 0 129 9 22 0 130 9 22 0 131 9 22 0 133 9 22 0 134 9 22 0 135 9 22 0 136 9 22 0 138 9 22 0 140 9 22 0 141 9 22 0 142 9 22 0 143 9 22 0 144 9 22 0 145 9 22 0 147 9 22 0 148 9 22 0 149 9 22 0 150 9 22 0 151 9 22 0 153 9 22 0 154 9 22 0 155 9 22 0 156 9 22 0 157 9 22 0 158 9 22 0 159 9 22 0 160 9 22 0 161 9 22 0 162 9 22 0 163 9 22 0 164 9 22 0 165 9 22 0 166 9 22 2 173] 
#[1 9 26 0 1 9 26 0 2 9 26 0 5 9 26 0 6 9 26 0 8 9 26 0 9 9 26 0 10 9 26 0 12 9 26 0 13 9 26 0 15 9 26 0 16 9 26 0 17 9 26 0 23 9 26 0 25 9 26 0 26 7 209 0 27 9 26 0 29 9 26 0 31 9 26 0 33 9 26 0 35 9 26 0 36 9 26 0 38 9 26 0 39 9 26 0 44 9 26 0 45 9 26 0 46 9 26 0 47 9 26 0 48 9 26 0 49 9 26 0 50 9 26 0 51 9 26 0 52 9 26 0 53 9 26 0 55 9 26 0 56 9 26 0 58 9 26 0 59 9 26 0 60 9 26 0 61 9 26 0 62 9 26 0 63 9 26 0 64 9 26 0 65 9 26 0 66 9 26 0 67 9 26 0 69 9 26 0 73 9 26 0 75 9 26 0 76 9 26 0 77 9 26 0 78 9 26 0 79 9 26 0 81 9 26 0 82 9 26 0 83 9 26 0 86 9 26 0 89 9 26 0 90 9 26 0 91 9 26 0 92 9 26 0 93 9 26 0 94 9 26 0 95 9 26 0 97 9 26 0 98 9 26 0 99 9 26 0 101 9 26 0 110 9 26 0 112 9 26 0 113 9 26 0 115 9 26 0 117 9 26 0 118 9 26 0 119 9 26 0 120 9 26 0 121 9 26 0 123 9 26 0 124 9 26 0 125 9 26 0 126 9 26 0 127 9 26 0 128 9 26 0 129 9 26 0 130 9 26 0 131 9 26 0 133 9 26 0 134 9 26 0 135 9 26 0 136 9 26 0 138 9 26 0 140 9 26 0 141 9 26 0 142 9 26 0 143 9 26 0 144 9 26 0 145 9 26 0 147 9 26 0 148 9 26 0 149 7 213 0 150 9 26 0 151 9 26 0 153 9 26 0 154 9 26 0 155 9 26 0 156 9 26 0 157 9 26 0 158 9 26 0 159 9 26 0 160 9 26 0 161 9 26 0 162 9 26 0 163 9 26 0 164 9 26 0 165 9 26 0 166 9 26 2 173] 
#[1 9 30 0 1 9 30 0 2 9 30 0 5 9 30 0 6 9 30 0 8 9 30 0 9 9 30 0 10 9 30 0 12 9 30 0 13 9 30 0 15 9 30 0 16 9 30 0 17 9 30 0 23 9 30 0 25 9 30 0 26 7 209 0 27 9 30 0 29 9 30 0 31 9 30 0 33 9 30 0 35 9 30 0 36 9 30 0 38 9 30 0 39 9 30 0 44 9 30 0 45 9 30 0 46 9 30 0 47 9 30 0 48 9 30 0 49 9 30 0 50 9 30 0 51 9 30 0 52 9 30 0 53 9 30 0 55 9 30 0 56 9 30 0 58 9 30 0 59 9 30 0 60 9 30 0 61 9 30 0 62 9 30 0 63 9 30 0 64 9 30 0 65 9 30 0 66 9 30 0 67 9 30 0 69 9 30 0 73 9 30 0 75 9 30 0 76 9 30 0 77 9 30 0 78 9 30 0 79 9 30 0 81 9 30 0 82 9 30 0 83 9 30 0 86 9 30 0 89 9 30 0 90 9 30 0 91 9 30 0 92 9 30 0 93 9 30 0 94 9 30 0 95 9 30 0 97 9 30 0 98 9 30 0 99 9 30 0 101 9 30 0 110 9 30 0 112 9 30 0 113 9 30 0 115 9 30 0 117 9 30 0 118 9 30 0 119 9 30 0 120 9 30 0 121 9 30 0 123 9 30 0 124 9 30 0 125 9 30 0 126 9 30 0 127 9 30 0 128 9 30 0 129 9 30 0 130 9 30 0 131 9 30 0 133 9 30 0 134 9 30 0 135 9 30 0 136 9 30 0 138 9 30 0 140 9 30 0 141 9 30 0 142 9 30 0 143 9 30 0 144 9 30 0 145 9 30 0 147 9 30 0 148 9 30 0 149 7 213 0 150 9 30 0 151 9 30 0 153 9 30 0 154 9 30 0 155 9 30 0 156 9 30 0 157 9 30 0 158 9 30 0 159 9 30 0 160 9 30 0 161 9 30 0 162 9 30 0 163 9 30 0 164 9 30 0 165 9 30 0 166 9 30 2 173] 
#[1 9 34 0 1 9 34 0 2 9 34 0 5 9 34 0 6 9 34 0 8 9 34 0 9 9 34 0 10 9 34 0 12 9 34 0 13 9 34 0 15 9 34 0 16 9 34 0 17 9 34 0 23 9 34 0 25 9 34 0 26 7 209 0 27 9 34 0 29 9 34 0 31 9 34 0 33 9 34 0 35 9 34 0 36 9 34 0 38 9 34 0 39 9 34 0 44 9 34 0 45 9 34 0 46 9 34 0 47 9 34 0 48 9 34 0 49 9 34 0 50 9 34 0 51 9 34 0 52 9 34 0 53 9 34 0 55 9 34 0 56 9 34 0 58 9 34 0 59 9 34 0 60 9 34 0 61 9 34 0 62 9 34 0 63 9 34 0 64 9 34 0 65 9 34 0 66 9 34 0 67 9 34 0 69 9 34 0 73 9 34 0 75 9 34 0 76 9 34 0 77 9 34 0 78 9 34 0 79 9 34 0 81 9 34 0 82 9 34 0 83 9 34 0 86 9 34 0 89 9 34 0 90 9 34 0 91 9 34 0 92 9 34 0 93 9 34 0 94 9 34 0 95 9 34 0 97 9 34 0 98 9 34 0 99 9 34 0 101 9 34 0 110 9 34 0 112 9 34 0 113 9 34 0 115 9 34 0 117 9 34 0 118 9 34 0 119 9 34 0 120 9 34 0 121 9 34 0 123 9 34 0 124 9 34 0 125 9 34 0 126 9 34 0 127 9 34 0 128 9 34 0 129 9 34 0 130 9 34 0 131 9 34 0 133 9 34 0 134 9 34 0 135 9 34 0 136 9 34 0 138 9 34 0 140 9 34 0 141 9 34 0 142 9 34 0 143 9 34 0 144 9 34 0 145 9 34 0 147 9 34 0 148 9 34 0 149 7 213 0 150 9 34 0 151 9 34 0 153 9 34 0 154 9 34 0 155 9 34 0 156 9 34 0 157 9 34 0 158 9 34 0 159 9 34 0 160 9 34 0 161 9 34 0 162 9 34 0 163 9 34 0 164 9 34 0 165 9 34 0 166 9 34 2 173] 
#[0 9 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 9 42 0 1 9 42 0 2 9 42 0 5 9 42 0 6 9 42 0 8 9 42 0 9 9 42 0 10 9 42 0 12 9 42 0 13 9 42 0 15 9 42 0 16 9 42 0 17 9 42 0 23 9 42 0 25 9 42 0 26 9 42 0 29 9 42 0 31 9 42 0 33 9 42 0 35 9 42 0 36 9 42 0 38 9 42 0 39 9 42 0 44 9 42 0 45 9 42 0 46 9 42 0 47 9 42 0 48 9 42 0 49 9 42 0 50 9 42 0 51 9 42 0 52 9 42 0 53 9 42 0 55 9 42 0 56 9 42 0 58 9 42 0 59 9 42 0 60 9 42 0 61 9 42 0 62 9 42 0 63 9 42 0 64 9 42 0 65 9 42 0 66 9 42 0 67 9 42 0 69 9 42 0 73 9 42 0 75 9 42 0 76 9 42 0 77 9 42 0 78 9 42 0 79 9 42 0 81 9 42 0 82 9 42 0 83 9 42 0 86 9 42 0 89 9 42 0 90 9 42 0 91 9 42 0 92 9 42 0 93 9 42 0 94 9 42 0 95 9 42 0 97 9 42 0 98 9 42 0 99 9 42 0 101 9 42 0 110 9 42 0 112 9 42 0 113 9 42 0 115 9 42 0 117 9 42 0 118 9 42 0 119 9 42 0 120 9 42 0 121 9 42 0 123 9 42 0 124 9 42 0 125 9 42 0 126 9 42 0 127 9 42 0 128 9 42 0 129 9 42 0 130 9 42 0 131 9 42 0 133 9 42 0 134 9 42 0 135 9 42 0 136 9 42 0 138 9 42 0 140 9 42 0 141 9 42 0 142 9 42 0 143 9 42 0 144 9 42 0 145 9 42 0 147 9 42 0 148 9 42 0 149 9 42 0 151 4 35 0 153 9 42 0 154 9 42 0 155 9 42 0 156 9 42 0 157 9 42 0 158 9 42 0 159 9 42 0 160 9 42 0 161 9 42 0 162 9 42 0 163 9 42 0 164 9 42 0 165 9 42 0 166 17 137 0 227 17 137 0 228 9 42 2 173] 
#[0 9 46 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 50 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 54 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 4 39 0 153 17 145 0 224 17 145 0 227 17 145 0 228] 
#[1 9 66 0 1 9 66 0 2 9 66 0 5 9 66 0 6 9 66 0 8 9 66 0 9 9 66 0 10 9 66 0 12 9 66 0 13 9 66 0 15 9 66 0 16 9 66 0 17 9 66 0 23 9 66 0 25 9 66 0 26 7 209 0 27 9 66 0 29 9 66 0 31 9 66 0 33 9 66 0 35 9 66 0 36 9 66 0 38 9 66 0 39 9 66 0 44 9 66 0 45 9 66 0 46 9 66 0 47 9 66 0 48 9 66 0 49 9 66 0 50 9 66 0 51 9 66 0 52 9 66 0 53 9 66 0 55 9 66 0 56 9 66 0 58 9 66 0 59 9 66 0 60 9 66 0 61 9 66 0 62 9 66 0 63 9 66 0 64 9 66 0 65 9 66 0 66 9 66 0 67 9 66 0 69 9 66 0 73 9 66 0 75 9 66 0 76 9 66 0 77 9 66 0 78 9 66 0 79 9 66 0 81 9 66 0 82 9 66 0 83 9 66 0 86 9 66 0 89 9 66 0 90 9 66 0 91 9 66 0 92 9 66 0 93 9 66 0 94 9 66 0 95 9 66 0 97 9 66 0 98 9 66 0 99 9 66 0 101 9 66 0 110 9 66 0 112 9 66 0 113 9 66 0 115 9 66 0 117 9 66 0 118 9 66 0 119 9 66 0 120 9 66 0 121 9 66 0 123 9 66 0 124 9 66 0 125 9 66 0 126 9 66 0 127 9 66 0 128 9 66 0 129 9 66 0 130 9 66 0 131 9 66 0 133 9 66 0 134 9 66 0 135 9 66 0 136 9 66 0 138 9 66 0 140 9 66 0 141 9 66 0 142 9 66 0 143 9 66 0 144 9 66 0 145 9 66 0 147 9 66 0 148 9 66 0 149 7 213 0 150 9 66 0 151 9 66 0 153 9 66 0 154 9 66 0 155 9 66 0 156 9 66 0 157 9 66 0 158 9 66 0 159 9 66 0 160 9 66 0 161 9 66 0 162 9 66 0 163 9 66 0 164 9 66 0 165 9 66 0 166 9 66 2 173] 
#[1 9 70 0 1 9 70 0 2 9 70 0 5 9 70 0 6 9 70 0 8 9 70 0 9 9 70 0 10 9 70 0 12 9 70 0 13 9 70 0 15 9 70 0 16 9 70 0 17 9 70 0 23 9 70 0 25 4 43 0 26 4 47 0 29 9 70 0 31 4 51 0 33 9 70 0 35 9 70 0 36 9 70 0 38 9 70 0 39 4 55 0 44 9 70 0 45 9 70 0 46 9 70 0 47 9 70 0 48 9 70 0 49 9 70 0 50 9 70 0 51 9 70 0 52 9 70 0 53 9 70 0 55 9 70 0 56 9 70 0 58 9 70 0 59 9 70 0 60 9 70 0 61 9 70 0 62 9 70 0 63 9 70 0 64 9 70 0 65 9 70 0 66 9 70 0 67 9 70 0 69 9 70 0 73 9 70 0 75 9 70 0 76 9 70 0 77 9 70 0 78 9 70 0 79 9 70 0 81 9 70 0 82 9 70 0 83 9 70 0 86 9 70 0 89 4 59 0 90 9 70 0 91 9 70 0 92 9 70 0 93 9 70 0 94 9 70 0 95 9 70 0 97 9 70 0 98 9 70 0 99 9 70 0 101 9 70 0 110 9 70 0 112 9 70 0 113 9 70 0 115 9 70 0 117 9 70 0 118 9 70 0 119 9 70 0 120 9 70 0 121 9 70 0 123 9 70 0 124 9 70 0 125 9 70 0 126 9 70 0 127 9 70 0 128 9 70 0 129 9 70 0 130 9 70 0 131 9 70 0 133 9 70 0 134 9 70 0 135 9 70 0 136 9 70 0 138 9 70 0 140 9 70 0 141 9 70 0 142 9 70 0 143 9 70 0 144 9 70 0 145 9 70 0 147 9 70 0 148 4 63 0 149 9 70 0 151 9 70 0 153 9 70 0 154 9 70 0 155 9 70 0 156 9 70 0 157 9 70 0 158 9 70 0 159 9 70 0 160 9 70 0 161 9 70 0 162 9 70 0 163 9 70 0 164 9 70 0 165 9 70 0 166 9 70 2 173] 
#[1 9 74 0 1 9 74 0 2 9 74 0 5 9 74 0 6 9 74 0 8 9 74 0 9 9 74 0 10 9 74 0 12 9 74 0 13 9 74 0 15 9 74 0 16 9 74 0 17 9 74 0 23 9 74 0 25 4 67 0 26 4 71 0 29 9 74 0 31 4 75 0 33 9 74 0 35 9 74 0 36 9 74 0 38 9 74 0 39 4 79 0 44 9 74 0 45 9 74 0 46 9 74 0 47 9 74 0 48 9 74 0 49 9 74 0 50 9 74 0 51 9 74 0 52 9 74 0 53 9 74 0 55 9 74 0 56 9 74 0 58 9 74 0 59 9 74 0 60 9 74 0 61 9 74 0 62 9 74 0 63 9 74 0 64 9 74 0 65 9 74 0 66 9 74 0 67 9 74 0 69 9 74 0 73 9 74 0 75 9 74 0 76 9 74 0 77 9 74 0 78 9 74 0 79 9 74 0 81 9 74 0 82 9 74 0 83 9 74 0 86 9 74 0 89 4 83 0 90 9 74 0 91 9 74 0 92 9 74 0 93 9 74 0 94 9 74 0 95 9 74 0 97 9 74 0 98 9 74 0 99 9 74 0 101 9 74 0 110 9 74 0 112 9 74 0 113 9 74 0 115 9 74 0 117 9 74 0 118 9 74 0 119 9 74 0 120 9 74 0 121 9 74 0 123 9 74 0 124 9 74 0 125 9 74 0 126 9 74 0 127 9 74 0 128 9 74 0 129 9 74 0 130 9 74 0 131 9 74 0 133 9 74 0 134 9 74 0 135 9 74 0 136 9 74 0 138 9 74 0 140 9 74 0 141 9 74 0 142 9 74 0 143 9 74 0 144 9 74 0 145 9 74 0 147 9 74 0 148 4 87 0 149 9 74 0 151 9 74 0 153 9 74 0 154 9 74 0 155 9 74 0 156 9 74 0 157 9 74 0 158 9 74 0 159 9 74 0 160 9 74 0 161 9 74 0 162 9 74 0 163 9 74 0 164 9 74 0 165 9 74 0 166 9 74 2 173] 
#[1 9 78 0 1 4 91 0 2 9 78 0 5 9 78 0 6 9 78 0 8 9 78 0 9 9 78 0 10 9 78 0 12 9 78 0 13 9 78 0 15 9 78 0 16 9 78 0 17 9 78 0 23 9 78 0 25 9 78 0 26 9 78 0 29 4 95 0 31 9 78 0 33 9 78 0 35 9 78 0 36 9 78 0 38 9 78 0 39 9 78 0 44 9 78 0 45 9 78 0 46 9 78 0 47 9 78 0 48 9 78 0 49 9 78 0 50 9 78 0 51 9 78 0 52 9 78 0 53 9 78 0 55 9 78 0 56 9 78 0 58 9 78 0 59 9 78 0 60 9 78 0 61 9 78 0 62 9 78 0 63 9 78 0 64 9 78 0 65 9 78 0 66 9 78 0 67 9 78 0 69 9 78 0 73 9 78 0 75 9 78 0 76 9 78 0 77 9 78 0 78 9 78 0 79 9 78 0 81 9 78 0 82 9 78 0 83 9 78 0 86 9 78 0 89 9 78 0 90 9 78 0 91 9 78 0 92 9 78 0 93 9 78 0 94 9 78 0 95 9 78 0 97 9 78 0 98 9 78 0 99 9 78 0 101 9 78 0 110 9 78 0 112 9 78 0 113 9 78 0 115 9 78 0 117 9 78 0 118 9 78 0 119 9 78 0 120 9 78 0 121 9 78 0 123 9 78 0 124 9 78 0 125 9 78 0 126 9 78 0 127 9 78 0 128 9 78 0 129 9 78 0 130 9 78 0 131 9 78 0 133 9 78 0 134 9 78 0 135 9 78 0 136 9 78 0 138 9 78 0 140 9 78 0 141 9 78 0 142 9 78 0 143 9 78 0 144 9 78 0 145 9 78 0 147 9 78 0 148 9 78 0 149 9 78 0 151 9 78 0 153 9 78 0 154 9 78 0 155 9 78 0 156 9 78 0 157 9 78 0 158 9 78 0 159 9 78 0 160 9 78 0 161 9 78 0 162 9 78 0 163 9 78 0 164 9 78 0 165 9 78 0 166 9 78 2 173] 
#[1 9 82 0 1 9 82 0 2 4 99 0 5 9 82 0 6 9 82 0 8 9 82 0 9 9 82 0 10 9 82 0 12 9 82 0 13 9 82 0 15 9 82 0 16 9 82 0 17 9 82 0 23 9 82 0 25 9 82 0 26 9 82 0 29 9 82 0 31 9 82 0 33 9 82 0 35 9 82 0 36 9 82 0 38 9 82 0 39 9 82 0 44 9 82 0 45 9 82 0 46 9 82 0 47 9 82 0 48 9 82 0 49 9 82 0 50 9 82 0 51 9 82 0 52 9 82 0 53 9 82 0 55 9 82 0 56 9 82 0 58 9 82 0 59 9 82 0 60 9 82 0 61 9 82 0 62 9 82 0 63 9 82 0 64 9 82 0 65 9 82 0 66 9 82 0 67 9 82 0 69 9 82 0 73 9 82 0 75 9 82 0 76 9 82 0 77 9 82 0 78 9 82 0 79 9 82 0 81 9 82 0 82 9 82 0 83 9 82 0 86 9 82 0 89 9 82 0 90 9 82 0 91 9 82 0 92 9 82 0 93 9 82 0 94 9 82 0 95 9 82 0 97 9 82 0 98 9 82 0 99 9 82 0 101 9 82 0 110 9 82 0 112 9 82 0 113 9 82 0 115 9 82 0 117 9 82 0 118 9 82 0 119 9 82 0 120 9 82 0 121 9 82 0 123 9 82 0 124 9 82 0 125 9 82 0 126 9 82 0 127 9 82 0 128 9 82 0 129 9 82 0 130 9 82 0 131 9 82 0 133 9 82 0 134 9 82 0 135 9 82 0 136 9 82 0 138 9 82 0 140 9 82 0 141 9 82 0 142 9 82 0 143 9 82 0 144 9 82 0 145 9 82 0 147 9 82 0 148 9 82 0 149 9 82 0 151 9 82 0 153 9 82 0 154 9 82 0 155 9 82 0 156 9 82 0 157 9 82 0 158 9 82 0 159 9 82 0 160 9 82 0 161 9 82 0 162 9 82 0 163 9 82 0 164 9 82 0 165 9 82 0 166 9 82 2 173] 
#[1 9 86 0 1 9 86 0 2 9 86 0 5 9 86 0 6 9 86 0 8 9 86 0 9 9 86 0 10 9 86 0 12 9 86 0 13 9 86 0 15 9 86 0 16 9 86 0 17 9 86 0 23 9 86 0 25 9 86 0 26 9 86 0 29 9 86 0 31 9 86 0 33 9 86 0 35 9 86 0 36 9 86 0 38 4 103 0 39 9 86 0 44 9 86 0 45 9 86 0 46 9 86 0 47 9 86 0 48 9 86 0 49 9 86 0 50 9 86 0 51 9 86 0 52 9 86 0 53 9 86 0 55 9 86 0 56 9 86 0 58 9 86 0 59 9 86 0 60 9 86 0 61 9 86 0 62 9 86 0 63 9 86 0 64 9 86 0 65 9 86 0 66 9 86 0 67 9 86 0 69 9 86 0 73 9 86 0 75 9 86 0 76 9 86 0 77 9 86 0 78 9 86 0 79 9 86 0 81 9 86 0 82 9 86 0 83 9 86 0 86 9 86 0 89 9 86 0 90 9 86 0 91 9 86 0 92 9 86 0 93 9 86 0 94 9 86 0 95 9 86 0 97 9 86 0 98 9 86 0 99 9 86 0 101 9 86 0 110 9 86 0 112 9 86 0 113 9 86 0 115 9 86 0 117 9 86 0 118 9 86 0 119 9 86 0 120 9 86 0 121 9 86 0 123 9 86 0 124 9 86 0 125 9 86 0 126 9 86 0 127 9 86 0 128 9 86 0 129 9 86 0 130 9 86 0 131 9 86 0 133 9 86 0 134 9 86 0 135 9 86 0 136 9 86 0 138 9 86 0 140 9 86 0 141 9 86 0 142 9 86 0 143 9 86 0 144 9 86 0 145 9 86 0 147 9 86 0 148 9 86 0 149 9 86 0 151 9 86 0 153 9 86 0 154 9 86 0 155 9 86 0 156 9 86 0 157 9 86 0 158 9 86 0 159 9 86 0 160 9 86 0 161 9 86 0 162 9 86 0 163 9 86 0 164 9 86 0 165 9 86 0 166 9 86 2 173] 
#[1 9 90 0 1 9 90 0 2 9 90 0 5 9 90 0 6 9 90 0 8 9 90 0 9 9 90 0 10 9 90 0 12 9 90 0 13 9 90 0 15 9 90 0 16 9 90 0 17 9 90 0 23 9 90 0 25 9 90 0 26 9 90 0 29 9 90 0 31 9 90 0 33 9 90 0 35 9 90 0 36 9 90 0 38 9 90 0 39 9 90 0 44 9 90 0 45 9 90 0 46 9 90 0 47 9 90 0 48 9 90 0 49 9 90 0 50 9 90 0 51 9 90 0 52 9 90 0 53 9 90 0 55 9 90 0 56 9 90 0 58 9 90 0 59 9 90 0 60 9 90 0 61 9 90 0 62 9 90 0 63 9 90 0 64 9 90 0 65 9 90 0 66 9 90 0 67 9 90 0 69 9 90 0 73 9 90 0 75 9 90 0 76 9 90 0 77 9 90 0 78 9 90 0 79 9 90 0 81 9 90 0 82 9 90 0 83 9 90 0 86 9 90 0 89 9 90 0 90 9 90 0 91 9 90 0 92 9 90 0 93 9 90 0 94 9 90 0 95 9 90 0 97 9 90 0 98 9 90 0 99 9 90 0 101 9 90 0 110 9 90 0 112 9 90 0 113 9 90 0 115 9 90 0 117 9 90 0 118 9 90 0 119 9 90 0 120 9 90 0 121 9 90 0 123 9 90 0 124 9 90 0 125 9 90 0 126 9 90 0 127 9 90 0 128 9 90 0 129 9 90 0 130 9 90 0 131 9 90 0 133 9 90 0 134 9 90 0 135 9 90 0 136 9 90 0 138 9 90 0 140 9 90 0 141 9 90 0 142 9 90 0 143 9 90 0 144 4 107 0 145 9 90 0 147 9 90 0 148 9 90 0 149 9 90 0 151 9 90 0 153 9 90 0 154 9 90 0 155 9 90 0 156 9 90 0 157 9 90 0 158 9 90 0 159 9 90 0 160 9 90 0 161 9 90 0 162 9 90 0 163 9 90 0 164 9 90 0 165 9 90 0 166 9 90 2 173] 
#[0 9 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 9 98 0 1 9 98 0 2 9 98 0 5 4 111 0 6 9 98 0 8 9 98 0 9 9 98 0 10 9 98 0 12 9 98 0 13 9 98 0 15 9 98 0 16 9 98 0 17 9 98 0 23 9 98 0 25 9 98 0 26 9 98 0 29 9 98 0 31 9 98 0 33 9 98 0 35 9 98 0 36 9 98 0 38 9 98 0 39 9 98 0 44 9 98 0 45 9 98 0 46 9 98 0 47 9 98 0 48 9 98 0 49 9 98 0 50 9 98 0 51 9 98 0 52 9 98 0 53 9 98 0 55 9 98 0 56 9 98 0 58 9 98 0 59 9 98 0 60 9 98 0 61 9 98 0 62 9 98 0 63 9 98 0 64 9 98 0 65 9 98 0 66 9 98 0 67 9 98 0 69 9 98 0 73 9 98 0 75 9 98 0 76 9 98 0 77 9 98 0 78 9 98 0 79 9 98 0 81 9 98 0 82 9 98 0 83 9 98 0 86 9 98 0 89 9 98 0 90 9 98 0 91 9 98 0 92 9 98 0 93 9 98 0 94 9 98 0 95 9 98 0 97 9 98 0 98 9 98 0 99 9 98 0 101 9 98 0 110 9 98 0 112 9 98 0 113 9 98 0 115 9 98 0 117 9 98 0 118 9 98 0 119 9 98 0 120 9 98 0 121 9 98 0 123 9 98 0 124 9 98 0 125 9 98 0 126 9 98 0 127 9 98 0 128 9 98 0 129 9 98 0 130 9 98 0 131 9 98 0 133 9 98 0 134 9 98 0 135 9 98 0 136 9 98 0 138 9 98 0 140 9 98 0 141 9 98 0 142 9 98 0 143 9 98 0 144 9 98 0 145 9 98 0 147 9 98 0 148 9 98 0 149 9 98 0 151 9 98 0 153 9 98 0 154 9 98 0 155 9 98 0 156 9 98 0 157 9 98 0 158 9 98 0 159 9 98 0 160 9 98 0 161 9 98 0 162 9 98 0 163 9 98 0 164 9 98 0 165 9 98 0 166 9 98 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 17 153 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 153 1 71 17 153 1 72 17 153 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 153 1 89 3 205 1 90 17 153 1 109 17 153 1 112 17 153 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 17 157 0 23] 
#[0 17 161 0 23] 
#[0 9 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 17 165 0 153] 
#[0 17 169 0 30] 
#[1 17 173 0 15 9 122 0 79 9 122 0 82 9 122 0 91 9 122 0 92 9 122 0 101 9 122 0 115 9 122 0 141] 
#[0 9 126 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[1 9 130 0 15 17 177 0 45 17 181 0 63 9 130 0 79 9 130 0 82 9 130 0 91 9 130 0 92 9 130 0 101 9 130 0 115 9 130 0 141 17 185 1 102 17 189 1 103] 
#[0 9 134 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 193 1 71 17 193 1 72 17 193 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 193 1 89 3 205 1 90 17 193 1 109 17 193 1 112 17 193 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 197 1 71 17 197 1 72 17 197 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 197 1 89 3 205 1 90 17 197 1 109 17 197 1 112 17 197 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 9 138 0 1 9 138 0 2 9 138 0 5 9 138 0 6 9 138 0 8 9 138 0 9 9 138 0 10 9 138 0 12 9 138 0 13 9 138 0 15 9 138 0 16 9 138 0 17 9 138 0 23 9 138 0 25 9 138 0 26 9 138 0 29 9 138 0 31 9 138 0 33 9 138 0 35 9 138 0 36 9 138 0 38 9 138 0 39 9 138 0 44 9 138 0 45 9 138 0 46 9 138 0 47 9 138 0 48 9 138 0 49 9 138 0 50 9 138 0 51 9 138 0 52 9 138 0 53 9 138 0 55 9 138 0 56 9 138 0 58 9 138 0 59 9 138 0 60 9 138 0 61 9 138 0 62 9 138 0 63 9 138 0 64 9 138 0 65 9 138 0 66 9 138 0 67 9 138 0 69 9 138 0 73 9 138 0 75 9 138 0 76 9 138 0 77 9 138 0 78 9 138 0 79 9 138 0 81 9 138 0 82 9 138 0 83 9 138 0 86 4 115 0 89 9 138 0 90 9 138 0 91 9 138 0 92 9 138 0 93 9 138 0 94 9 138 0 95 9 138 0 97 9 138 0 98 9 138 0 99 9 138 0 101 9 138 0 110 9 138 0 112 9 138 0 113 9 138 0 115 9 138 0 117 9 138 0 118 9 138 0 119 9 138 0 120 9 138 0 121 9 138 0 123 9 138 0 124 9 138 0 125 9 138 0 126 9 138 0 127 9 138 0 128 9 138 0 129 9 138 0 130 9 138 0 131 9 138 0 133 9 138 0 134 9 138 0 135 9 138 0 136 9 138 0 138 9 138 0 140 9 138 0 141 9 138 0 142 9 138 0 143 9 138 0 144 9 138 0 145 9 138 0 147 9 138 0 148 9 138 0 149 9 138 0 151 9 138 0 153 9 138 0 154 9 138 0 155 9 138 0 156 9 138 0 157 9 138 0 158 9 138 0 159 9 138 0 160 9 138 0 161 9 138 0 162 9 138 0 163 9 138 0 164 9 138 0 165 9 138 0 166 17 205 1 107 17 209 1 108 9 138 2 173] 
#[0 9 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 146 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 9 150 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 17 213 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 17 213 1 71 17 213 1 72 17 213 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 17 213 1 89 3 205 1 90 17 213 1 109 17 213 1 112 17 213 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 17 217 0 25] 
#[0 17 221 0 25] 
#[1 17 225 0 133 9 154 0 153 17 225 2 146] 
#[0 17 229 0 120] 
#[1 17 233 0 133 9 158 0 153 17 233 2 146] 
#[1 17 237 0 72 3 146 0 153 17 241 2 142] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 17 245 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 17 245 0 207 1 189 0 208 17 245 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 6 90 0 58 0 88 0 97 0 106 0 107 0 108] 
#[0 6 118 0 58 0 88 0 97 0 106 0 107 0 108] 
#[0 6 158 0 58 0 88 0 97 0 106 0 107 0 108] 
#[0 6 186 0 58 0 88 0 97 0 106 0 107 0 108] 
#[0 6 218 0 58 0 88 0 97 0 106 0 107 0 108] 
#[0 9 162 0 58 0 88 0 97 0 106 0 107 0 108] 
#[1 17 249 0 153 17 253 1 236 18 1 1 237] 
#[0 6 70 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 106 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 138 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 166 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 206 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 226 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 7 2 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 3 179 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 9 166 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 7 134 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 88 0 94 0 97 0 98 0 106 0 107 0 108 0 109 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 139 0 153] 
#[0 6 26 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 42 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 82 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 110 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 130 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 142 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 174 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 198 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 238 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 246 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 42 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 18 5 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 18 5 0 207 1 189 0 208 18 5 0 210 1 197 0 211 3 9 1 210 18 5 1 248 3 25 2 148 3 49 2 172] 
#[0 9 170 0 41 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 110 0 114 0 120 0 137] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 18 9 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 18 9 0 207 1 189 0 208 18 9 0 210 1 197 0 211 3 9 1 210 18 9 1 247 3 25 2 148 7 81 2 172] 
#[0 7 14 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 9 174 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 18 13 0 153 1 141 0 188 18 21 0 190 1 141 0 191 18 21 0 209 18 25 1 249] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 18 29 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 18 29 0 207 1 189 0 208 18 29 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 6 22 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 46 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 74 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 102 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 126 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 150 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 170 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 202 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 230 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 254 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 4 119 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 50 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 9 178 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 138 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 18 33 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 18 33 0 207 1 189 0 208 18 33 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 6 34 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 58 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 86 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 114 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 134 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 154 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 182 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 214 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 6 242 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 7 6 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 3 135 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 7 54 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 9 182 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[0 7 142 0 41 0 70 0 72 0 88 0 97 0 103 0 106 0 107 0 108 0 114 0 120 0 133 0 137] 
#[1 18 37 0 124 6 33 0 153 1 141 0 188 18 41 0 190 1 141 0 191 18 41 0 209] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 14 97 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 14 97 0 207 1 189 0 208 14 97 0 210 1 197 0 211 3 9 1 210 18 45 2 35 3 25 2 148 3 49 2 172] 
#[1 18 49 0 32 18 53 0 144 18 57 2 36] 
#[0 6 30 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 54 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 78 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 98 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 122 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 146 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 178 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 194 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 6 234 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 4 123 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 46 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 9 186 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 7 130 0 8 0 41 0 49 0 52 0 55 0 60 0 65 0 66 0 72 0 76 0 86 0 88 0 94 0 97 0 98 0 103 0 106 0 107 0 108 0 110 0 113 0 114 0 117 0 121 0 129 0 130 0 133 0 134 0 137 0 138 0 153] 
#[0 18 61 0 100] 
#[0 6 50 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 18 65 0 100] 
#[0 6 210 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 6 250 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 3 139 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 18 69 0 100] 
#[0 9 190 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[1 18 73 0 25 18 77 0 32 1 93 0 144 18 81 1 118 18 85 2 47] 
#[0 9 194 0 25 0 32 0 144] 
#[0 9 198 0 25 0 32 0 144] 
#[0 9 202 0 25 0 32 0 144] 
#[0 7 126 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 76 0 84 0 86 0 94 0 98 0 108 0 113 0 117 0 120 0 121 0 129 0 130 0 133 0 134 0 138 0 153] 
#[0 18 89 0 8] 
#[1 18 93 0 25 18 97 0 32 1 93 0 144 18 101 1 118 18 105 2 55] 
#[0 6 62 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 6 94 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 6 162 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 6 190 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 6 222 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 4 127 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 9 206 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 7 146 0 72 0 88 0 106 0 107 0 108 0 133 0 153] 
#[0 18 109 0 8] 
#[0 18 113 0 153] 
#[0 18 117 0 148] 
#[1 18 121 0 120 6 66 0 148] 
#[1 18 125 0 72 3 146 0 153 18 129 2 142] 
#[0 18 133 0 148] 
#[0 9 210 0 37 0 41 0 57 0 62 0 68 0 72 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 18 137 0 25] 
#[1 6 33 0 153 18 141 0 188 18 141 0 191] 
#[0 9 214 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[0 9 218 0 23] 
#[1 6 33 0 153 1 141 0 188 9 89 0 190 1 141 0 191 18 145 2 126 9 85 2 127 9 89 2 128] 
#[0 18 149 0 23] 
#[0 9 222 2 173] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 87 0 10 0 88 0 53 0 96 0 10 0 97 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 114 0 10 0 120 0 10 0 122 0 10 0 133 9 226 0 151 18 153 0 172 18 153 0 186 18 153 0 187 18 153 1 203 18 153 2 59 18 153 2 73 18 153 2 97 18 153 2 108 0 89 2 119 0 93 2 120 0 97 2 121 0 101 2 122 9 226 2 173] 
#[0 9 230 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[0 9 234 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 2 173] 
#[1 18 157 0 38 6 33 0 153 1 141 0 188 9 89 0 190 1 141 0 191 18 161 2 127 9 89 2 128] 
#[0 9 238 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 97 0 98 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 120 0 121 0 122 0 124 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 153] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 9 242 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 4 131 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 18 169 0 232 11 241 0 233 18 173 2 131 18 177 2 132 18 181 2 133 18 185 2 134 18 189 2 135] 
#[0 9 246 0 15 0 38] 
#[0 9 250 0 15 0 38] 
#[0 9 254 0 20 0 144] 
#[1 0 30 0 37 0 30 0 41 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 87 0 30 0 88 0 30 0 96 0 30 0 97 0 30 0 105 0 30 0 106 0 30 0 107 0 30 0 108 0 30 0 109 0 30 0 110 0 30 0 114 0 30 0 120 0 30 0 122 0 30 0 133 4 41 0 135 0 30 0 151 18 193 0 178 4 49 0 179 4 53 0 180 4 53 0 181 4 53 0 182 4 53 0 183] 
#[0 10 2 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 10 6 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[0 18 197 0 153] 
#[0 18 201 0 122] 
#[0 18 205 0 153] 
#[0 18 209 0 153] 
#[1 18 213 0 23 10 10 0 144 18 217 2 98 18 221 2 99] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 18 225 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 18 225 0 207 1 189 0 208 18 225 0 210 1 197 0 211 3 9 1 210 18 225 1 248 3 25 2 148 3 49 2 172] 
#[1 18 229 0 153 18 233 2 109] 
#[0 10 14 0 9 0 15] 
#[0 10 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 22 0 9 0 15] 
#[0 10 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 30 0 9 0 15] 
#[0 10 34 0 9 0 15] 
#[0 4 154 0 9 0 15] 
#[0 10 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 42 0 9 0 15] 
#[0 10 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 18 237 1 71 18 237 1 72 18 237 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 18 237 1 89 3 205 1 90 18 237 1 109 18 237 1 112 18 237 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 10 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 18 241 1 71 18 241 1 72 18 241 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 18 241 1 89 3 205 1 90 18 241 1 109 18 241 1 112 18 241 1 113 18 241 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 10 109 0 153 18 245 1 155] 
#[0 10 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 18 249 1 71 18 249 1 72 18 249 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 18 249 1 89 3 205 1 90 18 249 1 109 18 249 1 112 18 249 1 113 18 249 1 115 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 18 253 0 30] 
#[1 19 1 0 9 19 5 0 15] 
#[0 10 66 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 10 70 0 25 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 13 1 71 19 13 1 72 19 13 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 13 1 89 3 205 1 90 19 13 1 109 19 13 1 112 19 13 1 113 19 13 1 115 3 221 1 148 3 221 1 149 19 13 1 174 19 13 1 175 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 19 21 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 19 21 1 109 19 21 1 157 1 205 2 137 3 17 2 138 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155] 
#[0 19 25 0 153] 
#[0 19 29 0 85] 
#[0 10 74 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 19 33 1 117 19 33 1 118 19 33 1 121 19 33 1 156 2 181 1 157 19 33 1 158 19 33 1 159 19 33 1 160 19 33 1 168 19 33 1 169 19 33 1 170 19 33 1 171 19 33 1 179 19 33 1 180 19 33 1 181 19 33 1 182 19 33 1 183 19 33 1 184 19 33 1 185 19 33 1 186 19 33 1 197 19 33 1 198 19 33 1 199 19 33 1 200 19 33 1 202 1 205 2 137 3 17 2 138 19 33 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 19 33 2 156] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 19 37 1 117 19 37 1 118 19 37 1 121 19 37 1 156 2 181 1 157 19 37 1 158 19 37 1 159 19 37 1 160 19 37 1 168 19 37 1 169 19 37 1 170 19 37 1 171 19 37 1 179 19 37 1 180 19 37 1 181 19 37 1 182 19 37 1 183 19 37 1 184 19 37 1 185 19 37 1 186 19 37 1 197 19 37 1 198 19 37 1 199 19 37 1 200 19 37 1 202 1 205 2 137 3 17 2 138 19 37 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 19 37 2 156] 
#[0 10 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 10 82 0 9 19 41 0 20 19 45 1 45] 
#[0 10 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 90 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 49 1 71 19 49 1 72 19 49 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 49 1 89 3 205 1 90 19 49 1 109 19 49 1 112 19 49 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 19 53 0 20] 
#[0 10 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 10 241 0 8 0 141 0 46 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 19 57 0 151 10 245 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 10 249 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 10 253 0 247 1 205 0 249 1 205 0 250 11 1 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 11 5 1 11 1 205 1 12 1 205 1 13 1 205 1 14 10 249 1 26 1 205 1 27 1 205 1 28 19 61 1 32 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 1 205 1 49 11 21 1 52 1 205 1 54 1 205 1 74 1 205 2 137 3 17 2 138 1 205 2 152 1 205 2 155] 
#[0 19 65 0 9] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 19 69 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 19 73 1 9 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 10 93 1 71 10 93 1 72 10 93 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 10 93 1 89 3 205 1 90 10 93 1 109 10 93 1 112 10 93 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 19 1 22 0 20 1 22 0 21 6 117 0 24 1 227 0 26 1 22 0 27 1 22 0 29 10 98 0 30 1 22 0 31 2 230 0 32 1 22 0 33 1 22 0 35 1 22 0 36 0 111 0 37 1 22 0 39 1 22 0 44 1 22 0 90 1 22 0 145 1 22 0 147 1 22 0 149 1 22 0 150 1 22 0 151 0 111 0 153 6 129 0 218 6 129 0 248] 
#[0 19 77 0 151] 
#[1 19 81 0 15 10 102 0 151] 
#[0 10 106 0 15 0 151] 
#[0 19 85 0 30] 
#[1 19 89 0 15 19 93 0 151] 
#[0 10 110 0 15 0 151] 
#[0 10 114 0 15 0 151] 
#[0 10 118 0 15 0 25 0 151] 
#[0 10 122 0 15 0 151] 
#[0 10 126 0 15 0 25 0 151] 
#[0 19 97 0 151] 
#[1 19 101 0 15 10 130 0 151] 
#[1 15 173 0 15 19 105 0 38] 
#[0 19 109 0 9] 
#[0 10 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 19 113 0 38] 
#[1 19 117 0 144 19 121 1 161] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 19 125 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 19 125 0 207 1 189 0 208 19 125 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 19 129 0 8] 
#[1 16 105 0 140 10 138 0 144 19 133 1 193 19 133 1 194] 
#[1 1 93 0 144 19 141 1 118] 
#[0 10 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 10 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 10 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 16 101 0 8 16 105 0 140 1 93 0 144 19 145 1 118 16 109 1 192 16 113 1 194] 
#[0 10 154 0 54] 
#[0 10 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 19 149 0 153] 
#[1 5 97 0 8 19 153 0 15 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 10 162 0 149 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 11 197 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 11 197 0 207 1 189 0 208 11 197 0 210 1 197 0 211 11 193 0 219 11 197 0 220 19 157 1 37 19 161 1 38 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 10 166 0 9 0 20] 
#[0 10 170 0 9 0 20] 
#[0 10 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 19 165 0 153] 
#[0 10 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 19 169 1 117 19 169 1 118 19 169 1 121 19 169 1 156 2 181 1 157 19 169 1 158 19 169 1 159 19 169 1 160 19 169 1 168 19 169 1 169 19 169 1 170 19 169 1 171 19 169 1 179 19 169 1 180 19 169 1 181 19 169 1 182 19 169 1 183 19 169 1 184 19 169 1 185 19 169 1 186 19 169 1 197 19 169 1 198 19 169 1 199 19 169 1 200 19 169 1 202 1 205 2 137 3 17 2 138 19 169 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 19 169 2 156] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 19 173 1 117 19 173 1 118 19 173 1 121 19 173 1 156 2 181 1 157 19 173 1 158 19 173 1 159 19 173 1 160 19 173 1 168 19 173 1 169 19 173 1 170 19 173 1 171 19 173 1 179 19 173 1 180 19 173 1 181 19 173 1 182 19 173 1 183 19 173 1 184 19 173 1 185 19 173 1 186 19 173 1 197 19 173 1 198 19 173 1 199 19 173 1 200 19 173 1 202 1 205 2 137 3 17 2 138 19 173 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 19 173 2 156] 
#[0 10 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 10 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 19 177 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 19 177 0 207 1 189 0 208 19 177 0 210 1 197 0 211 19 177 0 220 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 10 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 202 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 100 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 4 135 0 1 4 139 0 5 4 143 0 8 4 147 0 10 4 151 0 12 4 155 0 13 4 159 0 16 4 163 0 17 4 167 0 46 4 171 0 47 4 175 0 48 4 179 0 49 4 183 0 52 4 187 0 55 4 191 0 56 4 195 0 60 4 199 0 61 4 203 0 62 4 207 0 65 4 211 0 66 4 215 0 73 4 219 0 76 4 223 0 79 4 227 0 86 4 231 0 94 4 235 0 95 4 239 0 97 4 243 0 98 4 247 0 113 4 251 0 117 4 255 0 118 5 3 0 119 5 7 0 121 5 11 0 124 5 15 0 125 5 19 0 126 5 23 0 128 5 27 0 129 5 31 0 130 5 35 0 131 5 39 0 134 5 43 0 136 5 47 0 138 11 45 0 144 5 51 0 148 8 98 0 151 5 55 0 153 5 59 0 154 5 63 0 155 5 67 0 156 5 71 0 157 5 75 0 158 5 79 0 161 5 83 0 162 5 87 0 165 5 91 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 65 1 71 16 65 1 72 16 65 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 65 1 89 3 205 1 90 16 65 1 109 16 65 1 112 16 65 1 113 3 221 1 148 3 221 1 149 3 9 1 210 16 65 1 238 16 65 2 70 16 73 2 71 16 77 2 72 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 19 181 2 168 19 185 2 170 3 49 2 172] 
#[0 10 210 0 9 0 15 0 25] 
#[0 10 214 0 9 0 15 0 25] 
#[0 10 218 0 9 0 15 0 25] 
#[0 10 222 0 9 0 15 0 25] 
#[1 6 137 0 153 19 189 1 143] 
#[0 10 226 0 9 0 15 0 25] 
#[0 10 230 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 85 0 86 0 94 0 95 0 97 0 98 0 102 0 110 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 10 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 19 193 0 231 11 237 0 232 11 241 0 233] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 19 197 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 197 1 71 19 197 1 72 19 197 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 197 1 89 3 205 1 90 19 197 1 109 19 197 1 112 19 197 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 19 201 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 201 1 71 19 201 1 72 19 201 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 201 1 89 3 205 1 90 19 201 1 109 19 201 1 112 19 201 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 19 205 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 205 1 71 19 205 1 72 19 205 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 205 1 89 3 205 1 90 19 205 1 109 19 205 1 112 19 205 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 10 238 0 9 0 15 0 38] 
#[0 10 242 0 9 0 15 0 38] 
#[0 10 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 19 209 0 218 19 209 0 248 1 22 2 173] 
#[1 15 173 0 15 19 213 0 38] 
#[0 10 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 19 217 0 241 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 17 1 71 12 17 1 72 12 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 17 1 89 3 205 1 90 12 17 1 109 12 17 1 112 12 17 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 19 221 1 71 19 221 1 72 19 221 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 19 221 1 89 3 205 1 90 19 221 1 109 19 221 1 112 19 221 1 113 19 221 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 6 0 159 0 160 0 163 0 164] 
#[0 19 225 0 23] 
#[0 11 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 19 229 0 241 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 12 17 1 71 12 17 1 72 12 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 12 17 1 89 3 205 1 90 12 17 1 109 12 17 1 112 12 17 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 22 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 19 233 0 25] 
#[0 11 30 0 32 0 144] 
#[0 11 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 11 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 19 237 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 153 20 5 1 209 20 9 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 20 13 0 8] 
#[0 20 17 0 110] 
#[1 11 46 0 9 20 21 0 15 11 46 0 25 20 25 1 146] 
#[0 11 50 0 9 0 25] 
#[0 11 54 0 9 0 15] 
#[0 11 58 0 9 0 15] 
#[0 11 62 0 9 0 15] 
#[0 11 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 20 29 1 71 20 29 1 72 20 29 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 20 29 1 89 3 205 1 90 20 29 1 109 20 29 1 112 20 29 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 12 241 0 110 20 33 1 88] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 20 37 1 71 20 37 1 72 20 37 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 20 37 1 89 3 205 1 90 20 37 1 109 20 37 1 112 20 37 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 20 41 0 85] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 20 45 1 71 20 45 1 72 20 45 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 20 45 1 89 3 205 1 90 20 45 1 109 20 45 1 112 20 45 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 13 33 1 71 13 33 1 72 13 33 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 13 33 1 89 3 205 1 90 20 49 1 101 13 33 1 109 13 33 1 112 13 33 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 94 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 11 98 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 11 102 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 11 106 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 20 53 0 51] 
#[0 11 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 20 57 0 153] 
#[0 11 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 11 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 20 61 0 25] 
#[0 11 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 11 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 11 130 0 153] 
#[0 11 134 0 153] 
#[0 11 138 0 153] 
#[0 5 95 0 153] 
#[0 11 146 0 153] 
#[1 20 65 0 153 20 69 1 230 20 73 1 231] 
#[1 11 150 0 15 11 150 0 25 20 77 0 30] 
#[1 20 81 0 15 20 85 0 25] 
#[0 11 154 0 15 0 25] 
#[1 18 13 0 153 1 141 0 188 18 21 0 190 1 141 0 191 18 21 0 209 20 89 1 249] 
#[1 18 13 0 153 1 141 0 188 18 21 0 190 1 141 0 191 18 21 0 209 20 93 1 249] 
#[1 11 158 0 8 1 22 0 20 6 117 0 24 5 99 0 26 11 158 0 32 11 158 0 144 10 105 0 218 10 105 0 248] 
#[0 11 162 0 15 0 20 0 25 0 32 0 141 0 144] 
#[0 20 97 0 20] 
#[1 20 101 0 32 20 105 0 144 20 109 2 10] 
#[1 18 13 0 153 1 141 0 188 18 21 0 190 1 141 0 191 18 21 0 209 20 113 1 249] 
#[1 20 117 0 153 1 141 0 188 18 21 0 190 1 141 0 191 18 21 0 209 20 121 1 236 18 1 1 237 20 125 1 249] 
#[0 20 129 0 37] 
#[0 20 133 0 20] 
#[1 20 137 0 32 20 141 0 144 20 145 2 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 20 149 1 71 20 149 1 72 20 149 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 20 149 1 89 3 205 1 90 20 149 1 109 20 149 1 112 20 149 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 106 0 10 0 107 0 10 0 116 20 153 2 14 20 157 2 16 20 161 2 18 20 165 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 11 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 20 169 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 20 169 0 207 1 189 0 208 20 169 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 20 173 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 20 173 0 207 1 189 0 208 20 173 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 21 9 0 1 21 13 0 2 21 13 0 3 21 13 0 5 21 13 0 10 20 197 0 12 21 9 0 13 20 205 0 16 21 9 0 17 21 13 0 21 21 13 0 26 21 13 0 27 21 13 0 29 21 13 0 31 21 13 0 33 21 13 0 39 21 9 0 73 21 9 0 126 21 13 0 145 21 9 0 148 21 13 0 149 21 13 0 150 21 9 2 43 21 13 2 45] 
#[0 11 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 17 1 71 21 17 1 72 21 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 17 1 89 3 205 1 90 21 17 1 109 21 17 1 112 21 17 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 174 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 11 178 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 21 21 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 11 182 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 25 1 71 21 25 1 72 21 25 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 25 1 89 3 205 1 90 21 25 1 109 21 25 1 112 21 25 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 11 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 11 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 21 29 0 9] 
#[0 21 33 0 8] 
#[0 21 37 0 153] 
#[0 11 194 0 153] 
#[0 5 103 0 153] 
#[0 11 202 0 153] 
#[0 21 41 0 153] 
#[0 11 206 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[1 6 133 0 20 21 45 0 25] 
#[1 21 49 0 15 21 53 0 38] 
#[0 11 210 0 153] 
#[0 11 214 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[0 11 218 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 80 0 85 0 86 0 87 0 88 0 94 0 97 0 98 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 113 0 114 0 116 0 117 0 120 0 121 0 122 0 124 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 153] 
#[0 11 222 0 15 0 38] 
#[1 16 233 0 23 21 57 0 30] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 65 1 71 21 65 1 72 21 65 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 65 1 89 3 205 1 90 21 65 1 109 21 65 1 112 21 65 1 113 3 221 1 148 3 221 1 149 3 9 1 210 21 65 2 136 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 21 69 0 9] 
#[1 11 226 0 9 21 73 0 15] 
#[0 11 230 0 9 0 15] 
#[1 21 77 0 9 21 81 0 15] 
#[0 11 234 0 9 0 15] 
#[1 0 49 0 37 0 10 0 41 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 87 0 10 0 88 0 53 0 96 0 10 0 97 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 114 0 10 0 120 0 10 0 122 0 10 0 133 7 154 0 151 15 57 0 172 21 85 0 184 15 53 0 185 15 57 0 186 15 57 0 187 15 57 1 203 15 57 2 59 15 57 2 73 15 57 2 97 15 57 2 108 0 89 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 11 238 0 23 17 93 0 26 11 238 0 141 11 238 0 144 21 89 1 207 21 89 1 208] 
#[0 21 97 0 153] 
#[1 11 238 0 23 17 93 0 26 11 238 0 141 11 238 0 144 21 101 1 207 21 101 1 208] 
#[1 11 242 0 23 21 105 0 26 11 242 0 141 11 242 0 144 21 109 2 77 21 109 2 78] 
#[1 21 121 0 52 21 121 0 55 21 121 0 86 21 121 0 94 21 121 0 113 21 121 0 117 21 121 0 129 21 121 0 130 21 121 0 134 6 33 0 153 1 141 0 188 21 125 0 190 1 141 0 191 21 121 0 203 21 125 2 100] 
#[1 21 129 0 144 21 133 2 101] 
#[0 11 246 0 144] 
#[1 18 229 0 153 21 137 2 109] 
#[1 21 141 0 8 21 105 0 26 21 145 2 78] 
#[0 11 250 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 11 254 0 15 0 38 0 151] 
#[0 12 2 0 15 0 25] 
#[0 12 6 0 15 0 25] 
#[0 21 149 0 9] 
#[1 0 105 0 1 21 153 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 157 1 71 21 157 1 72 21 157 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 157 1 89 3 205 1 90 21 157 1 109 21 157 1 112 21 157 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 21 161 2 159 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 21 165 1 117 21 165 1 118 21 165 1 121 21 165 1 156 2 181 1 157 21 165 1 158 21 165 1 159 21 165 1 160 21 165 1 168 21 165 1 169 21 165 1 170 21 165 1 171 21 165 1 179 21 165 1 180 21 165 1 181 21 165 1 182 21 165 1 183 21 165 1 184 21 165 1 185 21 165 1 186 21 165 1 197 21 165 1 198 21 165 1 199 21 165 1 200 21 165 1 202 1 205 2 137 3 17 2 138 21 165 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 21 165 2 156] 
#[1 15 201 0 153 21 169 2 158] 
#[0 12 10 0 25] 
#[0 21 173 0 25] 
#[0 12 14 0 25] 
#[0 12 18 0 9 0 15 0 25] 
#[0 21 177 0 85] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 181 1 71 21 181 1 72 21 181 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 181 1 89 3 205 1 90 21 181 1 109 21 181 1 112 21 181 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 12 22 0 1 12 22 0 5 12 22 0 8 12 22 0 10 12 22 0 12 12 22 0 13 12 22 0 16 12 22 0 17 12 22 0 25 12 22 0 46 12 22 0 47 12 22 0 48 12 22 0 49 12 22 0 50 12 22 0 52 12 22 0 53 12 22 0 55 12 22 0 56 12 22 0 58 12 22 0 59 12 22 0 60 12 22 0 61 12 22 0 62 12 22 0 64 12 22 0 65 12 22 0 66 5 107 0 67 12 22 0 73 12 22 0 75 12 22 0 76 12 22 0 77 12 22 0 78 12 22 0 81 12 22 0 83 12 22 0 86 12 22 0 93 12 22 0 94 12 22 0 95 12 22 0 97 12 22 0 98 12 22 0 110 12 22 0 112 12 22 0 113 12 22 0 117 12 22 0 118 12 22 0 119 12 22 0 120 12 22 0 121 12 22 0 123 12 22 0 124 12 22 0 125 12 22 0 126 12 22 0 127 12 22 0 128 12 22 0 129 12 22 0 130 12 22 0 131 12 22 0 133 12 22 0 134 12 22 0 135 12 22 0 136 12 22 0 138 12 22 0 142 12 22 0 143 12 22 0 144 12 22 0 148 12 22 0 151 12 22 0 153 12 22 0 154 12 22 0 155 12 22 0 156 12 22 0 157 12 22 0 158 12 22 0 161 12 22 0 162 12 22 0 165 12 22 0 166 12 22 2 173] 
#[0 12 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 21 189 0 153] 
#[0 12 30 0 9 0 20] 
#[0 12 34 0 15 0 151] 
#[0 21 193 0 153] 
#[0 12 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 12 42 0 15 0 151] 
#[1 12 46 0 1 12 46 0 2 12 46 0 3 12 46 0 4 12 46 0 5 12 46 0 6 12 46 0 7 12 46 0 8 12 46 0 9 12 46 0 10 12 46 0 11 12 46 0 12 12 46 0 13 12 46 0 14 12 46 0 15 12 46 0 16 12 46 0 17 12 46 0 18 12 46 0 19 12 46 0 20 12 46 0 21 12 46 0 22 12 46 0 23 12 46 0 25 12 46 0 26 12 46 0 27 12 46 0 28 12 46 0 29 12 46 0 30 12 46 0 31 12 46 0 33 12 46 0 34 12 46 0 35 12 46 0 36 12 46 0 37 12 46 0 38 12 46 0 39 12 46 0 40 12 46 0 44 12 46 0 45 12 46 0 46 12 46 0 47 12 46 0 48 12 46 0 49 12 46 0 50 12 46 0 51 12 46 0 52 12 46 0 53 12 46 0 55 12 46 0 56 12 46 0 58 12 46 0 59 12 46 0 60 12 46 0 61 12 46 0 62 12 46 0 63 12 46 0 64 12 46 0 65 12 46 0 66 12 46 0 67 12 46 0 69 12 46 0 73 12 46 0 75 12 46 0 76 12 46 0 77 12 46 0 78 12 46 0 79 12 46 0 81 12 46 0 82 12 46 0 83 12 46 0 86 12 46 0 89 12 46 0 90 12 46 0 91 12 46 0 92 12 46 0 93 12 46 0 94 12 46 0 95 12 46 0 97 12 46 0 98 12 46 0 99 12 46 0 101 12 46 0 110 12 46 0 112 12 46 0 113 12 46 0 115 12 46 0 117 12 46 0 118 12 46 0 119 12 46 0 120 12 46 0 121 12 46 0 123 12 46 0 124 12 46 0 125 12 46 0 126 12 46 0 127 12 46 0 128 12 46 0 129 12 46 0 130 12 46 0 131 12 46 0 133 12 46 0 134 12 46 0 135 12 46 0 136 12 46 0 138 12 46 0 140 12 46 0 141 12 46 0 142 12 46 0 143 5 111 0 144 12 46 0 145 12 46 0 146 12 46 0 147 12 46 0 148 12 46 0 149 12 46 0 150 12 46 0 151 12 46 0 153 12 46 0 154 12 46 0 155 12 46 0 156 12 46 0 157 12 46 0 158 12 46 0 159 12 46 0 160 12 46 0 161 12 46 0 162 12 46 0 163 12 46 0 164 12 46 0 165 12 46 0 166 21 197 1 15 21 197 1 16 21 197 1 17 21 197 1 23 12 46 2 173] 
#[1 16 241 0 15 21 205 0 38] 
#[1 15 173 0 15 21 209 0 151] 
#[0 12 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 16 21 0 37 21 213 0 151 21 217 0 153 21 221 1 20 16 45 1 21] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 11 29 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 21 229 1 16 21 229 1 17 21 229 1 22 21 229 1 23 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 229 1 71 21 229 1 72 21 229 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 229 1 89 3 205 1 90 21 229 1 109 21 229 1 112 21 229 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 16 25 0 144 1 97 0 148 21 237 0 151 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 21 241 1 25 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 125 1 48 1 205 1 49 1 205 1 54 3 125 1 55 3 125 1 56 3 125 1 57 3 125 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 16 57 1 71 16 57 1 72 16 57 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 16 57 1 89 3 205 1 90 16 57 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 125 2 151 1 205 2 152 3 125 2 154 1 205 2 155 3 49 2 172] 
#[0 12 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 12 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 11 45 0 144 1 97 0 148 21 245 0 151 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 21 249 1 71 21 249 1 72 21 249 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 21 249 1 89 3 205 1 90 21 249 1 109 21 249 1 112 21 249 1 113 3 221 1 148 3 221 1 149 3 9 1 210 21 249 1 238 21 249 2 70 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 12 62 0 1 12 62 0 2 12 62 0 3 12 62 0 4 12 62 0 5 12 62 0 6 12 62 0 7 12 62 0 8 12 62 0 9 12 62 0 10 12 62 0 11 12 62 0 12 12 62 0 13 12 62 0 14 12 62 0 15 12 62 0 16 12 62 0 17 12 62 0 18 12 62 0 19 12 62 0 20 12 62 0 21 12 62 0 22 12 62 0 23 12 62 0 25 12 62 0 26 12 62 0 27 12 62 0 28 12 62 0 29 12 62 0 30 12 62 0 31 12 62 0 33 12 62 0 34 12 62 0 35 12 62 0 36 5 233 0 37 12 62 0 38 12 62 0 39 12 62 0 40 12 62 0 44 12 62 0 45 12 62 0 46 12 62 0 47 12 62 0 48 12 62 0 49 12 62 0 50 12 62 0 51 12 62 0 52 12 62 0 53 12 62 0 55 12 62 0 56 12 62 0 58 12 62 0 59 12 62 0 60 12 62 0 61 12 62 0 62 12 62 0 63 12 62 0 64 12 62 0 65 12 62 0 66 12 62 0 67 12 62 0 69 12 62 0 73 12 62 0 75 12 62 0 76 12 62 0 77 12 62 0 78 12 62 0 79 12 62 0 81 12 62 0 82 12 62 0 83 12 62 0 86 12 62 0 89 12 62 0 90 12 62 0 91 12 62 0 92 12 62 0 93 12 62 0 94 12 62 0 95 12 62 0 97 12 62 0 98 12 62 0 99 12 62 0 101 12 62 0 110 12 62 0 112 12 62 0 113 12 62 0 115 12 62 0 117 12 62 0 118 12 62 0 119 12 62 0 120 12 62 0 121 12 62 0 123 12 62 0 124 12 62 0 125 12 62 0 126 12 62 0 127 12 62 0 128 12 62 0 129 12 62 0 130 12 62 0 131 12 62 0 133 12 62 0 134 12 62 0 135 12 62 0 136 12 62 0 138 12 62 0 140 12 62 0 141 12 62 0 142 12 62 0 143 12 62 0 144 12 62 0 145 12 62 0 146 12 62 0 147 12 62 0 148 12 62 0 149 12 62 0 150 12 62 0 151 12 62 0 153 12 62 0 154 12 62 0 155 12 62 0 156 12 62 0 157 12 62 0 158 12 62 0 159 12 62 0 160 12 62 0 161 12 62 0 162 12 62 0 163 12 62 0 164 12 62 0 165 12 62 0 166 21 253 0 212 22 1 0 213 6 165 0 214 12 62 2 173] 
#[0 12 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 12 70 0 1 12 70 0 2 12 70 0 3 12 70 0 4 12 70 0 5 12 70 0 6 12 70 0 7 12 70 0 8 12 70 0 9 12 70 0 10 12 70 0 11 12 70 0 12 12 70 0 13 12 70 0 14 12 70 0 15 12 70 0 16 12 70 0 17 12 70 0 18 12 70 0 19 12 70 0 20 12 70 0 21 12 70 0 22 12 70 0 23 12 70 0 25 12 70 0 26 12 70 0 27 12 70 0 28 12 70 0 29 12 70 0 30 12 70 0 31 12 70 0 33 12 70 0 34 12 70 0 35 12 70 0 36 12 70 0 37 12 70 0 38 12 70 0 39 12 70 0 40 12 70 0 44 12 70 0 45 12 70 0 46 12 70 0 47 12 70 0 48 12 70 0 49 12 70 0 50 12 70 0 51 12 70 0 52 12 70 0 53 12 70 0 55 12 70 0 56 12 70 0 58 12 70 0 59 12 70 0 60 12 70 0 61 12 70 0 62 12 70 0 63 12 70 0 64 12 70 0 65 12 70 0 66 12 70 0 67 12 70 0 69 12 70 0 73 12 70 0 75 12 70 0 76 12 70 0 77 12 70 0 78 12 70 0 79 12 70 0 81 12 70 0 82 12 70 0 83 12 70 0 86 12 70 0 89 12 70 0 90 12 70 0 91 12 70 0 92 12 70 0 93 12 70 0 94 12 70 0 95 12 70 0 97 12 70 0 98 12 70 0 99 12 70 0 101 12 70 0 110 12 70 0 112 12 70 0 113 12 70 0 115 12 70 0 117 12 70 0 118 12 70 0 119 12 70 0 120 12 70 0 121 12 70 0 123 12 70 0 124 12 70 0 125 12 70 0 126 12 70 0 127 12 70 0 128 12 70 0 129 12 70 0 130 12 70 0 131 12 70 0 133 12 70 0 134 12 70 0 135 12 70 0 136 12 70 0 138 12 70 0 140 12 70 0 141 12 70 0 142 12 70 0 143 5 115 0 144 12 70 0 145 12 70 0 146 12 70 0 147 12 70 0 148 12 70 0 149 12 70 0 150 12 70 0 151 12 70 0 153 12 70 0 154 12 70 0 155 12 70 0 156 12 70 0 157 12 70 0 158 12 70 0 159 12 70 0 160 12 70 0 161 12 70 0 162 12 70 0 163 12 70 0 164 12 70 0 165 12 70 0 166 22 9 2 167 12 70 2 173] 
#[1 22 13 0 53 22 17 0 61 12 74 0 151 22 21 1 162 22 25 1 163 22 29 1 164 22 33 1 165 22 37 1 166] 
#[0 12 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 12 82 0 9 22 45 0 153 22 45 2 143] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 49 1 71 22 49 1 72 22 49 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 49 1 89 3 205 1 90 22 49 1 109 22 49 1 112 22 49 1 113 22 49 1 115 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 1 93 0 144 22 53 1 118] 
#[0 12 86 0 144] 
#[0 12 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 12 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[1 3 255 0 9 1 22 0 10 3 255 0 20 16 145 0 26 1 22 0 35 1 22 0 37 16 189 0 218 16 189 0 248 22 57 1 35 16 153 1 36] 
#[0 12 98 0 15 0 149] 
#[0 22 61 0 149] 
#[1 22 65 0 15 12 102 0 149] 
#[1 8 142 0 9 8 142 0 20 22 69 0 26 22 73 1 35 16 153 1 36] 
#[0 12 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 12 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 12 114 0 15 0 149] 
#[0 22 77 0 151] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 89 1 71 22 89 1 72 22 89 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 89 1 89 3 205 1 90 22 89 1 109 22 89 1 112 22 89 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 22 85 2 169 22 89 2 171 3 49 2 172] 
#[0 12 118 0 9 0 15 0 25] 
#[0 12 122 0 9 0 15 0 38] 
#[0 12 126 0 9 0 15 0 38] 
#[0 12 130 0 9 0 15 0 38] 
#[0 12 134 0 9 0 15 0 38] 
#[1 12 138 0 1 12 138 0 2 12 138 0 3 12 138 0 4 12 138 0 5 12 138 0 6 12 138 0 7 12 138 0 8 12 138 0 9 12 138 0 10 12 138 0 11 12 138 0 12 12 138 0 13 12 138 0 14 12 138 0 15 12 138 0 16 12 138 0 17 12 138 0 18 12 138 0 19 12 138 0 20 12 138 0 21 12 138 0 22 12 138 0 23 12 138 0 25 12 138 0 26 12 138 0 27 12 138 0 28 12 138 0 29 12 138 0 30 12 138 0 31 12 138 0 33 12 138 0 34 12 138 0 35 12 138 0 36 12 138 0 37 12 138 0 38 12 138 0 39 12 138 0 40 12 138 0 44 12 138 0 45 12 138 0 46 12 138 0 47 12 138 0 48 12 138 0 49 12 138 0 50 12 138 0 51 12 138 0 52 12 138 0 53 12 138 0 55 12 138 0 56 12 138 0 58 12 138 0 59 12 138 0 60 12 138 0 61 12 138 0 62 12 138 0 63 12 138 0 64 12 138 0 65 12 138 0 66 12 138 0 67 12 138 0 69 12 138 0 73 12 138 0 75 12 138 0 76 12 138 0 77 12 138 0 78 12 138 0 79 12 138 0 81 12 138 0 82 12 138 0 83 12 138 0 86 12 138 0 89 12 138 0 90 12 138 0 91 12 138 0 92 12 138 0 93 12 138 0 94 12 138 0 95 12 138 0 97 12 138 0 98 12 138 0 99 12 138 0 101 12 138 0 110 12 138 0 112 12 138 0 113 12 138 0 115 12 138 0 117 12 138 0 118 12 138 0 119 12 138 0 120 12 138 0 121 12 138 0 123 12 138 0 124 12 138 0 125 12 138 0 126 12 138 0 127 12 138 0 128 12 138 0 129 12 138 0 130 12 138 0 131 12 138 0 133 12 138 0 134 12 138 0 135 12 138 0 136 12 138 0 138 12 138 0 140 12 138 0 141 12 138 0 142 12 138 0 143 12 138 0 144 12 138 0 145 12 138 0 146 12 138 0 147 12 138 0 148 12 138 0 149 12 138 0 150 12 138 0 151 12 138 0 153 12 138 0 154 12 138 0 155 12 138 0 156 12 138 0 157 12 138 0 158 12 138 0 159 12 138 0 160 12 138 0 161 12 138 0 162 12 138 0 163 12 138 0 164 12 138 0 165 12 138 0 166 22 93 1 50 12 138 2 173] 
#[0 12 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 12 146 0 159 0 160] 
#[1 8 206 0 23 12 150 0 159 12 150 0 160 12 150 0 163 12 150 0 164 22 97 0 242 17 45 0 243] 
#[0 12 154 0 159 0 160 0 163 0 164] 
#[0 12 158 0 163 0 164] 
#[0 12 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 22 101 0 9] 
#[0 12 166 0 9] 
#[1 12 170 0 9 22 105 0 15 12 170 0 38] 
#[0 12 174 0 9 0 15 0 38] 
#[0 12 178 0 9 0 38] 
#[1 12 182 0 8 12 182 0 49 12 182 0 52 12 182 0 55 12 182 0 60 12 182 0 65 12 182 0 66 12 182 0 76 22 129 0 85 12 182 0 86 12 182 0 94 12 182 0 98 22 129 0 102 22 117 0 104 22 129 0 110 12 182 0 113 12 182 0 117 12 182 0 121 22 129 0 124 12 182 0 129 12 182 0 130 12 182 0 134 12 182 0 138 12 182 0 153 22 129 2 2 22 129 2 3 22 129 2 4] 
#[1 22 141 0 15 22 145 0 149] 
#[1 22 149 0 153 22 153 1 210] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 22 157 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 22 161 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 161 1 71 22 161 1 72 22 161 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 161 1 89 3 205 1 90 22 161 1 109 22 161 1 112 22 161 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 12 81 0 153 22 165 1 136] 
#[0 12 186 0 9 0 15 0 25] 
#[0 12 190 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 12 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 12 198 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 169 1 71 22 169 1 72 22 169 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 169 1 89 3 205 1 90 22 169 1 109 22 169 1 112 22 169 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 12 202 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 12 206 0 15 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 173 1 71 22 173 1 72 22 173 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 173 1 89 3 205 1 90 22 173 1 109 22 173 1 112 22 173 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 3 65 0 79 3 62 0 82 8 25 0 91 8 29 0 92 8 33 0 101 3 62 0 115 8 37 0 141 8 41 1 90 22 177 1 91 8 49 1 92 8 53 1 93 8 57 1 94 8 61 1 95 8 65 1 96 8 69 1 97 8 73 1 98 8 77 1 99] 
#[0 12 210 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 22 181 0 30] 
#[1 22 185 0 15 22 189 0 25] 
#[0 12 214 0 15 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 11 45 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 193 1 71 22 193 1 72 22 193 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 193 1 89 3 205 1 90 22 193 1 109 22 193 1 112 22 193 1 113 3 221 1 148 3 221 1 149 3 9 1 210 22 193 1 238 22 193 2 70 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 17 249 0 153 22 197 1 237] 
#[0 12 218 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 11 238 0 8 17 93 0 26 22 201 1 207 22 201 1 208] 
#[1 11 238 0 8 17 93 0 26 22 205 1 207 22 205 1 208] 
#[0 22 209 0 153] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 22 213 1 71 22 213 1 72 22 213 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 22 213 1 89 3 205 1 90 22 213 1 109 22 213 1 112 22 213 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 106 0 10 0 107 0 10 0 116 22 217 2 14 20 157 2 16 20 161 2 18 20 165 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 12 222 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 22 221 0 32 22 225 0 144 22 229 2 13] 
#[1 11 150 0 15 1 22 0 20 6 117 0 24 11 150 0 25 6 121 0 26 20 77 0 30 11 158 0 144 10 105 0 218 10 105 0 248] 
#[1 20 81 0 15 22 233 0 25] 
#[0 22 237 0 144] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 22 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 22 245 0 124] 
#[0 22 249 0 110] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 106 0 10 0 107 22 253 2 22 23 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 12 226 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 23 5 0 25] 
#[0 23 9 0 151] 
#[1 0 49 0 37 0 10 0 88 0 10 0 106 0 10 0 107 0 10 0 116 12 230 0 151 23 13 2 17 23 13 2 18 23 21 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 106 0 10 0 107 12 234 0 151 23 25 2 15 23 25 2 16 23 33 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 12 238 0 80 23 37 0 88 23 41 0 106 23 45 0 107 12 238 0 116 23 49 2 19 23 53 2 20] 
#[0 23 57 0 8] 
#[0 23 61 0 8] 
#[0 12 242 0 8] 
#[0 12 246 0 8] 
#[0 12 250 0 8] 
#[0 12 254 0 8] 
#[0 13 2 0 8] 
#[0 5 119 0 8] 
#[0 13 14 0 8] 
#[0 5 123 0 8] 
#[0 13 26 0 8] 
#[0 13 30 0 8] 
#[0 13 34 0 8] 
#[0 13 38 0 8] 
#[0 13 42 0 8] 
#[0 13 46 0 8] 
#[0 13 50 0 8] 
#[0 13 54 0 8] 
#[0 13 58 0 8] 
#[0 13 62 0 8] 
#[0 13 66 0 8] 
#[0 13 70 0 8] 
#[0 13 74 0 8] 
#[0 13 78 0 8] 
#[0 23 65 0 8] 
#[0 23 69 0 8] 
#[0 23 73 0 25] 
#[0 23 77 0 9] 
#[0 23 81 0 25] 
#[1 23 85 0 25 23 89 0 32 1 93 0 144 23 93 1 118 23 97 2 58] 
#[0 23 101 0 9] 
#[0 23 105 0 8] 
#[0 23 109 0 8] 
#[0 13 82 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 135 0 151 2 173] 
#[1 23 113 0 38 6 33 0 153 1 141 0 188 9 89 0 190 1 141 0 191 18 161 2 127 9 89 2 128] 
#[0 13 86 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 23 117 1 71 23 117 1 72 23 117 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 23 117 1 89 3 205 1 90 23 117 1 109 23 117 1 112 23 117 1 113 3 221 1 148 3 221 1 149 3 9 1 210 23 117 2 136 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 13 90 0 9 0 15] 
#[0 13 94 0 9 0 15] 
#[0 13 98 0 15 0 38] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 4 131 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 18 169 0 232 11 241 0 233 23 121 2 133 23 125 2 134 18 189 2 135] 
#[0 13 102 0 15 0 38] 
#[1 23 129 0 153 23 133 2 135] 
#[0 23 137 0 151] 
#[1 23 141 0 23 13 106 0 141 13 106 0 144 23 145 1 211 23 149 1 212] 
#[0 13 110 0 8 0 23 0 141 0 144] 
#[1 11 238 0 23 17 93 0 26 11 238 0 141 11 238 0 144 23 153 1 207 23 153 1 208] 
#[1 23 157 0 23 13 114 0 141 13 114 0 144 23 161 2 63 23 165 2 64] 
#[1 0 49 0 37 0 10 0 85 0 10 0 102 0 10 0 153 23 169 2 79 23 173 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 23 177 0 23 13 118 0 141 13 118 0 144 23 181 2 82 23 185 2 83] 
#[0 13 122 0 23 0 141 0 144] 
#[0 13 126 0 144] 
#[0 13 130 0 144] 
#[0 13 134 0 144] 
#[1 0 49 0 37 13 138 0 151 0 10 0 153 23 189 2 105 23 193 2 106 23 197 2 107 23 201 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 7 190 0 8 23 205 0 25 7 190 0 37 7 190 0 41 7 190 0 46 7 190 0 49 7 190 0 52 7 190 0 55 7 190 0 57 7 190 0 58 7 190 0 60 7 190 0 62 7 190 0 65 7 190 0 66 7 190 0 68 7 190 0 70 7 190 0 72 7 190 0 75 7 190 0 76 7 190 0 86 7 190 0 87 7 190 0 88 7 190 0 94 7 190 0 96 7 190 0 97 7 190 0 98 7 190 0 103 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 113 7 190 0 114 7 190 0 117 7 190 0 120 7 190 0 121 7 190 0 122 7 190 0 129 7 190 0 130 7 190 0 133 7 190 0 134 7 190 0 137 7 190 0 138 7 190 0 139 7 190 0 148 7 190 0 151 7 190 0 153 23 205 2 139 7 190 2 173] 
#[0 13 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 23 209 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 23 213 0 8] 
#[0 23 217 0 25] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 23 221 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 23 225 1 48 1 205 1 49 1 205 1 54 23 225 1 55 23 225 1 56 23 225 1 57 23 225 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 23 221 1 71 23 221 1 72 23 221 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 23 221 1 89 3 205 1 90 23 221 1 109 23 221 1 112 23 221 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 23 225 2 151 1 205 2 152 23 225 2 154 1 205 2 155 3 49 2 172] 
#[0 13 146 0 9 0 15] 
#[0 13 150 0 9 0 15] 
#[0 13 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 13 158 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 13 162 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 4 213 0 52 4 217 0 55 3 61 0 56 4 221 0 60 0 185 0 61 0 189 0 62 4 225 0 65 3 17 0 73 4 229 0 76 4 233 0 86 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 33 0 124 3 17 0 126 1 49 0 128 5 1 0 129 5 5 0 130 3 73 0 131 5 9 0 134 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 10 149 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 10 149 1 109 10 149 1 157 23 229 1 176 23 229 1 177 23 237 1 178 1 205 2 137 3 17 2 138 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 23 241 1 71 23 241 1 72 23 241 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 23 241 1 89 3 205 1 90 23 241 1 109 23 241 1 112 23 241 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 23 245 0 9] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 23 249 1 117 23 249 1 118 23 249 1 121 23 249 1 156 2 181 1 157 23 249 1 158 23 249 1 159 23 249 1 160 23 249 1 168 23 249 1 169 23 249 1 170 23 249 1 171 23 249 1 179 23 249 1 180 23 249 1 181 23 249 1 182 23 249 1 183 23 249 1 184 23 249 1 185 23 249 1 186 23 249 1 197 23 249 1 198 23 249 1 199 23 249 1 200 23 249 1 202 1 205 2 137 3 17 2 138 23 249 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 23 249 2 156] 
#[1 1 22 0 9 1 22 0 20 6 121 0 26 23 253 0 218 23 253 0 248] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 121 0 26 1 22 0 35 1 22 0 37 1 22 0 151 24 1 0 218 24 1 0 248] 
#[0 13 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 13 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 13 174 0 30] 
#[0 13 178 0 15 0 151] 
#[0 13 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 10 98 0 30] 
#[0 13 186 0 15 0 151] 
#[0 13 190 0 15 0 151] 
#[0 13 194 0 15 0 151] 
#[0 13 198 0 15 0 151] 
#[0 13 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 13 206 0 15 0 151] 
#[0 13 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 13 214 0 15 0 151] 
#[1 13 218 0 1 13 218 0 2 13 218 0 3 13 218 0 4 13 218 0 5 13 218 0 6 13 218 0 7 13 218 0 8 13 218 0 9 13 218 0 10 13 218 0 11 13 218 0 12 13 218 0 13 13 218 0 14 13 218 0 15 13 218 0 16 13 218 0 17 13 218 0 18 13 218 0 19 13 218 0 20 13 218 0 21 13 218 0 22 13 218 0 23 13 218 0 25 13 218 0 26 13 218 0 27 13 218 0 28 13 218 0 29 13 218 0 30 13 218 0 31 13 218 0 33 13 218 0 34 13 218 0 35 13 218 0 36 13 218 0 38 13 218 0 39 13 218 0 40 13 218 0 44 13 218 0 45 13 218 0 46 13 218 0 47 13 218 0 48 13 218 0 49 13 218 0 50 13 218 0 51 13 218 0 52 13 218 0 53 13 218 0 55 13 218 0 56 13 218 0 58 13 218 0 59 13 218 0 60 13 218 0 61 13 218 0 62 13 218 0 63 13 218 0 64 13 218 0 65 13 218 0 66 13 218 0 67 13 218 0 69 13 218 0 73 13 218 0 75 13 218 0 76 13 218 0 77 13 218 0 78 13 218 0 79 13 218 0 81 13 218 0 82 13 218 0 83 13 218 0 86 13 218 0 89 13 218 0 90 13 218 0 91 13 218 0 92 13 218 0 93 13 218 0 94 13 218 0 95 13 218 0 97 13 218 0 98 13 218 0 99 13 218 0 101 13 218 0 110 13 218 0 112 13 218 0 113 13 218 0 115 13 218 0 117 13 218 0 118 13 218 0 119 13 218 0 120 13 218 0 121 13 218 0 123 13 218 0 124 13 218 0 125 13 218 0 126 13 218 0 127 13 218 0 128 13 218 0 129 13 218 0 130 13 218 0 131 13 218 0 133 13 218 0 134 13 218 0 135 13 218 0 136 13 218 0 138 13 218 0 140 13 218 0 141 13 218 0 142 13 218 0 143 5 127 0 144 13 218 0 145 13 218 0 146 13 218 0 147 13 218 0 148 13 218 0 149 13 218 0 150 13 218 0 151 13 218 0 153 13 218 0 154 13 218 0 155 13 218 0 156 13 218 0 157 13 218 0 158 13 218 0 159 13 218 0 160 13 218 0 161 13 218 0 162 13 218 0 163 13 218 0 164 13 218 0 165 13 218 0 166 24 5 2 69 24 5 2 70 13 218 2 173] 
#[1 13 222 0 1 13 222 0 2 13 222 0 3 13 222 0 4 13 222 0 5 13 222 0 6 13 222 0 7 13 222 0 8 13 222 0 9 13 222 0 10 13 222 0 11 13 222 0 12 13 222 0 13 13 222 0 14 13 222 0 15 13 222 0 16 13 222 0 17 13 222 0 18 13 222 0 19 13 222 0 20 13 222 0 21 13 222 0 22 13 222 0 23 13 222 0 25 13 222 0 26 13 222 0 27 13 222 0 28 13 222 0 29 13 222 0 30 13 222 0 31 13 222 0 33 13 222 0 34 13 222 0 35 13 222 0 36 5 233 0 37 13 222 0 38 13 222 0 39 13 222 0 40 13 222 0 44 13 222 0 45 13 222 0 46 13 222 0 47 13 222 0 48 13 222 0 49 13 222 0 50 13 222 0 51 13 222 0 52 13 222 0 53 13 222 0 55 13 222 0 56 13 222 0 58 13 222 0 59 13 222 0 60 13 222 0 61 13 222 0 62 13 222 0 63 13 222 0 64 13 222 0 65 13 222 0 66 13 222 0 67 13 222 0 69 13 222 0 73 13 222 0 75 13 222 0 76 13 222 0 77 13 222 0 78 13 222 0 79 13 222 0 81 13 222 0 82 13 222 0 83 13 222 0 86 13 222 0 89 13 222 0 90 13 222 0 91 13 222 0 92 13 222 0 93 13 222 0 94 13 222 0 95 13 222 0 97 13 222 0 98 13 222 0 99 13 222 0 101 13 222 0 110 13 222 0 112 13 222 0 113 13 222 0 115 13 222 0 117 13 222 0 118 13 222 0 119 13 222 0 120 13 222 0 121 13 222 0 123 13 222 0 124 13 222 0 125 13 222 0 126 13 222 0 127 13 222 0 128 13 222 0 129 13 222 0 130 13 222 0 131 13 222 0 133 13 222 0 134 13 222 0 135 13 222 0 136 13 222 0 138 13 222 0 140 13 222 0 141 13 222 0 142 13 222 0 143 13 222 0 144 13 222 0 145 13 222 0 146 13 222 0 147 13 222 0 148 13 222 0 149 13 222 0 150 13 222 0 151 13 222 0 153 13 222 0 154 13 222 0 155 13 222 0 156 13 222 0 157 13 222 0 158 13 222 0 159 13 222 0 160 13 222 0 161 13 222 0 162 13 222 0 163 13 222 0 164 13 222 0 165 13 222 0 166 11 217 0 214 13 222 2 173] 
#[1 10 206 0 1 10 206 0 5 10 206 0 8 10 206 0 10 10 206 0 12 10 206 0 13 10 206 0 16 10 206 0 17 10 206 0 46 10 206 0 47 10 206 0 48 10 206 0 49 10 206 0 52 10 206 0 55 10 206 0 56 10 206 0 60 10 206 0 61 10 206 0 62 10 206 0 65 10 206 0 66 10 206 0 73 10 206 0 76 10 206 0 79 10 206 0 86 10 206 0 94 10 206 0 95 10 206 0 97 10 206 0 98 10 206 0 113 10 206 0 117 10 206 0 118 10 206 0 119 10 206 0 121 10 206 0 124 10 206 0 125 10 206 0 126 10 206 0 128 10 206 0 129 10 206 0 130 10 206 0 131 10 206 0 134 10 206 0 136 10 206 0 138 10 206 0 148 10 206 0 153 10 206 0 154 10 206 0 155 10 206 0 156 10 206 0 157 10 206 0 158 10 206 0 161 10 206 0 162 10 206 0 165 10 206 0 166 19 181 2 168 19 185 2 170] 
#[0 13 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 24 13 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 24 13 0 207 1 189 0 208 24 13 0 210 1 197 0 211 24 17 0 222 24 17 0 223 24 17 0 225 24 17 0 226 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 24 17 1 71 24 17 1 72 24 17 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 24 17 1 89 3 205 1 90 24 17 1 109 24 17 1 112 24 17 1 113 24 17 1 114 3 221 1 148 12 201 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 24 21 0 23] 
#[0 24 25 0 151] 
#[1 22 13 0 53 22 17 0 61 13 230 0 151 24 29 1 164 22 33 1 165 22 37 1 166] 
#[0 13 234 0 53 0 61 0 151] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 22 13 0 53 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 24 33 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 6 97 1 116 6 97 1 117 6 97 1 118 24 37 1 120 6 97 1 121 6 97 1 122 6 97 1 123 6 97 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 6 97 1 156 2 181 1 157 6 97 1 158 6 97 1 159 6 97 1 160 24 41 1 166 6 97 1 168 6 97 1 169 6 97 1 170 6 97 1 171 6 97 1 179 6 97 1 180 6 97 1 181 6 97 1 182 6 97 1 183 6 97 1 184 6 97 1 185 6 97 1 186 6 97 1 197 6 97 1 198 6 97 1 199 6 97 1 200 6 97 1 202 3 9 1 210 1 205 2 137 3 17 2 138 6 97 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 6 97 2 156 3 49 2 172] 
#[0 13 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 13 242 0 9] 
#[0 24 45 0 9] 
#[0 24 49 0 9] 
#[0 13 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 74 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 13 250 0 9 0 20] 
#[0 13 254 0 9 0 20] 
#[0 14 2 0 15 0 149] 
#[1 19 153 0 15 10 162 0 149 19 157 1 37 19 161 1 38] 
#[0 14 6 0 9 0 20] 
#[0 14 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 14 14 0 15 0 151] 
#[0 14 18 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 24 53 0 15 14 22 0 151] 
#[1 14 26 0 1 14 26 0 2 14 26 0 3 14 26 0 4 14 26 0 5 14 26 0 6 14 26 0 7 5 131 0 8 14 26 0 9 14 26 0 10 14 26 0 11 14 26 0 12 14 26 0 13 14 26 0 14 14 26 0 15 14 26 0 16 14 26 0 17 14 26 0 18 14 26 0 19 5 135 0 20 14 26 0 21 14 26 0 22 14 26 0 23 14 26 0 25 14 26 0 26 14 26 0 27 14 26 0 28 14 26 0 29 14 26 0 30 14 26 0 31 14 26 0 33 14 26 0 34 14 26 0 35 14 26 0 36 5 139 0 37 14 26 0 38 14 26 0 39 14 26 0 40 14 26 0 44 14 26 0 45 14 26 0 46 14 26 0 47 14 26 0 48 14 26 0 49 14 26 0 50 14 26 0 51 14 26 0 52 14 26 0 53 14 26 0 55 14 26 0 56 14 26 0 58 14 26 0 59 14 26 0 60 14 26 0 61 14 26 0 62 14 26 0 63 14 26 0 64 14 26 0 65 14 26 0 66 14 26 0 67 14 26 0 69 14 26 0 73 14 26 0 75 14 26 0 76 14 26 0 77 14 26 0 78 14 26 0 79 14 26 0 81 14 26 0 82 14 26 0 83 14 26 0 86 14 26 0 89 14 26 0 90 14 26 0 91 14 26 0 92 14 26 0 93 14 26 0 94 14 26 0 95 14 26 0 97 14 26 0 98 14 26 0 99 14 26 0 101 14 26 0 110 14 26 0 112 14 26 0 113 14 26 0 115 14 26 0 117 14 26 0 118 14 26 0 119 14 26 0 120 14 26 0 121 14 26 0 123 14 26 0 124 14 26 0 125 14 26 0 126 14 26 0 127 14 26 0 128 14 26 0 129 14 26 0 130 14 26 0 131 14 26 0 133 14 26 0 134 14 26 0 135 14 26 0 136 14 26 0 138 14 26 0 140 14 26 0 141 14 26 0 142 14 26 0 143 14 26 0 144 14 26 0 145 14 26 0 146 14 26 0 147 14 26 0 148 14 26 0 149 14 26 0 150 14 26 0 151 14 26 0 153 14 26 0 154 14 26 0 155 14 26 0 156 14 26 0 157 14 26 0 158 14 26 0 159 14 26 0 160 14 26 0 161 14 26 0 162 14 26 0 163 14 26 0 164 14 26 0 165 14 26 0 166 24 69 1 51 14 26 2 173] 
#[0 14 30 0 159 0 160 0 163 0 164] 
#[0 14 34 0 32 0 144] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 24 73 1 255 24 77 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 14 38 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 14 42 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 24 81 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 24 85 0 194 24 85 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 197 0 208 24 93 0 210 1 197 0 211 1 197 1 210 1 197 2 148 3 49 2 172] 
#[0 14 46 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 14 50 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 24 105 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 24 105 0 207 1 189 0 208 24 105 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[0 14 54 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[0 14 58 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 76 0 86 0 94 0 98 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[1 0 49 0 37 0 10 0 153 24 109 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 14 62 0 8 0 23 0 141 0 144] 
#[0 1 26 0 15 0 23 0 149] 
#[0 14 66 0 15 0 149] 
#[0 24 113 0 9] 
#[0 14 70 0 9 0 15 0 25] 
#[0 14 74 0 9 0 15 0 25] 
#[0 24 117 0 99] 
#[0 14 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 14 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 147 0 148 0 149 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 24 121 1 71 24 121 1 72 24 121 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 24 121 1 89 3 205 1 90 24 121 1 109 24 121 1 112 24 121 1 113 24 121 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 20 65 0 153 24 125 1 231] 
#[0 14 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 90 0 15 0 25] 
#[0 14 94 0 15 0 25] 
#[0 24 129 0 8] 
#[0 24 133 0 8] 
#[0 14 98 0 8 0 26 0 32 0 144] 
#[0 24 137 0 25] 
#[0 24 141 0 151] 
#[0 24 145 0 110] 
#[1 0 49 0 37 0 10 0 80 0 10 0 88 0 10 0 106 0 10 0 107 24 149 2 22 23 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 14 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 49 0 37 0 10 0 42 0 10 0 111 24 153 2 28 24 157 2 29 24 161 2 30 24 165 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 24 169 0 38] 
#[0 24 173 0 37] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 24 177 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 24 177 1 71 24 177 1 72 24 177 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 24 177 1 89 3 205 1 90 24 177 1 109 24 177 1 112 24 177 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 24 181 0 151] 
#[1 12 238 0 80 23 37 0 88 23 41 0 106 23 45 0 107 24 185 2 19 23 53 2 20] 
#[0 14 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 118 0 151] 
#[0 14 122 0 151] 
#[1 23 37 0 88 23 41 0 106 23 45 0 107 12 238 0 116 24 189 2 19 23 53 2 20] 
#[0 14 126 0 151] 
#[0 14 130 0 151] 
#[1 12 238 0 80 23 37 0 88 23 41 0 106 23 45 0 107 24 193 2 19 23 53 2 20] 
#[1 14 134 0 80 24 197 0 107 14 134 0 116] 
#[1 14 138 0 80 24 201 0 107 14 138 0 116] 
#[1 14 142 0 80 24 205 0 88 24 209 0 106 14 142 0 116] 
#[1 24 213 0 80 24 217 0 116] 
#[0 14 146 0 80 0 116] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 24 221 1 255 24 225 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 24 229 1 255 24 225 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 24 233 1 255 24 225 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 24 237 1 255 24 225 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 14 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 24 241 0 23 14 154 0 25 14 154 0 32 14 154 0 144 24 245 2 53 24 245 2 54] 
#[0 14 158 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 24 253 1 71 24 253 1 72 24 253 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 24 253 1 89 3 205 1 90 24 253 1 109 24 253 1 112 24 253 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 14 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 14 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 25 1 0 25 25 5 0 32 1 93 0 144 25 9 1 118 25 13 2 145] 
#[0 25 17 0 9] 
#[0 25 21 0 9] 
#[0 14 174 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 2 173] 
#[0 14 178 0 9 0 15] 
#[0 14 182 0 9 0 15] 
#[1 25 25 0 9 21 81 0 15] 
#[0 21 57 0 30] 
#[0 14 186 0 9 0 15] 
#[0 14 190 0 25 0 37 0 41 0 57 0 62 0 68 0 87 0 88 0 96 0 97 0 105 0 106 0 107 0 108 0 109 0 110 0 114 0 120 0 122 0 133 0 151 2 173] 
#[1 5 133 0 98 5 145 0 121 6 33 0 153 1 141 0 188 25 33 0 190 1 141 0 191 25 33 0 208] 
#[1 25 37 0 141 14 194 0 144 25 41 1 214 25 45 1 215 25 49 1 216] 
#[0 14 198 0 141 0 144] 
#[1 23 157 0 23 13 114 0 141 13 114 0 144 25 53 2 63 23 165 2 64] 
#[1 6 33 0 153 1 141 0 188 25 57 0 190 1 141 0 191 25 57 0 209 25 61 1 213] 
#[1 25 37 0 141 14 194 0 144 25 65 1 214 25 45 1 215 25 49 1 216] 
#[0 14 202 0 141 0 144] 
#[1 25 69 0 15 25 73 0 149] 
#[1 25 85 0 85 25 85 0 102 14 206 0 153 25 85 2 80 25 85 2 81] 
#[1 6 33 0 153 1 141 0 188 25 57 0 190 1 141 0 191 25 57 0 209 25 93 1 213] 
#[1 25 37 0 141 14 194 0 144 25 97 1 214 25 45 1 215 25 49 1 216] 
#[0 14 210 0 141 0 144] 
#[0 25 101 0 151] 
#[1 25 105 0 15 14 214 0 151] 
#[0 14 218 0 15 0 151] 
#[0 25 109 0 153] 
#[0 14 222 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 25 113 0 9] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 25 117 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 14 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 14 230 0 9 0 15] 
#[1 5 143 0 2 5 143 0 3 5 147 0 4 5 143 0 5 5 143 0 6 5 151 0 7 5 143 0 9 5 143 0 10 5 155 0 11 5 143 0 12 5 159 0 14 5 143 0 15 5 143 0 16 5 163 0 18 5 143 0 21 5 167 0 22 5 143 0 26 5 143 0 27 5 171 0 28 5 143 0 29 5 175 0 30 5 143 0 31 5 143 0 33 5 179 0 34 5 143 0 35 5 143 0 36 5 143 0 39 5 183 0 40 5 143 0 44 5 143 0 90 5 143 0 145 5 187 0 146 5 143 0 147 5 143 0 149 5 143 0 150 7 5 1 110] 
#[0 25 121 0 9] 
#[0 14 234 0 9] 
#[1 14 238 0 9 15 217 0 15] 
#[0 25 125 0 9] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 25 129 1 117 25 129 1 118 25 129 1 121 25 129 1 156 2 181 1 157 25 129 1 158 25 129 1 159 25 129 1 160 25 129 1 168 25 129 1 169 25 129 1 170 25 129 1 171 25 129 1 179 25 129 1 180 25 129 1 181 25 129 1 182 25 129 1 183 25 129 1 184 25 129 1 185 25 129 1 186 25 129 1 197 25 129 1 198 25 129 1 199 25 129 1 200 25 129 1 202 1 205 2 137 3 17 2 138 25 129 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 25 129 2 156] 
#[0 14 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 14 246 0 9 0 20] 
#[1 12 138 0 8 12 138 0 13 14 250 0 15 12 138 0 17 12 138 0 19 12 138 0 20 12 138 0 35 12 138 0 37 14 250 0 151 22 93 1 50] 
#[0 14 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 15 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 5 191 0 153 17 137 0 227 17 137 0 228] 
#[1 25 133 0 23 25 137 0 140 25 141 1 167] 
#[0 15 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 15 10 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 15 14 0 53 0 61 0 151] 
#[1 0 142 0 4 0 142 0 7 0 107 0 8 0 142 0 11 0 142 0 13 0 142 0 14 0 142 0 17 0 142 0 18 0 142 0 19 0 142 0 20 0 142 0 22 24 21 0 23 0 142 0 28 0 142 0 30 0 142 0 34 0 142 0 35 0 142 0 37 0 142 0 40 0 142 0 146] 
#[1 0 105 0 1 0 109 0 5 0 7 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 11 0 46 0 145 0 47 0 149 0 48 0 15 0 49 0 157 0 50 0 19 0 52 15 18 0 53 0 23 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 27 0 60 5 195 0 61 0 189 0 62 0 193 0 64 0 31 0 65 0 35 0 66 3 17 0 73 0 209 0 75 0 39 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 0 43 0 86 0 237 0 93 0 47 0 94 0 245 0 95 0 249 0 97 0 51 0 98 0 55 0 110 1 5 0 112 0 59 0 113 0 63 0 117 1 17 0 118 1 21 0 119 0 67 0 120 0 71 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 0 75 0 129 0 79 0 130 1 61 0 131 0 83 0 133 0 87 0 134 1 73 0 135 1 77 0 136 0 91 0 138 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 15 18 0 151 0 95 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 1 145 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 1 145 0 207 1 189 0 208 1 145 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 11 177 1 116 11 177 1 117 11 177 1 118 11 177 1 121 11 177 1 122 11 177 1 123 11 177 1 124 2 133 1 125 2 137 1 126 2 141 1 127 2 145 1 128 2 149 1 134 2 153 1 135 2 157 1 137 2 149 1 139 2 165 1 144 2 169 1 149 2 173 1 153 11 177 1 156 2 181 1 157 11 177 1 158 11 177 1 159 11 177 1 160 11 177 1 168 11 177 1 169 11 177 1 170 11 177 1 171 11 177 1 179 11 177 1 180 11 177 1 181 11 177 1 182 11 177 1 183 11 177 1 184 11 177 1 185 11 177 1 186 11 177 1 197 11 177 1 198 11 177 1 199 11 177 1 200 11 177 1 202 3 9 1 210 1 205 2 137 3 17 2 138 11 177 2 147 3 25 2 148 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 11 177 2 156 3 49 2 172] 
#[0 15 22 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 15 26 0 140 0 144] 
#[0 15 30 0 144] 
#[0 15 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 76 0 79 0 86 0 94 0 95 0 97 0 98 0 113 0 117 0 118 0 119 0 121 0 124 0 125 0 126 0 128 0 129 0 130 0 131 0 134 0 136 0 138 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 25 145 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[0 25 149 0 153] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 25 153 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[0 15 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 15 42 0 9 0 15 0 38] 
#[0 15 46 0 9 0 38] 
#[0 0 162 0 37] 
#[1 6 149 0 10 1 82 0 37 6 153 2 149] 
#[0 1 126 0 37] 
#[0 25 157 0 153] 
#[0 2 170 0 37] 
#[0 2 190 0 37] 
#[0 25 161 0 153] 
#[1 22 149 0 153 25 165 1 210] 
#[1 14 194 0 32 25 37 0 141 14 194 0 144 25 169 1 214 25 45 1 215 25 49 1 216] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 25 173 1 71 25 173 1 72 25 173 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 25 173 1 89 3 205 1 90 25 173 1 109 25 173 1 112 25 173 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 15 50 0 15 0 25] 
#[0 15 54 0 15 0 25] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 25 177 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 25 181 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 15 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 15 62 0 8 25 185 0 30 15 62 0 37 15 62 0 41 15 62 0 46 15 62 0 49 15 62 0 52 15 62 0 55 15 62 0 57 15 62 0 58 15 62 0 60 15 62 0 62 15 62 0 65 15 62 0 66 15 62 0 68 15 62 0 70 15 62 0 72 15 62 0 75 15 62 0 76 15 62 0 86 15 62 0 87 15 62 0 88 15 62 0 94 15 62 0 97 15 62 0 98 15 62 0 103 15 62 0 105 15 62 0 106 15 62 0 107 15 62 0 108 15 62 0 109 15 62 0 110 15 62 0 113 15 62 0 114 15 62 0 117 15 62 0 120 15 62 0 121 15 62 0 122 15 62 0 129 15 62 0 130 15 62 0 133 15 62 0 134 15 62 0 137 15 62 0 138 15 62 0 139 15 62 0 148 15 62 0 151 15 62 0 153 25 189 2 11 25 193 2 12 15 62 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 25 197 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 25 197 1 71 25 197 1 72 25 197 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 25 197 1 89 3 205 1 90 25 197 1 109 25 197 1 112 25 197 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 25 201 0 151] 
#[0 25 205 0 151] 
#[1 0 49 0 37 0 10 0 111 25 209 2 30 25 213 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 42 25 217 2 29 25 221 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 25 225 0 42 25 229 0 111] 
#[0 15 66 0 32 0 144] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 25 233 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 25 237 0 25] 
#[0 15 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 25 241 0 80] 
#[0 24 217 0 116] 
#[0 24 213 0 80] 
#[0 15 74 0 80 0 116] 
#[0 15 78 0 80 0 116] 
#[0 15 82 0 80 0 116] 
#[0 15 86 0 80 0 116] 
#[1 25 245 0 25 25 249 0 32 1 93 0 144 25 253 1 118 26 1 2 21] 
#[1 25 245 0 25 25 249 0 32 1 93 0 144 25 253 1 118 26 5 2 21] 
#[0 26 9 0 9] 
#[1 12 182 0 8 12 182 0 49 12 182 0 52 12 182 0 55 12 182 0 60 12 182 0 65 12 182 0 66 12 182 0 76 22 129 0 85 12 182 0 86 12 182 0 94 12 182 0 98 22 129 0 102 22 129 0 110 12 182 0 113 12 182 0 117 12 182 0 121 22 129 0 124 12 182 0 129 12 182 0 130 12 182 0 134 12 182 0 138 12 182 0 153 22 129 2 2 22 129 2 3 22 129 2 4] 
#[0 26 13 0 9] 
#[0 26 17 0 9] 
#[0 26 21 0 15] 
#[1 26 25 0 48 26 29 0 124] 
#[0 15 90 0 25 0 32 0 144] 
#[0 15 94 0 25 0 32 0 144] 
#[0 26 33 0 25] 
#[0 15 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 26 37 1 71 26 37 1 72 26 37 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 26 37 1 89 3 205 1 90 26 37 1 109 26 37 1 112 26 37 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 15 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 15 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 25 1 0 25 25 5 0 32 1 93 0 144 25 9 1 118 26 41 2 145] 
#[1 25 1 0 25 25 5 0 32 1 93 0 144 25 9 1 118 26 45 2 145] 
#[0 15 110 0 15 0 38] 
#[0 1 66 0 15 0 141 0 144] 
#[1 26 49 0 15 15 114 0 141 15 114 0 144] 
#[1 22 149 0 153 26 53 1 210] 
#[1 26 57 0 144 26 61 1 222] 
#[1 15 118 0 25 15 118 0 32 25 37 0 141 15 118 0 144 26 65 1 216] 
#[0 15 122 0 25 0 32 0 141 0 144] 
#[1 25 37 0 141 14 194 0 144 26 69 1 214 25 45 1 215 25 49 1 216] 
#[0 15 126 0 15 0 141 0 144] 
#[1 26 73 0 15 15 130 0 141 15 130 0 144] 
#[1 26 77 0 144 26 81 2 65] 
#[1 0 49 0 37 0 10 0 85 0 10 0 102 0 10 0 153 26 85 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 15 134 0 8 0 23 0 141 0 144] 
#[0 15 138 0 153] 
#[0 15 142 0 153] 
#[1 22 149 0 153 26 89 1 210] 
#[0 15 146 0 153] 
#[1 26 73 0 15 15 150 0 141 15 150 0 144] 
#[1 26 93 0 144 26 97 2 84] 
#[0 15 154 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 49 0 37 26 101 0 151 0 10 0 153 26 105 2 107 23 201 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 15 158 0 15 26 109 0 30 15 158 0 151] 
#[0 26 113 0 25] 
#[0 26 117 0 9] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 26 121 1 117 26 121 1 118 26 121 1 121 26 121 1 156 2 181 1 157 26 121 1 158 26 121 1 159 26 121 1 160 26 121 1 168 26 121 1 169 26 121 1 170 26 121 1 171 26 121 1 179 26 121 1 180 26 121 1 181 26 121 1 182 26 121 1 183 26 121 1 184 26 121 1 185 26 121 1 186 26 121 1 197 26 121 1 198 26 121 1 199 26 121 1 200 26 121 1 202 1 205 2 137 3 17 2 138 26 121 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 26 121 2 156] 
#[1 0 105 0 1 0 109 0 5 4 205 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 209 0 49 0 157 0 50 4 213 0 52 4 217 0 55 0 169 0 56 0 177 0 59 4 221 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 225 0 65 3 17 0 73 0 209 0 75 4 229 0 76 0 217 0 77 0 221 0 78 0 225 0 81 0 229 0 83 4 233 0 86 0 237 0 93 4 237 0 94 0 245 0 95 0 249 0 97 4 241 0 98 1 5 0 112 4 245 0 113 4 249 0 117 1 17 0 118 1 21 0 119 4 253 0 121 1 29 0 123 1 33 0 124 1 37 0 125 3 17 0 126 1 45 0 127 1 49 0 128 5 1 0 129 5 5 0 130 1 61 0 131 1 65 0 133 5 9 0 134 1 73 0 135 1 85 0 142 1 89 0 143 1 93 0 144 1 97 0 148 5 13 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 5 17 0 188 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 2 1 1 7 1 205 1 8 1 205 1 10 1 205 1 11 2 17 1 12 2 21 1 13 2 25 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 2 65 1 48 2 69 1 49 2 181 1 53 2 77 1 54 2 81 1 55 2 85 1 56 2 65 1 57 2 93 1 58 1 205 1 74 2 181 1 109 26 125 1 117 26 125 1 118 26 125 1 121 26 125 1 156 2 181 1 157 26 125 1 158 26 125 1 159 26 125 1 160 26 125 1 168 26 125 1 169 26 125 1 170 26 125 1 171 26 125 1 179 26 125 1 180 26 125 1 181 26 125 1 182 26 125 1 183 26 125 1 184 26 125 1 185 26 125 1 186 26 125 1 197 26 125 1 198 26 125 1 199 26 125 1 200 26 125 1 202 1 205 2 137 3 17 2 138 26 125 2 147 2 65 2 151 1 205 2 152 2 65 2 154 1 205 2 155 26 125 2 156] 
#[0 15 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 15 166 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 26 129 1 71 26 129 1 72 26 129 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 26 129 1 89 3 205 1 90 26 129 1 109 26 129 1 112 26 129 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 26 133 0 23] 
#[0 26 137 0 9] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 1 227 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 75 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 81 1 22 0 82 1 22 0 83 1 22 0 86 1 22 0 89 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 98 1 22 0 99 1 22 0 101 1 22 0 110 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 117 1 22 0 118 1 22 0 119 1 22 0 120 1 22 0 121 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 126 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 140 1 22 0 141 1 22 0 142 1 22 0 143 1 22 0 144 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 157 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 26 141 0 218 26 141 0 248 1 22 2 173] 
#[1 16 241 0 15 26 145 0 38] 
#[0 15 170 0 9 0 38] 
#[1 15 174 0 9 15 174 0 15 26 149 0 30 15 174 0 38 26 153 2 0 26 157 2 1] 
#[0 15 178 0 15 0 149] 
#[0 15 182 0 32 0 144] 
#[0 26 161 0 69] 
#[0 26 165 0 9] 
#[0 26 169 0 9] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 11 45 0 144 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 26 173 1 71 26 173 1 72 26 173 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 26 173 1 89 3 205 1 90 26 173 1 109 26 173 1 112 26 173 1 113 3 221 1 148 3 221 1 149 3 9 1 210 26 173 1 238 26 173 2 70 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 15 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 15 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 26 177 0 25] 
#[1 15 62 0 8 25 185 0 30 15 62 0 37 15 62 0 41 15 62 0 46 15 62 0 49 15 62 0 52 15 62 0 55 15 62 0 57 15 62 0 58 15 62 0 60 15 62 0 62 15 62 0 65 15 62 0 66 15 62 0 68 15 62 0 70 15 62 0 72 15 62 0 75 15 62 0 76 15 62 0 86 15 62 0 87 15 62 0 88 15 62 0 94 15 62 0 97 15 62 0 98 15 62 0 103 15 62 0 105 15 62 0 106 15 62 0 107 15 62 0 108 15 62 0 109 15 62 0 110 15 62 0 113 15 62 0 114 15 62 0 117 15 62 0 120 15 62 0 121 15 62 0 122 15 62 0 129 15 62 0 130 15 62 0 133 15 62 0 134 15 62 0 137 15 62 0 138 15 62 0 139 15 62 0 148 15 62 0 151 15 62 0 153 26 181 2 11 25 193 2 12 15 62 2 173] 
#[0 15 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 15 198 0 151] 
#[0 25 229 0 111] 
#[0 15 202 0 151] 
#[0 25 225 0 42] 
#[1 1 93 0 144 26 185 1 118] 
#[1 1 93 0 144 26 189 1 118] 
#[0 26 193 0 38] 
#[0 15 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 26 197 0 25 26 201 0 32 1 93 0 144 26 205 1 118 26 209 2 23] 
#[0 15 210 0 37 0 80 0 88 0 106 0 107 0 116 0 151] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 26 213 1 71 26 213 1 72 26 213 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 26 213 1 89 3 205 1 90 26 213 1 109 26 213 1 112 26 213 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 15 214 0 37 0 80 0 88 0 106 0 107 0 116 0 151] 
#[0 15 218 0 37 0 88 0 106 0 107 0 116 0 151] 
#[0 15 222 0 37 0 80 0 88 0 106 0 107 0 151] 
#[0 15 226 0 25 0 32 0 144] 
#[0 15 230 0 25 0 32 0 144] 
#[0 15 234 0 25 0 32 0 144] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 26 217 1 255 24 225 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 26 221 0 8] 
#[0 26 225 0 8] 
#[0 15 238 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 26 229 0 25] 
#[0 15 242 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 15 246 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 6 33 0 153 1 141 0 188 25 57 0 190 1 141 0 191 25 57 0 209 26 233 1 213] 
#[0 26 237 0 23] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 103 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 129 0 10 0 130 0 10 0 133 0 10 0 134 0 10 0 137 0 10 0 138 0 10 0 139 0 10 0 148 15 250 0 151 0 10 0 153 26 249 0 187 26 249 1 203 26 241 1 223 26 245 1 224 26 249 1 225 26 249 1 226 26 249 1 232 26 249 1 239 3 253 1 240 4 1 1 242 26 249 2 6 26 249 2 24 26 249 2 31 26 249 2 38 26 249 2 48 26 249 2 56 26 249 2 59 26 249 2 73 26 249 2 97 26 249 2 108 4 29 2 119 0 93 2 120 0 97 2 121 0 101 2 122 26 249 2 144] 
#[1 7 190 0 8 26 253 0 25 7 190 0 37 7 190 0 41 7 190 0 46 7 190 0 49 7 190 0 52 7 190 0 55 7 190 0 57 7 190 0 58 7 190 0 60 7 190 0 62 7 190 0 65 7 190 0 66 7 190 0 68 7 190 0 70 7 190 0 72 7 190 0 75 7 190 0 76 7 190 0 86 7 190 0 87 7 190 0 88 7 190 0 94 7 190 0 96 7 190 0 97 7 190 0 98 7 190 0 103 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 113 7 190 0 114 7 190 0 117 7 190 0 120 7 190 0 121 7 190 0 122 7 190 0 129 7 190 0 130 7 190 0 133 7 190 0 134 7 190 0 137 7 190 0 138 7 190 0 139 7 190 0 148 7 190 0 151 7 190 0 153 26 253 2 139 7 190 2 173] 
#[0 15 254 0 25 0 32 0 141 0 144] 
#[1 26 77 0 144 27 1 2 65] 
#[1 6 33 0 153 1 141 0 188 27 5 0 190 1 141 0 191 27 5 0 209] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 75 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 103 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 129 0 10 0 130 0 10 0 133 0 10 0 134 0 10 0 137 0 10 0 138 0 10 0 139 16 2 0 151 0 10 0 153 27 57 0 187 27 57 1 203 27 57 1 226 27 57 1 232 27 57 1 239 3 253 1 240 4 1 1 242 27 57 2 6 27 57 2 24 27 57 2 31 27 57 2 38 27 57 2 48 27 57 2 56 27 57 2 59 27 49 2 66 27 53 2 67 27 57 2 68 27 57 2 73 27 57 2 97 27 57 2 108 27 61 2 119 0 93 2 120 0 97 2 121 0 101 2 122 27 57 2 160] 
#[1 7 190 0 8 27 69 0 25 7 190 0 37 7 190 0 41 7 190 0 46 7 190 0 49 7 190 0 52 7 190 0 55 7 190 0 57 7 190 0 58 7 190 0 60 7 190 0 62 7 190 0 65 7 190 0 66 7 190 0 68 7 190 0 70 7 190 0 72 7 190 0 75 7 190 0 76 7 190 0 86 7 190 0 87 7 190 0 88 7 190 0 94 7 190 0 96 7 190 0 97 7 190 0 98 7 190 0 103 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 113 7 190 0 114 7 190 0 117 7 190 0 120 7 190 0 121 7 190 0 122 7 190 0 129 7 190 0 130 7 190 0 133 7 190 0 134 7 190 0 137 7 190 0 138 7 190 0 139 7 190 0 148 7 190 0 151 7 190 0 153 27 69 2 139 7 190 2 173] 
#[1 27 73 0 85 27 73 0 102 14 206 0 153 27 73 2 80 27 73 2 81] 
#[0 16 6 0 15 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 16 10 0 151 0 10 0 153 27 77 2 85 27 81 2 86 27 85 2 87 27 85 2 88 27 85 2 90 27 85 2 95 27 85 2 96 27 105 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 7 190 0 8 27 109 0 25 7 190 0 37 7 190 0 41 7 190 0 46 7 190 0 49 7 190 0 52 7 190 0 55 7 190 0 57 7 190 0 58 7 190 0 60 7 190 0 62 7 190 0 65 7 190 0 66 7 190 0 68 7 190 0 70 7 190 0 72 7 190 0 75 7 190 0 76 7 190 0 86 7 190 0 87 7 190 0 88 7 190 0 94 7 190 0 96 7 190 0 97 7 190 0 98 7 190 0 103 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 113 7 190 0 114 7 190 0 117 7 190 0 120 7 190 0 121 7 190 0 122 7 190 0 129 7 190 0 130 7 190 0 133 7 190 0 134 7 190 0 137 7 190 0 138 7 190 0 139 7 190 0 148 7 190 0 151 7 190 0 153 27 109 2 139 7 190 2 173] 
#[0 16 14 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 16 18 0 15 0 151] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 27 113 1 71 27 113 1 72 27 113 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 27 113 1 89 3 205 1 90 27 113 1 109 27 113 1 112 27 113 1 113 27 113 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 16 22 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 14 194 0 25 25 37 0 141 27 117 1 214 25 45 1 215 25 49 1 216] 
#[0 16 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 16 30 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166 2 173] 
#[0 16 34 0 23] 
#[0 16 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 75 0 76 0 77 0 78 0 81 0 83 0 86 0 93 0 94 0 95 0 97 0 98 0 110 0 112 0 113 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 142 0 143 0 144 0 148 0 153 0 154 0 155 0 156 0 157 0 158 0 161 0 162 0 165 0 166] 
#[0 16 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 16 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[0 16 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 75 0 76 0 77 0 78 0 79 0 81 0 82 0 83 0 86 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 98 0 99 0 101 0 110 0 112 0 113 0 115 0 117 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 27 121 1 71 27 121 1 72 27 121 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 27 121 1 89 3 205 1 90 27 121 1 109 27 121 1 112 27 121 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 16 54 0 9 0 15 0 38] 
#[0 16 58 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 27 125 1 71 27 125 1 72 27 125 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 27 125 1 89 3 205 1 90 27 125 1 109 27 125 1 112 27 125 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[1 14 194 0 25 14 194 0 32 25 37 0 141 14 194 0 144 27 129 1 214 25 45 1 215 25 49 1 216] 
#[1 14 194 0 25 14 194 0 32 25 37 0 141 14 194 0 144 27 133 1 214 25 45 1 215 25 49 1 216] 
#[0 27 137 0 25] 
#[0 16 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 16 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 16 70 0 37 0 111 0 151] 
#[0 16 74 0 37 0 42 0 151] 
#[0 16 78 0 32 0 144] 
#[0 16 82 0 151] 
#[0 27 141 0 110] 
#[0 16 86 0 151] 
#[0 16 90 0 151] 
#[0 27 145 0 25] 
#[0 27 149 0 9] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 27 153 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[1 5 46 0 1 5 46 0 5 5 46 0 8 5 50 0 9 5 46 0 10 5 46 0 12 5 46 0 13 5 46 0 16 5 46 0 17 5 46 0 46 5 46 0 47 5 46 0 48 5 46 0 49 5 46 0 52 5 46 0 55 5 46 0 56 5 46 0 60 5 46 0 61 5 46 0 62 5 46 0 65 5 46 0 66 5 46 0 73 5 46 0 76 5 46 0 79 5 46 0 85 5 46 0 86 5 46 0 94 5 46 0 95 5 46 0 97 5 46 0 98 5 46 0 102 5 46 0 110 5 46 0 113 5 46 0 117 5 46 0 118 5 46 0 119 5 46 0 121 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 128 5 46 0 129 5 46 0 130 5 46 0 131 5 46 0 134 5 46 0 136 5 46 0 138 5 46 0 148 2 3 0 153 5 46 0 154 5 46 0 155 5 46 0 156 5 46 0 157 5 46 0 158 5 46 0 161 5 46 0 162 5 46 0 165 5 46 0 166 27 157 0 229 11 229 0 230 11 233 0 231 11 237 0 232 11 241 0 233] 
#[0 16 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 26 73 0 15 16 98 0 141 16 98 0 144] 
#[1 27 161 0 57 27 165 0 97 5 133 0 98 5 145 0 121 27 169 0 122 27 173 0 132 5 161 0 153 1 141 0 188 27 177 0 190 1 141 0 191 27 181 0 208 27 185 0 209 27 189 1 210 27 193 1 217 27 197 1 218 27 201 1 219 27 205 1 220 27 209 1 221] 
#[0 27 213 0 151] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 103 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 129 0 10 0 130 0 10 0 133 0 10 0 134 0 10 0 137 0 10 0 138 0 10 0 139 0 10 0 148 16 102 0 151 0 10 0 153 27 217 0 187 27 217 1 203 27 217 1 225 27 217 1 226 27 217 1 232 27 217 1 239 3 253 1 240 4 1 1 242 27 217 2 6 27 217 2 24 27 217 2 31 27 217 2 38 27 217 2 48 27 217 2 56 27 217 2 59 27 217 2 73 27 217 2 97 27 217 2 108 4 29 2 119 0 93 2 120 0 97 2 121 0 101 2 122 27 217 2 144] 
#[0 16 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153] 
#[0 16 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 7 190 0 8 27 221 0 25 7 190 0 37 7 190 0 41 7 190 0 46 7 190 0 49 7 190 0 52 7 190 0 55 7 190 0 57 7 190 0 58 7 190 0 60 7 190 0 62 7 190 0 65 7 190 0 66 7 190 0 68 7 190 0 70 7 190 0 72 7 190 0 75 7 190 0 76 7 190 0 86 7 190 0 87 7 190 0 88 7 190 0 94 7 190 0 96 7 190 0 97 7 190 0 98 7 190 0 103 7 190 0 105 7 190 0 106 7 190 0 107 7 190 0 108 7 190 0 109 7 190 0 110 7 190 0 113 7 190 0 114 7 190 0 117 7 190 0 120 7 190 0 121 7 190 0 122 7 190 0 129 7 190 0 130 7 190 0 133 7 190 0 134 7 190 0 137 7 190 0 138 7 190 0 139 7 190 0 148 7 190 0 151 7 190 0 153 27 221 2 139 7 190 2 173] 
#[0 16 114 0 15 0 141 0 144] 
#[0 16 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 27 225 0 151] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 75 0 10 0 76 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 103 0 10 0 105 0 10 0 106 0 10 0 107 0 10 0 108 0 10 0 109 0 10 0 110 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 120 0 10 0 121 0 10 0 122 0 10 0 129 0 10 0 130 0 10 0 133 0 10 0 134 0 10 0 137 0 10 0 138 0 10 0 139 16 158 0 151 0 10 0 153 27 229 0 187 27 229 1 203 27 229 1 226 27 229 1 232 27 229 1 239 3 253 1 240 4 1 1 242 27 229 2 6 27 229 2 24 27 229 2 31 27 229 2 38 27 229 2 48 27 229 2 56 27 229 2 59 27 229 2 68 27 229 2 73 27 229 2 97 27 229 2 108 27 61 2 119 0 93 2 120 0 97 2 121 0 101 2 122 27 229 2 160] 
#[0 16 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[1 1 67 0 8 1 71 0 41 8 213 0 46 1 67 0 49 1 67 0 52 1 67 0 55 0 74 0 57 3 138 0 58 1 67 0 60 0 78 0 62 1 67 0 65 1 67 0 66 0 82 0 68 3 142 0 70 5 199 0 72 16 166 0 75 1 67 0 76 1 67 0 86 0 86 0 87 5 203 0 88 1 67 0 94 5 207 0 97 1 67 0 98 1 87 0 103 1 91 0 105 5 211 0 106 5 215 0 107 5 219 0 108 8 153 0 109 1 107 0 110 1 67 0 113 1 111 0 114 1 67 0 117 1 115 0 120 1 67 0 121 0 90 0 122 1 67 0 129 1 67 0 130 28 1 0 133 1 67 0 134 1 123 0 137 1 67 0 138 8 197 0 139 1 127 0 153 4 137 1 204 4 141 1 205 4 145 1 206 8 177 1 227 8 181 1 228 8 185 1 229 8 189 1 233 8 193 1 234 8 197 1 235 8 201 1 241 8 205 1 243 8 209 1 244 8 213 1 245 8 213 1 246 8 221 2 7 8 225 2 8 8 229 2 9 8 233 2 25 8 237 2 26 8 241 2 27 8 245 2 32 8 249 2 33 8 253 2 34 9 1 2 39 9 5 2 40 9 9 2 49 9 13 2 50 9 17 2 51 9 21 2 57 4 149 2 60 4 153 2 61 4 157 2 62 4 161 2 74 4 165 2 75 4 169 2 76 4 173 2 102 4 177 2 103 4 181 2 104 4 185 2 110 4 189 2 111 4 193 2 112 28 5 2 146 28 9 2 161 28 13 2 162 28 17 2 163] 
#[0 16 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 16 174 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 22 149 0 153 28 21 1 210] 
#[0 28 25 0 151] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 76 0 10 0 86 0 10 0 94 0 10 0 97 0 10 0 98 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 16 178 0 151 0 10 0 153 28 29 2 87 28 29 2 88 28 29 2 90 28 29 2 95 28 29 2 96 27 105 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 16 182 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 16 186 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 16 190 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 16 194 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 16 198 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[1 16 202 0 8 16 202 0 49 16 202 0 52 16 202 0 55 16 202 0 60 16 202 0 65 16 202 0 66 16 202 0 70 16 202 0 76 16 202 0 86 16 202 0 94 28 37 0 97 16 202 0 98 16 202 0 110 16 202 0 113 16 202 0 117 16 202 0 121 16 202 0 129 16 202 0 130 16 202 0 134 16 202 0 138 16 202 0 153 28 37 2 140] 
#[0 16 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 16 210 0 15 0 151] 
#[0 28 41 0 25] 
#[0 16 214 0 9 0 15 0 38] 
#[1 16 218 0 79 16 218 0 82 28 45 0 89 16 218 0 91 16 218 0 92 16 218 0 101 16 218 0 115 16 218 0 141] 
#[0 16 222 0 25 0 32 0 144] 
#[0 16 226 0 25 0 32 0 144] 
#[0 16 230 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 28 49 0 221 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 28 49 1 71 28 49 1 72 28 49 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 28 49 1 89 3 205 1 90 28 49 1 109 28 49 1 112 28 49 1 113 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 16 234 0 37 0 80 0 88 0 106 0 107 0 116 0 151] 
#[0 16 238 0 25 0 32 0 144] 
#[0 28 53 0 9] 
#[0 28 57 0 9] 
#[0 16 242 0 15 0 25 0 32 0 141 0 144] 
#[0 28 61 0 8] 
#[0 16 246 0 15 0 25 0 32 0 141 0 144] 
#[0 16 250 0 15 0 25 0 32 0 141 0 144] 
#[0 5 223 0 15 0 25 0 32 0 141 0 144] 
#[0 16 254 0 15 0 25 0 32 0 141 0 144] 
#[0 17 2 0 15 0 25 0 32 0 141 0 144] 
#[0 17 6 0 15 0 25 0 32 0 141 0 144] 
#[0 17 10 0 25 0 32 0 141 0 144] 
#[1 28 65 0 15 17 14 0 25 17 14 0 32 17 14 0 141 17 14 0 144] 
#[1 28 69 0 15 17 18 0 25 17 18 0 32 17 18 0 141 17 18 0 144] 
#[0 17 22 0 15 0 25 0 32 0 141 0 144] 
#[0 17 26 0 25 0 32 0 141 0 144] 
#[0 17 30 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 17 34 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153] 
#[0 17 38 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 17 42 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 17 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[1 2 39 0 8 2 43 0 41 6 42 0 46 2 39 0 49 2 39 0 52 2 39 0 55 2 39 0 60 2 39 0 65 2 39 0 66 6 58 0 70 6 50 0 71 2 47 0 72 2 39 0 76 6 50 0 84 2 39 0 86 2 51 0 88 2 39 0 94 2 43 0 97 2 39 0 98 2 43 0 103 6 42 0 105 2 51 0 106 2 51 0 107 2 47 0 108 2 55 0 110 2 39 0 113 2 43 0 114 2 39 0 117 2 59 0 120 2 39 0 121 2 39 0 129 2 39 0 130 5 227 0 133 2 39 0 134 2 43 0 137 2 39 0 138 2 67 0 153 13 81 2 146] 
#[1 2 71 0 8 2 75 0 41 6 82 0 46 2 71 0 49 2 71 0 52 2 71 0 55 3 202 0 57 6 90 0 58 2 71 0 60 3 206 0 62 2 71 0 65 2 71 0 66 3 210 0 68 6 86 0 70 2 79 0 72 17 50 0 75 2 71 0 76 2 71 0 86 3 214 0 87 5 231 0 88 2 71 0 94 5 235 0 97 2 71 0 98 2 91 0 103 2 95 0 105 5 231 0 106 5 231 0 107 5 231 0 108 2 99 0 109 2 103 0 110 2 71 0 113 2 75 0 114 2 71 0 117 2 107 0 120 2 71 0 121 3 218 0 122 2 71 0 129 2 71 0 130 5 239 0 133 2 71 0 134 2 91 0 137 2 71 0 138 6 70 0 139 2 115 0 153] 
#[1 2 119 0 8 2 123 0 41 6 110 0 46 2 119 0 49 2 119 0 52 2 119 0 55 3 222 0 57 6 118 0 58 2 119 0 60 3 226 0 62 2 119 0 65 2 119 0 66 3 230 0 68 6 114 0 70 2 127 0 72 17 54 0 75 2 119 0 76 2 119 0 86 3 234 0 87 5 243 0 88 2 119 0 94 5 243 0 97 2 119 0 98 2 127 0 103 2 135 0 105 5 243 0 106 5 243 0 107 5 243 0 108 2 139 0 109 2 143 0 110 2 119 0 113 2 123 0 114 2 119 0 117 2 147 0 120 2 119 0 121 3 238 0 122 2 119 0 129 2 119 0 130 5 247 0 133 2 119 0 134 2 127 0 137 2 119 0 138 6 106 0 139 2 119 0 153] 
#[1 2 171 0 8 2 175 0 41 6 142 0 46 2 171 0 49 2 171 0 52 2 171 0 55 3 242 0 57 6 158 0 58 2 171 0 60 3 246 0 62 2 171 0 65 2 171 0 66 3 250 0 68 6 154 0 70 2 179 0 72 17 58 0 75 2 171 0 76 2 171 0 86 3 254 0 87 5 251 0 88 2 171 0 94 5 255 0 97 2 171 0 98 2 191 0 103 2 195 0 105 5 251 0 106 5 251 0 107 5 251 0 108 2 199 0 109 2 203 0 110 2 171 0 113 2 175 0 114 2 171 0 117 2 207 0 120 2 171 0 121 4 2 0 122 2 171 0 129 2 171 0 130 6 3 0 133 2 171 0 134 2 191 0 137 2 171 0 138 6 138 0 139 2 215 0 153] 
#[1 2 219 0 8 2 223 0 41 6 174 0 46 2 219 0 49 2 219 0 52 2 219 0 55 4 6 0 57 6 186 0 58 2 219 0 60 4 10 0 62 2 219 0 65 2 219 0 66 4 14 0 68 6 182 0 70 2 227 0 72 17 62 0 75 2 219 0 76 2 219 0 86 4 18 0 87 6 7 0 88 2 219 0 94 6 11 0 97 2 219 0 98 2 239 0 103 2 243 0 105 6 7 0 106 6 7 0 107 6 7 0 108 2 247 0 109 2 251 0 110 2 219 0 113 2 223 0 114 2 219 0 117 2 255 0 120 2 219 0 121 4 22 0 122 2 219 0 129 2 219 0 130 6 15 0 133 2 219 0 134 2 239 0 137 2 219 0 138 6 166 0 139 3 7 0 153] 
#[1 3 11 0 8 3 15 0 41 6 198 0 46 3 11 0 49 3 11 0 52 3 11 0 55 4 26 0 57 6 218 0 58 3 11 0 60 4 30 0 62 3 11 0 65 3 11 0 66 4 34 0 68 6 214 0 70 6 210 0 71 3 19 0 72 17 66 0 75 3 11 0 76 6 210 0 84 3 11 0 86 4 38 0 87 6 19 0 88 3 11 0 94 6 23 0 97 3 11 0 98 3 31 0 103 3 35 0 105 6 19 0 106 6 19 0 107 6 27 0 108 3 43 0 109 3 47 0 110 3 11 0 113 3 15 0 114 3 11 0 117 3 51 0 120 3 11 0 121 4 42 0 122 3 11 0 129 3 11 0 130 6 31 0 133 3 11 0 134 3 31 0 137 3 11 0 138 6 206 0 139 3 59 0 153] 
#[1 3 127 0 8 3 131 0 41 7 14 0 46 3 127 0 49 3 127 0 52 3 127 0 55 1 195 0 57 3 127 0 60 1 199 0 62 3 127 0 65 3 127 0 66 3 135 0 70 3 139 0 71 3 143 0 72 17 70 0 75 3 127 0 76 3 139 0 84 3 127 0 86 1 203 0 87 6 35 0 88 3 127 0 94 6 39 0 97 3 127 0 98 3 155 0 103 3 159 0 105 6 35 0 106 6 35 0 107 6 43 0 108 3 167 0 109 3 171 0 110 3 127 0 113 3 131 0 114 3 127 0 117 3 175 0 120 3 127 0 121 1 215 0 122 3 127 0 129 3 127 0 130 6 43 0 133 3 127 0 134 3 155 0 137 3 127 0 138 3 179 0 139 3 183 0 153] 
#[1 3 203 0 8 3 207 0 41 3 203 0 49 3 203 0 52 3 203 0 55 4 122 0 57 3 203 0 60 4 126 0 62 3 203 0 65 3 203 0 66 7 142 0 70 7 126 0 71 6 47 0 72 3 203 0 76 7 126 0 84 3 203 0 86 4 130 0 87 3 215 0 88 3 203 0 94 3 219 0 97 3 203 0 98 3 223 0 103 1 223 0 105 3 215 0 106 3 215 0 107 3 227 0 108 3 231 0 109 3 235 0 110 3 203 0 113 3 207 0 114 3 203 0 117 3 239 0 120 3 203 0 121 4 134 0 122 3 203 0 129 3 203 0 130 3 227 0 133 3 203 0 134 3 223 0 137 3 203 0 138 7 134 0 139 3 243 0 153] 
#[0 28 77 0 75] 
#[1 17 74 0 75 28 105 0 88 28 105 0 97 28 105 0 106 28 105 0 107 28 105 0 108 28 105 0 133 28 105 2 163] 
#[0 17 78 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 82 0 15 0 149] 
#[0 17 86 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 17 90 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 17 94 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 28 109 0 70 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 1 0 110 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 28 113 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 28 113 0 207 1 189 0 208 28 113 0 210 1 197 0 211 28 117 1 137 3 9 1 210 28 121 1 247 3 25 2 148 7 81 2 172] 
#[0 17 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 96 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 148 0 151 0 153 2 173] 
#[0 28 125 0 153] 
#[0 28 129 0 25] 
#[0 17 102 0 25 0 32 0 144] 
#[0 17 106 0 25 0 32 0 144] 
#[0 28 133 0 9] 
#[1 27 165 0 97 5 161 0 153 1 141 0 188 27 185 0 190 1 141 0 191 27 185 0 209 27 189 1 210 28 137 1 219 27 205 1 220 28 141 1 221] 
#[1 27 165 0 97 5 161 0 153 1 141 0 188 27 185 0 190 1 141 0 191 27 185 0 209 28 145 1 210 28 149 1 220 28 153 1 221] 
#[0 18 121 0 120] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 28 161 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 28 161 0 207 1 189 0 208 28 161 0 210 1 197 0 211 3 9 1 210 3 25 2 148 28 161 2 164 3 49 2 172] 
#[0 17 50 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 54 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 58 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 62 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 66 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 70 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[0 17 110 0 75 0 88 0 97 0 106 0 107 0 108 0 133] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 28 165 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 28 165 0 207 1 189 0 208 28 165 0 210 1 197 0 211 3 9 1 210 3 25 2 148 3 49 2 172] 
#[1 28 169 0 124 6 51 0 153] 
#[1 5 97 0 8 5 101 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 76 1 169 0 86 1 169 0 94 5 133 0 98 1 169 0 113 1 169 0 117 5 145 0 121 1 169 0 129 1 169 0 130 1 169 0 134 1 81 0 138 5 161 0 153 1 141 0 188 1 137 0 190 1 141 0 191 28 177 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 28 177 0 207 1 189 0 208 28 177 0 210 1 197 0 211 3 9 1 210 28 181 1 248 3 25 2 148 3 49 2 172] 
#[1 28 185 0 153 28 189 2 89] 
#[0 17 114 0 79 0 82 0 91 0 92 0 101 0 115 0 141] 
#[0 17 118 0 151] 
#[0 17 122 0 25 0 32 0 141 0 144] 
#[1 28 193 0 15 17 126 0 25 17 126 0 32 17 126 0 141 17 126 0 144] 
#[0 17 130 0 25 0 32 0 141 0 144] 
#[0 17 134 0 15 0 25 0 32 0 141 0 144] 
#[0 17 138 0 15 0 25 0 32 0 141 0 144] 
#[0 17 142 0 25 0 32 0 141 0 144] 
#[0 17 146 0 153] 
#[1 28 197 0 153 28 201 2 165 28 205 2 166] 
#[0 28 209 0 153] 
#[0 28 213 0 37] 
#[0 28 217 0 144] 
#[1 28 221 0 124 6 55 0 153] 
#[1 28 185 0 153 28 229 2 89] 
#[1 11 238 0 8 17 93 0 26 28 233 1 207 28 233 1 208] 
#[0 17 150 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[1 27 165 0 97 5 161 0 153 1 141 0 188 27 185 0 190 1 141 0 191 27 185 0 209 28 145 1 210 28 149 1 220 28 237 1 221] 
#[0 28 241 0 37] 
#[1 28 245 0 25 28 197 0 153 28 249 2 166] 
#[0 17 154 0 25 0 153] 
#[0 28 253 0 25] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 29 1 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 80 0 10 0 116 29 5 2 91 29 9 2 93 29 13 2 94 29 17 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 29 21 0 37] 
#[0 29 25 0 144] 
#[0 17 158 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 29 29 0 8] 
#[0 17 162 0 25 0 32 0 141 0 144] 
#[1 0 105 0 1 0 109 0 5 3 53 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 57 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 61 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 17 0 73 0 213 0 76 3 65 0 79 0 233 0 86 0 241 0 94 0 245 0 95 0 249 0 97 0 253 0 98 1 9 0 113 1 13 0 117 1 17 0 118 1 21 0 119 1 25 0 121 1 33 0 124 3 69 0 125 3 17 0 126 1 49 0 128 1 53 0 129 1 57 0 130 3 73 0 131 1 69 0 134 1 77 0 136 1 81 0 138 1 97 0 148 3 77 0 153 1 105 0 154 1 109 0 155 1 113 0 156 1 117 0 157 0 22 0 158 1 121 0 161 0 26 0 162 1 125 0 165 1 129 0 166 1 133 0 188 1 137 0 190 1 141 0 191 3 221 0 193 1 149 0 194 1 149 0 195 1 181 0 196 1 181 0 197 1 181 0 201 1 169 0 202 1 169 0 203 1 169 0 204 1 181 0 205 3 221 0 207 1 189 0 208 3 221 0 210 1 197 0 211 1 201 0 235 1 205 0 236 1 205 0 237 1 213 0 238 1 217 0 239 1 221 0 244 1 225 0 245 1 205 0 247 1 205 0 249 1 205 0 250 1 205 1 3 1 245 1 4 1 249 1 5 1 253 1 6 1 205 1 7 1 205 1 8 1 205 1 10 1 205 1 11 1 205 1 12 1 205 1 13 1 205 1 14 1 201 1 26 1 205 1 27 1 205 1 28 1 205 1 33 1 205 1 39 1 205 1 40 1 205 1 41 1 205 1 42 1 205 1 43 3 101 1 48 1 205 1 49 1 205 1 54 3 101 1 55 3 101 1 56 3 101 1 57 3 101 1 58 3 125 1 59 3 129 1 60 3 133 1 61 3 137 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 165 1 70 29 33 1 71 29 33 1 72 29 33 1 73 1 205 1 74 3 185 1 75 3 185 1 77 3 185 1 83 3 197 1 86 29 33 1 89 3 205 1 90 29 33 1 109 29 33 1 112 29 33 1 113 29 33 1 114 3 221 1 148 3 221 1 149 3 9 1 210 1 205 2 137 3 17 2 138 3 25 2 148 3 101 2 151 1 205 2 152 3 101 2 154 1 205 2 155 3 49 2 172] 
#[0 17 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 75 0 76 0 86 0 87 0 88 0 94 0 97 0 98 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 113 0 114 0 117 0 120 0 121 0 122 0 129 0 130 0 133 0 134 0 137 0 138 0 139 0 151 0 153] 
#[0 17 170 0 25 0 153] 
#[0 17 174 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 29 37 0 38] 
#[0 29 41 0 151] 
#[1 0 49 0 37 0 10 0 116 17 178 0 151 29 45 2 94 29 49 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 80 17 182 0 151 29 53 2 93 29 57 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 29 61 0 80 29 65 0 116] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 29 69 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 49 0 37 0 10 0 80 29 73 2 92 29 73 2 93 29 57 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 0 10 0 8 11 42 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 76 0 10 0 85 0 10 0 86 0 10 0 94 0 10 0 98 0 10 0 102 0 10 0 104 0 10 0 110 0 10 0 113 0 10 0 117 0 10 0 121 0 10 0 124 0 10 0 129 0 10 0 130 0 10 0 134 0 10 0 138 0 10 0 153 29 81 1 252 19 241 1 253 19 245 1 254 19 249 1 255 19 253 2 5 20 1 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 29 85 0 38] 
#[0 29 89 0 144] 
#[0 17 186 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 17 190 0 151] 
#[0 29 65 0 116] 
#[0 17 194 0 151] 
#[0 29 61 0 80] 
#[0 29 93 0 25] 
#[0 29 97 0 25] 
#[0 29 101 0 38] 
#[0 29 105 0 151] 
#[0 17 198 0 151] 
#[0 29 109 0 9] 
#[0 17 202 0 25 0 153] 
#[1 0 49 0 37 0 10 0 80 0 10 0 116 29 113 2 91 29 9 2 93 29 13 2 94 29 17 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[0 17 206 0 37 0 116 0 151] 
#[0 17 210 0 37 0 80 0 151] 
#[0 29 117 0 144] 
#[0 17 214 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[1 14 194 0 25 14 194 0 32 25 37 0 141 14 194 0 144 29 121 1 214 25 45 1 215 25 49 1 216] 
#[0 29 125 0 151] 
#[1 0 49 0 37 0 10 0 80 29 129 2 92 29 129 2 93 29 57 2 119 0 93 2 120 0 97 2 121 0 101 2 122] 
#[1 8 101 0 25 8 105 0 32 1 93 0 144 8 109 1 118 29 133 1 250] 
#[0 17 218 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 29 137 0 151] 
#[0 17 222 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153] 
#[0 17 226 0 8 0 37 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 76 0 86 0 94 0 97 0 98 0 110 0 113 0 117 0 121 0 129 0 130 0 134 0 138 0 151 0 153]
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
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_arguments2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 4).
	result at: 2 put: ((nodes at: 1) at: 4).
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
	result rightParen: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
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
CSharpParser >> reduceActionForinterface_get_accessor1: nodes [
	| result |
	result := CSInterfacePropertyAccessorNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result accessorType: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_indexer_declaration1: nodes [
	| result |
	result := CSInterfaceIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result thisToken: (nodes at: 4).
	result leftBracket: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result parameters.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result rightBracket: (nodes at: 7).
	result leftBrace: (nodes at: 8).
	result getAccessor: ((nodes at: 9) at: 1).
	result setAccessor: ((nodes at: 9) at: 2).
	result rightBrace: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_indexer_declaration2: nodes [
	| result |
	result := CSInterfaceIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result thisToken: (nodes at: 5).
	result leftBracket: (nodes at: 6).
	result addNodes: ((nodes at: 7) at: 1) to: result parameters.
	result addTokens: ((nodes at: 7) at: 2) to: result commas.
	result rightBracket: (nodes at: 8).
	result leftBrace: (nodes at: 9).
	result getAccessor: (nodes at: 10).
	result rightBrace: (nodes at: 11).
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
CSharpParser >> reduceActionForinterface_property_declaration1: nodes [
	| result |
	result := CSInterfacePropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result getAccessor: ((nodes at: 6) at: 1).
	result setAccessor: ((nodes at: 6) at: 2).
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_property_declaration2: nodes [
	| result |
	result := CSInterfacePropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result getAccessor: (nodes at: 7).
	result rightBrace: (nodes at: 8).
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
