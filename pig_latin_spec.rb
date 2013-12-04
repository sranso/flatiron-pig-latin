require "rspec"
require "./pig_latin"

describe PigLatin do
  describe "#pig_latin_word" do
    it "For words that begin with consonant sounds, the initial consonant or
     consonant cluster is moved to the end of the word, and ay is added" do
      banana = PigLatin.new
      banana.word = "banana"
      banana.pig_latin_word.should eq("ananabay")
    end

    it "For words that begin with vowel sounds or silent letter, way is added at the
    end of the word." do
      egg = PigLatin.new
      egg.word = "egg"
      egg.pig_latin_word.should eq("eggway")
    end

    it "The letter 'y' can play the role of either consonant or vowel, depending
    on its location. Take 1" do
      yellow = PigLatin.new
      yellow.word = "yellow"
      yellow.pig_latin_word.should eq("ellowyay")
    end

    it "The letter 'y' can play the role of either consonant or vowel, depending
    on its location. Take 2" do
      rhythm = PigLatin.new
      rhythm.word = "rhythm"
      rhythm.pig_latin_word.should eq("ythmrhay")
    end

    it "Should account for words that start with double-consonant sounds" do
      shush = PigLatin.new
      shush.word = "shush"
      shush.pig_latin_word.should eq("ushshay")
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
