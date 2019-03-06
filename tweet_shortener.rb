def dictionary
  {"hello" => "hi",
  "Hello" => "Hi",
  "to" => "2",
  "To" => "2",
  "two" => "2",
  "Two" => "2",
  "too" => "2",
  "Too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "Four" => "4",
  "be" => "b",
  "Be" => "B",
  "you" => "u",
  "You" => "U",
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
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
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet = new_tweet.slice(0,137)
    new_tweet << "..."
  else
    new_tweet
  end
end
