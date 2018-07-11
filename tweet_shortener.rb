# Write your code here.
require 'pry'
def dictionary 
substitutes = { 
  "hello" => "hi",
  "to" => '2',
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
  tweet.split(" ").map do |word|
    if dictionary[word.downcase]   
      dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_one)
 
  if tweet_one.length > 140
    puts word_substituter(tweet)
  end
end

def shortened_tweet_truncator

end