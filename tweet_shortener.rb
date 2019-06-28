def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split
  short_tweet = []
  array.each {|string|
    if dictionary.keys.include?(string.downcase)
      short_tweet << dictionary[(string.downcase)]
    else
      short_tweet << string
    end
  }
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |single_tweat|
    puts word_substituter(single_tweat  )
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
    word_substituter(tweet)
      if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..136] + "..."
      else
        word_substituter(tweet)
    end
  else
    tweet
  end
end
