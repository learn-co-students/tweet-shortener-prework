def dictionary
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
    "and" => "&",
  }
end

def word_substituter(tweet)
  to_replace = dictionary.keys
  short_tweet = []
  tweet.split.collect do |word|
    if to_replace.include?(word.downcase)
      short_tweet << dictionary[word.downcase]
    else
      short_tweet << word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length < 140
    tweet
  else
    short_tweet[0..136] << "..."
  end
end
