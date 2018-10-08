# Write your code here.
def dictionary
  dictionary = {
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

  tweet_array = tweet.split(" ")
  new_tweet = []

  tweet_array.each do |word|
   if dictionary[word.downcase]
     new_tweet << dictionary[word.downcase]
   else
     new_tweet << word
   end
end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do|tweet|
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
    tweet[(1..137)] + "..."
  else
    tweet
  end
end
