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
  tweet_arr = tweet.split
  return_arr = []

  tweet_arr.each do |word|
    if dictionary.keys.include?(word.downcase)
      return_arr << dictionary[word.downcase]
    else
      return_arr << word
    end
  end
  return_arr.join(" ")
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
  shortened_tweet = selective_tweet_shortener(tweet)

  if shortened_tweet.length > 140
    shortened_tweet[0..135] + " ..."
  else
    shortened_tweet
  end

end
