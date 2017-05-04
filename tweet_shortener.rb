def dictionary
  substitutions = {
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
  short_tweet = tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |element|
    puts "#{word_substituter(element)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.chars.length < 140
    tweet
  else
    tweet[0...140]
  end
end
