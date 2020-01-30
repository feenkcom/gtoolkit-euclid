Class {
	#name : #GtEuclidExternalObject,
	#superclass : #FloatArray,
	#type : #words,
	#category : #'GToolkit-Euclid'
}

{ #category : #resources }
GtEuclidExternalObject class >> ffiLibrary [
	^ GtEuclidLibrary
]

{ #category : #resources }
GtEuclidExternalObject >> ffiLibrary [
	^ self class ffiLibrary
]
