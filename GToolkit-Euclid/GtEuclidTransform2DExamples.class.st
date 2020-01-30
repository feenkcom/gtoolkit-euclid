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

{ #category : #'instance creation' }
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

{ #category : #'instance creation' }
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

{ #category : #'instance creation' }
GtEuclidTransform2DExamples >> postTranslate_0_10 [
	<gtExample>
	| aTransform |
	
	aTransform := self identity.
	aTransform postTranslate: 0@10.
	
	self assert: aTransform asArray equals: {
		1.0. 0.0.
		0.0. 1.0.
		0.0. 10.0 }.
	
	^ aTransform
]

{ #category : #'instance creation' }
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
