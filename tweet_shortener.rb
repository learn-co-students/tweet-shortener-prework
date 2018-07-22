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
    punctuation = word.index(/\W+/)   # This checks for non-letter characters, e.g. commas, which may be at the end of words in our split array
    if punctuation                    # So we can replace words but maintain the punctuation
      dictionary(word[0...punctuation]) + word[punctuation..word.length]
    else 
      dictionary(word)
    end
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
