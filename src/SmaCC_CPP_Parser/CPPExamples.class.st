Class {
	#name : #CPPExamples,
	#superclass : #Object,
	#category : #'SmaCC_CPP_Parser-Examples'
}

{ #category : #'file system' }
CPPExamples >> addFile: aString to: aFileSystem [
	aFileSystem / (self perform: (aString , 'Filename') asSymbol)
		writeStreamDo:
			[ :stream | stream nextPutAll: (self perform: (aString , 'FileSource') asSymbol) ]
]

{ #category : #private }
CPPExamples >> defineFileSource [
	^ '#define VAR j
int main() {
		int VAR = 0;
		return VAR;
}'
]

{ #category : #private }
CPPExamples >> defineFilename [
	^ 'define.cpp'
]

{ #category : #private }
CPPExamples >> defineFunctionFileSource [
	^ '#define FOO(a,b,c) printf(#a,b##c)
int main() {
		int test = 0;
		FOO(%d,te,st);
}'
]

{ #category : #private }
CPPExamples >> defineFunctionFilename [
	^ 'defineFunction.cpp'
]

{ #category : #'file system' }
CPPExamples >> fileSystem [
	<gtExample>
	| fileSystem |
	fileSystem := FileSystem memory.
	(fileSystem / 'sub') ensureCreateDirectory.
	#('standalone' 'testMacro' 'foreach' 'including' 'included' 'missingInclude' 'subdirectoryIncluding' 'subdirectoryIncluded' 'define' 'defineFunction')
		do: [ :each | self addFile: each to: fileSystem ].
	^ fileSystem
]

{ #category : #private }
CPPExamples >> foreachFileSource [
	^ 'int main() {
	foreach(Foo bar,someCollection) {
		baz(bar);
	}
}'
]

{ #category : #private }
CPPExamples >> foreachFilename [
	^ 'foreach.cpp'
]

{ #category : #private }
CPPExamples >> includedFileSource [
	^ 'int main() {
	return 1;
}'
]

{ #category : #private }
CPPExamples >> includedFilename [
	^ 'included.h'
]

{ #category : #private }
CPPExamples >> includingFileSource [
	^ '//before
#include "included.h"
//after'
]

{ #category : #private }
CPPExamples >> includingFilename [
	^ 'including.cpp'
]

{ #category : #private }
CPPExamples >> missingIncludeFileSource [
	^ '#include "missing.h"
int main() { return 2; }'
]

{ #category : #private }
CPPExamples >> missingIncludeFilename [
	^ 'missingInclude.cpp'
]

{ #category : #preprocessing }
CPPExamples >> preprocessConcatenationFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self foreachFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor
		addMacro: (CPPPreprocessorMacro replacement: 'each ## for')
		named: 'foreach'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self
		assert:
			source
				= (self foreachFileSource copyReplaceAll: 'foreach' with: 'eachfor').
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessDefine [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self defineFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processDefines: true.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self replacedDefineSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessDefineFunction [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self defineFunctionFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processDefines: true.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self replacedDefineFunctionSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessForeachFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self foreachFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor
		addMacro:
			(CPPPreprocessorFunctionMacro
				replacement: 'for(a : b)'
				parameters: #('a' 'b'))
		named: 'foreach'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self replacedForeachSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessFunctionTestMacroFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self testMacroFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor
		addMacro:
			(CPPPreprocessorFunctionMacro
				replacement: 'zzz(b,a)'
				parameters: #('a' 'b'))
		named: 'foo'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self replacedTestMacroFileSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessIncludeNext [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self subdirectoryIncludingFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processIncludes: true.
	preprocessor includePath: {(fileRef / '/')}.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self
		assert:
			source
				=
					('//before1' , String cr , self includedFileSource , String cr
						, '//after1').
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessIncludesFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self includingFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processIncludes: true.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self
		assert:
			source
				=
					('//before' , String cr , self includedFileSource , String cr
						, '//after').
	^ preprocessor preprocessedFile
]

{ #category : #preprocessing }
CPPExamples >> preprocessMissingIncludeFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self missingIncludeFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processIncludes: true.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self missingIncludeFileSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessStandaloneFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self standaloneFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self standaloneFileSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessStringifyTestMacroFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self testMacroFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor
		addMacro:
			(CPPPreprocessorFunctionMacro
				replacement: 'zzz(#a,#b)'
				parameters: #('a' 'b'))
		named: 'foo'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self stringifiedTestMacroFileSource.
	^ source
]

{ #category : #preprocessing }
CPPExamples >> preprocessTestMacroFile [
	<gtExample>
	| fileSystem fileRef preprocessor source |
	fileSystem := self fileSystem.
	fileRef := fileSystem / self testMacroFilename.
	preprocessor := CPPPreprocessor new.
	preprocessor
		addMacro: (CPPPreprocessorMacro replacement: 'zzz')
		named: 'foo'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self
		assert: source = (self testMacroFileSource copyReplaceAll: 'foo' with: 'zzz').
	^ source
]

{ #category : #private }
CPPExamples >> replacedDefineFunctionSource [
	^ '
int main() {
		int test = 0;
		 printf("%d",test);
}'
]

{ #category : #private }
CPPExamples >> replacedDefineSource [
	^ '
int main() {
		int  j = 0;
		return  j;
}'
]

{ #category : #private }
CPPExamples >> replacedForeachSource [
	^ 'int main() {
	for(Foo bar : someCollection) {
		baz(bar);
	}
}'
]

{ #category : #private }
CPPExamples >> replacedTestMacroFileSource [
	^ 'int main() {
	return zzz(3,(bar() + baz()));
}'
]

{ #category : #private }
CPPExamples >> standaloneFileSource [
	^ 'int main() {
	return 1;
}'
]

{ #category : #private }
CPPExamples >> standaloneFilename [
	^ 'standalone.cpp'
]

{ #category : #private }
CPPExamples >> stringifiedTestMacroFileSource [
	^ 'int main() {
	return zzz("(bar() + baz())","3");
}'
]

{ #category : #private }
CPPExamples >> subdirectoryIncludedFileSource [
	^ '//before1
#include_next "included.h"
//after1'
]

{ #category : #private }
CPPExamples >> subdirectoryIncludedFilename [
	^ 'sub/included.h'
]

{ #category : #private }
CPPExamples >> subdirectoryIncludingFileSource [
	^ '#include "included.h"'
]

{ #category : #private }
CPPExamples >> subdirectoryIncludingFilename [
	^ 'sub/including.cpp'
]

{ #category : #private }
CPPExamples >> testMacroFileSource [
	^ 'int main() {
	return foo((bar() + baz()),3);
}'
]

{ #category : #private }
CPPExamples >> testMacroFilename [
	^ 'test_macro.cpp'
]
