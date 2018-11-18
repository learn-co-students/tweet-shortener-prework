require 'pry'

def dictionary
  new = {"hello" => 'hi',
          "to" => '2',
          "two" => '2',
          "too" => '2',
          "for" => '4',
          "four" => '4',
          "be" => 'b',
          "you" => 'u',
          "at" => '@',
          "and" => '&'
        }
  end

def word_substituter(string)
  new_string = []
  string_array = string.split().collect do |word|
    dictionary.each do |key, value|
      if word.downcase == key
        word = value
      end
      new_string = word
    end
    new_string
  end
  string_array.join(' ')
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts "#{word_substituter(tweet)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      new_tweet[0..136] + '...'
    else new_tweet
    end
  else tweet
  end
end
