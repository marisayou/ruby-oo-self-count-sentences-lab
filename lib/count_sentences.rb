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
    if !(self.include?(".") || self.include?("?") || self.include?("!"))
      return 0
    end
    sent_arr1 = self.split(".")
    sent_arr2 = sent_arr1.map do |element|
      element = element.split("?")
    end.flatten
    sent_arr3 = sent_arr2.map do |element|
      element = element.split("!")
    end.flatten
    return sent_arr3.select do |element|
      element.length != 0
    end.length

  end
end