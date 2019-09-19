# Write your code here.
def dictionary(word)
  sub = word
glossary = {"hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2' ,
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"}
  glossary.each do |key, substitute|
    if key == word.downcase
      sub = substitute
    end
  end
  sub
end

def word_substituter(tweet)
   tweet.split.map {|word| dictionary(word)}.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map {|tweet| word_substituter(tweet)}.each {|tweeet| puts tweeet}
end

def selective_tweet_shortener(tweet)
  if tweet.split("").count > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).split("").count > 140
    truncated_tweet = tweet[0..136] + "..."
  else
    tweet
  end
end
