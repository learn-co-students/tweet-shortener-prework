# def dictionary(word)
#   if word == "hello"
#     word = "hi"
#   elsif word == "to" || "two" || "too"
#     word = "2"
#   elsif word == "for" || "four"
#     word = "4"
#   elsif word == "be"
#     word = "b"
#   elsif word == "you"
#     word = "u"
#   elsif word == "at"
#     word = "@"
#   elsif word == "and"
#     word = "&"
# end

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

def word_substituter(tweet)
  wordz = dictionary.keys

  arr = tweet.split
  arr.each_with_index do |word, idx|
    if wordz.include? (word.downcase)
      arr[idx] = dictionary[word.downcase]
    end
  end
  return arr.join (" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |check|
    puts word_substituter(check)
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
    new_tweet = tweet[0..136] + "..."
  else
    tweet
  end
end
  