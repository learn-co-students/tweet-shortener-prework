def dictionary
  dictionary = {
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
  tweet_array = tweet.split(" ")
  new_array = []
   tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_array << dictionary[word.downcase]
    else
      new_array << word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + ("...")
  else
    word_substituter(tweet)
  end
end