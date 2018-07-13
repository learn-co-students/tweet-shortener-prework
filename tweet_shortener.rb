def dictionary 
  dictionary = {
    "hello" => "hi",
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
  tweet = string.split(" ")
  tweet.each_with_index do |item, index|
    if dictionary.keys.include?(item.downcase)
      tweet.delete_at(index) && tweet.insert(index, dictionary[item.downcase])
      end
    end
  return tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |string|
   puts word_substituter(string)
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
  if word_substituter(string).length > 140
    word_substituter(string)[0..136] + "..."
  else
    string
  end
end