def dictionary
  {
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
  tweet = string.split

  tweet.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet[index] = dictionary[word.downcase]
    end
  end
  tweet.join(" ")
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
  if selective_tweet_shortener(string).length > 140
    return selective_tweet_shortener(string)[0..136] + "..."
  else
    selective_tweet_shortener(string)
  end
end
