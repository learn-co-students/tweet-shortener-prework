def dictionary(word)
  words = {
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

  if words.include?(word.downcase)
    word = words.values_at(word.downcase)
  else
    word = word
  end
end

def word_substituter(tweet)
  tweet = tweet.split(" ").map do |word|
    dictionary(word)
  end
  tweet.flatten.join(" ")
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
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    truncated_tweet = shortened_tweet[0..136] + "..."
  else
    return shortened_tweet
  end
  return truncated_tweet
end
