require 'pry'


def dictionary
  words_to_sub = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end 

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end 
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    new_tweet = word_substituter(word)
    puts new_tweet
  end 
end 

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end 
end

def shortened_tweet_truncator(tweets)
  new_tweet = word_substituter(tweets)
  if new_tweet.length > 140
    new_tweet[0...140]
  else
    new_tweet
end 
end 



