def dictionary
  words = {
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
  tweet.split(" ").collect do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word
  end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |post|
    puts word_substituter(post)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.chars.length > 140
    truncate = word_substituter(tweet).chars[0..136].push("...").join("")
  else
    word_substituter(tweet)
  end
end      
