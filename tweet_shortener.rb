# Write your code here.
def dictionary
  list = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)
  new = tweet.split
  new2 = dictionary.keys
  new3 = []
  new.each do |word|
    if new2.include?(word)
      new3.push(dictionary[word])
    else
      new3.push(word)
    end
  end
  return new3.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |word|
    puts word_substituter(word)
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
  if tweet.length > 140
    return "#{tweet[0...137]}..."
  else
    tweet
  end
end
