# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "too" => "2",
    "to" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  new_tweet_array = []
  tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet_array << dictionary[word.downcase]
    else
      new_tweet_array << word
    end
  end
  new_tweet = new_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  returned_tweet = ""
  if tweet.length >= 140
    returned_tweet = word_substituter(tweet)
  else
    returned_tweet = tweet
  end
  returned_tweet
end

def shortened_tweet_truncator(tweet)
  returned_tweet = selective_tweet_shortener(tweet)
  if returned_tweet.length > 140
    returned_tweet = returned_tweet[0..136] + "..."
  end
  returned_tweet
end
