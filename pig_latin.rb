require "debugger"

class String
  def pig_latin
    # split sentence into an array by the word breaks
    all_words = self.split(/\b/)
    final_sentence = []
    all_words.each do |word|
      # divide word based on pig latin's rules
      split_word = /\A(?<beginning>[yY]?[^aeiouyAEIOUY]*)(?<end>[aeiouyAEIOUY]*[a-zA-Z]*)/.match(word)
      # if word is a whitespace or a period, don't do anything to it
      if (/\s|\./).match(split_word[:beginning])
        final_sentence << split_word[:beginning]
      # if the word starts with a vowel, :beginning will have captured nothing, and the end gets treated in a special 'way'
      elsif split_word[:beginning] == ""
        final_sentence << "#{split_word[:end]}way"
      # else treat the word the normal piglatin (w)ay
      else
        final_sentence << "#{split_word[:end]}#{split_word[:beginning]}ay"
      end
    end
    # join all words and word breaks in the array
    final_sentence.join
  end
end

# has = String.new.tap { |obj| obj.word = "friends"}
# p has.pig_latin