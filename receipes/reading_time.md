1. Describe the problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the method signature

Include the name of the method, its parameters, return value, and side effects.

reading_time = calculate_reading_time(text)

text: a string (e.g. "The quick brown fox jumps over the lazy dog")

estimated_reading_time = integer representing the number of minutes

side effects - less than 200 words, then less than a minute to read - should the time be returned as a fraction of a minute or as seconds?

3. Create examples as tests

Make a list of examples of what the method will take and return.
```ruby
#1. empty string
calculate_reading_time("")
# => 0

#2. greater than 0 and equal to 200 words
calculate_reading_time("The quick brown fox jumps over the lazy dog")
# => 1

#3. 200 words
calculate_reading_time("Augue et tempus, ut Blandit sed ac ipsum diam id curae; curae;, fusce lacus. Dictum nonummy commodo nec urna class ligula molestie accumsan. Eros urna. Cras, habitasse luctus mus ultrices placerat fringilla. Duis, vivamus convallis aptent nostra pharetra nisl facilisi pharetra. Commodo sit praesent pulvinar nascetur. Morbi interdum arcu platea. Non luctus massa habitasse et vel ipsum consectetuer lobortis pretium neque, habitasse Molestie vel hendrerit. Facilisis senectus nibh egestas elementum, mi ultrices erat eros ornare ullamcorper tortor. Malesuada donec semper nonummy tortor, id ac sagittis. Bibendum dolor odio praesent nec penatibus, egestas sapien. Lectus diam cum ultricies augue maecenas. Eget orci fames justo, tortor augue feugiat erat aliquam taciti urna purus venenatis natoque urna ornare ultrices potenti tortor ligula class rutrum nullam sapien. Mi metus. Lobortis enim integer conubia lobortis ridiculus justo. Sollicitudin penatibus massa potenti id phasellus, curae; potenti luctus nonummy. Dignissim diam libero lacinia sollicitudin malesuada justo risus donec sociis placerat sagittis. Sollicitudin risus fringilla euismod. Ac pulvinar Imperdiet mi hac ipsum sit. Sed hendrerit orci, mi mollis semper cras iaculis bibendum tincidunt senectus feugiat aenean interdum. Suspendisse eget. Consequat posuere suspendisse pede pharetra iaculis litora Malesuada hendrerit platea Tempus mus semper hendrerit aptent est suscipit morbi, hymenaeos.")

# => 1

#4. 200 < x <= 400 words
calculate_reading_time(THREE_HUNDRED_WORDS)

# => 2

#5. 400 < X <= 600 words
calculate_reading_time(FIVE_HUNDRED_WORDS)

# => 3

#6. 10,000 words
calculate_reading_time(TEN_THOUSAND_WORDS)
# => 50

#7. 20,000 words
calculate_reading_time(TWENTY_THOUSAND_WORDS)
# => 100



```





