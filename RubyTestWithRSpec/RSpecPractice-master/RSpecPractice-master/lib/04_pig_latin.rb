class Pig_latin
  def translate(word)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ("a".."z").to_a - vowels
    array_of_words = word.split(" ")
    new_array = []
    array_of_words.each do |x|
      new_word = ""
      if consonants.include?(x[0])
        counter = 0
        while consonants.include?(x[counter])
          counter += 1
        end
        counter += 1 if x[(counter-1)..counter] == "qu"
        new_word = "#{x[(counter)...(x.length)]}#{x[0...counter]}ay"
      else
        new_word = "#{x}ay"
      end
      new_array << new_word
    end
    new_array.join(" ")
  end 
end
