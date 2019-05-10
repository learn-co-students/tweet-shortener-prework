# Write your code here.
def dictionary
  word_list = {
    "hello" => 'hi',
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
  substitutions = dictionary

  separated_tweet = tweet.split(" ").collect do |word|
    if substitutions.keys.include?(word.downcase)
      substitutions[word.downcase]
    else
      word
    end
  end
  separated_tweet.join(" ")
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
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..136] + "..."
  end
  shortened_tweet
end
