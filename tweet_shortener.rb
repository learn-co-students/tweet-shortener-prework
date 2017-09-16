# Write your code here.
def dictionary

  wordsToBeSubstituted = {
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

  tweet_array = tweet.split(" ")
  keys = dictionary.keys

  new_array = tweet_array.collect do |word|
    answer = nil
    keys.each do |key|
      answer = key if word.downcase == key
    end
    answer == nil ? word : dictionary[answer]
  end

  new_array.join(" ")
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

  if tweet.length > 140
    shortened_tweet = word_substituter(tweet)
    shortened_tweet[0..139] if shortened_tweet.length > 140
  else
    tweet
  end

end
