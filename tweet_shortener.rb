require 'pry'

def dictionary
  {"hello" => 'hi',
      "to" => '2',
      "two" => '2',
      "too" => '2',
      "for" => '4',
      "four" => '4',
      "be" => 'b',
      "you" => 'u',
      "at" => "@",
      "and" => "&"
  }
end

def word_substituter(individual_tweet)
  new_reviewed_tweet_array = []
  individual_tweet.split(" ").each do |word|
    dictionary.keys.include?(word.downcase) ? new_reviewed_tweet_array << dictionary[word.downcase] : new_reviewed_tweet_array << word
  end
  new_reviewed_tweet_array.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each {|tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(individual_tweet)
  individual_tweet.length > 140 ? word_substituter(individual_tweet) : individual_tweet
end

def shortened_tweet_truncator(individual_tweet)
  shortened_tweet = selective_tweet_shortener(individual_tweet)
  shortened_tweet.length > 140 ? shortened_tweet[1..137] << "..." : shortened_tweet
end

binding.pry
