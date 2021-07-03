# Write your code here.
def dictionary (word)
  sub_hash = {
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
  if(!!sub_hash[word.downcase])
    return sub_hash[word.downcase]
  else
    return word
  end

end

def word_substituter(tweet)
  word_array = tweet.split(" ")
  word_array.map do |word|
    dictionary(word)
  end.join(" ")

end

def bulk_tweet_shortener (arr_tweets)
  arr_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if(tweet.length>140)
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if(tweet.length>140)
    shortened_tweet = word_substituter(tweet)
    if(shortened_tweet.length >140)
      return shortened_tweet[0..136]+"..."
    else
      return shortened_tweet
    end
  else
    return tweet
  end
end
