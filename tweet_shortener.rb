require 'pry'

#dictionary
def dictionary
word_replace = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}
end

#word_substituter
def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end


#bulk_tweet_shortener
def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

#selective_tweet_shortener
def selective_tweet_shortener(tweet)
  length = tweet.length
  if length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

#shortened_tweet_truncator
def shortened_tweet_truncator(tweet)
  length = tweet.length
  if length > 140
    tweet = tweet[0..139]
  end
  tweet
end
