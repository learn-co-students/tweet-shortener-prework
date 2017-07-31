# Write your code here.
def dictionary
  dictionary = {
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
  keys = dictionary.keys
  array = tweet.split(" ")
  string = []
  array.each do |word|
    if keys.include?(word.downcase)
      word = dictionary[word.downcase]
      string.push(word)
    else
      string.push(word)
    end
  end
    string.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    beginning = shortened_tweet[0..136]
    shortened_tweet = "#{beginning}..."
  else
    shortened_tweet
  end
end
