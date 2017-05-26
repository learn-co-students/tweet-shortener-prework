# Write your code here.
def dictionary
  dictionary_hash = {
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
  tweet.split.map do |e|
    if dictionary.keys.include?(e.downcase)
      e = dictionary[e.downcase]
    else
      e
    end
  end.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |i|
  puts word_substituter(i)
 end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

shortened_tweet = ""
def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0..134] + "(...)"
  else
    shortened_tweet
  end
end
