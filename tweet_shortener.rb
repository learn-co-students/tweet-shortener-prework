# Write your code here.

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2" ,
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(str)
  array = str.split(' ')
  array.each_with_index do |word, i|
    if dictionary.keys.include?(word.downcase)
      array[i] = dictionary[word.downcase]
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |tweet|
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
  new = selective_tweet_shortener(tweet)
  if new.length > 140
    new = new[0...140]
  end
  new
end