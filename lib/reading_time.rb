def calculate_reading_time(text)
  words = text.split(" ")
  return (words.length/200.0).ceil
end