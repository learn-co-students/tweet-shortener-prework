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

  tweetarr = tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweetarr.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |twee|
  puts word_substituter(twee)
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
    word_substituter(tweet)[0..136] + "..."
  else
    word_substituter(tweet)
  end
end
