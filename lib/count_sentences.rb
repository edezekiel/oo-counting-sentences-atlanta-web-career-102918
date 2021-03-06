require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    temp = self.split(/[.?!]/)
    noempties = temp.reject {|c| c.empty?}
    noempties.count
  end
end
