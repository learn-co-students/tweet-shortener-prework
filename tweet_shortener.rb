# Write your code here.
require 'pry'

def dictionary(word)
  dictionary = {"hello" => "hi",
  "two" => "2",
  "too" => "2",
  "to" => "2",
  "for" => "4",
  "four" => "4",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "be" => "b",
  }

  if dictionary.keys.include?(word.downcase)
    return dictionary[word.downcase]
  end
  return word
end


def word_substituter(tweet)
  words_as_array = tweet.split(" ")
  words_as_array.map! {|word| dictionary(word)}
  puts words_as_array.join(" ")
  return words_as_array.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.map! do |tweet|
      words_as_array = tweet.split(" ")
      words_as_array.map! {|word| dictionary(word)}
      puts words_as_array.join(" ")
    end
    return tweets
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    words_as_array = tweet.split(" ")
    words_as_array.map! {|word| dictionary(word)}
    puts words_as_array.join(" ")
    return words_as_array.join(" ")
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    words_as_array = tweet.split(" ")
    words_as_array.map! {|word| dictionary(word)}
    if words_as_array.join(" ").length > 140
      words_as_array = words_as_array.join(" ")
      return words_as_array[0..136] << "..."
    else
      puts words_as_array.join(" ")
      return words_as_array.join(" ")
    end
  else
    puts tweet
    return tweet
  end
end
