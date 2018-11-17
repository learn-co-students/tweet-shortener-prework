require 'pry'
def dictionary
  dictionary = {"hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string.split.collect do |element|
    if dictionary.keys.include?(element.downcase)
      element = dictionary[element.downcase]
    else 
      element
    end 
  end.join(" ")
end 
def bulk_tweet_shortener(array)
  array.each do |element|
    puts word_substituter(element)
  end 
end 
def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else 
    string
  end
end
def shortened_tweet_truncator(string)
  if string.length > 140
    string[0..136] + "..."
  else
    string
  end
end 