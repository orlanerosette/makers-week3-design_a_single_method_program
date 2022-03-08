# METHOD DESIGN RECEIPE EXAMPLE



# 1. DESCRIBE THE PROBLEM
#   Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So I can analyse keywords in my text
# I want to see a list of uppercase words


# 2. DESIGN THE METHOD SIGNATURE
#   Include the name of the method, its parameters, return value, and side effects.

# `extract_upper` extracts uppercase words from a list of words
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects


# 3. CREATE EXAMPLES AS TESTS
#   Make a list of examples of what the method will take and return.

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error

# Encode each example as a test. You can add to the above list as you go.


# 4. IMPLEMENT THE BEHAVIOUR
#   After each test you write, follow the test-driving process 
#   of red, green, refactor to implement the behaviour.

