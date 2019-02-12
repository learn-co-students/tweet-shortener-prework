def dictionary
  words = {
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
  string.split.collect do |tweet|
    if dictionary.keys.include? tweet.downcase
      tweet = dictionary[tweet.downcase]
    else
      tweet
    end
  end.join(" ")
end

def bulk_tweet_shortener(strings)
  strings.each do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(string)
  minimum = string
  if minimum.length > 140
    minimum = word_substituter(string)
  end
  minimum
end

def shortened_tweet_truncator(string)
  large_tweet = word_substituter(string)
  if large_tweet.length > 140
    large_tweet = large_tweet[1..140]
  else
    large_tweet
  end
end
