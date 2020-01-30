Class {
	#name : #GtEuclidTransform2D,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#classVars : [
		'Identity'
	],
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidTransform2D class >> identity [
	<script: 'self identity inspect'>

	^ (self basicNew: 6) primAddArray: Identity
]

{ #category : #'class initialization' }
GtEuclidTransform2D class >> initialize [
	Identity := self
		with: 1 with: 0
		with: 0 with: 1
		with: 0 with: 0 
]

{ #category : #'instance creation' }
GtEuclidTransform2D class >> new [
	^ self identity
]

{ #category : #initialize }
GtEuclidTransform2D >> loadIdentity [
	self primLoadIdentity
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postRotateRadians: theRadians [
	self primPostRotate: theRadians
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postScale: aPoint [
	self primPostScaleX: aPoint x Y: aPoint y
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postTranslate: aPoint [
	self primPostTranslateX: aPoint x Y: aPoint y
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> preRotateRadians: theRadians [
	self primPreRotate: theRadians
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> preScale: aPoint [
	self primPreScaleX: aPoint x Y: aPoint y
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> preTranslate: aPoint [
	self primPreTranslateX: aPoint x Y: aPoint y
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primLoadIdentity [
	self ffiCall: #(void euclid_transform2d_f32_load_identity(void* self))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPostRotate: theRadians [
	self ffiCall: #(void euclid_transform2d_f32_post_rotate(void* self, float32 theRadians))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPostScaleX: aX Y: aY [
	self ffiCall: #(void euclid_transform2d_f32_post_scale(void* self, float32 aX, float32 aY))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPostTranslateX: aX Y: aY [
	self ffiCall: #(void euclid_transform2d_f32_post_translate(void* self, float32 aX, float32 aY))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPreRotate: theRadians [
	self ffiCall: #(void euclid_transform2d_f32_pre_rotate(void* self, float32 theRadians))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPreScaleX: aX Y: aY [
	self ffiCall: #(void euclid_transform2d_f32_pre_scale(void* self, float32 aX, float32 aY))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPreTranslateX: aX Y: aY [
	self ffiCall: #(void euclid_transform2d_f32_pre_translate(void* self, float32 aX, float32 aY))
]
