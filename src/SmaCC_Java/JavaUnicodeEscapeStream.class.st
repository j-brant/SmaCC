"
I translate the unicode escapes of JLS 3.3, so that a scanner reads the characters a Java compiler reads. Translating before anything else is read is what lets a `\u005c` stand for the backslash of an escape sequence, and a `\u000a` end a line.

```language=text
\u00e9    is read as   é
\u005cn   is read as   \n, a backslash and an n
\\u2126   is read as itself, because an escape needs an even number of backslashes before it
\u005Cu20AC   is read as \u20AC, because a backslash an escape writes starts no escape of its own
```

I answer the positions of the text I wrap, not of the characters I hand out, so that a token still says where it is written. #rawFrom:to: answers the characters written between two of those positions.

Instance Variables:
	source	<String>	the text I wrap, before any translation
	sourceStream	<Stream>	the stream over that text
"
Class {
	#name : 'JavaUnicodeEscapeStream',
	#superclass : 'Stream',
	#instVars : [
		'sourceStream',
		'source'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'instance creation' }
JavaUnicodeEscapeStream class >> on: aReadStream [
	^ self basicNew
		on: aReadStream;
		yourself
]

{ #category : 'testing' }
JavaUnicodeEscapeStream >> atEnd [
	^ sourceStream atEnd
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> contents [
	^ sourceStream contents
]

{ #category : 'private' }
JavaUnicodeEscapeStream >> contentsSpecies [
	^ sourceStream contentsSpecies
]

{ #category : 'error handling' }
JavaUnicodeEscapeStream >> doesNotUnderstand: aMessage [
	^ sourceStream
		perform: aMessage selector
		withArguments: aMessage arguments
]

{ #category : 'private' }
JavaUnicodeEscapeStream >> eligibleBackslash [
	"JLS 3.3: a backslash starts an escape only when an even number of backslashes precedes it"
	| count index |
	count := 0.
	index := sourceStream position - 1.
	[ index > 0 and: [ (source at: index) == $\ ] ] whileTrue: [
		count := count + 1.
		index := index - 1 ].
	^ count even
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> flush [
	^ sourceStream flush
]

{ #category : 'private' }
JavaUnicodeEscapeStream >> isHexDigit: aCharacter [
	"JLS 3.3: the four digits of an escape are hexadecimal, in either case"
	^ '0123456789abcdefABCDEF' includes: aCharacter
]

{ #category : 'testing' }
JavaUnicodeEscapeStream >> isReadable [
	^ sourceStream isReadable
]

{ #category : 'testing' }
JavaUnicodeEscapeStream >> isWritable [
	^ sourceStream isWritable
]

{ #category : 'private' }
JavaUnicodeEscapeStream >> malformedEscapeAt: anInteger [
	"JLS 3.3: a backslash and a u that four hexadecimal digits do not follow is a compile-time error"
	^ SmaCCParserError new signal:
		  'Invalid unicode escape at position ' , anInteger printString
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> next [
	"JLS 3.3: a Java compiler translates unicode escapes before it reads anything else"
	| character |
	character := sourceStream next.
	character == $\ ifFalse: [ ^ character ].
	^ self eligibleBackslash
		ifTrue: [ self translateEscape ]
		ifFalse: [ character ]
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> next: anInteger [
	| output |
	output := WriteStream on: (String new: anInteger).
	anInteger timesRepeat: [ output nextPut: self next ].
	^ output contents
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> nextPut: anObject [
	^ sourceStream nextPut: anObject
]

{ #category : 'initialize-release' }
JavaUnicodeEscapeStream >> on: aReadStream [
	sourceStream := aReadStream.
	source := aReadStream contents
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> peek [
	| position character |
	position := sourceStream position.
	character := self next.
	sourceStream position: position.
	^ character
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> position [
	^ sourceStream position
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> position: anInteger [
	^ sourceStream position: anInteger
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> rawFrom: anInteger to: anotherInteger [
	"The characters the source writes between two positions, before any escape among them is translated"
	^ source copyFrom: anInteger to: anotherInteger
]

{ #category : 'accessing' }
JavaUnicodeEscapeStream >> skip: anInteger [
	^ self position: self position + anInteger
]

{ #category : 'private' }
JavaUnicodeEscapeStream >> translateEscape [
	"JLS 3.3: the backslash of an escape is followed by one or more u and then four hexadecimal digits. A backslash that no u follows is a backslash like any other."
	| start index digits |
	start := sourceStream position.
	index := start + 1.
	[ index <= source size and: [ (source at: index) == $u ] ] whileTrue: [ index := index + 1 ].
	index = (start + 1) ifTrue: [ ^ $\ ].
	index + 3 > source size ifTrue: [ ^ self malformedEscapeAt: start ].
	digits := source copyFrom: index to: index + 3.
	(digits allSatisfy: [ :each | self isHexDigit: each ]) ifFalse: [
		^ self malformedEscapeAt: start ].
	sourceStream position: index + 3.
	^ Character value: (Integer readFrom: digits base: 16)
]
