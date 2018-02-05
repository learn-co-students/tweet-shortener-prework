# Write your code here.
def dictionary
  return {
    "hello" => 'hi',
    "to" => '2',
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.map!{ |word|
if dictionary[word.downcase] != nil
  word = dictionary[word.downcase]
else
  word
end
  }
return tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each{|tweet|
puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  if tweet.length > 140
    tweet = tweet.slice(0..136)
      tweet += "..."
    end
  tweet
end
