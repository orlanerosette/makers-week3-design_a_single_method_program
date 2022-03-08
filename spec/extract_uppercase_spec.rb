require 'extract_uppercase'

RSpec.describe "extract_uppercase method" do
  it "returns an empty array if given an empty string" do
    expect(extract_uppercase("")).to eq []
  end

  it "returns an empty array if given a string with no uppercase words" do
    expect(extract_uppercase("hello world")).to eq []
  end

  it "returns only the uppercase words given a string with mixed words" do
    expect(extract_uppercase("hello WORLD")).to eq ["WORLD"]
  end

  it "returns the uppercase words given a string with uppercase words" do
    expect(extract_uppercase("HELLO WORLD")).to eq ["HELLO", "WORLD"]
  end

  it "does not extract mixed cased words" do
    expect(extract_uppercase("hello WoRLD")).to eq []
  end

  it "ignores and strips punctuation" do
    expect(extract_uppercase("hello WORLD!")).to eq ["WORLD"]
  end



  


end
