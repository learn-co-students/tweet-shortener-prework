# Write your code here.
def dictionary()
  hash = {
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
  array = []
  array = tweet.split(" ")
  
  dictionary = {}
  dictionary = dictionary()
  i = 0
  
  while i < array.size
    if dictionary.key?(array[i].to_s.downcase)
      array[i] = dictionary[array[i].to_s.downcase]
    end
    i += 1
  end
  
  array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  for counter in 0..tweet_array.size-1 do
    puts word_substituter(tweet_array[counter])
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
  shorten_tweet = ""
  shorten_tweet = word_substituter(tweet)
  
  if shorten_tweet.length > 140
    tweet = shorten_tweet[0..139]
  end
  
  tweet
end