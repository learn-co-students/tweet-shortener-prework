# Write your code here.
def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "for" => "4",
  "too" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.map do |words|
    if dictionary.keys.include?(words.downcase)
      words = dictionary[words.downcase]
    else
      words
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..139]
  else
    tweet
  end
end
