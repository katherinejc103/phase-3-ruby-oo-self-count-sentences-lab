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
    sentence_split = self.split(/\?|\.|\!/)
    puts sentence_split
    sentence_split.filter{|sentence|!sentence.empty?}.size
  end
end