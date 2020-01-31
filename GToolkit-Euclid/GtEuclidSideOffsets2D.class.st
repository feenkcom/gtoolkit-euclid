Class {
	#name : #GtEuclidSideOffsets2D,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidSideOffsets2D class >> fromMargin: aMargin [
	^ self left: aMargin left top: aMargin top right: aMargin right bottom: aMargin bottom
]

{ #category : #'instance creation' }
GtEuclidSideOffsets2D class >> left: aLeft top: aTop right: aRight bottom: aBottom [
	^ self new
		left: aLeft;
		top: aTop;
		right: aRight;
		bottom: aBottom
]

{ #category : #'instance creation' }
GtEuclidSideOffsets2D class >> new [
	<script: 'self new inspect'>

	^ self basicNew: 4
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> bottom [
	<return: #Float>

	^ self at: 3
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> bottom: aNumber [
	self at: 3 put: aNumber
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> left [
	<return: #Float>

	^ self at: 4
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> left: aNumber [
	self at: 4 put: aNumber
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> right [
	<return: #Float>

	^ self at: 2
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> right: aNumber [
	self at: 2 put: aNumber
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> top [
	<return: #Float>

	^ self at: 1
]

{ #category : #accessing }
GtEuclidSideOffsets2D >> top: aNumber [
	self at: 1 put: aNumber
]
