"
SmaCCAmbiguousResultNotification is a notification that is signaled when the GLR parser accepts multiple parses. The user can catch this signal and resume it with the correct parse. The parameters of the notification are the potential parses.

Instance Variables:
	parser	<SmaCCGLRParser>	the parser that parsed the ambiguous results


"
Class {
	#name : 'SmaCCAmbiguousResultNotification',
	#superclass : 'Notification',
	#instVars : [
		'parser'
	],
	#category : 'SmaCC_GLR_Runtime',
	#package : 'SmaCC_GLR_Runtime'
}

{ #category : 'instance creation' }
SmaCCAmbiguousResultNotification class >> forParser: aSmaCCParser [
	^ self new
		parser: aSmaCCParser;
		yourself
]

{ #category : 'accessing' }
SmaCCAmbiguousResultNotification >> allPossibleItems [
	^ tag allPossibleItems
]

{ #category : 'private - actions' }
SmaCCAmbiguousResultNotification >> defaultAction [
	^ self tag preferredItem
]

{ #category : 'accessing' }
SmaCCAmbiguousResultNotification >> parser [
	^ parser
]

{ #category : 'accessing' }
SmaCCAmbiguousResultNotification >> parser: anObject [
	parser := anObject
]

{ #category : 'accessing' }
SmaCCAmbiguousResultNotification >> preferredItem [
	^ tag preferredItem
]
