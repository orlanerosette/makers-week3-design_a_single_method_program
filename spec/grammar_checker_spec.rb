require 'grammar_checker'

RSpec.describe "grammar_checker method" do
  context "given an empty string" do
    it "fails" do
      expect { grammar_checker("") }.to raise_error "ERROR: an empty string is not a sentence!"
    end
  end

  context "given a sentence that starts with a capital letter and ends with a full stop" do
    it "returns true" do
      result = grammar_checker("I am a simple sentence.")
      expect(result).to eq true
    end
  end

  context "given a sentence that does not start with a capital letter, ends with a full stop" do
    it "returns false" do
      result = grammar_checker("i am a simple sentence.")
      expect(result).to eq false
    end
  end

  context "given a sentence that starts with a capital letter and has no ending punctuation mark" do
    it "returns false" do
      result = grammar_checker("I am a simple sentence")
      expect(result).to eq false
    end
  end

  context "given a sentence that starts with a capital letter and ends with an exclamation mark" do
    it "returns true" do
      result = grammar_checker("I am a simple sentence!")
      expect(result).to eq true
    end
  end

  context "given a sentence that starts with a capital letter and ends with a comma" do
    it "returns false" do
      result = grammar_checker("I am a simple sentence,")
      expect(result).to eq false
    end
  end

  context "given a sentence completely in upper case and ends with an exclamation mark" do
    it "returns true" do
      result = grammar_checker("I AM A SIMPLE SENTENCE!")
      expect(result).to eq true
    end
  end

  context "given a sentence that starts with a capital letter and ends with a question mark" do
    it "returns true" do
      result = grammar_checker("Am I a simple sentence?")
      expect(result).to eq true
    end
  end

end
