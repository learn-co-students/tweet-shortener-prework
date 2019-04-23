def dictionary
  substitutes = {
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
substitutes
end

def word_substituter(tweet)
new_tweet = tweet.split(" ")
  new_tweet.collect do |words|
    dictionary.collect do |key, value|
      if words.downcase == key.downcase
        words.replace(value)
      end
    end
  end
  new_tweet.join (" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |words|
  new_tweets = word_substituter(words)
  puts new_tweets
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    new_tweet[0..139]
  else
    new_tweet
  end
end
