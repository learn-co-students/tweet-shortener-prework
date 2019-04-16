# Write your code here.
def dictionary(word)
  dict = {
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
  word =  dict[word.downcase] if dict.has_key?(word.downcase)
  word
end

def word_substituter(tweet)
  tweet.split.map {|word| dictionary(word)}.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet = word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet) if tweet.length > 140
  if tweet.length > 140
    tweet = tweet[0 .. 139]
    tweet[-3 .. -1] = "..."
  end
  tweet
end
