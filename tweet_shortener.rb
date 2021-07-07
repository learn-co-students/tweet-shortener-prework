require 'pry'

def dictionary
  substitutions = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' =>'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)

  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    "#{shortened_tweet[0...137]}..." #truncates the tweet to 140 characters with an ellipsis (...) if its still too long after substitution
  else
    shortened_tweet
  end
end
