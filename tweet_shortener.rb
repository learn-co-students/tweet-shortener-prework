def dictionary
dictionary = {
  "hello" => "hi",
  "too" => "2",
  "to" => "2",
  "two" => "2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.collect { |word|
  dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word }
  .join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.collect {|tweet|
  puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..139]
  else
    word_substituter(tweet)
  end
end
