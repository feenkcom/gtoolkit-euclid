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
GtEuclidTransform2D class >> fromArray: anArrayOfFloats [
	
	self
		assert: [ anArrayOfFloats size = 6 ]
		description: [ 'Must have 6 elements' ].
	
	^ self newFrom: anArrayOfFloats 
]

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

{ #category : #'api - testing' }
GtEuclidTransform2D >> approxEquals: aGtEuclidTransform2D [
	^ self primApproxEqual: aGtEuclidTransform2D
]

{ #category : #initialize }
GtEuclidTransform2D >> loadIdentity [
	self primLoadIdentity
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postRotateDegrees: theDegrees [
	self postRotateRadians: theDegrees degreesToRadians
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
GtEuclidTransform2D >> postScaleX: aX Y: aY [
	self primPostScaleX: aX Y: aY
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postTransform: aGtEuclidTransform2D [
	self primPostTransform: aGtEuclidTransform2D
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postTranslate: aPoint [
	self primPostTranslateX: aPoint x Y: aPoint y
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> postTranslateX: aX Y: aY [
	self primPostTranslateX: aX Y: aY
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
GtEuclidTransform2D >> preTransform: aGtEuclidTransform2D [
	self primPreTransform: aGtEuclidTransform2D
]

{ #category : #'api - transformations' }
GtEuclidTransform2D >> preTranslate: aPoint [
	self primPreTranslateX: aPoint x Y: aPoint y
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primApproxEqual: aGtEuclidTransform2D [
	self ffiCall: #(bool euclid_transform2d_f32_approx_eq(void* self, void* aGtEuclidTransform2D))
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
GtEuclidTransform2D >> primPostTransform: aGtEuclidTransform2D [
	self ffiCall: #(void euclid_transform2d_f32_post_transform(void* self, void* aGtEuclidTransform2D))
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
GtEuclidTransform2D >> primPreTransform: aGtEuclidTransform2D [
	self ffiCall: #(void euclid_transform2d_f32_pre_transform(void* self, void* aGtEuclidTransform2D))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primPreTranslateX: aX Y: aY [
	self ffiCall: #(void euclid_transform2d_f32_pre_translate(void* self, float32 aX, float32 aY))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primTo3D: aGtEuclidTransform3D [
	self ffiCall: #(void euclid_transform2d_f32_to_3d(void* self, void* aGtEuclidTransform3D))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primTransformPoint: aGtEuclidPoint2D [
	self ffiCall: #(void euclid_transform2d_f32_transform_point(void* self, void* aGtEuclidPoint2D))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primTransformRect: aGtEuclidRectangle [
	self ffiCall: #(void euclid_transform2d_f32_transform_rect(void* self, void* aGtEuclidRectangle))
]

{ #category : #'private - ffi' }
GtEuclidTransform2D >> primTransformVector: aGtEuclidVector2D [
	self ffiCall: #(void euclid_transform2d_f32_transform_vector(void* self, void* aGtEuclidVector2D))
]

{ #category : #printing }
GtEuclidTransform2D >> printOn: aStream [
	aStream
		nextPut: $|; space; print: (self at: 1); space; print: (self at: 2); space; nextPut: $|; cr;
		nextPut: $|; space; print: (self at: 3); space; print: (self at: 4); space; nextPut: $|; cr;
		nextPut: $|; space; print: (self at: 5); space; print: (self at: 6); space; nextPut: $|
]

{ #category : #'api - geometry' }
GtEuclidTransform2D >> to3D [
	<return: #GtEuclidTransform3D>
	| aTransform3D |
	
	aTransform3D := GtEuclidTransform3D new.
	self primTo3D: aTransform3D.
	^ aTransform3D
]

{ #category : #'api - geometry' }
GtEuclidTransform2D >> transformPoint: aGtEuclidPoint2D [
	"In-place transform and return given point"
	<return: #GtEuclidPoint2D>

	self primTransformPoint: aGtEuclidPoint2D.
	^ aGtEuclidPoint2D
]

{ #category : #'api - geometry' }
GtEuclidTransform2D >> transformRectangle: aGtEuclidRectangle [
	"In-place transform and return given rectangle"
	<return: #GtEuclidRectangle>

	self primTransformVector: aGtEuclidRectangle.
	^ aGtEuclidRectangle
]

{ #category : #'api - geometry' }
GtEuclidTransform2D >> transformVector: aGtEuclidVector2D [
	"In-place transform and return given vector"
	<return: #GtEuclidVector2D>

	self primTransformVector: aGtEuclidVector2D.
	^ aGtEuclidVector2D
]
