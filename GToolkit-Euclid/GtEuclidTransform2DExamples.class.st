Class {
	#name : #GtEuclidTransform2DExamples,
	#superclass : #GtEuclidExternalObjectExamples,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidTransform2DExamples >> identity [
	<gtExample>
	| aTransform |
	
	aTransform := GtEuclidTransform2D identity.
	
	self assert: aTransform asArray equals: {
		1.0. 0.0.
		0.0. 1.0.
		0.0. 0.0 }.
	
	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> postRotate_halfPi [
	<gtExample>
	| aTransform |

	aTransform := self identity.
	aTransform postRotateRadians: Float pi / 2.

	self assert: (aTransform approxEquals: (GtEuclidTransform2D fromArray: {
		0.0. -1.0.
		1.0. 0.0.
		0.0. 0.0 })).

	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> postScale_1_1 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform postScale: 1@1.
	
	self assert: aTransform asArray equals: {
		1.0. 0.0.
		0.0. 1.0.
		0.0. 0.0 }.
	
	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> postScale_2_2 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform postScale: 2@2.
	
	self assert: aTransform asArray equals: {
		2.0. 0.0.
		0.0. 2.0.
		0.0. 0.0 }.
	
	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> postTranslate_10_20 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform postTranslate: 10@20.
	
	self assert: aTransform asArray equals: {
		1.0. 0.0.
		0.0. 1.0.
		10.0. 20.0 }.
	
	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> preScale_2_2 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform preScale: 2@2.
	
	self assert: aTransform asArray equals: {
		2.0. 0.0.
		0.0. 2.0.
		0.0. 0.0 }.
	
	^ aTransform
]

{ #category : #'examples - transformation' }
GtEuclidTransform2DExamples >> preTranslate_10_20 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform preTranslate: 10@20.
	
	self assert: aTransform asArray equals: {
		1.0. 0.0.
		0.0. 1.0.
		10.0. 20.0 }.
	
	^ aTransform
]
