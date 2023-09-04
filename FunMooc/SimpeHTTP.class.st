Class {
	#name : #SimpeHTTP,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#category : #FunMooc
}

{ #category : #'as yet unclassified' }
SimpeHTTP >> createServer [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| books book|
	books := Dictionary new.
	book := { 'author' -> 'Erwin Schrodinger'. 'title' -> 'Quest-ce que la vie ?' } asDictionary .
	books at: 1 put: book.
	teapot := Teapot configure: { #defaultOutput -> #json. #port -> 8181}.
	teapot 
		GET: '/' -> '<p>HTTP server with Teapot </p>'; output: #html;
		GET: '/regex/([a-z]+\d\d)' asRegex -> '<p> dealing with regex</p>'; output: #html;
		GET: '/books' -> books;
		start.
]

{ #category : #'as yet unclassified' }
SimpeHTTP >> stopServer [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	teapot stop.
	
]
