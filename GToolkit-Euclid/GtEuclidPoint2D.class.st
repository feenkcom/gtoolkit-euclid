Class {
	#name : #GtEuclidPoint2D,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidPoint2D class >> new [
	<script: 'self new inspect'>

	^ self basicNew: 2
]

{ #category : #'instance creation' }
GtEuclidPoint2D class >> x: anX y: anY [
	^ self new
		x: anX; y: anY
]

{ #category : #converting }
GtEuclidPoint2D >> asPoint [
	^ self x @ self y
]

{ #category : #accessing }
GtEuclidPoint2D >> x [
	<return: #Float>
	
	^ self at: 1
]

{ #category : #accessing }
GtEuclidPoint2D >> x: aFloat [
	self at: 1 put: aFloat
]

{ #category : #accessing }
GtEuclidPoint2D >> y [
	<return: #Float>
	
	^ self at: 2
]

{ #category : #accessing }
GtEuclidPoint2D >> y: aFloat [
	self at: 2 put: aFloat
]
