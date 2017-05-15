require 'pry'
def dictionary
  {
    "hello" => 'hi',
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

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.collect do |word|
    dictionary.each do |k, v|
      word = v if word.downcase == k
    end
    word
  end.join(" ") #end.join?
end

def bulk_tweet_shortener(tweets)
  tweets.each do |a|
    puts word_substituter(a)
  end
end

#subs if tweet.lengths > 140
# if tweet.length <= 140 returns reg tweet
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    bulk_tweet_shortener(tweets)
  else
    tweet
  end
end

=begin
def shortened_tweet_truncator(tweet)
  tweet[0..140].concat("...") if tweet.length > 140 #string
  selective_tweet_shortener(tweet) if tweet.length < 140
end

=end
def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
    if tweet.length >= 140
      tweet[0...137].concat("...") #(...) is 3 characters!
    else
      tweet if tweet.length < 140
  end
end
