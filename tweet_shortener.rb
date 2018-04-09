def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(arg)
  tweet = arg.split

  tweet.each do |word|
    if dictionary.keys.include?(word)
      tweet[tweet.index(word)] = dictionary[word]
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |mess|
    puts word_substituter(mess)
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
  if word_substituter(tweet).length > 140
    return tweet[0..136] + "..."
  else
    tweet
  end
end
