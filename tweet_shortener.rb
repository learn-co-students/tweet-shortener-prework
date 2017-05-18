def dictionary
  dictionary_hash = {
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
  tweet.split.map do |e|
    if dictionary.include?(e.downcase)
      e = dictionary[e.downcase]
    else
      e
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |e|
    puts word_substituter(e)
  end
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length < 140
  word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  return tweet if tweet.length < 140
  word_substituter(tweet)[0..139]
end
