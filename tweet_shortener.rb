# Write your code here.
def dictionary
  short_words = {
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
  #maybe 2 and 4 could be represented by hashes in the keys? but that seems complicated
end

def word_substituter(string)
  dictionary
  tweet_array = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet_array.join " "
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
  truncated_tweet = selective_tweet_shortener(tweet)
  if truncated_tweet.length > 140
    truncated_tweet[0..139]
  else
    truncated_tweet
  end
end
