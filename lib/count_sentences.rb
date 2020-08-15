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
    count = []
    count << self.split(".")
    count << self.split("!")
    count << self.split("?")
    count << self.split(" ")
    count.delete_if {|w| w.size < 3}.size
  end
end