Class {
	#name : #BaselineOfGToolkitEuclid,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfGToolkitEuclid
}

{ #category : #baselines }
BaselineOfGToolkitEuclid >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'GToolkitInstaller' with: [ spec repository: 'github://feenkcom/gtoolkit-installer/src' ];
			baseline: 'GToolkitExamplesEngine' with: [ spec repository: 'github://feenkcom/gtoolkit-examples/src' ].
		spec
			postLoadDoIt: #'postLoadEuclid:';
			package: 'GToolkit-Euclid' with: [ spec requires:  #(GToolkitInstaller GToolkitExamplesEngine) ] ]
]

{ #category : #baselines }
BaselineOfGToolkitEuclid >> postLoadEuclid: spec [
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	self postLoadInstallEuclidBinary: spec
]

{ #category : #baselines }
BaselineOfGToolkitEuclid >> postLoadInstallEuclidBinary: aSpec [
	(self class environment at: #GtEuclidLibrary) install
]
