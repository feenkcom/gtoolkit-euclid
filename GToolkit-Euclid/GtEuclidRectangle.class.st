Class {
	#name : #GtEuclidRectangle,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidRectangle class >> new [
	^ self new: 4
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> height [
	^ self at: 4
]

{ #category : #'api - rectangle' }
GtEuclidRectangle >> left [
	^ self at: 1
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
GtEuclidRectangle >> width [
	^ self at: 3
]
