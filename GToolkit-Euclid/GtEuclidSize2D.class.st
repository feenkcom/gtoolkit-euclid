Class {
	#name : #GtEuclidSize2D,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidSize2D class >> fromPoint: aPoint [
	^ self width: aPoint x height: aPoint y
]

{ #category : #'instance creation' }
GtEuclidSize2D class >> new [
	<script: 'self new inspect'>

	^ self basicNew: 2
]

{ #category : #'instance creation' }
GtEuclidSize2D class >> width: aWidth height: aHeight [
	^ self new
		width: aWidth;
		height: aHeight
]

{ #category : #converting }
GtEuclidSize2D >> asPoint [
	^ self width @ self height
]

{ #category : #accessing }
GtEuclidSize2D >> height [
	<return: #Float>
	
	^ self at: 2
]

{ #category : #accessing }
GtEuclidSize2D >> height: aFloat [
	self at: 2 put: aFloat
]

{ #category : #accessing }
GtEuclidSize2D >> width [
	<return: #Float>
	
	^ self at: 1
]

{ #category : #accessing }
GtEuclidSize2D >> width: aFloat [
	self at: 1 put: aFloat
]
