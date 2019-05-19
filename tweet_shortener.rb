# Write your code here.
def dictionary
  substitute_words = {
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

  substitute_words
end

def word_substituter (tweet)

  substitions = dictionary.keys

  tweet_array = tweet.split(" ")
  shortened_tweet = []

  tweet_array.each do |word|
    if substitions.include?(word.downcase)
      word = dictionary[word.downcase]
      shortened_tweet << word
    else
      shortened_tweet << word
    end
  end

  shortened_tweet.join(" ")

end

def bulk_tweet_shortener (tweets)

  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator (tweet)
short_tweet = " "
  if word_substituter(tweet).length > 140
    short_tweet = "#{word_substituter(tweet)[0..136]}..."
  else
    tweet
  end
end
