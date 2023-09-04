Class {
	#name : #CollectionSample,
	#superclass : #Object,
	#category : #FunMooc
}

{ #category : #'as yet unclassified' }
CollectionSample >> createArray [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	^Array new: 4.
	
]

{ #category : #'as yet unclassified' }
CollectionSample >> createOrderedCollection [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^OrderedCollection withAll: #(7 7 5 2)
]

{ #category : #'as yet unclassified' }
CollectionSample >> createOrderedCollectionWithSameValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^OrderedCollection new:5 withAll: 'a'.
]

{ #category : #'as yet unclassified' }
CollectionSample >> createSet [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^Set withAll: #(7 7 1 2 3)
]

{ #category : #'as yet unclassified' }
CollectionSample >> doSomethingCollection [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	#('Calvin' 'Ball' 'Suzie') 
		do:[:each | Transcript show: each; cr]
]
