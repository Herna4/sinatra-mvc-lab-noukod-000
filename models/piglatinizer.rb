class PigLatinizer
  
  def piglatinize(phrase)
    split_phrase = phrase.split(" ")
    
    split_phrase.map do |word|
      if word.downcase.scan(/^[aeiuo]+/).empty? == false
        word + "way"
      else
        split_phrase = word.scan(/^[^aeiuo]+/).join(" ")
        word[0,split_phrase.length] = ""
        word + split_phrase + "ay"
      end 
      
    end.join(" ")
  end 
  
end 