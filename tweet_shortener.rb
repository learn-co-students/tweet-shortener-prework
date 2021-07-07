def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  tweet_array.each_with_index do |tweet_word, number|
    dictionary.keys.each do |key_word|
      if key_word.downcase == tweet_word.downcase
        tweet_array[number] = dictionary[key_word]
      end
    end
  end
  tweet_array.join" "




#   #split tweet into an array
#   #use .keys to get keys
#   #dictionary_hash.keys
#   #if tweetword == key, then tweetword = value
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
     word_substituter(tweet)[0..139]
  else
     tweet
  end
end
