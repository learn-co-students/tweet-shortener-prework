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
    "and" => "&",
    "Hello" => "Hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "B",
    "You" => "U",
    "at" => "@",
    "and" => "&"
  }  
end

def word_substituter(tweet)
  dict = dictionary
  words = tweet.split
  words.collect! do |word|
    if dict.key?(word)
      word = dict.fetch(word)
    else
      word = word
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    small_tweet = word_substituter(tweet)
    if small_tweet.length > 140
      small_tweet[0...140]
    end
  end
end