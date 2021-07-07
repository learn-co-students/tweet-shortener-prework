def dictionary(word)
  word_substituter = {
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
  
  word_substituter.keys.include?(word.downcase) ? word_substituter[word.downcase] : word
end

def word_substituter(tweet)
  tweet.split.map { |x| dictionary(x)}.join(" ")
end

def bulk_tweet_shortener(a)
  a.each { |x| puts word_substituter(x) }
end

def selective_tweet_shortener(tweet)
  tweet.size > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.size > 140 ? tweet[0..139] : tweet
end