require "debugger"
class String
  def pig_latin
    if self.include?(" ")
      words = self.split(/\b/)
      new_sentence = []
      words.each do |word|
        split_word = /\A(?<beginning>[yY]?[^aeiouyAEIOUY]*)(?<end>[aeiouyAEIOUY]*[a-zA-Z]*)/.match(word)
        if (/\s|\./).match(split_word[:beginning])
          new_sentence << split_word[:beginning]
        elsif split_word[:beginning] == ""
          new_sentence << "#{split_word[:end]}way"
        else
          new_sentence << "#{split_word[:end]}#{split_word[:beginning]}ay"
        end
      end
      new_sentence.join
    else
      split_word = /\A(?<beginning>[yY]?[^aeiouyAEIOUY]*)(?<end>[aeiouyAEIOUY]*[a-zA-Z]*)/.match(self)
      if split_word[:beginning] == ""
        new_word = "#{split_word[:end]}way"
      else
        new_word = "#{split_word[:end]}#{split_word[:beginning]}ay"
      end
    end
  end
end

# has = String.new.tap { |obj| obj.word = "friends"}
# p has.pig_latin