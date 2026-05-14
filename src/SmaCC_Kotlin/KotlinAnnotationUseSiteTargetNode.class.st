Class {
	#name : 'KotlinAnnotationUseSiteTargetNode',
	#superclass : 'KotlinAnnotationNode',
	#instVars : [
		'atToken',
		'site',
		'colonToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitAnnotationUseSiteTarget: self
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> atToken [
	^ atToken
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> atToken: aSmaCCToken [
	atToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> site [
	^ site
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> site: aSmaCCToken [
	site := aSmaCCToken
]

{ #category : 'generated' }
KotlinAnnotationUseSiteTargetNode >> tokenVariables [
	^ #(#atToken #site #colonToken)
]
