
# Write your code here.
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
  long_words = tweet.split
  short_words = []

  for word in long_words do
    if dictionary.keys.include?(word.downcase)
      short_words << dictionary[word.downcase]
    else
      short_words << word
    end
  end

  short_words.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  for tweet in tweet_array do
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
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
