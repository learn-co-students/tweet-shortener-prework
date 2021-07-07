def dictionary(word)
  convert = { "hello" => "hi",
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

  final_word = word
  #if word matches, return replacement, otherwise, return original word

  if convert.key?(word)
    final_word = convert[word]
  elsif convert.key?(word.downcase)
    final_word = convert[word.downcase].capitalize
  end

  final_word
end

def word_substituter(tweet)
  words = tweet.split(' ')

  new_tweet = words.collect do |word|
    word = dictionary(word)
  end

  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    tweet = word_substituter(tweet)
  end

  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)

  if tweet.size > 140
    tweet = tweet[0...137] + "..."
  end

  tweet

end
