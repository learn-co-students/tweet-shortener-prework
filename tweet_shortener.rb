# Write your code here.
def dictionary
  subs = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, index|
    if dictionary.has_key?(word.downcase)
      tweet_array[index] = dictionary.fetch(word.downcase)
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet|  puts word_substituter(tweet)}
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
    word_substituter(tweet)[0..135] + " ..."
  else
    tweet
  end
end
