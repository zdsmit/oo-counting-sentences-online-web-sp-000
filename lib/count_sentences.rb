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

  def count_sentences
    sentences = self.split(/\.|\?|\!/)
    sentences.each do |sentence|
      if sentence.size < 2 or sentence == ""
        sentence.delete

      end
    end
    sentences.size
  end

end
