# Your code goes here!
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  private

  def anagram?(other_word)
    return false if @word == other_word

    sort_chars(@word) == sort_chars(other_word)
  end

  def sort_chars(word)
    word.chars.sort
  end
end
