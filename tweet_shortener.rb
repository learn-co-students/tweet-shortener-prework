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

def word_substituter(tweet)
  words_to_sub = dictionary.keys
  tweet_with_sub = tweet.split.map do |word|
    if words_to_sub.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    word
  end
  tweet_with_sub.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end 
end
