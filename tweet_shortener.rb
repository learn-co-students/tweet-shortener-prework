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
    "and" => "&",
  }
end

def word_substituter(tweet)
  dict = dictionary
  tweet = tweet.split
  tweet.each_with_index { |word, idx|
    dict.each { |long, short|
      if word.downcase == long
        tweet[idx] = dict[long]
      end
    }  
  }
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets_arr)
  tweets_arr.each { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = tweet[1..140]
  end
  tweet
end