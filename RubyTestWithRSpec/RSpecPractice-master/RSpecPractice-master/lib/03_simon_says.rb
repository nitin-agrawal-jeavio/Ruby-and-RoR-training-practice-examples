class Simon
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(string, num=2)
    new_array = []
    num.times{new_array << string}
    new_array.join(" ")
  end

  def start_of_word(word,num)
    word[0...num]
  end

  def first_word(string)
    string.split(" ")[0]
  end

  def titleize(word)
    we_want_num_of_words = word.split(" ")
    number_of_words = we_want_num_of_words.length
    return word.capitalize if number_of_words == 1
    new_word = []
    old_word = word.split(" ")
    litte_words = ["the", "and", "over"]
    (0...old_word.length).each{|x|
      if x == 0
        new_word << old_word[x].capitalize
      elsif litte_words.include?(old_word[x])
        new_word << old_word[x]
      else
        new_word << old_word[x].capitalize
      end
    }
    new_word.join(" ") if number_of_words
  end
end

simon=Simon.new
puts simon.first_word("nitin")