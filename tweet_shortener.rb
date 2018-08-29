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
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

#Referenced Learn questions for assistance.

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
    word_substituter(tweet)
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
  after_shortening = selective_tweet_shortener(tweet)
  if after_shortening.length>140
    after_shortening[0...137]+"..."
  else
    tweet
  end
end
