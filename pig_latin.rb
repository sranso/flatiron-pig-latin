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
    split_word = /\A(?<beginning>[yY]?[^aeiouyAEIOUY]*)(?<end>[aeiouyAEIOUY]*[a-zA-Z]*)/.match(@word)
    if split_word[:beginning] == ""
      new_word = "#{split_word[:end]}way"
    else
      new_word = "#{split_word[:end]}#{split_word[:beginning]}ay"
    end
  end
end

# banana = PigLatin.new.tap { |obj| obj.word = "banana"}
# p banana.pig_latin_word