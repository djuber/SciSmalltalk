tests
testPeekAnswersSame
"every subclass should implement some basic behavior."
	NumberGenerator subclasses do: [:ea | |random numberGenerator |
		numberGenerator := ea new.
		10 timesRepeat: [
		random := numberGenerator peek.
		self should: [random = numberGenerator peek].
		self should: [random = numberGenerator next]]]