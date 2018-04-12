require 'pry'

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
  tweet.split.map {|word| dictionary.has_key?(word.downcase) ? dictionary[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
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
    test_tweet = word_substituter(tweet)
  else return tweet
  end
  if test_tweet.length > 140
    final_tweet = test_tweet[0..136] + "..."
  else return test_tweet
  end
  final_tweet
end
