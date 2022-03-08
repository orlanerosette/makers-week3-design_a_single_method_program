def grammar_checker(text)
  fail "ERROR: an empty string is not a sentence!" if text.empty?

  if text[0] == text[0].upcase && (text[-1] == '.' or text[-1] == '!' or text[-1] == '?')
    return true
  else
    return false
  end

end