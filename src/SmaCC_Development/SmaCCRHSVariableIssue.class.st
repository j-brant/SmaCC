Class {
	#name : 'SmaCCRHSVariableIssue',
	#superclass : 'SmaCCCompilationIssue',
	#instVars : [
		'rhs',
		'problemIndex'
	],
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'instance creation' }
SmaCCRHSVariableIssue class >> on: aSmaCCRHS index: problemIndex [
	^ self new
		rhs: aSmaCCRHS;
		problemIndex: problemIndex;
		yourself
]

{ #category : 'accessing' }
SmaCCRHSVariableIssue >> problemIndex [
	^ problemIndex
]

{ #category : 'accessing' }
SmaCCRHSVariableIssue >> problemIndex: anObject [
	problemIndex := anObject
]

{ #category : 'accessing' }
SmaCCRHSVariableIssue >> rhs [
	^ rhs
]

{ #category : 'accessing' }
SmaCCRHSVariableIssue >> rhs: anObject [
	rhs := anObject
]
