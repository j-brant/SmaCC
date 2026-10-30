Class {
	#name : 'JavaSingleModuleImportDeclarationNode',
	#superclass : 'JavaDeclarationNode',
	#instVars : [
		'importToken',
		'moduleToken',
		'name',
		'semicolon'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> acceptVisitor: aProgramVisitor [

	^ aProgramVisitor visitSingleModuleImportDeclaration: self
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> ignoredTokenVariables [

	^ #( #semicolon )
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> importToken [

	^ importToken
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> importToken: aSmaCCToken [

	importToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> moduleToken [

	^ moduleToken
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> moduleToken: aSmaCCToken [

	moduleToken := aSmaCCToken
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> name [

	^ name
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> name: aJavaNameNode [

	self name notNil ifTrue: [ self name parent: nil ].
	name := aJavaNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> nodeVariables [

	^ #( #name )
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> semicolon [

	^ semicolon
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> semicolon: aSmaCCToken [

	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JavaSingleModuleImportDeclarationNode >> tokenVariables [

	^ #( #importToken #moduleToken )
]
