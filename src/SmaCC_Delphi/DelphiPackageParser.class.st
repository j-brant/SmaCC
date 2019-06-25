Class {
	#name : #DelphiPackageParser,
	#superclass : #DelphiParser,
	#category : #'SmaCC_Delphi'
}

{ #category : #'file types' }
DelphiPackageParser class >> fileExtension [
	^ '.dpk'
]

{ #category : #'file types' }
DelphiPackageParser class >> fileExtensionType [
	^ 'Delphi package files'
]
