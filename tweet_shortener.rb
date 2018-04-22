# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "four" => "4"

  }

end


def word_substituter(tweet)
  tweet_array = tweet.split
  counter = 0
  tweet_array.collect do |i|
    if dictionary.keys.include?(i.downcase)
      tweet_array[counter] = dictionary[i.downcase]
    end
    counter += 1
  end
  tweet_array.join(" ")
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
