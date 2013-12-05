require "debugger"

class String
  def pig_latin
    # split sentence into an array by the word breaks
    init_sentence = self.split(/\b/)
    pig_latin_sentence = []
    init_sentence.each do |word|
      # divide word based on pig latin's rules
      split_word = /\A(?<beginning>[yY]?[^aeiouyAEIOUY]*)(?<end>[aeiouyAEIOUY]*[a-zA-Z]*)/.match(word)
      # if word is a whitespace or a period, don't do anything to it
      if (/\s|\./).match(split_word[:beginning])
        pig_latin_sentence << split_word[:beginning]
      # if the word starts with a vowel, :beginning will have captured nothing, and the end gets treated in a special 'way'
      elsif split_word[:beginning] == ""
        pig_latin_sentence << "#{split_word[:end]}way"
      # else treat the word the normal piglatin (w)ay
      else
        pig_latin_sentence << "#{split_word[:end]}#{split_word[:beginning]}ay"
      end
    end
    # join all words and word breaks in the array
    pig_latin_sentence.join
  end
end