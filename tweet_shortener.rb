def dictionary 
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "four" => "4",
  "for" => "4",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "be" => "b"
  }
end

def word_substituter(string)
  new = string.split.collect do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end
  new.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x| puts word_substituter(x) end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end