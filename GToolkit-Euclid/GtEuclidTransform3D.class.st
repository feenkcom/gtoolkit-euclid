Class {
	#name : #GtEuclidTransform3D,
	#superclass : #GtEuclidExternalObject,
	#type : #words,
	#classVars : [
		'Identity'
	],
	#category : #'GToolkit-Euclid'
}

{ #category : #'instance creation' }
GtEuclidTransform3D class >> identity [
	<script: 'self identity inspect'>

	^ (self basicNew: 16) primAddArray: Identity
]

{ #category : #'class initialization' }
GtEuclidTransform3D class >> initialize [
	Identity := self new: 16.
	Identity
		at: 1 put: 1;
		at: 6 put: 1;
		at: 11 put: 1;
		at: 16 put: 1
]

{ #category : #'instance creation' }
GtEuclidTransform3D class >> new [
	^ self identity
]

{ #category : #'api - transformations' }
GtEuclidTransform3D >> postScaleX: aX Y: aY Z: aZ [
	self primPostScaleX: aX Y: aY Z: aZ
]

{ #category : #'api - transformations' }
GtEuclidTransform3D >> postTranslateX: aX Y: aY Z: aZ [
	self primPostTranslateX: aX Y: aY Z: aZ
]

{ #category : #'api - transformations' }
GtEuclidTransform3D >> preScaleX: aX Y: aY Z: aZ [
	self primPreScaleX: aX Y: aY Z: aZ
]

{ #category : #'api - transformations' }
GtEuclidTransform3D >> preTranslateX: aX Y: aY Z: aZ [
	self primPreTranslateX: aX Y: aY Z: aZ
]

{ #category : #'private - ffi' }
GtEuclidTransform3D >> primPostScaleX: aX Y: aY Z: aZ [
	self ffiCall: #(void euclid_transform3d_f32_post_scale(void* self, float32 aX, float32 aY, float32 aZ))
]

{ #category : #'private - ffi' }
GtEuclidTransform3D >> primPostTranslateX: aX Y: aY Z: aZ [
	self ffiCall: #(void euclid_transform3d_f32_post_translate(void* self, float32 aX, float32 aY, float32 aZ))
]

{ #category : #'private - ffi' }
GtEuclidTransform3D >> primPreScaleX: aX Y: aY Z: aZ [
	self ffiCall: #(void euclid_transform3d_f32_pre_scale(void* self, float32 aX, float32 aY, float32 aZ))
]

{ #category : #'private - ffi' }
GtEuclidTransform3D >> primPreTranslateX: aX Y: aY Z: aZ [
	self ffiCall: #(void euclid_transform3d_f32_pre_translate(void* self, float32 aX, float32 aY, float32 aZ))
]
