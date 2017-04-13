# Write your code here.


$dict = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => '&'
}

def word_substituter(tweet)
  tweet_array = tweet.split
  new_tweet_array = tweet_array.collect {|word|
    if $dict.keys.member?(word.downcase)
      $dict[word.downcase]
    else
      word
    end

  }
  new_tweet_array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  processed_tweet = selective_tweet_shortener(tweet)
  if processed_tweet.length > 140
    processed_tweet.slice(0,140)
  else
    processed_tweet
  end
end
