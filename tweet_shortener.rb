  require 'pry'
def dictionary
  dictionary = {
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
end



def word_substituter(tweet)
  new_arr = tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
   new_arr.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |string|
    puts word_substituter(string)
  end
end


def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[1..140]
  else
    tweet
  end
end
