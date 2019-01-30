# Write your code here.
# def dictionary(word)
#   case word.downcase
#   when "hello"
#     word = "hi"
#   when "to", "two", "too"
#     word = "2"
#   when "for", "four"
#     word = "4"
#   when "be"
#     word = "b"
#   when "you"
#     word = "u"
#   when "at"
#     word = "@"
#   when "and"
#     word = "&"
#   end
#   word
# end
#

def dictionary(word)
  words_to_be = {
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

  words_to_be.collect do |key, value|
    if key == word.downcase
      word = value
    end
  end
  return word
end

def word_substituter(tweet)
  words = tweet.split(" ")

  shortened_words = words.collect do |x|
    dictionary(x)
  end
  shortened_words.join(" ")
end

def bulk_tweet_shortener(bulk_tweet)
  bulk_tweet.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..136] + "..."
  end
  shortened_tweet
end
