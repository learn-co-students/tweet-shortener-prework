def dictionary
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

end

def word_substituter(long_tweet)
dict = dictionary.keys
tweet = long_tweet.split(' ')
tweet.collect do |word|
  if dict.include?(word.downcase)
    word = dictionary[word.downcase]
  end
  word
end.join(' ')

end# Write your code here.

def bulk_tweet_shortener(bulk_tweets)
  bulk_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
     word_substituter(tweet[0..148])
  else
    tweet
  end
end
