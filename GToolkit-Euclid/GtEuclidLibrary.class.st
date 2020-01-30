Class {
	#name : #GtEuclidLibrary,
	#superclass : #FFILibrary,
	#classInstVars : [
		'MouseWheelScrollSpeed'
	],
	#category : #'GToolkit-Euclid'
}

{ #category : #'library path' }
GtEuclidLibrary class >> ffiLibraryName [
	^ self
]

{ #category : #installation }
GtEuclidLibrary class >> install [
	<script: 'self install'>
	| installer |

	installer := GtLibraryInstaller new.
	installer library: 'Euclid'.
	installer version: 'development'.
	installer icon: (Form extent: 1@1 depth: 32).
	installer binary: 'libEuclid'.
	installer url: 'https://dl.feenk.com/{library}/{platform}/{version}/{arch}/{binary}.{extension}'.
	installer works: [ self uniqueInstance hasModule ].

	installer run
]

{ #category : #'accessing platform' }
GtEuclidLibrary >> detectLibrary: aFileName [
	^ ({ Smalltalk imageDirectory . Smalltalk vmDirectory . FileSystem workingDirectory }
		collect: [ :aPath | aPath asFileReference / aFileName ])
			detect: #exists
			ifFound: #fullName
			ifNone: [ aFileName ]
]

{ #category : #testing }
GtEuclidLibrary >> hasModule [
	"Return if there is a loadable and working Glutin library installed, false otherwise"
	<return: #Boolean>
	| aResult |

	aResult := nil.
	
	[ aResult := self primTest ]
		on: Error
		do: [ :e | aResult := false ].

	^ aResult ifNil: [ false ]
]

{ #category : #'accessing platform' }
GtEuclidLibrary >> macModuleName [
	^ self detectLibrary: 'libEuclid.dylib'
]

{ #category : #'private - ffi' }
GtEuclidLibrary >> primTest [
	^ self ffiCall: #(bool euclid_test())
]

{ #category : #'accessing platform' }
GtEuclidLibrary >> unixModuleName [
	^ self detectLibrary: 'libEuclid.so'
]

{ #category : #'accessing platform' }
GtEuclidLibrary >> win32ModuleName [
	^ self detectLibrary: 'libEuclid.dll'
]
