def dictionary(word)
  dict = {
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
  dict.fetch(word.downcase, word)
end

def word_substituter(tweet)
  tweet.split.map do |word|
    dictionary(word)
  end.join(" ")
end  

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length <= 140
  word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  return tweet if tweet.length <= 140
  if word_substituter(tweet).length <= 140
    return word_substituter(tweet)
  else
    new_tweet = word_substituter(tweet)[0...140]
    new_tweet[-3..-1] = "..."
    new_tweet
  end
end