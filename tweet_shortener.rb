def dictionary
  {
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
  tweet = tweet.split(" ")
  dictionary.each do |key, value|
    tweet.map! do |word|
      new_word = word
      if new_word.casecmp(key) == 0
        new_word = value
      end
      word = new_word
    end
  end
  tweet = tweet.join(" ")
  tweet
end

def bulk_tweet_shortener(tweet)
  tweet.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.size > 140
      new_tweet = new_tweet[0..138] << "…"
      return new_tweet
    else
      return new_tweet
    end
  else
    return tweet
  end
end
