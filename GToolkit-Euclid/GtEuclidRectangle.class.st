Class {
	#name : #GtEuclidRectangle,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidRectangle class >> fromRectangle: aRectangle [
	^ self new
		left: aRectangle left;
		top: aRectangle top;
		width: aRectangle width;
		height: aRectangle height
]

{ #category : #'instance creation' }
GtEuclidRectangle class >> new [
	<script: 'self new inspect'>

	^ self basicNew: 4
]

{ #category : #converting }
GtEuclidRectangle >> asRectangle [
	^ self origin extent: self extent
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> extent [
	^ self width @ self height
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> height [
	^ self at: 4
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> height: aNumber [
	self at: 4 put: aNumber
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> left [
	^ self at: 1
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> left: aNumber [
	self at: 1 put: aNumber
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> origin [
	^ self left @ self top
]

{ #category : #'private - ffi' }
GtEuclidRectangle >> primGetHeight [
	^ self ffiCall: #(float32 euclid_rectangle_f32_get_height(void* self))
]

{ #category : #'private - ffi' }
GtEuclidRectangle >> primGetLeft [
	^ self ffiCall: #(float32 euclid_rectangle_f32_get_left(void* self))
]

{ #category : #'private - ffi' }
GtEuclidRectangle >> primGetTop [
	^ self ffiCall: #(float32 euclid_rectangle_f32_get_top(void* self))
]

{ #category : #'private - ffi' }
GtEuclidRectangle >> primGetWidth [
	^ self ffiCall: #(float32 euclid_rectangle_f32_get_width(void* self))
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> top [
	^ self at: 2
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> top: aNumber [
	self at: 2 put: aNumber
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> width [
	^ self at: 3
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> width: aNumber [
	self at: 3 put: aNumber
]
