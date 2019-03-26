# Write your code here.

def dictionary 
  substitude = { 
    "hi" => "hi",
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


def word_substituter (tweet)
  words = tweet.split(" ")
  words.map do |word|
  dictionary.map do |key, value|
    if word.downcase == key.downcase 
      word.replace(value)
    end
  end
end
    words.join(" ")
end



def bulk_tweet_shortener(array)
  array.map do |words|
    new_array = word_substituter(words)
    puts new_array
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
  tweet = word_substituter(tweet)
  if tweet.length > 140
    tweet[0..139]
  else 
    tweet
  end
end
  







