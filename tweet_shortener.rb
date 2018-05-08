# Write your code here.
def dictionary
  dictionary = 
  {
    "hello" => 'hi',
    "to" => '2',
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
  dictionary
  output = []
  
  tweet.split(" "). each do |word|
    if dictionary[word.downcase]
      output.push(dictionary[word.downcase])
    else
      output.push(word)
    end
  end
  output.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
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
  shortened_tweet = selective_tweet_shortener(tweet)
  
  if shortened_tweet.length > 140
    shortened_tweet[0..139]
  else
    shortened_tweet
  end
end