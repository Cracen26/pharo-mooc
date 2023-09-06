Class {
	#name : #StreamMooc,
	#superclass : #Object,
	#category : #FunMooc
}

{ #category : #'as yet unclassified' }
StreamMooc >> createNewFile: anString [
	| stream |
	stream := anString asFileReference writeStream.
	^stream
]

{ #category : #'as yet unclassified' }
StreamMooc >> readCollectionWithStream: anCollection [
	| stream |
	stream := anCollection readStream .
	^stream
]

{ #category : #writing }
StreamMooc >> writeInCollectionWithStream: anCollection [
	| stream |
	stream := anCollection writeStream .
	^stream 
]
