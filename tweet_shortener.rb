require 'pry'
# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "four" => '4',
    "for" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  new_tweet = []
 tweet = tweet.split
 tweet.map do |word|
   if dictionary.keys.include?(word.downcase)
     #replace that word with the value of that key
    word = dictionary[word.downcase]
   end
   new_tweet.push(word)
 end
 new_tweet.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    selective_tweet_shortener(tweet)[0..135] + " ..."
  else tweet
  end
end
