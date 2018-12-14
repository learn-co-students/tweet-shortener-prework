def dictionary
  dict_hash = {
    "hello" => "hi",
    "to" =>  "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "@"
  }
end

def word_substituter(string)
  newS = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  newS.join(" ")
end
