require "rspec"
require "./pig_latin"

describe String do
  describe "#pig_latin" do
    it "For words that begin with consonant sounds, the initial consonant or
     consonant cluster is moved to the end of the word, and ay is added" do
      "banana".pig_latin.should eq("ananabay")
    end

    it "For words that begin with vowel sounds or silent letter, way is added at the
    end of the word." do
      "egg".pig_latin.should eq("eggway")
    end

    it "The letter 'y' can play the role of either consonant or vowel, depending
    on its location. Take 1" do
      "yellow".pig_latin.should eq("ellowyay")
    end

    it "The letter 'y' can play the role of either consonant or vowel, depending
    on its location. Take 2" do
      "rhythm".pig_latin.should eq("ythmrhay")
    end

    it "Should account for words that start with double-consonant sounds" do
      "shush".pig_latin.should eq("ushshay")
    end

  end

  describe '#split_to_words' do
    it "Should be able to translate an entire sentence into pig latin.
    THIS IS CRUCIAL" do
      "Sarah has many friends.".pig_latin.should eq("arahSay ashay anymay iendsfray.")
    end
  end
  
end

#RULES
#sh tr th gl 
#find the first consonants
# In some variants, though, just add an "ay" at the end.
# "egg" → "eggay"
# Yet another acceptable variant is to add the ending "yay" to words that begin with a vowel sound.
# "egg" → "eggyay"
