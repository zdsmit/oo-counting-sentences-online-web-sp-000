require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  example = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

  def count_sentences
    sentences = self.split(/\.|\?|\!/)
    sentences.each do |sentence|
      sentence.each do |word|
        if word.size < 2
          sentence.delete
        end
      end
    end
    sentences.size
  end
end
