1. Describe the problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the method signature

Include the name of the method, its parameters, return value, and side effects.

is_proper_sentence = grammar_checker(sentence)

sentence: a string

grammar_checker = method

proper_sentence = boolean 

3. Create examples as tests

Make a list of examples of what the method will take and return.

```ruby

#1. empty string
grammar_checker("")
# fail "Not a sentence."

#2. one sentence that starts with capital and ends with full stop
grammar_checker("I am a simple sentence.")
# => true

#3. one sentence that does not start with a capital, ends in full stop.
grammar_checker("i am a simple sentence.")
# => false

#4. one sentence that starts with a capital, has no ending punctuation mark
grammar_checker("I am a simple sentence")
# => false

#5. one sentence that starts with capital and ends with an exclamation mark
grammar_checker("I am a simple sentence!")
# => true

#6. one sentence that starts with capital and ends with a comma
grammar_checker("I am a simple sentence,")
# => false

#7. one sentence all capitals and ends with an exclamation mark
grammar_checker("I AM A SIMPLE SENTENCE!")
# => true

#8. one sentence that starts with capital and ends with a question mark
grammar_checker("Am I a simple sentence?")
# => true



```