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

def word_substituter(tweet)
  words = tweet.split(" ")
  new_words = words.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweets = tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.to_s.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.to_s.length > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      short_new_tweet = new_tweet[0..136] + "..."
    else
      new_tweet
    end
  else
    tweet
  end
end
