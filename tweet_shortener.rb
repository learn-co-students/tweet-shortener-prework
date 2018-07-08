# Write your code here.
def dictionary
  words = {
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
  words
end

def word_substituter(tweet)
  arr = tweet.split
  arr.each_with_index do |word, i|
    arr[i] = dictionary[word.downcase] if dictionary[word.downcase] != nil
  end
  arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length >= 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  test = selective_tweet_shortener(tweet)
  test.length > 140 ? test[1..137] + "..." : test
end