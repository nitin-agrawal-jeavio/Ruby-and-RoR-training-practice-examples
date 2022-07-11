# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be
# confusing. It obeys a few simple rules (below) but when it's spoken
# quickly it's really difficult for non-children (and non-native
# speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to
# the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end
# of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional
# variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
# Test-driving bonus:
# * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
# * retain the punctuation from the original phrase
  
require_relative "../lib/04_pig_latin"

RSpec.describe Pig_latin do

    it "should return the word in pig latin language" do
        p1= Pig_latin.new
        result= p1.translate("getting admission in iit is quit hard")
        expect(result).to eq("ettinggay admissionay inay iitay isay itquay ardhay")
    end
end


