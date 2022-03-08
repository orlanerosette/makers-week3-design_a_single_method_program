def calculate_reading_time(text)
  words = text.split(" ")
  no_of_words = words.length
  if no_of_words == 0
    return 0
  else
    time = no_of_words/200.0
    return time.ceil
  end
end