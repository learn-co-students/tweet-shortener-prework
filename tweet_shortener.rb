require 'pry'

# Write your code here.
def dictionary 
  dictionary = {
    "hello" => "hi",
    "for" => "4",
    "four" => "4",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet_array.delete_at(index) && tweet_array.insert(index, dictionary[word.downcase])
    end
  end
  tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  tweet.length < 140 ? tweet : word_substituter(tweet)
end


def shortened_tweet_truncator(tweet)
  word_substituter(tweet).length > 140 ? "#{word_substituter(tweet)[0..135]} ..." : tweet
end
