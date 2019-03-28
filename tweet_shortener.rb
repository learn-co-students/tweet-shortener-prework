# Write your code here.
def dictionary
  {
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

def tweet_limit
  140
end

def word_substituter(tweet)
  words = tweet.split

  shorten_tweet = words.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end

  shorten_tweet.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length >= tweet_limit ? word_substituter(tweet) : tweet
end


def shortened_tweet_truncator(tweet)

  shortened_tweet = selective_tweet_shortener(tweet)

  if shortened_tweet.length > tweet_limit

    shortened_tweet[0...tweet_limit]

  else
    shortened_tweet
  end


end
