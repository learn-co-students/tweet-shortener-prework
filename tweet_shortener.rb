def dictionary
  {"hello" => "hi",
    "too" => "2",
    "two" => "2",
    "to" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  newarr = []
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      newarr << dictionary[word.downcase]
    else
      newarr << word
    end
  end
newarr.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(shortenedtweet)
  if shortenedtweet.length >= 140
    x = shortenedtweet[0...137]
    x << "..."
  else
    shortenedtweet
  end
end
