class PigLatin
  def initialize
    
  end

  def word
    @word
  end

  def word=(word)
    @word = word
  end

  def pig_latin_word
    split_word = /(?<beginning>\A[a-zA-Z])(?<end>[aeiou]*[a-zA-Z]*)/.match(@word)
    new_word = "#{split_word[:end]}#{split_word[:beginning]}ay"
  end
end

# banana = PigLatin.new.tap { |obj| obj.word = "banana"}
# p banana.pig_latin_word