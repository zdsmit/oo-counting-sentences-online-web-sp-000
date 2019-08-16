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
    sentences = self.split(/[\W]/)
    sentences.each do |sentence|
      valid_sentences = []
      output = valid_sentences.count
      unless sentence == ""
        valid_sentences << sentence
      end
      output
    end
  end

end
