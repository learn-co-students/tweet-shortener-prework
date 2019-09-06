# Write your code here.

def dictionary(word)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "four" => "4",
    "For" => "4"
  }
  if dictionary[word]
    return dictionary[word]
  else
    return word
  end
end

def word_substituter(phrase)
  words = phrase.split(" ")
  words.map{|el| dictionary(el)}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map{|tweet| puts word_substituter(tweet)}

end

def selective_tweet_shortener(tweet)
  tweet_chs = tweet.chars
  tweet_chs[0..139].join("")
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    selective_tweet_shortener(word_substituter(tweet))
  else
    tweet
  end
end
