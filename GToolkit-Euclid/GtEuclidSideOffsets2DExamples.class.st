Class {
	#name : #GtEuclidSideOffsets2DExamples,
	#superclass : #GtEuclidExternalObjectExamples,
	#category : #'GToolkit-Euclid'
}

{ #category : #examples }
GtEuclidSideOffsets2DExamples >> default [
	<gtExample>
	| theOffsets |
	
	theOffsets := GtEuclidSideOffsets2D new.
	self assert: theOffsets left equals: 0.0.
	self assert: theOffsets top equals: 0.0.
	self assert: theOffsets right equals: 0.0.
	self assert: theOffsets bottom equals: 0.0.
	
	^ theOffsets
]

{ #category : #examples }
GtEuclidSideOffsets2DExamples >> leftTopRightBottom [
	<gtExample>
	| theOffsets |
	
	theOffsets := GtEuclidSideOffsets2D left: 10 top: 20 right: 30 bottom: 40.
	self assert: theOffsets left equals: 10.0.
	self assert: theOffsets top equals: 20.0.
	self assert: theOffsets right equals: 30.0.
	self assert: theOffsets bottom equals: 40.0.
	
	^ theOffsets
]
