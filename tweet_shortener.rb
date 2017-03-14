# Write your code here.

def dictionary
   {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "two" =>"2",
    "Two" => "2",
    "too" => "2",
    "Too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split
  keys = dictionary.keys
  arr = []
  tweet.each do |word|
    if keys.include?(word) === false
      arr << word
    elsif keys.include?(word) === true
      arr << dictionary[word]
    end
  end
  arr = arr.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |el|
    puts word_substituter(el)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    tweet
  else
    short = word_substituter(tweet)
    short
    if short.length > 140
      str = short.slice(0..136)
      str << "..."
      return str
    else
      return short
    end
  end
end
