def word_substituter(tweet)

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

  tweet_arr = tweet.split(" ")
  new_tweet = Array.new

  tweet_arr.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0..139]
end
