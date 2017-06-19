# Write your code here.
# require "pry"
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

def word_substituter(phrase)
  words = phrase.split(" ")
  dic = dictionary

  new_words = words.collect do |word|
    if dic.key?(word.downcase)
      dic[word.downcase]
    else
      word
    end
  end

  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
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
  append = "..."
  if tweet.length > 140
    return tweet[0..136] + append
  end
  tweet
end

phrases = ["I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."]
bulk_tweet_shortener(phrases)
