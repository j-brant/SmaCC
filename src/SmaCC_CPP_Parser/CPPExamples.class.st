Class {
	#name : #CPPExamples,
	#superclass : #Object,
	#category : #'SmaCC_CPP_Parser-Examples'
}

{ #category : #'file system' }
CPPExamples >> addForeachFileTo: aFileSystem [
	aFileSystem / self foreachFilename
		writeStreamDo: [ :stream | stream nextPutAll: self foreachSource ]
]

{ #category : #'file system' }
CPPExamples >> addStandaloneFileTo: aFileSystem [
	aFileSystem / self standaloneFilename
		writeStreamDo:
			[ :stream | stream nextPutAll: self standaloneFileSource ]
]

{ #category : #'file system' }
CPPExamples >> addTestMacroFileTo: aFileSystem [
	aFileSystem / self testMacroFilename
		writeStreamDo: [ :stream | stream nextPutAll: self testMacroFileSource ]
]

{ #category : #'file system' }
CPPExamples >> fileSystem [
	<gtExample>
	| fileSystem |
	fileSystem := FileSystem memory.
	self addStandaloneFileTo: fileSystem.
	self addTestMacroFileTo: fileSystem.
	self addForeachFileTo: fileSystem.
	^ fileSystem
]

{ #category : #private }
CPPExamples >> foreachFilename [
	^ 'foreach.cpp'
]

{ #category : #private }
CPPExamples >> foreachSource [
	^ 'int main() {
	foreach(Foo bar,someCollection) {
		baz(bar);
	}
}'
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
				= (self foreachSource copyReplaceAll: 'foreach' with: 'eachfor').
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
				arguments: #('a' 'b'))
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
				arguments: #('a' 'b'))
		named: 'foo'.
	preprocessor processFile: fileRef.
	source := preprocessor sourceString.
	self assert: source = self replacedTestMacroFileSource.
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
				arguments: #('a' 'b'))
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
CPPExamples >> testMacroFileSource [
	^ 'int main() {
	return foo((bar() + baz()),3);
}'
]

{ #category : #private }
CPPExamples >> testMacroFilename [
	^ 'test_macro.cpp'
]
